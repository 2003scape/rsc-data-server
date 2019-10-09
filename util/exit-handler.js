const pkg = require('../package')

const signals = ['SIGINT', 'SIGUSR1', 'SIGUSR2', 'uncaughtException', 'exit']
let requestCount = 0

async function close(server) {
    await server.unbind()
    process.exit()
}

async function exitHandler(server, reason) {
    switch (reason.toLowerCase()) {
        case 'sigint':
            if (requestCount === 0) {
                requestCount += 1

                console.log(`\nrequest to exit ${pkg.name}.`,
                    `press ctrl-c again to exit`)

                setTimeout(() => {
                    requestCount = 0
                    console.log('aborting exit request')
                }, 5000)
                return
            } else {
                await close(server)
            }
        default:
            console.log(`\n${pkg.name} is closing due to: ${reason}`)
            await close(server)
    }
}

module.exports.addListeners = server => {
    const add = type => process.on(type,
        async () => await exitHandler(server, type))

    for (let signal of signals) {
        add(signal)
    }
}
