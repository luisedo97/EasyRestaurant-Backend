const express = require('express');
let router = express.Router();
const reportes = require('./../helpers/reportes');



router.get('', (req, res) => {
    reportes.newReport(req.query.dateFrom, req.query.dateTo, req.query.name)
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});

module.exports = router;
