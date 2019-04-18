const db = require('./db');
const bcrypt = require('bcryptjs');
const sql = require('./queries.js');

module.exports.getUserByUsername = (username) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.any(sql.getUser, [username]).then((data) => {
                res(data[0]);
                obj.done();
            }).catch((error) => {
                console.log(error);
                rej(error);
                obj.done();
            });
        }).catch((error) => {
            console.log(error);
            rej(error);
        });
    });
}

module.exports.comparePassword = (candidatePassword, hash) => {
    return new Promise((res, rej) => {
        bcrypt.compare(candidatePassword, hash, function(err, isMatch) {
            if (err) throw rej(err);
            res(isMatch);
        });
    });
};

module.exports.registerUser = (username, password, name, lastname, type) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.none(sql.newUser, [username, password, name, lastname, type])
                .then(() => {
                    res({
                        message: "OK",
                        status: 200
                    });
                    obj.done();
                }).catch((error) => {
                    rej({
                        error: error,
                        msg: 'not Created',
                        status: 500
                    });
                    obj.done();
                });
        });
    });
};
