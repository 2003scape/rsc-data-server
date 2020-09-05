// authenticate rsc-server or rsc-www instances

const log = require('bole')('authenticate');

async function authenticate({token, password}) {
    const message = {token};

    if (this.authenticated) {
        message.success = false;
        message.error = 'already authenticated';
        return this.socket.sendMessage(message);
    }

    await this.login(password);

    if (!this.authenticated) {
        message.success = false;
        message.error = 'invalid password';
        return this.socket.sendMessage(message);
    } else {
        clearTimeout(this.authenticateTimeout);

        log.info(`new client ${this} authenticated`);
        this.server.clients.add(this);

        message.success = true;
        this.socket.sendMessage(message);
    }
}

module.exports.authenticate = authenticate;
