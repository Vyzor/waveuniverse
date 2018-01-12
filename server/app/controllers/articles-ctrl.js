'use strict';
// configs
const config = require(global.__FFpath + '/config.json'),
    pathToCtrls = global.__FFpath + '/app/controllers/';

// libs
const mysql = require('mysql'),
    connection = require(global.__FFpath + '/app/config/db.js');


module.exports.getAllArticles = function (req, res) {
    var query = 'SELECT * FROM articles;';

    connection.query(query, function (err, rows) {
        if (err) {
            console.log(err);
            return res.status(400).send(err);
        }
        console.log(success);
        logArticles(rows);
        res.send(rows);
    });
};

function logArticles(articles) {
    console.log("Articles: ");
    for (var i in articles) {
        console.log(articles[i].title, ' - ', articles[i].author);
    }
}