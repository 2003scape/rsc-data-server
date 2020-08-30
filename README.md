# rsc-data-server
manage [rsc-server](https://github.com/2003scape/rsc-server) worlds,
player storage, friend communication, etc. jagex refered to theirs as the
loginserver.  this server uses [JSON](https://www.npmjs.com/package/json-socket)
to communicate with rsc-server over TCP or UNIX file sockets for IPC.

## install

    # npm install @2003scape/rsc-data-server # -g for the CLI program

## usage
```javascript
const Server = require('@2003scape/rsc-data-server');
const fs = require('fs').promises;

(async () => {
    const config = JSON.parse(await fs.readFile('./config.json'));
    const server = new Server(config);
    await server.init();
})();
```

## cli usage
```
$ rsc-data-server -c /etc/rsc-data-server/config.json
```

## configuration
```javascript
{
    "sockFile": "/tmp/rsc-data-server.sock" || null,
    "port": 1331 || null,
    "bcrypt": {
        "passwordRounds": 12,
        "recoveryRounds": 15
    },
    "sqliteFile": "./rsc-data-server.sqlite"
}
```

## handlers
rsc-data-server responds to JSON messages with the `.handler` property set to
the following:

### authenticate
authenticate rsc-server or rsc-www instance to allow the rest of the handlers
to be used.

```javascript
{
    handler; 'authenticate',
    password: ''
}
```

### worldConnect
initialize an rsc-server for players to login to.

```javascript
{
    handler; 'worldConnect',
    id: 1, // 1-254
    port: 43594,
    members: false, // or true
    country: 'CAN' // ISO 3166-1 alpha-3
}
```

### worldDisconnect
disconnect an rsc-server instance. happens automatically if the connection is
dropped.

```javascript
{
    type: 'worldDisconnect'
}
```

### worldGetList
get a list of worlds.

```javascript
[
    {
        id: 1,
        members: false,
        country: 'CAN',
        online: true,
        players: 0 // to 1250
    }
]
```

### playerCount
the total number of registered players.

### playerOnlineCount
the number of players online in each world.

### playerRegister
```javascript
{
    username: '',
    password: '',
    ip: ''
}
```

returns:
```javascript
{
    success: true, // or false
    registerCode: 0 // used in the client to display message
}
```

### playerLogin
checks if a player's credentials are correct and if they're allowed onto a
certain world.

```javascript
{
    username: '',
    password: '',
    world: 1 // up to 254
}
```

### playerGetInfo
get a player's skills, inventory, quest status, etc.

```javascript
{
    handler: 'playerGetInfo',
    username: ''
}
```

returns:
```javascript
{
    bank: [ { id: 10, amount: 1000 } ],
    inventory: [ { id: 10, amount: 1000 } ],
    skills: [], // etc.
}
```

### playerMessage
send a message to a player on another world.

```javascript
{
    handler: 'playerMessage',
    fromUsername: '',
    toUsername: '',
    message: ''
}
```

## senders
rsc-data-server sends these to certain (or all) clients with the each header
corresponding to the `.type` property:

### playerLogin
sent to rsc-server instances when players login.

```javascript
{
    type: 'playerLogin',
    username: "",
    world: 1 // up to 254
}
```

### playerMessage
sent to the rsc-server instance corresponding to the the world `toUsername`
resides in the `playerMessage` handler.

```javascript
{
    fromUsername: "",
    toUsername: "",
    message: ""
}
```

## license
Copyright (C) 2020  2003Scape Team

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as
published by the Free Software Foundation, either version 3 of the
License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see http://www.gnu.org/licenses/.
