const path = require('path')
const pkg = require('./package')
const exitHandler = require('./util/exit-handler')
const Server = require('./network/server')

const config = require('./config')
const knexConfig = require(path.resolve('.', 'knexfile')).development

async function main() {
    const server = new Server(config, knexConfig)

    try {
        await server.bind()

        console.log(`${pkg.name} online at`, server.socket.address())
    } catch (error) {
        console.error(`critical error: ${error}`)
    }
}

(async () => await main())()
