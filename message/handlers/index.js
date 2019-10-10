const fs = require('fs')
const path = require('path')

const handlers = new Map()

fs.readdirSync(__dirname).forEach(file => {
    if (file === path.basename(__filename) || !/\.js$/.test(file)) {
        return
    }

    const handler = require(path.join(__dirname, file))

    if (handler) {
        if (handlers.has(handler.name.toLowerCase())) {
            console.warn(`warning: duplicate msg handler for ${handler.name}`)
        }
        handlers.set(handler.name.toLowerCase(), handler.handler)
    }
})

module.exports = handlers
