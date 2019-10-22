# rsc-data-server
manage [rsc-server](https://github.com/2003scape/rsc-server) worlds,
player persistence, friends, etc. this server uses 
[JSON](https://www.npmjs.com/package/json-socket) to communicate, and each 
client is authenticated against a sqlite database.

## install

    $ npm install rsc-data-server

## usage

    $ npm start

### generate a node
nodes are used for rsc-server instances, websites, admin panels, etc. to create
a node, run `$ npm run add-node` and follow the instructions. after this is
finished, you will get an ID and key you can use to authenticate your node.

## license
Copyright (C) 2019  2003Scape Team

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
