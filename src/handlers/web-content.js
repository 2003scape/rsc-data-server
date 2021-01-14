async function getNews({
    token,
    id = -1,
    terms = '',
    page = 0,
    category = -1,
    before = -1,
    after = -1
}) {
    const queryHandler = this.server.queryHandler;

    const { pages, articles } = queryHandler.getNews({
        id,
        terms,
        page,
        category: category > -1 ? category - 1 : category,
        before,
        after
    });

    this.socket.sendMessage({ token, articles, pages });
}

async function addNews({ token, id, title, date, category, body }) {
    date = date || Math.floor(Date.now() / 1000);

    const queryHandler = this.server.queryHandler;

    try {
        if (typeof id === 'number') {
            queryHandler.editNews({ id, title, category, body, date });
        } else {
            queryHandler.insertNews({ title, category, body, date });
        }

        this.socket.sendMessage({ token, success: true });
    } catch (e) {
        this.socket.sendMessage({ token, success: false });
    }
}

async function deleteNews({ token, id }) {
    const queryHandler = this.server.queryHandler;

    try {
        queryHandler.deleteNews(id);
        this.socket.sendMessage({ token, success: true });
    } catch (e) {
        this.socket.sendMessage({ token, success: false });
    }
}

async function addFile({ token, name, file }) {}

async function getFile({ token, name }) {
    const queryHandler = this.server.queryHandler;
    let file = queryHandler.getFile(name);
    file = file ? file.toString('base64') : null;

    this.socket.sendMessage({ token, file });
}

async function getGodLetter({ token, id }) {
    const queryHandler = this.server.queryHandler;

    this.socket.sendMessage({ token, letters: queryHandler.getGodLetter(id) });
}

module.exports = {
    getNews,
    addNews,
    deleteNews,
    addFile,
    getFile,
    getGodLetter
};
