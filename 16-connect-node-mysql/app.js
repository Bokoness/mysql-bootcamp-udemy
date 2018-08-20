let faker = require("faker");
let mysql = require("mysql");

let connection = mysql.createConnection({
  host: 'localhost',
  user: 'bokoness',
  database: 'studies'
});

// generates 500 users
var data = [];
for(var i = 0; i < 500; i++) {
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
 
// inserting all users at once
var q = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(q, [data], function(err, result) {
  console.log(err);
  console.log(result);
});
 
connection.end();

