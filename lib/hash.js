const bcrypt = require('bcryptjs')
const { promisify } = require('util')

const bcryptHash = promisify(bcrypt.hash)
const bcryptCompare = promisify(bcrypt.compare)

async function compare(raw, hashed) {
    return await bcryptCompare(raw, hashed)
}

async function hashPassword(password, config) {
    return await bcryptHash(password, config.options.bcrypt.passwordRounds)
}

async function hashRecoveryAnswer(answer, config) {
    return await bcryptHash(answer, config.options.bcrypt.recoveryRounds)
}

async function hashRecovery(recovery, config) {
    for (const question of Object.keys(recovery)) {
        recovery[question].answer = await hashRecoveryAnswer(
            recovery[question].answer, config)
    }
}

async function compareRecovery(raw, recovery) {
    for (const question of Object.keys(recovery)) {
        const isValid = await compare(raw[question], recovery[question])

        if (!isValid) {
            return false
        }
    }

    return true
}

module.exports = {
    compare, hashPassword, hashRecoveryAnswer, hashRecovery, compareRecovery
}