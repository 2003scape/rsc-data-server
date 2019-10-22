// add a new player to the database

const snakecaseKeys = require('snakecase-keys')
const { hashPassword, hashRecovery } = require('../../lib/hash')

module.exports.name = 'registerPlayer'

async function insertPlayer(db, player) {
    await db('players').insert(snakecaseKeys(player))
}

module.exports.handler = async (session, message) => {
    const config = session.server.config.server
    const db = session.server.db
    const player = message.player

    player.password = await hashPassword(player.password, config)

    if (player.recovery) {
        await hashRecovery(player.recovery, config)
    }

    try {
        await insertPlayer(db, player)
    } catch (e) {
        session.write({ success: false, reason: 'name in use' })
        return
    }

    session.write({ success: true })
}
