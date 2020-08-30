// authenticate rsc-server or rsc-www instances

const log = require('bole')('authenticate');

async function authenticate(message) {
    const token = message.token;

    if (this.authenticated) {
        this.socket.sendMessage({
            token,
            success: false,
            message: 'already authenticated'
        });

        return;
    }

    await this.login(message.password);

    if (!this.authenticated) {
        this.socket.sendMessage({
            token,
            success: false,
            message: 'invalid password'
        });
    } else {
        clearTimeout(this.authenticateTimeout);
        log.info(`new client ${this} authenticated`);
        this.socket.sendMessage({ token, success: true });
        this.server.clients.add(this);
    }
}

module.exports.authenticate = authenticate;
