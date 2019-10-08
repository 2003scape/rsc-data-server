module.exports = async (server, db) => {
    server.get('/player/:username', (req, res, next) => {
        res.json({
            body: req.params
        })
        next()
    })
}
