let express = require("express");
let mysql = require("mysql");
let bodyParser = require("body-parser"); 
let app = express();

app.use(bodyParser.urlencoded({extended: true}));
app.set('view engine', 'ejs');

let connection = mysql.createConnection({ 
    host: 'localhost',
    user: 'bokoness',
    database: 'studies'
})

//fetching the number of users we have from DB ans sends it to user
app.get("/", function(req, res) {
    let q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function(err, results) {
        if(err) 
            console.log("ERROR");
        let count = results[0].count;
        console.log('User asking for number of users');
        res.render("home", {data: count});
        //res.send("We have " + count + " users in our db");
    });
});

app.post("/register", function (req, res) {
    console.log("Post request sent to /register email is: " + req.body.email); 
    let person = {
        email: req.body.email
    };
    connection.query("INSERT INTO users SET ?", person, function(err, result) {
        if(err)
            console.log(err);
        console.log(result);
        res.redirect("/");
    });
});

app.get("/random_num", function (req, res) {
    let num = Math.floor(Math.random() * 10) + 1;
    res.send("Your lucky number is " + num); 
});

app.listen(8080, function() {
    console.log("Server running on 8080!");
});

