const Client = require('./client');
const QueryHandler = require('./query-handler');
const fs = require('fs');
const net = require('net');
const sqlite = require('sqlite');
const sqlite3 = require('sqlite3');

const log = require('bole')('server');

class Server {
    constructor(config) {
        this.config = config;

        this.totalPlayers = 0;
        this.clients = new Set();
        this.worlds = {}; // { id: client }

        const initSocket = socket => {
            const client = new Client(this, socket);
            client.init();
        };

        if (this.config.port) {
            this.tcpServer = net.createServer(initSocket);
            this.tcpServer.on('error', err => log.error(err));
            this.tcpServer.on('listening', () => {
                log.info(`listening on port ${this.config.port}`);
            });
        }

        if (this.config.sockFile) {
            this.ipcServer = net.createServer(initSocket);
            this.ipcServer.on('error', err => log.error(err));
            this.ipcServer.on('listening', () => {
                log.info(`listening on ${this.config.sockFile}`);
            });
        }
    }

    broadcastToWorlds(message) {
    }

    listen() {
        if (this.config.sockFile) {
            try {
                fs.unlinkSync(this.config.sockFile);
                log.debug('removing existing socket file', this.config.sockFile);
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

        this.queryHandler = new QueryHandler(this.database);

        try {
            await this.queryHandler.sync();
        } catch (e) {
            log.error(e);
        }

        log.info(`database ${this.config.sqliteFile} opened`);

        this.listen();
    }
}

module.exports = Server;
