const fs = require('fs');
const skills = require('./skills');
const snakeCaseKeys = require('snakecase-keys');
const camelCaseKeys = require('camelcase-keys');

const CREATE_TABLES = fs
    .readFileSync(`${__dirname}/../rsc-data-server.sql`)
    .toString();

const SET_PLAYER_ATTRIBUTES = [
    'username',
    'rank',
    'x',
    'y',
    'quest_points',
    'fatigue',
    'combat_style',
    'block_chat',
    'block_private',
    'block_trade',
    'block_duel',
    'camera_auto',
    'one_mouse_button',
    'sound_on',
    'hair_color',
    'top_color',
    'leg_color',
    'head_sprite',
    'body_sprite',
    'skulled',
    'friends',
    'ignores',
    'inventory',
    'bank',
    'login_ip',
    'quest_stages',
    'cache',
    ...skills.map((skill) => `exp_${skill}`),
    ...skills.map((skill) => `cur_${skill}`)
];

const GET_PLAYER_ATTRIBUTES = SET_PLAYER_ATTRIBUTES.concat('id', 'login_date');

class QueryHandler {
    constructor(database) {
        this.database = database;
    }

    async init() {
        this.statements = {
            resetLoggedIn:
                'UPDATE `players` SET `world` = 0, ' + '`login_ip` = NULL',
            usernameExists: 'SELECT 1 FROM `players` WHERE `username` = ?',
            lastCreationDate:
                'SELECT `creation_date` FROM `players` ' +
                'WHERE `creation_ip` = ?',
            getPlayerCount: 'SELECT COUNT(1) FROM `players`',
            insertPlayer:
                'INSERT INTO `players` (`username`, `password`, ' +
                '`creation_ip`) VALUES (:username, :password, :ip)',
            getPlayerPassword:
                'SELECT `password` FROM `players` WHERE ' + '`username` = ?',
            getPlayerLoginCount:
                'SELECT COUNT(1) FROM `players` WHERE ' + '`login_ip` = ?',
            getPlayerBanEnd:
                'SELECT `ban_end_date` FROM `players` WHERE ' +
                '`username` = ?',
            setPlayerBan:
                'UPDATE `players` SET `ban_end_date` = ? WHERE ' +
                '`username` = ?',
            getPlayer:
                'SELECT ' +
                GET_PLAYER_ATTRIBUTES.map((attr) => `\`${attr}\``).join(', ') +
                'FROM `players` WHERE `username` = ?',
            updatePlayerLogin:
                'UPDATE `players` SET `login_date` = ? WHERE `id` = ?',
            updatePlayer:
                'UPDATE `players` SET ' +
                SET_PLAYER_ATTRIBUTES.map((attr) => `${attr} = :${attr}`).join(
                    ', '
                ) +
                'WHERE `id` = :id',
            insertWorld:
                'INSERT OR REPLACE INTO `worlds` (`id`, `ip`, ' +
                '`tcp_port`, `websocket_port`, `country`, `members`) ' +
                'VALUES(:id, :ip, :tcp_port, :websocket_port, :country, ' +
                ':members)',
            getWorlds: 'SELECT * FROM `worlds`'
        };

        for (const statementName of Object.keys(this.statements)) {
            this.statements[statementName] = await this.database.prepare(
                this.statements[statementName]
            );
        }
    }

    async createTables() {
        await this.database.exec(CREATE_TABLES);
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

        await statement.reset();

        return player;
    }

    async updatePlayerLogin(playerID, date) {
        const statement = this.statements.updatePlayerLogin;

        await statement.bind([playerID, date]);
        await statement.run();
        await statement.reset();
    }

    async updatePlayer(player) {
        const statement = this.statements.updatePlayer;

        for (const skill of skills) {
            player[`cur_${skill}`] = player.skills[skill].current;
            player[`exp_${skill}`] = player.skills[skill].experience;
            delete player.skills[skill];
        }

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

        await statement.bind(player);
        await statement.run();
        await statement.reset();
    }

    async insertWorld(world) {
        const statement = this.statements.insertWorld;
        world = snakeCaseKeys(world);

        for (const key of Object.keys(world)) {
            world[`:${key}`] = world[key];
            delete world[key];
        }

        await statement.bind(world);
        await statement.run();
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
