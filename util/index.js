const ask = require('./input/async-ask')
const askList = require('./input/async-ask-list')
const exitHandler = require('./exit-handler')

module.exports.input = {
    ask: ask,
    askList: askList
}

module.exports.exitHandler = exitHandler
