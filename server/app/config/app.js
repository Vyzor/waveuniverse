'use strict';

module.exports = function(app, passport, express) {
    var cookieParser = require('cookie-parser');
    var compression = require('compression');
    var bodyParser = require('body-parser');
    var session  = require('express-session');
    var hour3 = 10800000;
    var path = require('path');
    // app configurations
    app.disable('x-powered-by');
    app.use(compression());
    app.use(cookieParser());
    app.use(bodyParser.urlencoded({
        extended: false,
        limit: '10mb'
    }));
    app.use(bodyParser.json({
        limit: '10mb'
    }));
    app.use(
        session({
            secret: 'waveuniverse',
            resave: true,
            saveUninitialized: true,
            cookie: {
                maxAge: 60000 * 60 * 24 * 5,
                httpOnly: true
            }
        })
    );

    app.use('/public', express.static(global.__FFpath + './../public', { maxAge: hour3 }));

    app.use(passport.initialize());
    app.use(passport.session());
    // console.log(client.ipn)
    // app.use('/handler_route', client.ipn({
    //     // 'merchantId': 'd8ee74a3bfdb53af60154bed6b02d9a2',
    //     'merchantId': 'df8a4c9aeb8b39bd5b5dc2da0dd21720',
    //     'merchantSecret': 'testtestest'
    // }));
};
