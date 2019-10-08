const config = require('../config')

if (!config.middleware['key-header']) {
    console.error(`missing configuration: middleware.key-header`)
    return process.exit(1)
}

const keyHeader = config.middleware['key-header']

function unauthorized(res) {
    res.status(401)
    res.send({
        error: 'unauthorized access'
    })
}

module.exports = (server, db) => {
    server.use(async (req, res, next) => {
        if (!req.headers[keyHeader]) {
            return unauthorized(res)
        }

        const results = await db.select('enabled').from('nodes').where({
            key: req.headers[keyHeader],
            enabled: true
        })

        if (results.length === 0) {
            return unauthorized(res)
        }

        next()
    })
}
