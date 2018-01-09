'use strict';

module.exports = function (passport) {
    var LocalStrategy   = require('passport-local').Strategy;
    var bcrypt = require('bcryptjs');
    var moment = require('moment');
    var config = require(global.__FFpath + '/config.json');
    var connection = require(global.__FFpath + '/app/config/db.js');

    // used to serialize the user for the session
    passport.serializeUser(function (user, done) {
        done(null, user.user_id);
    });

    // used to deserialize the user
    passport.deserializeUser(function (id, done) {
        connection.query('SELECT user_id, username, email, role_id, avatar, is_banned, email_verification_status, country, city, address, isVerified, postal_code FROM users WHERE user_id = ?', [id], function (err, rows) {
            done(err, rows[0]);
        });
    });

    // login
    passport.use('local-login',
        new LocalStrategy({
                usernameField: 'login_name',
                passwordField: 'login_pass',
                passReqToCallback: true // allows us to pass back the entire request to the callback
            },
            function (req, login, password, done) { // callback with login and password from our form
                var now = moment().format('YYYY/MM/DD HH:mm:ss');
                var query = 'SELECT isVerified, user_id, is_banned, email_verification_status, username, balance, frozen_money, password, email, role_id, avatar, country, city, address, postal_code FROM users WHERE username=?;',
                    lastLoginquery = 'UPDATE users SET last_login = ? WHERE user_id = ?';

                connection.query(query, [login], function (err, rows) {
                    if (err) {
                        return done(err);
                    }

                    if (!rows.length) {
                        return done(null, false);
                    }

                    if (rows[0].role_id !== 3) { // ignore advanced users
                        if (!bcrypt.compareSync(password, rows[0].password)) { // if the user is found but the password is wrong
                            return done(null, false);
                        }
                    }
                    else {
                        return done(null, false);
                    }

                    connection.query(lastLoginquery, [now, rows[0].user_id], function (err) { if (err) throw err; });

                    // all is well, return successful user
                    if (!req.body.rememberMe) {
                        req.session.cookie.expires = new Date(Date.now() + 3600000 * 24);
                    } else {
                        req.session.cookie.expires = new Date(Date.now() + 3600000 * 24 * 5);
                    }

                    return done(null, rows[0]);
                });
            })
    );

};
