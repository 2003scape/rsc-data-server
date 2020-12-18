const handlers = [
    require('./authenticate'),
    require('./hiscores'),
    require('./player'),
    require('./world')
];

const handlerMethods = {};

for (const handler of handlers) {
    for (const handlerName of Object.keys(handler)) {
        handlerMethods[handlerName] = handler[handlerName];
    }
}

module.exports = handlerMethods;
