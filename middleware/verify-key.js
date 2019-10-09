const config = require('../config')

if (!config.middleware['key-header']) {
    console.error(`missing configuration: middleware.key-header`)
    return process.exit(1)
}

const keyHeader = config.middleware['key-header']

function unauthorized(res) {
    res.status(401)
    res.json({
        error: 'unauthorized access'
    })
    res.end()
}

module.exports = async server => {
    try {
        const [req, res, next] = await server.use()

        if (!req.headers[keyHeader]) {
            return unauthorized(res)
        }

        const results = await server.db.select('enabled').from('nodes').where({
            key: req.headers[keyHeader],
            enabled: true
        })

        if (results.length === 0) {
            return unauthorized(res)
        }

        next()
    } catch (error) {
        console.error(`critical error: ${error}`)
        res.status(500)
        res.json({
            error: 'internal server error'
        })
        res.end()
    }
}
