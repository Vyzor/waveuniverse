var mysql = require('mysql');
var config = require(global.__FFpath + '/config.json');

// if there is terraform created db config use it
try {
    var dbCfg = require(global.__FFpath + '/db.json');
    console.log('use db.cfg');
} catch (e) {
    console.log('use config.json');
}

var devDb = config.db_connection_dev;
var prodDb = dbCfg || config.db_connection;
var env = process.env.NODE_ENV;
var dbConnection = env === 'production' ? prodDb : devDb;

dbConnection.multipleStatements = true;
console.log('prod db', dbConnection);
var connection = mysql.createConnection(dbConnection);

module.exports = connection;