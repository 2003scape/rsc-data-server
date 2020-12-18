async function getHiscoreRanks({
    token,
    skill = 'overall',
    rank = -1,
    page = 0
}) {
    const queryHandler = this.server.queryHandler;
    const ranks = queryHandler.getHiscoreRanks(skill, rank, page);
    this.socket.sendMessage({ token, ranks });
}

module.exports = { getHiscoreRanks };
