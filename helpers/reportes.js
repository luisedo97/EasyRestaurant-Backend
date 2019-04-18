const db = require('./db');
const sql = require('./queries.js');

module.exports.newReport = (dateFrom, dateTo, name) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.any(sql.newReport, [dateFrom, dateTo, `%${name}%`]).then((data) => {
                res(data);
                obj.done();
            }).catch((error) => {
                rej(error);
                obj.done();
            });
        }).catch((error) => {
            console.log(error);
            rej(error);
        });
    });
};
