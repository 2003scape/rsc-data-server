const bcrypt = require('bcryptjs');
const log = require('bole')('player');
const promisify = require('util').promisify;

const bcryptCompare = promisify(bcrypt.compare);
const bcryptHash = promisify(bcrypt.hash);

async function playerCount({ token }) {
    const queryHandler = this.server.queryHandler;
    const playerCount = await queryHandler.getPlayerCount();

    this.socket.sendMessage({
        token,
        count: playerCount
    });
}

async function playerOnlineCount({ token }) {
    this.socket.sendMessage({
        token,
        count: this.server.totalPlayers
    });
}

async function playerGetWorlds({ token, usernames }) {
    const usernameWorlds = {};

    for (const username of usernames) {
        usernameWorlds[username] = this.server.getPlayerWorld(username);
    }

    this.socket.sendMessage({ token, usernameWorlds });
}

async function playerLogin({ token, username, password, ip }) {
    if (!this.world) {
        log.warn(`${this} trying to login before connected to world`);
        this.socket.end();
        return;
    }

    username = username.toLowerCase();

    const queryHandler = this.server.queryHandler;
    const message = { token };

    const hash = await queryHandler.getPlayerPassword(username);

    if (!hash || !(await bcryptCompare(password, hash))) {
        message.code = 3;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const isLoggedIn = this.server.getPlayerWorld(username) !== 0;

    if (isLoggedIn) {
        message.code = 4;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const ipLoginCount = await queryHandler.getPlayerLoginCount(ip);

    if (ipLoginCount >= this.server.config.playersPerIp) {
        message.code = 6;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const banEndDate = await queryHandler.getPlayerBanEnd(username);

    if (banEndDate) {
        if (banEndDate > Date.now()) {
            message.code = 11;
            message.success = false;
            return this.socket.sendMessage(message);
        } else if (banEndDate === -1) {
            message.code = 12;
            message.success = false;
            return this.socket.sendMessage(message);
        } else {
            await queryHandler.setPlayerBan(username, 0);
            await playerLogin.bind(this, { token, username, password, ip })();
            return;
        }
    }

    if (this.world.members) {
        const membershipEndDate = await queryHandler.getPlayerMembershipEnd(
            username
        );

        if (membershipEndDate < Date.now()) {
            message.code = 15;
            message.success = false;
            return this.socket.sendMessage(message);
        }
    }

    const player = await queryHandler.getPlayer(username);
    await queryHandler.updatePlayerLogin(player.id, Date.now());

    message.success = true;
    message.player = player;

    this.server.totalPlayers += 1;
    this.world.players.set(username, player.id);

    this.server.broadcastToWorlds({
        handler: 'playerLoggedIn',
        username: username
    });

    this.socket.sendMessage(message);
}

async function playerLogout({ token, username }) {
    username = username.toLowerCase();

    this.server.totalPlayers -= 1;
    this.world.players.remove(username);

    this.server.broadcastToWorlds({
        token,
        handler: 'playerLoggedOut',
        username: username
    });
}

async function playerRegister({ token, username, password, ip }) {
    const queryHandler = this.server.queryHandler;
    const message = { token };

    const lastCreationDate = await queryHandler.lastCreationDate(ip);

    if (Date.now() - lastCreationDate < 1000 * 60 * 60) {
        message.code = 7;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    if (await queryHandler.usernameExists(username)) {
        message.code = 3;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    password = await bcryptHash(
        password,
        this.server.config.passwordHashRounds
    );

    log.debug(`${this} registered player "${username}" from ${ip}`);

    await queryHandler.insertPlayer({ username, password, ip });

    message.code = 2;
    message.success = true;
    this.socket.sendMessage(message);
}

async function playerUpdate(player) {
    const queryHandler = this.server.queryHandler;
    const message = { token: player.token };

    delete player.token;
    await queryHandler.updatePlayer(player);

    message.success = true;
    this.socket.sendMessage(message);
}

async function playerMessage({
    token,
    toUsername,
    toWorld,
    fromUsername,
    message
}) {
    try {
        const world = this.server.worlds[toWorld];

        world.client.sendMessage({
            token,
            handler: 'playerMessage',
            toUsername,
            fromUsername,
            message
        });

        this.socket.sendMessage({
            token,
            success: true
        });
    } catch (e) {
        this.socket.sendMessage({
            token,
            error: 'invalid world',
            success: false
        });
    }
}

module.exports = {
    playerCount,
    playerGetWorlds,
    playerLogin,
    playerLogout,
    playerOnlineCount,
    playerRegister,
    playerUpdate,
    playerMessage
};
