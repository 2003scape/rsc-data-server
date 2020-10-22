const camelCaseKeys = require('camelcase-keys');
const fs = require('fs');
const log = require('bole')('query-handler');
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

class QueryHandler {
    constructor(database) {
        this.database = database;

        this.database.on('trace', (query) => {
            log.debug(query);
        });
    }

    async init() {
        this.statements = {
            resetLoggedIn: 'UPDATE `players` SET `world` = 0',
            resetLoggedInWorld:
                'UPDATE `players` SET `world` = 0 WHERE `world` = ?',
            usernameExists: 'SELECT 1 FROM `players` WHERE `username` = ?',
            lastCreationDate:
                'SELECT `creation_date` FROM `players` ' +
                'WHERE `creation_ip` = ?',
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
                'SELECT `ban_end_date` FROM `players` WHERE ' +
                '`username` = ?',
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
                '`last_attempt_date`) VALUES(:ip, :attempts, ' +
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
            getWorlds: 'SELECT * FROM `worlds`'
        };

        console.log(this.statements.updatePlayer);

        for (const statementName of Object.keys(this.statements)) {
            this.statements[statementName] = await this.database.prepare(
                this.statements[statementName]
            );
        }
    }

    async createTables() {
        await this.database.exec(CREATE_TABLES);
    }

    async resetLoggedInWorld(world) {
        const statement = this.statements.resetLoggedInWorld;

        await statement.run(world);
        await statement.reset();
    }

    async usernameExists(username) {
        const statement = this.statements.usernameExists;

        await statement.bind(username);
        const exists = !!(await statement.get());
        await statement.reset();

        return exists;
    }

    async lastCreationDate(ip) {
        const statement = this.statements.lastCreationDate;

        await statement.bind(ip);
        const res = await statement.get();
        await statement.reset();

        return res ? new Date(res['creation_date'] * 1000) : null;
    }

    async getPlayerCount() {
        const statement = this.statements.getPlayerCount;

        const count = (await statement.get())['COUNT(1)'];
        await statement.reset();

        return count;
    }

    async insertPlayer({ username, password, ip }) {
        const statement = this.statements.insertPlayer;

        await statement.bind({
            ':username': username,
            ':password': password,
            ':ip': ip
        });

        await statement.run();
        await statement.reset();
    }

    async getPlayerPassword(username) {
        const statement = this.statements.getPlayerPassword;

        await statement.bind(username);
        const res = await statement.get();
        await statement.reset();
        return res ? res.password : null;
    }

    async getPlayerLoginCount(ip) {
        const statement = this.statements.getPlayerLoginCount;

        await statement.bind(ip);
        const res = await statement.get();

        await statement.reset();

        return res['COUNT(1)'];
    }

    async getPlayerBanEnd(username) {
        const statement = this.statements.getPlayerBanEnd;

        await statement.bind(username);
        const res = await statement.get();

        await statement.reset();

        if (!res) {
            return;
        }

        const banEndDate = res['ban_end_date'];

        if (banEndDate === 0) {
            return;
        } else if (banEndDate === -1) {
            // permanent ban
            return -1;
        } else {
            return new Date(banEndDate * 1000);
        }
    }

    async setPlayerBan(username, banEndDate) {
        const statement = this.statements.setPlayerBan;

        banEndDate = +banEndDate;

        await statement.bind([banEndDate, username]);
        await statement.run();
        await statement.reset();
    }

    async setPlayerPassword(username, password) {
        const statement = this.statements.setPlayerPassword;

        await statement.bind([password, username]);
        await statement.run();
        await statement.reset();
    }

    async getPlayer(username) {
        const statement = this.statements.getPlayer;

        await statement.bind(username);

        let player = await statement.get();
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

        player.friends = JSON.parse(player.friends);
        player.ignores = JSON.parse(player.ignores);
        player.inventory = JSON.parse(player.inventory);
        player.bank = JSON.parse(player.bank);
        player.questStages = JSON.parse(player.questStages);
        player.cache = JSON.parse(player.cache);
        player.loginIP = player.loginIp;
        delete player.loginIp;

        await statement.reset();

        return player;
    }

    async updatePlayerLogin(playerID, date, ip) {
        const statement = this.statements.updatePlayerLogin;

        await statement.run([date, ip, playerID]);
        await statement.reset();
    }

    async getLoginAttempts(ip) {
        const statement = this.statements.getLoginAttempts;

        await statement.bind(ip);
        const entry = await statement.get();

        const attempts = entry ? entry.attempts : 0;
        const lastDate = entry ? entry['last_attempt_date'] : Date.now();

        await statement.reset();

        return { attempts, lastDate };
    }

    async setLoginAttempts(ip, attempts) {
        const statement = this.statements.setLoginAttempts;

        await statement.run({
            ':ip': ip,
            ':attempts': attempts,
            ':last_attempt_date': Math.floor(Date.now() / 1000)
        });

        await statement.reset();
    }

    async resetLoginAttempts() {
        const statement = this.statements.resetLoginAttempts;
        await statement.run(Math.floor((Date.now() - 1000 * 60 * 5) / 1000));
        await statement.reset();
    }

    async updatePlayer(player) {
        const statement = this.statements.updatePlayer;

        for (const skill of skills) {
            player[`cur_${skill}`] = player.skills[skill].current;
            player[`exp_${skill}`] = player.skills[skill].experience;
        }

        delete player.skills;

        player.friends = JSON.stringify(player.friends);
        player.ignores = JSON.stringify(player.ignores);
        player.inventory = JSON.stringify(player.inventory);
        player.bank = JSON.stringify(player.bank);
        player.questStages = JSON.stringify(player.questStages);
        player.cache = JSON.stringify(player.cache);

        player = snakeCaseKeys(player);

        for (const attr of Object.keys(player)) {
            player[`:${attr}`] = player[attr];
            delete player[attr];
        }

        await statement.run(player);
        await statement.reset();
    }

    async insertWorld(world) {
        const statement = this.statements.insertWorld;
        world = snakeCaseKeys(world);

        for (const key of Object.keys(world)) {
            world[`:${key}`] = world[key];
            delete world[key];
        }

        await statement.run(world);
        await statement.reset();
    }

    async getWorlds() {
        const statement = this.statements.getWorlds;

        await statement.bind();
        const worlds = await statement.all();
        await statement.reset();

        return camelCaseKeys(worlds);
    }

    async sync() {
        await this.createTables();
        await this.init();

        await this.statements.resetLoggedIn.run();
        await this.statements.resetLoggedIn.finalize();
    }
}

module.exports = QueryHandler;
