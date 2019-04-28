const express = require('express');
let router = express.Router();
let bcrypt = require('bcryptjs');
const Recipe = require('./../helpers/recipe');

router.get('/:recipe_id', (req, res) => {
    Recipe.getRecipeById(req.params.recipe_id)
        .then((data) => {
            res.send(data);
        })
        .catch((err) => {
            res.send(JSON.stringify(err));
        })
});

router.post('', async (req,res) =>{
    const data = req.body;
    try{
        let recipe_id = await Recipe.insertRecipe(data);
        res.status(201).json({status: 201, message: 'Recipe created', data: recipe_id});
    }catch(error){
        res.status(500).json({status: 500, message: 'Error connection database'});
    }
});

router.put('',async (req,res) =>{
    const data = req.body;
    try{
        await Recipe.updateRecipe(data);
        res.status(200).json({status: 200, message: 'Recipe update succesfully'});
    }catch(error){
        res.status(500).json({status: 500, message: 'Error connection database'});
    }
});

router.delete('/:id',async (req,res) =>{
    const id = req.params.id;
    try{
        await Recipe.deleteRecipe(id);
        res.status(200).json({status: 200, message: 'Recipe delete succesfully'});
    }catch(error){
        res.status(500).json({status: 500, message: 'Error connection database'});
    }
});

router.get('/search/:name',async (req,res)=>{
    try{
        text = req.params.name + '%';
        console.log(text);
        listRecipe = await Recipe.getRecipeByText(text);
        res.status(200).json({
            status: 200,
            message: 'Recipe list', 
            data: listRecipe
        });

    }catch(error){
        res.status(500).json({
            status: 500, 
            message: 'Error connection database'
        });
    }
})


module.exports = router;