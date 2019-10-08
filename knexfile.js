// http://knexjs.org/#knexfile
const pkg = require('./package')

module.exports = {
    development: {
        client: 'sqlite3',
        connection: { filename: `${pkg.name}.sqlite` },
        useNullAsDefault: true
    },
    production: {
        client: 'sqlite3',
        connection: { filename: `${pkg.name}.sqlite` },
        useNullAsDefault: true
    }
}
