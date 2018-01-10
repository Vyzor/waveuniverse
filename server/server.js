'use strict';

// configs
global.__FFpath = __dirname;
var config = require(global.__FFpath + '/config.json'), // project config
    pathToCtrls = global.__FFpath + '/app/controllers/',
    connection = require(global.__FFpath + '/app/config/db.js');

// libs
var passport = require('passport'),
    express = require('express'),
    app = express(),
    // fs = require('fs'),
    https = require('https'),
    http = require('http'),
    // cron = require('node-cron'),
    // coinPay = require('coinpayments'),
    // Raven = require('raven'),
    Async = require('async');


// controllers
var articlesCtrl = require(pathToCtrls + 'articles-ctrl.js');



app.get('/', function (req, res) {
    res.send('Hello world!')
});

app.get('/yo', function (req, res) {
    res.send('YO!')
});

app.get('/articles', articlesCtrl.getAllArticles);


var server = app.listen(3000, function() {
    console.log('Server running at http://127.0.0.1:' + server.address().port)
});