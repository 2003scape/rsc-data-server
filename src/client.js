const JSONSocket = require('json-socket');
const bcrypt = require('bcryptjs');
const handlers = require('./handlers');
const log = require('bole')('client');
const os = require('os');
const { promisify } = require('util');

const bcryptCompare = promisify(bcrypt.compare);

class Client {
    constructor(server, socket) {
        this.server = server;
        this.socket = new JSONSocket(socket);

        this.authenticated = false;
        this.handlers = {};

        for (const handlerName of Object.keys(handlers)) {
            this.handlers[handlerName] = handlers[handlerName].bind(this);
        }
    }

    init() {
        log.info(`${this} connected`);

        this.authenticateTimeout = setTimeout(() => {
            log.warn(`${this} took too long to authenticate`);
            this.socket._socket.destroy();
        }, 10000);

        this.socket.on('error', (err) => log.error(err));

        this.socket.on('message', async (message) => {
            if (!this.authenticated && message.handler !== 'authenticate') {
                log.warn(`${this} sending commands before authenticating`);
                return;
            }

            if (!this.handlers[message.handler]) {
                log.warn(
                    `${this} trying to used undefined handler ` +
                        message.handler
                );
                return;
            }

            if (!message.token) {
                log.warn(`${this} sending command without token`);
                return;
            }

            try {
                await this.handlers[message.handler](message);
            } catch (e) {
                log.error(e);
            }
        });

        this.socket.on('close', async () => {
            log.info(`${this} disconnected`);
            this.server.clients.delete(this);

            if (this.world) {
                await this.server.removeWorld(this.world);
            }
        });
    }

    async login(password) {
        this.authenticated = await bcryptCompare(
            password,
            this.server.config.password
        );
    }

    getIP() {
        return this.socket.remoteAddress || '127.0.0.1';
    }

    toString() {
        return this.socket.remoteAddress || os.hostname();
    }
}

module.exports = Client;
