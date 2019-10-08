const readline = require('readline')
const knex = require('knex')
const uuid = require('uuid/v4')
const input = require('../input')

const db = knex(require('../knexfile').development)

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

async function main() {
    try {
        const name = await input.ask(rl, 'What is the node\'s (unique) name? ')
        const desc = await input.ask(rl,
            'Give a brief description of the node (optional): ')
        const key = uuid()
        console.log(`Creating new node '${name}'..`)

        const result = await db.insert({
            name: name,
            description: desc,
            key: key,
            enabled: true
        }).into('nodes')

        console.log(`Successfully created node '${name}'.`)
        console.log(`Its ID is ${result} and key is '${key}'`)
    } catch (error) {
        console.error(`Error creating new node:\n${error.message}`)
    }
    rl.close()
    db.destroy()
}

(async () => await main())()
