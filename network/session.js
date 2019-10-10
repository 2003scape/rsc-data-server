const JsonSocket = require('json-socket')

class Session {
    constructor(server, socket) {
        this.server = server
        this.socket = new JsonSocket(socket)

        this.socket.on('message', message => {
            if (message.command === 'pong') {
                console.log(`Got pong: ${Date.now()}`)
                setTimeout(() => {
                    this.socket.sendMessage({ command: 'ping' })
                }, 5000)
            }
        })

        this.socket.sendMessage({ command: 'ping' })
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
}

module.exports = Session
