'use strict';

// configs
global.__FFpath = __dirname;
var config = require(global.__FFpath + '/config.json'), // project config
    pathToCtrls = global.__FFpath + '/app/controllers/',
    connection = require(global.__FFpath + '/app/config/db.js');

// libs
var passport = require('passport'),
    express = require('express'),
    cors = require('cors'),
    app = express();

const bodyParser = require('body-parser');

// controllers
var articlesCtrl = require(pathToCtrls + 'articles-ctrl.js');

app.use(cors());
app.use(bodyParser.urlencoded({
    extended: false,
    limit: '10mb'
}));
app.use(bodyParser.json({
    limit: '10mb'
}));

app.get('/articles', articlesCtrl.getAllArticles);
app.post('/login', articlesCtrl.login);
app.post('/register', articlesCtrl.register);
app.post('/get-user', articlesCtrl.getUser);


var server = app.listen(3000, function() {
    console.log('Server running at http://127.0.0.1:' + server.address().port)
});