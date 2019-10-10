const fs = require('fs')
const net = require('net')
const tls = require('tls')

const Session = require('./session')

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
    constructor(config) {
        const listener = connectionListener.bind(null, this)
        const pkg = config.server.ssl ? tls : net

        this.config = config
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
}

module.exports = Server
