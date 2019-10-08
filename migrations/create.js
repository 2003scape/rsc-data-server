const config = require('../config')

const TABLES = ['nodes']

exports.up = async knex => {
    await knex.schema.createTable('nodes', table => {
        table.increments('id').unsigned().primary()
        table.string('name')
        table.string('description')
        table.string('key', 32)
        table.boolean('enabled').defaultTo(false)
        table.timestamp('created_at').defaultTo(knex.fn.now())

        table.unique('name')
    })
}

exports.down = async knex => {
    for (const table of TABLES) {
        await knex.schema.dropTableIfExists(table)
    }
}
