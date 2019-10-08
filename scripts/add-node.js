const readline = require('readline')
const knex = require('knex')

const config = require('../config')
const input = require('../input')

const db = knex(require('../knexfile').development)
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

async function main() {
    try {
        const name = await input.ask(rl, 'What is the node\'s (unique) name? ')
        const type = await input.askList(rl, 'What type of node is this?',
            config.node.types)

        console.log(`Creating new node '${name}' of type '${type}'..`)

        const result = await db.insert({ name: name, type: type })
            .into('nodes')

        console.log(`Successfully created ${name}. Its id is ${result[0]}.`)
    } catch (error) {
        console.error(`Error creating new node: ${error.message}`)
    }
    rl.close()
    db.destroy()
}

(async () => await main())()
