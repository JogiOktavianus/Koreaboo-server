var express = require('express');
var app = express();

var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({ extended: false });
var jsonParser = bodyParser.json();

var path = require('path');

var cors = require("cors")
var cor = cors();
app.use(cor);
app.use(express.static(path.join(__dirname, "../public")));

var user = require('../model/user');
/*GET USER*/
app.get('/api/user', function (req, res) {
    user.getUsers(function (err, result) {
        if (!err) {
            res.send(result);
        }
        else {
            console.log(err);
            res.status(500).send(err);
        }
    });
});

/* end routing GET USER */

app.post('/api/user', urlencodedParser, jsonParser, function (req, res) {
    var useremail = req.body.useremail;
    var userpassword = req.body.userpassword;
    var name = req.body.name;

    user.addUser(useremail, userpassword, name, function (err,result) {
        if (!err) {
            console.log(result);
            res.send(result.affectedRows + ' record ditambahkan');
        }
        else {
            console.log(err);
            res.send(err.code);
        }
    })
})
/* end routing POST ADD USER */
module.exports = app