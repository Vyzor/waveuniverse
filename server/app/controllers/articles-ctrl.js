'use strict';
// configs
var config = require(global.__FFpath + '/config.json'),
    pathToCtrls = global.__FFpath + '/app/controllers/';

// libs
var mysql = require('mysql'),
    connection = require(global.__FFpath + '/app/config/db.js');


module.exports.getAllArticles = function (req, res) {
    var query = 'SELECT * FROM articles;';

    connection.query(query, function (err, rows) {
        if (err) {
            return res.status(400).send(err);
        }
        res.send(rows);
    });
};
