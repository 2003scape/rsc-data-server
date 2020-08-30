const fs = require('fs');

const CREATE_TABLES =
    fs.readFileSync(`${__dirname}/../rsc-data-server.sql`).toString();

class QueryHandler {
    constructor(database) {
        this.database = database;
    }

    async init() {
        this.statements = {
            resetLoggedIn: 'UPDATE `players` SET `logged_in` = 0',
            usernameExists: 'SELECT 1 FROM `players` WHERE `username` = ' +
            '?',
            lastRegistrationDate: 'SELECT `creation_date` FROM `players` ' +
            'WHERE `creation_ip` = ?',
            insertPlayer: 'INSERT INTO players (`username`, `password`, ' +
            '`creation_ip`) VALUES (:username, :password, :ip)'
        };

        for (const statementName of Object.keys(this.statements)) {
            this.statements[statementName] = await this.database.prepare(
                this.statements[statementName]);
        }
    }

    async createTables() {
        await this.database.exec(CREATE_TABLES);
    }

    async lastRegistrationDate(ip) {
        await this.statements.lastRegistrationDate.bind(ip);
        const res = await this.statements.lastRegistrationDate.get();

        if (res) {
            return new Date(`${res['creation_date']}Z`);
        }
    }

    async usernameExists(username) {
        await this.statements.usernameExists.bind([username]);
        return !!(await this.statements.usernameExists.get());
    }

    async insertPlayer({ username, password, ip }) {
        await this.statements.insertPlayer.bind({
            ':username': username,
            ':password': password,
            ':ip': ip
        });

        await this.statements.insertPlayer.run();
    }

    async sync() {
        await this.createTables();
        await this.init();

        await this.statements.resetLoggedIn.run();
        await this.statements.resetLoggedIn.finalize();
    }
}

module.exports = QueryHandler;
