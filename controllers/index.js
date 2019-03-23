const express = require('express');
let router = express.Router();

router.use('/session', require('./session'));
router.use('/register', require('./register'));
router.use('/recipe',require('./recipe'));
router.use('/menu',require('./menu'));

module.exports = router;