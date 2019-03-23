const express = require('express');
let router = express.Router();
let bcrypt = require('bcryptjs');
const Recipe = require('./../helpers/recipe');

router.get('/:recipe_id', (req, res) => {
    //console.log(req.params.recipe_id);
    Recipe.getRecipeById(req.params.recipe_id)
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});


module.exports = router;