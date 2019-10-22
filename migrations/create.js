const config = require('../config')

const TABLES = ['nodes','players','player_password_changes', 
    'player_recovery_changes']

exports.up = async knex => {
    // game server worlds, website, admin panels, etc.
    await knex.schema.createTable('nodes', table => {
        table.increments('id').unsigned().primary()
        table.string('name')
        table.string('description')
        table.string('key', 32)
        table.boolean('enabled').defaultTo(false)
        table.timestamp('created_at').defaultTo(knex.fn.now())

        table.unique('name')
    })

    // player data
    await knex.schema.createTable('players', table => {
        table.increments('id').unsigned().primary()
        table.string('username', 12)
        table.integer('rank').defaultTo(0)
        table.string('password')
        table.integer('x').defaultTo(122);
        table.integer('y').defaultTo(657);
        table.integer('quest_points').defaultTo(0) 
        table.integer('fatigue').defaultTo(0) // 0-75000
        table.integer('combat_style').defaultTo(0)
        table.boolean('block_chat').defaultTo(false)
        table.boolean('block_private').defaultTo(false)
        table.boolean('block_trade').defaultTo(false)
        table.boolean('block_duel').defaultTo(false)
        table.boolean('camera_auto').defaultTo(true)
        table.boolean('one_mouse_button').defaultTo(false)
        table.boolean('sound_off').defaultTo(false)
        table.integer('hair_color').defaultTo(2)
        table.integer('top_color').defaultTo(8)
        table.integer('leg_color').defaultTo(14)
        table.integer('head_sprite').defaultTo(1)
        table.integer('body_sprite').defaultTo(2)
        table.integer('skulled').defaultTo(0)
        table.integer('cur_attack').defaultTo(1)
        table.integer('cur_defence').defaultTo(1)
        table.integer('cur_strength').defaultTo(1)
        table.integer('cur_hits').defaultTo(10)
        table.integer('cur_ranged').defaultTo(1)
        table.integer('cur_prayer').defaultTo(1)
        table.integer('cur_magic').defaultTo(1)
        table.integer('cur_cooking').defaultTo(1)
        table.integer('cur_woodcutting').defaultTo(1)
        table.integer('cur_fletching').defaultTo(1)
        table.integer('cur_fishing').defaultTo(1)
        table.integer('cur_firemaking').defaultTo(1)
        table.integer('cur_crafting').defaultTo(1)
        table.integer('cur_smithing').defaultTo(1)
        table.integer('cur_mining').defaultTo(1)
        table.integer('cur_herblaw').defaultTo(1)
        table.integer('cur_agility').defaultTo(1)
        table.integer('cur_thieving').defaultTo(1)
        table.integer('exp_attack').defaultTo(0)
        table.integer('exp_defence').defaultTo(0)
        table.integer('exp_strength').defaultTo(0)
        table.integer('exp_hits').defaultTo(4616)
        table.integer('exp_ranged').defaultTo(0)
        table.integer('exp_prayer').defaultTo(0)
        table.integer('exp_magic').defaultTo(0)
        table.integer('exp_cooking').defaultTo(0)
        table.integer('exp_woodcutting').defaultTo(0)
        table.integer('exp_fletching').defaultTo(0)
        table.integer('exp_fishing').defaultTo(0)
        table.integer('exp_firemaking').defaultTo(0)
        table.integer('exp_crafting').defaultTo(0)
        table.integer('exp_smithing').defaultTo(0)
        table.integer('exp_mining').defaultTo(0)
        table.integer('exp_herblaw').defaultTo(0)
        table.integer('exp_agility').defaultTo(0)
        table.integer('exp_thieving').defaultTo(0)
        table.json('recovery').defaultTo('{}') // {question:answerHash,...}
        table.json('friends').defaultTo('[]') // [username,...]
        table.json('ignores').defaultTo('[]') // [username,...]
        table.json('inventory').defaultTo('[]') // [{id,amount},...]
        table.json('bank').defaultTo('[]') // [{id,amount},...]
        table.string('creation_ip')
        table.timestamp('creation_date').defaultTo(knex.fn.now()) // in ms
        table.string('login_ip')
        table.timestamp('login_date')
        table.timestamp('ban_end_date').defaultTo(0)
        table.timestamp('mute_end_date').defaultTo(0)
        table.timestamp('membership_end_date').defaultTo(0)
        table.json('quest_stages') // {questId:stage}
        table.json('cache') // various data from minigames and such

        table.unique('username');
    })

    // store password changes for recovery purposes
    await knex.schema.createTable('player_password_changes', table => {
        table.increments('id').unsigned().primary()
        table.integer('player_id').unsigned().references('id')
            .inTable('players').index()
        table.string('old_password')
        table.string('new_password')
        table.string('ip')
        table.timestamp('date').defaultTo(knex.fn.now()) 
    })

    await knex.schema.createTable('player_recovery_changes', table => {
        table.increments('id').unsigned().primary()
        table.integer('player_id').unsigned().references('id')
            .inTable('players').index()
        table.json('old_recovery')
        table.json('new_recovery')
        table.string('ip')
        table.timestamp('date').defaultTo(knex.fn.now())
    })
}

exports.down = async knex => {
    for (const table of TABLES) {
        await knex.schema.dropTableIfExists(table)
    }
}
