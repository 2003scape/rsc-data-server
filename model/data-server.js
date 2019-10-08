const fs = require('fs')
const path = require('path')
const knex = require('knex')
const restify = require('restify')

class DataServer {
    constructor(serverConfig, httpConfig, dbConfig) {
        this.config = serverConfig
        this.http = restify.createServer(httpConfig)
        this.db = knex(dbConfig)

        this.http.use(restify.plugins.acceptParser(this.http.acceptable))
        this.http.use(restify.plugins.bodyParser())
    }

    loadModules(directory) {
        for (let file of fs.readdirSync(directory)) {
            if (!file.endsWith('.js')) {
                continue
            }
            const mod = require(path.resolve(directory, file))
            mod(this)
        }
    }

    async use(...args) {
        return new Promise(resolve => {
            this.http.use(...args, (...useArgs) => resolve([...useArgs]))
        })
    }

    async get(...args) {
        return new Promise(resolve => {
            this.http.get(...args, (...getArgs) => resolve([...getArgs]))
        })
    }

    async listen() {
        return new Promise(async resolve => {
            this.http.listen(this.config.server.port || 8080, resolve)
        })
    }
}

module.exports = DataServer
