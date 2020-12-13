# rsc-data-server
manage [rsc-server](https://github.com/2003scape/rsc-server) worlds,
player storage, friend communication, etc. jagex refered to theirs as the
loginserver.  this server uses [JSON](https://www.npmjs.com/package/json-socket)
to communicate with rsc-server over TCP or UNIX file sockets for IPC.

## install

    # npm install @2003scape/rsc-data-server # -g for the CLI program

## cli usage
`-c <config-file>` is optional, rsc-data-server will look for *config.json* in
its own directory first.

```
$ rsc-data-server -c /etc/rsc-data-server/config.json
```

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

## config.json
```javascript
{
    "sockFile": "/tmp/rsc-data-server.sock", // unix IPC socket files
    "port": 8001, // optional TCP port
    "sqliteFile": "./rsc-data-server.sqlite",
    // default is "test"
    "password": "$2y$10$wufvP1CJMLYmBHKl2Ah2k.CGQwQV5aUMIcXrPNUfmqJ9ibNhhvFnS",
    "passwordHashRounds": 12,
    "recoveryHashRounds": 15,
    "playersPerIp": 1
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
    password: 'test'
}
```

returns:
```javascript
{
    success: true, // or false
    error: '' // if success false
}
```

### worldConnect
initialize an rsc-server for players to login to.

```javascript
{
    handler; 'worldConnect',
    id: 1, // 1-254
    tcpPort: 43594,
    websocketPort: 43595,
    members: false, // or true
    country: 'CAN' // ISO 3166-1 alpha-3
}
```

returns:
```javascript
{
    success: true, // or false
    error: '' // if success false
}
```

### worldDisconnect
disconnect an rsc-server instance. happens automatically if the connection is
dropped.

```javascript
{
    handler: 'worldDisconnect'
}
```

### worldGetList
get a list of worlds.

returns:
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
```javascript
{
    handler: 'playerCount'
}
```

### playerOnlineCount
the number of players online in each world.
```javascript
{
    handler: 'playerOnlineCount'
}
```

### playerGetWorlds
return world ids (or 0 if offline) for a list of players.
```javascript
{
    handler: 'playerGetWorlds',
    usernames: ['andrew', 'paul']
}
```

returns:
```javascript
{
    usernameWorlds: {
        andrew: 1,
        paul: 2
    }
}
```

### playerRegister
```javascript
{
    handler: 'playerRegister'
    username: '',
    password: '',
    ip: ''
}
```

returns:
```javascript
{
    success: true, // or false
    code: 0 // used in the client to display error message or indicate success
}
```

### playerLogIn
checks if a player's credentials are correct and if they're allowed onto the
world they're logging into (membership check).

```javascript
{
    handler: 'playerLogin',
    username: '',
    password: '',
    ip: ''
}
```

returns:
```javascript
{
    success: true, // or false
    code: 0 // similar to registration code
    player: {
        id: 1,
        bank: [ { id: 10, amount: 1000 } ],
        inventory: [ { id: 10, amount: 1000 } ],
        skills: { attack: { current: 1, experience: 332 } },
        // etc.
    } // undefined if invalid credentials
}
```

### playerLogOut
broadcast a player logout to each world.

```javascript
{
    handler: 'playerLogout',
    username: ''
}
```

### playerWorldChange
used for switching appearance of world (to offline if blocking private chat for
example).

```javascript
{
    handler: 'playerWorldChange',
    username: '',
    world: 1
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

returns:
```javascript
{
    success: true, // or false
    error: '' // if success false
}
```

## senders
rsc-data-server sends these to certain (or all) clients with the each header
corresponding to the `.handler` property:

### playerLoggedIn
sent to rsc-server instances when players login.

```javascript
{
    handler: 'playerLoggedIn',
    username: '',
    world: 1 // up to 254
}
```

### playerLoggedOut
sent to rsc-server instances when players logout

```javascript
{
    handler: 'playerLoggedOut',
    username: ''
}
```

### playerWorldChange
sent to rsc-server instances when players change world appearance.

```javascript
{
    handler: 'playerWorldChange',
    username: '',
    world: 1
}
```

### playerMessage
sent to the rsc-server instance corresponding to the the world `toUsername`
resides in the `playerMessage` handler.

```javascript
{
    handler: 'playerMessage',
    fromUsername: '',
    toUsername: '',
    message: ''
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
