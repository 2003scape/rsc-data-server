const skills = new Set(require('../skills.json'));
skills.add('overall');

async function getHiscoreRanks({
    token,
    skill = 'overall',
    rank = -1,
    page = 0
}) {
    if (!skills.has(skill)) {
        this.socket.sendMessage({ token, ranks: [] });
        return;
    }

    const queryHandler = this.server.queryHandler;
    const ranks = queryHandler.getHiscoreRanks(skill, rank, page);
    const pages = this.server.hiscorePages[skill] || 0;

    this.socket.sendMessage({ token, ranks, pages });
}

async function getPlayerRanks({ token, username }) {
    username = username.toLowerCase();

    const queryHandler = this.server.queryHandler;
    const ranks = queryHandler.getPlayerRanks(username) || null;

    this.socket.sendMessage({ token, ranks });
}

module.exports = { getHiscoreRanks, getPlayerRanks };
