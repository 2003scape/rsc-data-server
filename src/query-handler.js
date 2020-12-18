const camelCaseKeys = require('camelcase-keys');
const fs = require('fs');
const skills = require('./skills');
const snakeCaseKeys = require('snakecase-keys');

const CREATE_TABLES = fs
    .readFileSync(`${__dirname}/../rsc-data-server.sql`)
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

const PLAYER_JSON_FIELDS = [
    'friends',
    'ignores',
    'inventory',
    'bank',
    'questStages',
    'cache'
];

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
                GET_PLAYER_ATTRIBUTES.map((attr) => `\`${attr}\``).join(', ') +
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
                SET_PLAYER_ATTRIBUTES.map((attr) => `${attr} = :${attr}`).join(
                    ', '
                ) +
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
                '(`player_id` integer, `experience` integer)'
        };

        for (const statementName of Object.keys(this.statements)) {
            this.statements[statementName] = this.database.prepare(
                this.statements[statementName]
            );
        }

        this.updateTotalHiscoreRanks = this.database.transaction(() => {
            this.statements.dropRankTable.run();
            this.statements.createRankTable.run();

            this.database.exec(
                'INSERT INTO `hiscore_ranks` SELECT `id` AS `player_id`, ' +
                    `(\`exp_${skills.join('` + `exp_')}\`) AS \`experience\` ` +
                    'FROM `players` ORDER BY `experience` DESC'
            );

            this.database.exec(
                'UPDATE `players` SET `rank_total` = (SELECT ROWID FROM ' +
                    '`hiscore_ranks` WHERE `hiscore_ranks`.`player_id` = ' +
                    '`players`.`id`);'
            );
        });

        this.updateSkillHiscoreRanks = {};

        for (const skill of skills) {
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
        const lastDate = entry ? entry['last_attempt_date'] : Date.now();
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
        for (const skill of skills) {
            player[`cur_${skill}`] = player.skills[skill].current;
            player[`exp_${skill}`] = player.skills[skill].experience;
        }

        delete player.skills;

        for (const field of PLAYER_JSON_FIELDS) {
            player[field] = JSON.stringify(player[field]);
        }

        player = snakeCaseKeys(player);

        this.statements.updatePlayer.run(player);
    }

    insertWorld(world) {
        world = snakeCaseKeys(world);
        world.members = +world.members;
        this.statements.insertWorld.run(world);
    }

    getWorlds() {
        return camelCaseKeys(this.statements.getWorlds.all()).map((world) => {
            world.members = +world.members;
            return world;
        });
    }

    updateHiscoreRanks() {
        this.updateTotalHiscoreRanks();

        for (const skill of skills) {
            this.updateSkillHiscoreRanks[skill]();
        }
    }

    sync() {
        this.database.pragma('journal_mode = WAL');
        this.createTables();
        this.init();

        this.statements.resetLoggedIn.run();
    }
}

module.exports = QueryHandler;
