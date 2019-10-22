module.exports.name = 'identify'

async function verifyKey(db, key) {
    const results = await db.select().from('nodes').where({
        key: key,
        enabled: true
    })

    return results.length > 0
}

module.exports.handler = async (session, message) => {
    if (session.state !== 'unidentified') {
        throw new Error('invalid session state:', session.state)
    }

    if (!message.hasOwnProperty('key')) {
        throw new Error('identify message does not contain key')
    }

    const verified = await verifyKey(session.server.db, message.key)

    if (!verified) {
        throw new Error('invalid node key')
    }

    session.state = 'identified'

    session.write({ type: 'identify', success: true })
}
