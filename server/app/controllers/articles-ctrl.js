'use strict';
// configs
const config = require(global.__FFpath + '/config.json'),
    pathToCtrls = global.__FFpath + '/app/controllers/',
    bcrypt = require('bcryptjs'),
    moment = require('moment');

// libs
const mysql = require('mysql'),
    connection = require(global.__FFpath + '/app/config/db.js');


module.exports.getAllArticles = function (req, res) {
    let query = 'SELECT * FROM articles;';

    connection.query(query, function (err, rows) {
        if (err) {
            console.log(err);
            return res.status(400).send(err);
        }
        // console.log(success);
        logArticles(rows);
        res.send(rows);
    });
};

module.exports.login = function (req, res) {
    let username = req.body.username,
        password = bcrypt.hashSync(req.body.password, 10),
        query = 'SELECT * FROM users WHERE username=?;';

    connection.query(query, [username], function (err, rows) {
        console.log(err, rows);
        if (err) {
            return res.status(500).send(err);
        }
        if (rows && rows.length > 0) {
            // if (!bcrypt.compareSync(password, rows[0].password)) {
            //     return res.status(403).send('Wrong username or password!');
            // } else {
            //     return res.send(rows[0]);
            // }
            return res.send(rows[0]);
        } else {
            return res.status(403).send('Wrong username or password!');
        }
    })
};

module.exports.register = function (req, res) {
    console.log(req.body);
    let username = req.body.username,
        password = bcrypt.hashSync(req.body.password, 10),
        email = req.body.email,
        name = req.body.name,
        surname = req.body.surname,
        // query = 'INSERT INTO users (username, password, role_id, email, address, country, city, postal_code, level, ' +
        // 'withdrawal_pending_request, registration_date, last_login, comments, balance, frozen_money, xp_points, winnings, bronze, ' +
        // 'silver, gold, deposit_addresses, avatar, first_name, last_name, date_of_birth, phone_number, paths_to_img, ' +
        // 'email_weekly, email_deposit, email_invite, email_contest_status, platform_contest_status, platform_events, platform_invite, isVerified, ' +
        // 'reset_password_token, reset_password_expires, is_banned, email_verification_token, email_verification_status, referrer) ' +
        // 'VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);';
        now = moment().format('YYYY/MM/DD HH:mm:ss'),
        query = 'INSERT INTO users (username, name, surname, password, email, registration_date) values (?, ?, ?, ?, ?, ?);',
        chekUser = 'SELECT username FROM users WHERE username=?;';

    connection.query(chekUser, [username], function (err, rows) {
        console.log(err, rows);
        if (err) {
            return res.status(500).send(err);
        }
        if (rows && rows[0]) {
            return res.status(403).send('Username already in use!');
        }
        connection.query(query, [username, name, surname, password, email, now], function (err, rows) {
            if (err) {
                return res.status(500).send(err);
            }
            return res.send({
                user_id: rows.insertId,
                username: username,
                name: name,
                surname: surname,
                password: password,
                email: email
            });
        })
    });

};

module.exports.getUser = function (req, res) {
    let user_id = req.body.user_id,
        query = 'SELECT * FROM users WHERE user_id=?;';

    connection.query(query, [user_id], function (err, rows) {
        if (err) return res.status(500).send(err);
        if (rows && rows[0]) {
            return res.send(rows[0]);
        } else {
            return res.send({err: "Unknown"})
        }
    })
};

function logArticles(articles) {
    console.log("Articles: ");
    for (var i in articles) {
        console.log(articles[i].title, ' - ', articles[i].author);
    }
}