const fs = require('fs')
const knex = require('knex')
const net = require('net')
const tls = require('tls')

const Session = require('./session')

const IS_DEV = process.env.NODE_ENV === 'development'

function connectionListener(server, socket) {
    const session = new Session(server, socket)

    while (server.sessions.get(session.identifier)) {
        session.generateIdentifier()
    }

    socket.on('close', () => {
        server.sessions.delete(session.identifier)
        // emit disconnect
    })

    server.sessions.set(session.identifier, session)
}

class Server {
    constructor(config, knexFile) {
        const listener = connectionListener.bind(null, this)
        const pkg = config.server.ssl ? tls : net

        this.config = config

        this.db = knex(knexFile)

        if (IS_DEV) {

        }

        this.socket = pkg.createServer(listener)
        this.sessions = new Map()
    }

    async bind() {
        return new Promise((resolve, reject) => {
            try {
                let opts = this.config.server.options || {}

                if (this.config.server.ssl) {
                    const sslOpts = {
                        key: fs.readFileSync(this.config.server.ssl.key),
                        cert: fs.readFileSync(this.config.server.ssl.cert),
                        ca: fs.readFileSync(this.config.server.ssl.ca),
                    }

                    opts = { ...opts, ...sslOpts }
                }

                this.socket.listen(opts, resolve)
            } catch (error) {
                reject(error)
            }
        })
    }

    async unbind() {
        return new Promise((resolve, reject) => {
            try {
                this.socket.close(resolve)
            } catch (error) {
                reject(error)
            }
        })
    }

    // send a message to each node
    async broadcast(message) {
        for (const id of Object.keys(this.sessions)) {
            await this.sessions[id].write(message)
        }
    }
}

module.exports = Server
