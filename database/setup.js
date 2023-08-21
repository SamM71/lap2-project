require("dotenv").config();
const fs = require("fs");

const db = require("./connect");

const sql = fs.readFileSync(__dirname + "/setup.sql").toString();

db.query(sql)
    .then(data => {
        //db.end();
        console.log("Set-up complete.");
    })
    .then(console.log(db.query("SELECT * FROM accounts")))
    .catch(error => console.log(error));