const handlers = require('../message/handlers')

async function handle(session, message) {
    if (!message.hasOwnProperty('type')) {
        session.close()
        return console.warn(`${session} sent invalid json object`)
    }

    const handler = handlers.get(message.type.toLowerCase())

    if (!handler) {
        session.close()
        return console.warn(`${session} sent unknown message:`, message)
    }

    try {
        await handler(session, message)
    } catch (error) {
        console.error(error)
        session.close()
    }
}

const SessionState = {
    Invalid: {
        // ignore messages in an invalid state
        handleMessage: () => { }
    },
    Unidentified: {
        handleMessage: async (session, message) => {
            // in the unidentified state, only the 'identify' type
            // is able to be handled. this will then move the state to
            // identified, where other commands can be executed
            if (message.type !== 'identify') {
                return console.warn(`${session} sent a message unidentified`)
            }
            handle(session, message)
        }
    },
    Identified: {
        // here, the session is fully identified and able to execute
        // any (available) command it wants
        handleMessage: handle
    }
}

module.exports = SessionState
