const express = require('express');

// ejs is a template library
// it allows us to store html in a file and then send it back as reponse
const ejs = require('ejs');
const app = express();


const expressLayouts = require('express-ejs-layouts');
app.use(expressLayouts);

//read in our .env file
require("dotenv").config();
const {createPool} = require('mysql2/promise');

// tell Express that we are using ejs
// "view engine" is fix espression... must write like it.
app.set("view engine", "ejs");

// tell EJS what layout to use
app.set('layout','layouts/base');

const connection = createPool( 
    {
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT
    }
);







app.get('/', function (req, res) {
    const todayDate = new Date().toLocaleDateString("en-GB");
    // the first arg to res.render is the name
    // of the ejs file to send back to the users
    // and it will be assumed to be in the views folder
    res.render('home', {
        "todayDate" : todayDate
    });
})

app.get('/customers', async function (req, res) {
    const sql = `
        SELECT * FROM Customers
            JOIN Companies ON
                customers.company_id = Companies.company_id`
    // connection. query takes in the SQL statement as parameter
    // and returns an array of 

    c
})


app.listen(3000, function(){

    console.log("server started")
})