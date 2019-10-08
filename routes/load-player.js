// TODO: implement maximum login attempts before temporarily banning an ip
// TODO: find if the player is already logged into another world
// TODO: remove unused LoginResults

const LoginResult = {
    success: 0,
    successReconnect: 1,
    invalidCredentials: 3,
    alreadyOnline: 4,
    clientUpdated: 5,
    maxConnectionsExceeded: 6,
    loginAttemptsExceeded: 7,
    loginServerRejectedSession: 9,
    temporarilyBanned: 11,
    permanentlyBanned: 12,
    membershipRequired: 15,
    accountLoadingError: 17,
    stolenAccount: 18,
    stolenPassword: 22,
    staff: 25
}

module.exports = async server => {
    try {
        const [req, res] = await server.get('/player/:username/:password')

        res.send({
            result: LoginResult.staff,
            profile: {
                username: req.params.username,
                password: req.params.password,
                status: 0x4 | 0x2 | 0x1, // hack for admin priv..
                x: 122,
                y: 657
            }
        })
    } catch (error) {
        console.error(`critical error: ${error}`)
        res.send({
            result: LoginResult.accountLoadingError
        })
    }
}
