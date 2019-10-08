const restify = require('restify')
const pkg = require('./package')
const config = require('./config')

const options = {
    name: pkg.name,
    key: config.server.ssl.key || null,
    certificate: config.server.ssl.certificate || null
}

const server = restify.createServer(options)

server.get('/', (req, res, next) => {
    res.send('hello world')
    next()
})

server.listen(config.server.port || 8080, () => {
    console.log(`server online at ${server.url}`)
})
