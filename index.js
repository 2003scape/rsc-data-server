const fs = require('fs')
const path = require('path')
const knex = require('knex')
const restify = require('restify')
const config = require('./config')
const pkg = require('./package')

const options = {
    name: pkg.name,
}

if (config.server.ssl) {
    options.key = fs.readFileSync(config.server.ssl.key)
    options.certificate = fs.readFileSync(config.server.ssl.cert)
}

const server = restify.createServer(options)
const db = knex(require('./knexfile').development)

function loadModules(dir) {
    for (let file of fs.readdirSync(dir)) {
        if (!file.endsWith('.js')) {
            continue
        }
        const mod = require(path.resolve(dir, file))
        mod(server, db)
    }
}

server.use(restify.plugins.acceptParser(server.acceptable))
server.use(restify.plugins.bodyParser())

loadModules('middleware')
loadModules('routes')

server.listen(config.server.port || 8080, () => {
    console.log(`${pkg.name} online at ${server.url}`)
})
