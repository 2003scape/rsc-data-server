class World {
    constructor(client, id, members = false) {
        this.client = client;
        this.id = id;
        this.members = members;
        this.players = new Map(); // { username: id }
    }

    toString() {
        return (
            `[World ${this.id} (members=${this.members}, players=` +
            `${this.players.size})`
        );
    }
}

module.exports = World;
