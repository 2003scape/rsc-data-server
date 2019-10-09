const ask = require('./async-ask')

module.exports = async (rl, text, opts) => new Promise(async (resolve, reject) => {
    text += `\n`
    for (let i = 0; i < opts.length; i += 1) {
        text += `  ${i + 1}) ${opts[i]}\n`
    }

    try {
        const answer = await ask(rl, text)
        const index = +answer - 1

        if (index < 0 || index >= opts.length) {
            return reject(new Error('invalid option'))
        }

        resolve(opts[index])
    } catch (error) {
        reject(error)
    }
})
