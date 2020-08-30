const handlers = [
    require('./authenticate'),
    require('./player')
];

const handlerMethods = {};

for (const handler of handlers) {
    for (const handlerName of Object.keys(handler)) {
        handlerMethods[handlerName] = handler[handlerName];
    }
}

module.exports  = handlerMethods;
