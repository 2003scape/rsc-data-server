module.exports.name = 'identify'

async function verifyKey(db, key) {
    const results = await db.select().from('nodes').where({
        key: key,
        enabled: true
    })

    return results.length > 0
}

module.exports.handler = (session, message) => new Promise(async (resolve, reject) => {
    if (session.state() !== session.state('Unidentified')) {
        return reject(new Error('invalid session state:', session.state()))
    }
    if (!message.hasOwnProperty('key')) {
        return reject(new Error('identify message does not contain key'))
    }

    const verified = await verifyKey(session.server.db, message.key)

    if (!verified) {
        return reject(new Error('invalid node key'))
    }

    session.state().change('Identified')
    resolve()
})
