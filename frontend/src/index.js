'use strict';

require('ace-css/css/ace.css');
require('font-awesome/css/font-awesome.css');

// Require index.html so it gets copied to dist
require('./index.html');

const Elm = require('./Main.elm');
const mountNode = document.getElementById('main');
const token = localStorage.getItem("token");
const getRandomInt = (min, max) => Math.floor(Math.random() * (max - min + 1)) + min;
const stateToken = token ? JSON.parse(token) : "";
const LS = {
  token: stateToken,
  randomNumWord: getRandomInt(1, 18)
};
const app = Elm.Main.embed(mountNode, LS);
const localStoragePorts = require("elm-local-storage-ports");
localStoragePorts.register(app.ports);