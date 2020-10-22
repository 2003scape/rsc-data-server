const Client = require('./client');
const QueryHandler = require('./query-handler');
const fs = require('fs');
const net = require('net');
const sqlite = require('sqlite');
const sqlite3 = require('sqlite3').verbose();

const log = require('bole')('server');

// 3 hours
const HISCORE_FREQUENCY = 1000 * 60 * 60 * 3;

// 10 minutes
const THROTTLE_CLEAR_FREQUENCY = 1000 * 60 * 10;

class Server {
    constructor(config) {
        this.config = config;

        this.totalPlayers = 0;
        this.clients = new Set();
        this.worlds = {}; // { id: world }

        const initSocket = (socket) => {
            const client = new Client(this, socket);
            client.init();
        };

        // TODO make this use tls instead
        if (this.config.port) {
            this.tcpServer = net.createServer(initSocket);
            this.tcpServer.on('error', (err) => log.error(err));
            this.tcpServer.on('listening', () => {
                log.info(`listening on port ${this.config.port}`);
            });
        }

        if (this.config.sockFile) {
            this.ipcServer = net.createServer(initSocket);
            this.ipcServer.on('error', (err) => log.error(err));
            this.ipcServer.on('listening', () => {
                log.info(`listening on ${this.config.sockFile}`);
            });
        }

        this._updateHiscoreRanks = this.updateHiscoreRanks.bind(this);
        this._resetLoginAttempts = this.resetLoginAttempts.bind(this);
    }

    broadcastToWorlds(message) {
        for (const id of Object.keys(this.worlds)) {
            const client = this.worlds[id].client;
            client.socket.sendMessage(message);
        }
    }

    addWorld(world) {
        log.info(`world ${world} online`);
        this.worlds[world.id] = world;
    }

    async removeWorld(world) {
        log.info(`world ${world} offline`);
        this.totalPlayers -= world.players.length;
        delete this.worlds[world.id];
        await this.queryHandler.resetLoggedInWorld(world.id);
    }

    getPlayerWorld(username) {
        for (const id of Object.keys(this.worlds)) {
            const world = this.worlds[id];

            if (world.players.has(username)) {
                return id;
            }
        }

        return 0;
    }

    async updateHiscoreRanks() {
        log.info('updating hiscore ranks...');
        setTimeout(this._updateHiscoreRanks, HISCORE_FREQUENCY);
    }

    async resetLoginAttempts() {
        log.info('clearing old login attempts...');
        await this.queryHandler.resetLoginAttempts();
        setTimeout(this._resetLoginAttempts, THROTTLE_CLEAR_FREQUENCY);
    }

    listen() {
        if (this.config.sockFile) {
            try {
                fs.unlinkSync(this.config.sockFile);
                log.debug(
                    'removing existing socket file',
                    this.config.sockFile
                );
            } catch (e) {
                // ignore
            }

            this.ipcServer.listen(this.config.sockFile);
        }

        if (this.config.port) {
            this.tcpServer.listen(this.config.port);
        }
    }

    async init() {
        this.database = await sqlite.open({
            filename: this.config.sqliteFile,
            driver: sqlite3.Database
        });

        log.info(`database ${this.config.sqliteFile} opened`);

        this.queryHandler = new QueryHandler(this.database);

        try {
            await this.queryHandler.sync();
            await this.updateHiscoreRanks();
            await this.resetLoginAttempts();
        } catch (e) {
            log.error(e);
        }

        this.listen();
    }
}

module.exports = Server;
