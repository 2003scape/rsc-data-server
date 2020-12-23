async function getNews({
    token,
    id = -1,
    terms = '',
    page = 0,
    category = -1,
    before = -1,
    after = 1
}) {
    const queryHandler = this.server.queryHandler;

    const articles = queryHandler.getNews({
        id,
        terms,
        page,
        category,
        before,
        after
    });

    this.socket.sendMessage({
        token,
        articles
    });
}

async function addNews({ token, title, category, body }) {}

async function editNews({ token, id, title, category, body }) {}

async function uploadFile({ token, name, file }) {}

module.exports = { getNews, addNews, editNews, uploadFile };
