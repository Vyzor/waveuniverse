'use strict';

// configs
global.__FFpath = __dirname;
var config = require(global.__FFpath + '/config.json'), // project config
    pathToCtrls = global.__FFpath + '/app/controllers/';

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
var assetsCtrl = require(pathToCtrls + 'assets-ctrl.js'),
    statusCtrl = require(pathToCtrls + 'contest/contest-status-ctrl.js'),
    depositCtrl = require(pathToCtrls + 'deposit-ctrl.js'),
    withrawalCtrl = require(pathToCtrls + 'withdrawal-ctrl.js'),
    contestRecurrenceCtrl = require(pathToCtrls + 'contest/contest-recurrence-ctrl.js'),
    liveRankingCtrl = require(pathToCtrls + 'live-ranking-ctrl.js'),
    xpCtrl = require(pathToCtrls + 'xp-ctrl'),
    winnerCtrl = require(pathToCtrls + 'winner-ctrl'),
    socketIo = require(pathToCtrls + 'socketio-ctrl'),
    logCtrl = require(pathToCtrls + 'log-ctrl.js');

// vars


// load configurations
require('./app/config/passport')(passport); // passport
require('./app/config/app.js')(app, passport, express); // express
require('./app/config/routes.js')(app, passport); // routes

// add ssl key for server
var options = {};

options.ca = fs.readFileSync(global.__FFpath + '/ssl_keys/ff-ca.ca-bundle');
options.key = fs.readFileSync(global.__FFpath + '/ssl_keys/ff-key.pem');
options.cert = fs.readFileSync(global.__FFpath + '/ssl_keys/ff-cert.pem');

// run server with ssl keys and port from config.json
var httpsCreate = https.createServer(options, app).listen(config.https_ui_port);
console.log('The magic of FF happens on port ' + config.https_ui_port + ' NODE_ENV: ' + process.env.NODE_ENV);

var io = require('socket.io')(httpsCreate); // socket.io
socketIo.connection(io);

// redirect from http to https
http.createServer( function(req, res) {
    res.writeHead(301, {'Location': 'https://' + req.headers.host + req.url});
    res.end();
}).listen(80);

// var hostname = require('os').hostname();
// if (hostname === 'ip-172-31-28-195') { // server hostname, to be deleted
// cron.schedule('* * * * *', function() {
//     // contest recurrence
//     Async.waterfall([
//         contestRecurrenceCtrl.findTaskInDB,
//         contestRecurrenceCtrl.recurrenceContests,
//         contestRecurrenceCtrl.updateTasks
//     ]);
//     // contest flow
//     Async.waterfall([
//         statusCtrl.changeContestStatus,
//         assetsCtrl.saveAssetsStartForContests,
//         assetsCtrl.sendRequestsForAssets,
//         assetsCtrl.saveAssetsEndForContests,
//         liveRankingCtrl.countUpLiveRankingList
//     ]);
//     // winners
//     Async.waterfall([
//         statusCtrl.changeStatusToCompleted,
//         xpCtrl.addPoints,
//         winnerCtrl.moneyDistribution,
//         xpCtrl.addPointsToWinners
//     ]);
// });
// console.log('Сron executed on remote server');
// }




app.get('/', function (req, res) {
    res.send('Hello world!')
});

app.get('/yo', function (req, res) {
    res.send('YO!')
});

var server = app.listen(3000, function() {
    console.log('Server running at http://127.0.0.1:' + server.address().port)
});