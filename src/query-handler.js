const camelCaseKeys = require('camelcase-keys');
const fs = require('fs');
const skills = require('./skills.json');
const snakeCaseKeys = require('snakecase-keys');
const { experienceToLevel } = require('./skills');

const CREATE_TABLES = fs
    .readFileSync(`${__dirname}/../create-tables.sql`)
    .toString();

const SET_PLAYER_ATTRIBUTES = [
    'rank',
    'x',
    'y',
    'quest_points',
    'fatigue',
    'combat_style',
    'block_chat',
    'block_private_chat',
    'block_trade',
    'block_duel',
    'camera_auto',
    'one_mouse_button',
    'sound_on',
    'hair_colour',
    'top_colour',
    'trouser_colour',
    'skin_colour',
    'head_sprite',
    'body_sprite',
    'skulled',
    'friends',
    'ignores',
    'inventory',
    'bank',
    'quest_stages',
    'cache',
    'mute_end_date',
    ...skills.map((skill) => `exp_${skill}`),
    ...skills.map((skill) => `cur_${skill}`)
];

const GET_PLAYER_ATTRIBUTES = SET_PLAYER_ATTRIBUTES.concat(
    'id',
    'username',
    'login_date',
    'login_ip'
);

SET_PLAYER_ATTRIBUTES.push('total_level');

const PLAYER_JSON_FIELDS = [
    'friends',
    'ignores',
    'inventory',
    'bank',
    'questStages',
    'cache'
];

const TOTAL_EXP = `(\`exp_${skills.join('` + `exp_')}\`) AS \`experience\``;
const RANKS_PER_PAGE = 16;

const SUMMARY_LENGTH = 140;
const NEWS_PER_PAGE = 10;

function getHiscorePages(database) {
    return Math.ceil(
        database.prepare('SELECT COUNT(1) FROM `hiscore_ranks`').pluck().get() /
            RANKS_PER_PAGE
    );
}

class QueryHandler {
    constructor(database) {
        this.database = database;
    }

