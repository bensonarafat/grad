// const jsonfile = require('jsonfile');
const moment = require('moment');
const simpleGit = require('simple-git');


const DATE = moment().subtract(12, 'months').format();
simpleGit().add("./*").commit("fix: school launcher page", {'--date': DATE}).push();
