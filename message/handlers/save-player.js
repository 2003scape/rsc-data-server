// update a player's attributes in the database

const snakecaseKeys = require('snakecase-keys')
const { hashPassword, hashRecovery } = require('../../lib/hash')

module.exports.name = 'savePlayer'

async function insertLog(db, changes, player) {
    const type = changes.type

    if (!/^(password|recovery)$/.test(type)) {
        throw new Error(`invald log type "${type}"`)
    }

    const row = changes
    row.playerId = player.id
    row.ip = player.ip

    await db(`player_${type}_changes`).insert(snakecaseKeys(row))
}

async function updatePlayer(db, config, player) {
    const trx = db.transaction()

    if (player.password) {
        const oldPlayer = await db.select('id', 'password').from('players')
            .where({ username: player.username })

        player.password = await hashPassword(player.password, config)

        await insertLog(trx, { 
            type: 'password',
            oldPassword: oldPlayer.password,
            newPassword: player.password
        }, { ip: player.ip, ...oldPlayer })
    }

    if (player.recovery) {
        const oldPlayer = await db.select('id', 'recovery').from('players')
            .where({ username: player.username })

        hashRecovery(player.recovery)

        await insertLog(trx, { 
            type: 'recovery',
            oldRecovery: oldPlayer.recovery,
            newRecovery: player.recovery
        }, { ip: player.ip, ...oldPlayer })
    }

    trx('players').update(player)

    try {
        await trx.commit()
    } catch (e) {
        return trx.rollback()
    }
}

module.exports.handle = async function (session, message) {
}