    init() {
        this.statements = {
            resetLoggedIn: 'UPDATE `players` SET `world` = 0',
            resetLoggedInWorld:
                'UPDATE `players` SET `world` = 0 WHERE `world` = ?',
            usernameExists: 'SELECT 1 FROM `players` WHERE `username` = ?',
            lastCreationDate:
                'SELECT `creation_date` FROM `players` ' +
                'WHERE `creation_ip` = ? ORDER BY `creation_date` DESC LIMIT 1',
            getPlayerCount: 'SELECT COUNT(1) FROM `players`',
            insertPlayer:
                'INSERT INTO `players` (`username`, `password`, ' +
                '`creation_ip`) VALUES (:username, :password, :ip)',
            getPlayerPassword:
                'SELECT `password` FROM `players` WHERE `username` = ?',
            getPlayerLoginCount:
                'SELECT COUNT(1) FROM `players` WHERE `login_ip` = ? AND ' +
                '`world` != 0',
            getPlayerBanEnd:
                'SELECT `ban_end_date` FROM `players` WHERE `username` = ?',
            setPlayerBan:
                'UPDATE `players` SET `ban_end_date` = ? WHERE `username` = ?',
            setPlayerPassword:
                'UPDATE `players` SET `password` = ? WHERE `username` = ?',
            getPlayer:
                'SELECT ' +
                GET_PLAYER_ATTRIBUTES.map((attr) => `\`${attr}\``) +
                'FROM `players` WHERE `username` = ?',
            updatePlayerLogin:
                'UPDATE `players` SET `login_date` = ?, `login_ip` = ? ' +
                'WHERE `id` = ?',
            getLoginAttempts:
                'SELECT `attempts`, `last_attempt_date` FROM ' +
                '`login_attempts` WHERE `ip` = ?',
            setLoginAttempts:
                'INSERT OR REPLACE INTO `login_attempts` (`ip` ,`attempts`, ' +
                '`last_attempt_date`) VALUES (:ip, :attempts, ' +
                ':last_attempt_date)',
            resetLoginAttempts:
                'DELETE FROM `login_attempts` WHERE `last_attempt_date` <= ?',
            updatePlayer:
                'UPDATE `players` SET ' +
                SET_PLAYER_ATTRIBUTES.map((attr) => `${attr} = :${attr}`) +
                ' WHERE `id` = :id',
            insertWorld:
                'INSERT OR REPLACE INTO `worlds` (`id`, `ip`, ' +
                '`tcp_port`, `websocket_port`, `country`, `members`) ' +
                'VALUES(:id, :ip, :tcp_port, :websocket_port, :country, ' +
                ':members)',
            getWorlds: 'SELECT * FROM `worlds`',
            dropRankTable: 'DROP TABLE IF EXISTS `hiscore_ranks`',
            createRankTable:
                'CREATE TEMPORARY TABLE `hiscore_ranks` ' +
                '(`player_id` integer, `experience` integer)',
            getTotalHiscoreRanks:
                'SELECT `username`, `rank_total` AS `rank`, `total_level` AS ' +
                `\`level\`, ${TOTAL_EXP} FROM \`players\` ORDER BY ` +
                `\`rank_total\` ASC LIMIT ${RANKS_PER_PAGE} OFFSET ?`,
            getTotalHiscoreRanksBetween:
                'SELECT `username`, `rank_total` AS `rank`, `total_level` AS ' +
                `\`level\`, ${TOTAL_EXP} FROM \`players\` WHERE ` +
                '`rank_total` BETWEEN ? AND ? ORDER BY `rank_total` ASC',
            getPlayerRanks:
                `SELECT ${skills.map(
                    (skill) => `\`exp_${skill}\`, \`rank_${skill}\``
                )}, \`total_level\`, ${TOTAL_EXP}, \`rank_total\` ` +
                'FROM `players` WHERE `username` = ?',
            searchNews:
                'SELECT `id`, `date`, `category`, `title`, ' +
                `substr(\`body\`, 0, ${SUMMARY_LENGTH}) AS \`summary\` ` +
                'FROM `news` WHERE ' +
                'CASE WHEN :category > -1 THEN `category` = :category ELSE ' +
                'true END AND ' +
                'CASE WHEN LENGTH(:terms) > 0 THEN `title` LIKE :terms OR ' +
                '`body` LIKE :terms ELSE true END AND ' +
                'CASE WHEN :before > -1 AND :after > -1 THEN ' +
                '`date` < :before AND `date` >= :after ELSE true END ' +
                'ORDER BY `date` DESC ' +
                `LIMIT ${NEWS_PER_PAGE} OFFSET (:page * ${NEWS_PER_PAGE})`,
            getNews: 'SELECT * FROM `news` WHERE `id` = ?'
        };

        for (const [name, statement] of Object.entries(this.statements)) {
            this.statements[name] = this.database.prepare(statement);
        }

        this.updateTotalHiscoreRanks = this.database.transaction(() => {
            this.statements.dropRankTable.run();
            this.statements.createRankTable.run();

            this.database.exec(
                'INSERT INTO `hiscore_ranks` SELECT `id` AS `player_id`, ' +
                    `${TOTAL_EXP} FROM \`players\` ORDER BY ` +
                    '`experience` DESC'
            );

            this.database.exec(
                'UPDATE `players` SET `rank_total` = (SELECT ROWID FROM ' +
                    '`hiscore_ranks` WHERE `hiscore_ranks`.`player_id` = ' +
                    '`players`.`id`)'
            );

            return getHiscorePages(this.database);
        });

        this.statements.getSkillHiscoreRanks = {};
        this.statements.getSkillHiscoreRanksBetween = {};
        this.updateSkillHiscoreRanks = {};

        for (const skill of skills) {
            this.statements.getSkillHiscoreRanks[skill] = this.database.prepare(
                `SELECT \`username\`, \`rank_${skill}\` AS \`rank\`, ` +
                    `\`exp_${skill}\` AS \`experience\` FROM \`players\` ` +
                    `ORDER BY \`rank_${skill}\` ASC LIMIT ${RANKS_PER_PAGE} ` +
                    'OFFSET ?'
            );

            this.statements.getSkillHiscoreRanksBetween[
                skill
            ] = this.database.prepare(
                `SELECT \`username\`, \`rank_${skill}\` AS \`rank\`, ` +
                    `\`exp_${skill}\` AS \`experience\` FROM \`players\` WHERE ` +
                    `\`rank_${skill}\` BETWEEN ? AND ? ORDER BY ` +
                    `\`rank_${skill}\` ASC`
            );

            this.updateSkillHiscoreRanks[skill] = this.database.transaction(
                () => {
                    this.statements.dropRankTable.run();
                    this.statements.createRankTable.run();

                    this.database.exec(
                        'INSERT INTO `hiscore_ranks` SELECT `id` AS ' +
                            `\`player_id\`, \`exp_${skill}\` AS ` +
                            '`experience` FROM `players` ORDER BY ' +
                            '`experience` DESC'
                    );

                    this.database.exec(
                        `UPDATE \`players\` SET \`rank_${skill}\` = ` +
                            '(SELECT ROWID FROM `hiscore_ranks` WHERE ' +
                            '`hiscore_ranks`.`player_id` = ' +
                            '`players`.`id`);'
                    );

                    return getHiscorePages(this.database);
                }
            );
        }
    }

    createTables() {
        this.database.exec(CREATE_TABLES);
    }

    resetLoggedInWorld(world) {
        this.statements.resetLoggedInWorld.run(world);
    }

    usernameExists(username) {
        return !!this.statements.usernameExists.get(username);
    }

    lastCreationDate(ip) {
        const ms = this.statements.lastCreationDate.pluck().get(ip);
        return ms ? new Date(ms * 1000) : undefined;
    }

    getPlayerCount() {
        return this.statements.getPlayerCount.pluck().get();
    }

    insertPlayer({ username, password, ip }) {
        this.statements.insertPlayer.run({ username, password, ip });
    }

    getPlayerPassword(username) {
        return this.statements.getPlayerPassword.pluck().get(username);
    }

    getPlayerLoginCount(ip) {
        return this.statements.getPlayerLoginCount.pluck().get(ip);
    }

    getPlayerBanEnd(username) {
        const ms = this.statements.getPlayerBanEnd.pluck().get(username);

        if (!ms) {
            return;
        }

        // permanent ban
        if (ms === -1) {
            return -1;
        }

        return new Date(ms * 1000);
    }

    setPlayerBan(username, banEndDate) {
        this.statements.setPlayerBan.run(username, Number(banEndDate) / 1000);
    }

    setPlayerPassword(username, password) {
        this.statements.setPlayerPassword.run(username, password);
    }

    getPlayer(username) {
        let player = this.statements.getPlayer.get(username);

        player.skills = {};

        for (const skill of skills) {
            player.skills[skill] = {
                current: player[`cur_${skill}`],
                experience: player[`exp_${skill}`]
            };

            delete player[`cur_${skill}`];
            delete player[`exp_${skill}`];
        }

        player = camelCaseKeys(player);

        for (const field of PLAYER_JSON_FIELDS) {
            player[field] = JSON.parse(player[field]);
        }

        player.loginIP = player.loginIp;
        delete player.loginIp;

        return player;
    }

    updatePlayerLogin(playerID, date, ip) {
        this.statements.updatePlayerLogin.run(date, ip, playerID);
    }

    getLoginAttempts(ip) {
        const entry = this.statements.getLoginAttempts.get(ip);
        const attempts = entry ? entry.attempts : 0;
        const lastDate = entry ? entry.last_attempt_date : Date.now();
        return { attempts, lastDate };
    }

    setLoginAttempts(ip, attempts) {
        this.statements.setLoginAttempts.run({
            ip,
            attempts,
            last_attempt_date: Math.floor(Date.now() / 1000)
        });
    }

    resetLoginAttempts() {
        this.statements.resetLoginAttempts.run(
            Math.floor((Date.now() - 1000 * 60 * 5) / 1000)
        );
    }

    updatePlayer(player) {
        player.totalLevel = 0;

        for (const skill of skills) {
            const experience = player.skills[skill].experience;
            player[`cur_${skill}`] = player.skills[skill].current;
            player[`exp_${skill}`] = experience;
            player.totalLevel += experienceToLevel(experience);
        }

        delete player.skills;

        for (const field of PLAYER_JSON_FIELDS) {
            player[field] = JSON.stringify(player[field]);
        }

        this.statements.updatePlayer.run(snakeCaseKeys(player));
    }

    insertWorld(world) {
        world = snakeCaseKeys(world);
        world.members = +world.members;
        this.statements.insertWorld.run(world);
    }

    getWorlds() {
        return camelCaseKeys(this.statements.getWorlds.all()).map((world) => {
            world.members = !!world.members;
            return world;
        });
    }

    updateHiscoreRanks() {
        const pages = {
            overall: this.updateTotalHiscoreRanks()
        };

        for (const skill of skills) {
            pages[skill] = this.updateSkillHiscoreRanks[skill]();
        }

        return pages;
    }

    getHiscoreRanks(skill = 'overall', rank = -1, page = 0) {
        let ranks;

        if (rank > -1) {
            rank = rank < 1 ? 1 : rank;

            const min = Math.max(1, rank - RANKS_PER_PAGE / 2);
            let max = rank + RANKS_PER_PAGE / 2;

            if (rank < RANKS_PER_PAGE / 2) {
                max += RANKS_PER_PAGE / 2 - min;
            }

            if (skill === 'overall') {
                ranks = this.statements.getTotalHiscoreRanksBetween.all(
                    min,
                    max
                );
            } else {
                ranks = this.statements.getSkillHiscoreRanksBetween[skill].all(
                    min,
                    max
                );
            }
        } else {
            const offset = page * RANKS_PER_PAGE;

            if (skill === 'overall') {
                ranks = this.statements.getTotalHiscoreRanks.all(offset);
            } else {
                ranks = this.statements.getSkillHiscoreRanks[skill].all(offset);
            }
        }

        return ranks.map((entry) => {
            if (!entry.level) {
                entry.level = experienceToLevel(entry.experience);
            }

            entry.experience = Math.floor(entry.experience / 4);
            return entry;
        });
    }

    getPlayerRanks(username) {
        const res = this.statements.getPlayerRanks.get(username);

        if (!res) {
            return;
        }

        const ranks = {};

        for (const skill of skills) {
            const experience = res[`exp_${skill}`];

            ranks[skill] = {
                rank: res[`rank_${skill}`],
                experience: Math.floor(experience / 4),
                level: experienceToLevel(experience)
            };
        }

        ranks.overall = {
            rank: res.rank_total,
            experience: Math.floor(res.experience / 4),
            level: res.total_level
        };

        return ranks;
    }

    getNews(query) {
        if (query.id !== -1) {
            return this.statements.getNews.get(query.id);
        }

        delete query.id;
        query.terms = `%${query.terms.replace(/%|_/g, '')}%`;

        return this.statements.searchNews.all(query);
    }

    sync() {
        this.database.pragma('journal_mode = WAL');
        this.createTables();
        this.init();

        this.statements.resetLoggedIn.run();
    }
}

module.exports = QueryHandler;
