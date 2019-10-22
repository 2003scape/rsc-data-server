const JsonSocket = require('json-socket')
const handlers = require('../message/handlers')
const uuid = require('uuid/v4')
const { promisify } = require('util');

class Session {
    constructor(server, socket) {
        this.server = server
        this.socket = new JsonSocket(socket)

        this.generateIdentifier()
        this.state = 'unidentified'

        this.sendMessage = promisify(this.socket.sendMessage.bind(this.socket));

        this.socket.on('message', async message => {
            await this.handleMessage(message)
        })
    }

    close() {
        this.socket.end()
    }

    async handleMessage(message) {
        if (!message.hasOwnProperty('type')) {
            session.close()
            return console.warn(`${this} sent invalid json object`)
        }

        console.log(message)

        if (this.state !== 'identified' && message.type !== 'identify') {
            this.close()
            return console.warn(`tried to send message before identifying: `, 
                message)
        }

        const handler = handlers.get(message.type)

        if (!handler) {
            this.close()
            return console.warn(`${this} sent unknown message:`, message)
        }

        try {
            await handler(this, message)
        } catch (error) {
            console.error(error)
            this.close()
        }
    }

    async write(message) {
        this.sendMessage(message);
    }

    generateIdentifier() {
        this.identifier = uuid()
    }

    toString() {
        // TODO put IP here as well
        return `session[${this.identifier}]`
    }
}

module.exports = Session
