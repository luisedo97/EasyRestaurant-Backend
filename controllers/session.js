const express = require('express');
const passport = require('passport');
const jwt = require('jsonwebtoken');
let router = express.Router();
const config = require('./../helpers/config');

router.post('', function(req, res, next) {
    console.log("Login init");
    passport.authenticate('local', { session: false }, function(err, user, info) {
        
        if (err) {
            console.log("first err:" + err);
            return next(err);
        }

        if (!user) {
            console.log("not user:" + user);
            return res.status(401).send({
                err: info,
                status: 401
            });
        }

        req.logIn(user, { session: false }, function(err) {
            if (err) {
                console.log("LogIn:"+err);
                return res.status(500).send({
                    err: 'Could not log in user'
                });
            }

            let jsonWebToken = jwt.sign(user, config.secret);
            console.log(user);
            res.status(200).send({
                status: 200,
                message: 'Login Successful',
                token: jsonWebToken,
                data:{
                    username: user.user_username,
                    name:user.user_name,
                    lastname:user.lastname,
                    type:user.type_users_id
                }
            });
        });
    })(req, res, next);
});

router.get('', function(req, res) {
    req.logout();
    res.status(200).send({
        status: 'Bye!'
    });
});

module.exports = router;
