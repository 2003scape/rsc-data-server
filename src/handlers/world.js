const World = require('../world');
const log = require('bole')('world');

async function worldConnect(world) {
    const { token, members } = world;
    let id = parseInt(world.id, 10);
    const queryHandler = this.server.queryHandler;
    const message = { token };

    if (id < 1 || id > 254) {
        log.warn(`${this} trying to connect to invalid world id ${id}`);
        message.success = false;
        message.error = 'world id must be between 1 and 254';
        return this.socket.sendMessage(message);
    }

    if (this.server.worlds[id]) {
        log.warn(`${this} trying to connect to pre-existing world id ${id}`);
        message.success = false;
        message.error = 'world id already connected';
        return this.socket.sendMessage(message);
    }

    await queryHandler.insertWorld({
        id: world.id,
        ip: this.getIP(),
        tcpPort: world.tcpPort,
        websocketPort: world.websocketPort,
        country: world.country.toUpperCase(),
        members: world.members,
    });

    this.world = new World(this, id, members);
    this.server.addWorld(this.world);

    message.success = true;
    this.socket.sendMessage(message);
}

async function worldDisconnect() {
    if (this.world) {
        this.server.removeWorld(this.world);
    }
}

// get a list of online and offline worlds
async function worldGetList({ token }) {
    const queryHandler = this.server.queryHandler;
    const message = { token };

    const worlds = (await queryHandler.getWorlds()).map(world => {
        const worldInstance = this.server.worlds[world.id];

        if (worldInstance) {
            world.online = true;
            world.players = worldInstance.players.size;
        } else {
            world.online = false;
            world.players = 0;
        }

        return world;
    });

    message.worlds = worlds;
    this.socket.sendMessage(message);
}

module.exports = {
    worldConnect,
    worldDisconnect,
    worldGetList
};
