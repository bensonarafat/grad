// const jsonfile = require('jsonfile');
const moment = require('moment');
const simpleGit = require('simple-git');


const DATE = moment().subtract(11, 'months').format();
simpleGit().add("./*").commit("fix: Fix error error", {'--date': DATE}).push();
