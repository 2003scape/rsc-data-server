const SessionState = {
    Invalid: {
        // ignore messages in an invalid state
        handleMessage: () => { }
    },
    Unidentified: {
        handleMessage: (session, message) => {
            // in the unidentified state, only the 'identify' command
            // is able to be handled. this will then move the state to
            // identified, where other commands can be executed
            if (message.command !== 'identify') {
                return console.warn(`${session} sent unidentified message`)
            }
            // handle message
        }
    },
    Identified: {
        // here, the session is fully identified and able to execute
        // any (available) command it wants
        handleMessage: (session, message) => {

        }
    }
}

module.exports = SessionState
