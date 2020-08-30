const bcrypt = require('bcryptjs');
const log = require('bole')('player');
const promisify = require('util').promisify;

const bcryptHash = promisify(bcrypt.hash);

async function playerLogin({ username, password, ip }) {
    //const onlineFriends = [];
}

async function playerRegister({ token, username, password, ip }) {
    const queryHandler = this.server.queryHandler;
    const message = { token };

    const lastRegistrationDate = await queryHandler.lastRegistrationDate(ip);

    if ((Date.now() - lastRegistrationDate) < (1000 * 60 * 60)) {
        message.code = 7;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    if (await queryHandler.usernameExists(username)) {
        message.code = 3;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    password = await bcryptHash(password,
        this.server.config.passwordHashRounds);

    log.debug(`${this} registered player "${username}"`);

    await queryHandler.insertPlayer({ username, password, ip });
    this.socket.sendMessage(message);
}

module.exports.playerLogin = playerLogin;
module.exports.playerRegister = playerRegister;
