const bcrypt = require('bcryptjs');
const log = require('bole')('player');
const promisify = require('util').promisify;
const sleep = require('sleep-promise');

const bcryptCompare = promisify(bcrypt.compare);
const bcryptHash = promisify(bcrypt.hash);

const PLAYER_BOOLEAN_PROPERTIES = [
    'cameraAuto',
    'oneMouseButton',
    'soundOn',
    'blockChat',
    'blockPrivateChat',
    'blockTrade',
    'blockDuel'
];

async function throttleAttempt(queryHandler, ip) {
    let { attempts, lastDate } = queryHandler.getLoginAttempts(ip);

    if (attempts >= 5) {
        if (Date.now() - lastDate >= 1000 * 60 * 5) {
            return attempts;
        } else {
            queryHandler.setLoginAttempts(ip, 0);
            attempts = 0;
            return 0;
        }
    }

    await sleep(attempts * 1000);
    return attempts;
}

async function playerCount({ token }) {
    const queryHandler = this.server.queryHandler;
    const playerCount = queryHandler.getPlayerCount();

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

async function playerLogin({ token, username, password, ip, reconnecting }) {
    const message = { token };

    if (!this.world) {
        log.warn(`${this} trying to login before connected to world`);
        message.code = 9;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    username = username.toLowerCase();

    const queryHandler = this.server.queryHandler;
    const attempts = await throttleAttempt(queryHandler, ip);

    if (attempts >= 5) {
        message.code = 7;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const hash = queryHandler.getPlayerPassword(username);

    if (!hash || !(await bcryptCompare(password, hash))) {
        message.code = 3;
        message.success = false;
        queryHandler.setLoginAttempts(ip, attempts + 1);
        return this.socket.sendMessage(message);
    }

    const rounds = bcrypt.getRounds(hash);
    const passwordHashRounds = this.server.config.passwordHashRounds;

    if (rounds < passwordHashRounds) {
        log.debug(
            `re-hashing ${username} password from ${rounds} rounds to ` +
                `${passwordHashRounds} rounds`
        );

        const newHash = await bcryptHash(password, passwordHashRounds);
        queryHandler.setPlayerPassword(username, newHash);
    }

    const isLoggedIn = this.server.getPlayerWorld(username) !== 0;

    if (isLoggedIn) {
        message.code = 4;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const ipLoginCount = queryHandler.getPlayerLoginCount(ip);

    if (ipLoginCount >= this.server.config.playersPerIP) {
        message.code = 6;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const banEndDate = queryHandler.getPlayerBanEnd(username);

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
            queryHandler.setPlayerBan(username, 0);
            await playerLogin.bind(this, { token, username, password, ip })();
            return;
        }
    }

    if (this.world.members) {
        /*const membershipEndDate = await queryHandler.getPlayerMembershipEnd(
            username
        );

        if (membershipEndDate < Math.floor(Date.now() / 1000)) {
            message.code = 15;
            message.success = false;
            return this.socket.sendMessage(message);
        }*/
    }

    const player = queryHandler.getPlayer(username);

    queryHandler.updatePlayerLogin(
        player.id,
        Math.floor(Date.now() / 1000),
        ip
    );

    message.success = true;
    message.player = player;

    if (reconnecting) {
        message.code = 1;
    } else {
        message.code = player.rank > 0 ? 25 : 0;
    }

    this.server.totalPlayers += 1;
    this.world.players.set(username, player.id);

    if (!player.blockPrivateChat) {
        this.server.broadcastToWorlds({
            handler: 'playerLoggedIn',
            username,
            world: this.world.id
        });
    }

    this.socket.sendMessage(message);
}

async function playerLogout({ token, username }) {
    username = username.toLowerCase();

    this.server.totalPlayers -= 1;
    this.world.players.delete(username);

    this.server.broadcastToWorlds({
        token,
        handler: 'playerLoggedOut',
        username
    });
}

async function playerWorldChange({ token, username, world }) {
    this.server.broadcastToWorlds({
        token,
        handler: 'playerWorldChange',
        username,
        world
    });
}

async function playerRegister({ token, username, password, ip }) {
    const message = { token };

    if (!this.world) {
        log.warn(`${this} trying to register before connected to world`);
        message.code = 9;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const queryHandler = this.server.queryHandler;
    const ipLoginCount = queryHandler.getPlayerLoginCount(ip);

    if (ipLoginCount >= this.server.config.playersPerIP) {
        message.code = 6;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    const lastCreationDate = +queryHandler.lastCreationDate(ip);

    if (Date.now() - lastCreationDate < 1000 * 60 * 5) {
        message.code = 7;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    username = username.replace('_', '').trim().toLowerCase();

    if (queryHandler.usernameExists(username)) {
        message.code = 3;
        message.success = false;
        return this.socket.sendMessage(message);
    }

    password = await bcryptHash(
        password,
        this.server.config.passwordHashRounds
    );

    queryHandler.insertPlayer({ username, password, ip });

    message.code = 2;
    message.success = true;
    this.socket.sendMessage(message);

    log.info(`${this} registered player "${username}" from ${ip}`);
}

async function playerUpdate(player) {
    const queryHandler = this.server.queryHandler;
    const message = { token: player.token };

    delete player.token;
    delete player.handler;

    for (const property of PLAYER_BOOLEAN_PROPERTIES) {
        player[property] = +player[property];
    }

    queryHandler.updatePlayer(player);

    message.success = true;
    this.socket.sendMessage(message);
}

async function playerMessage({ token, toUsername, fromUsername, message }) {
    try {
        const worldID = this.server.getPlayerWorld(toUsername);
        const world = this.server.worlds[worldID];

        world.client.socket.sendMessage({
            token,
            handler: 'playerMessage',
            toUsername,
            fromUsername,
            message
        });

        this.socket.sendMessage({ token, success: true });
    } catch (e) {
        this.socket.sendMessage({
            token,
            error: 'invalid world',
            success: false
        });
    }
}

async function webLogin({ token, username, password, ip }) {
    username = username.trim().toLowerCase();

    const queryHandler = this.server.queryHandler;

    const attempts = await throttleAttempt(queryHandler, ip);

    if (attempts >= 5) {
        return this.socket.sendMessage({ token, success: false });
    }

    const hash = queryHandler.getPlayerPassword(username);

    if (!hash || !(await bcryptCompare(password, hash))) {
        queryHandler.setLoginAttempts(ip, attempts + 1);
        return this.socket.sendMessage({ token, success: false });
    }

    const player = queryHandler.getWebPlayer(username);

    return this.socket.sendMessage({ token, success: true, player });
}

module.exports = {
    playerCount,
    playerGetWorlds,
    playerLogin,
    playerLogout,
    playerWorldChange,
    playerOnlineCount,
    playerRegister,
    playerUpdate,
    playerMessage,
    webLogin
};
