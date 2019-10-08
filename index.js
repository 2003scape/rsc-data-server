const fs = require('fs')
const path = require('path')
const pkg = require('./package')
const DataServer = require('./model/data-server')

const config = require('./config')
const httpConfig = { name: pkg.name }
const knexConfig = require(path.resolve('.', 'knexfile')).development

if (config.server.ssl) {
    httpConfig.key = fs.readFileSync(config.server.ssl.key)
    httpConfig.certificate = fs.readFileSync(config.server.ssl.cert)
}

async function main() {
    const server = new DataServer(config, httpConfig, knexConfig)

    server.loadModules(path.resolve('.', 'middleware'))
    server.loadModules(path.resolve('.', 'routes'))

    try {
        await server.listen()
        console.log(`${pkg.name} online at ${server.http.url}`)
    } catch (error) {
        console.error(`critical error: ${error}`)
    }
}

(async () => await main())()
