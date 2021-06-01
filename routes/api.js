const express = require('express');
const router = express.Router();
const connect = require("../config/sqlConfig.js");
router.get("/", (req, res) => {
    // res.json = echo json_encode(...) in PHP 
    res.json({ message: "you hit the api route" });
});

// this is the /api/users route handler
router.get("/users", (req, res) => {
    // run a SQL query here
    // res.json(query result here)
    // echo a message
    res.json({ message: "all users route" });
})

router.get("/products", (req, res) => {
    // run a SQL query here -> get all products from my DB
    // res.json(query result here)
    // echo a message
    // const email = req.body.email;
    // const password = req.body.password;
    connect.query(`select * from tbl_products `, function (error, rows) {
        if (error) throw error;
        if (rows.length) {
            res.status(200).json({ success: true, msg: "success", data: rows });
        } else {
            res.status(404).json({ success: false, msg: 'user not found' });
        }
    })
    // res.json({ message: "all products route" });
})

// dynamic route handler that can accept a parameter
// this is equivalent to $_GET["id"] => (req.params.id)
// you're passing the id via the route: /api/movies/1, /api/movies/20, etc
router.get("/products/:id", (req, res) => {
    // run a SQL query here -> get all products from my DB
    // res.json(query result here)
    // echo a message
    const uid = req.body.uid;
    connect.query(`select * from tbl_products `, function (error, rows) {
        if (error) throw error;
        if (rows.length) {
            res.status(200).json({ success: true, msg: "success", data: rows });
        } else {
            res.status(404).json({ success: false, msg: 'user not found' });
        }
    })
    // res.json({ message: "get one products route", movie: req.params.id });
})

module.exports = router;