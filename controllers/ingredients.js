const express = require('express');
let router = express.Router();
const Ingredients = require('./../helpers/ingredient');

router.get('', (req, res) => {
    Ingredients.getIngredients()
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});

router.put('', (req, res) => {
    Ingredients.UpdateIngredient(req.body.name, req.body.id)
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});

router.post('', (req, res) => {
    Ingredients.NewIngredient(req.body.name)
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});


module.exports = router;
