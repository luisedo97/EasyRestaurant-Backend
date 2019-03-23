const express = require('express');
let router = express.Router();
let bcrypt = require('bcryptjs');
const Menu = require('./../helpers/menu');

router.get('', (req, res) => {
    Menu.getMenu().then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(err);
        })
});


module.exports = router;