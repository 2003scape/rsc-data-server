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

async function addNews({ token, title, category, body }) {}

async function editNews({ token, id, title, category, body }) {}

async function uploadFile({ token, name, file }) {}

async function getFile({ token, name }) {
    const queryHandler = this.server.queryHandler;
    let file = queryHandler.getFile(name);
    file = file ? file.toString('base64') : null;

    this.socket.sendMessage({ token, file });
}

module.exports = { getNews, addNews, editNews, uploadFile, getFile };
