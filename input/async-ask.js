module.exports = async (rl, text) => new Promise(resolve => {
    rl.question(text, answer => {
        resolve(answer.trim())
    })
})
