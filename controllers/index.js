const express = require('express');
let router = express.Router();

router.use('/session', require('./session'));
router.use('/register', require('./register'));
router.use('/recipe',require('./recipe'));
router.use('/menu',require('./menu'));
router.use('/ingredients',require('./ingredients'));
router.use('/reports',require('./reportes'));
router.use('/bill', require('./bill'));

module.exports = router;
