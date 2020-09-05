class World {
    constructor(client, id, members = false) {
        this.client = client;
        this.id = id;
        this.members = members;
        this.players = new Map(); // { username: id }
    }
}

module.exports = World;
