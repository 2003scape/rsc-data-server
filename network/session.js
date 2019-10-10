const JsonSocket = require('json-socket')
const state = require('state')
const SessionState = require('./session-state')
const uuid = require('uuid/v4')

class Session {
    constructor(server, socket) {
        this.server = server
        this.socket = new JsonSocket(socket)
        this.generateIdentifier()

        state(this, SessionState)

        this.state().change('Unidentified')

        this.socket.on('message', message => this.handleMessage(this, message))
    }
    close() {
        this.socket.end()
    }
    async write(message) {
        return new Promise((resolve, reject) => {
            this.socket.sendMessage(message, error => {
                if (error) {
                    reject(error)
                } else {
                    resolve()
                }
            })
        })
    }
    generateIdentifier() {
        this.identifier = uuid()
    }
    toString() {
        return `session[${this.identifier}]`
    }
}

module.exports = Session
