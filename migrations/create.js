const TABLES = ['nodes', 'auth_keys']

exports.up = async knex => {
    await knex.schema.createTable('nodes', table => {
        table.increments('id').unsigned().primary()
        table.string('name')
        table.enu('type', [
            'game_server', 'web_server'
        ], { useNative: true, enumName: 'node_type' })
        table.timestamp('created_at').defaultTo(knex.fn.now())

        table.unique('name')
    })

    await knex.schema.createTable('auth_keys', table => {
        table.increments('id').unsigned().primary()
        table.integer('node_id').unsigned()
            .references('id').inTable('nodes').index()
        table.string('key', 32)
        table.boolean('enabled').defaultTo(false)
        table.timestamp('created_at').defaultTo(knex.fn.now())
    })
}

exports.down = async knex => {
    for (const table of TABLES) {
        await knex.schema.dropTableIfExists(table)
    }
}
