// npm i mysql -- the package the connects node with mysql
let mysql = require("mysql");

// create a connection
let connection = mysql.createConnection({
  host: 'localhost',
  user: 'bokoness',
  database: 'studies'
});

// connection query
connection.query('SELECT 1 + 5 AS answer', function (error, results, fields) {
    if(error) 
        throw error;
    console.log(results[0].answer);
});

connection.end();

