const db = require('./db');
const bcrypt = require('bcryptjs');
const sql = require('./queries.js');

module.exports.getRecipeById = (recipe_id) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            console.log(recipe_id);
            obj.any(sql.getRecipe,[recipe_id]).then((data) => {
                //console.log(data);
                res(clearJSONRecipe(data));
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
}

clearJSONRecipe = (data)=>{
    let res = {
        recipe_title: data[0].recipe_title,
        recipe_time_waiting: data[0].recipe_time_waiting,
        recipe_price: data[0].recipe_price,
        recipe_ingredent: []
    }

    data.forEach(element => {
        res.recipe_ingredent.push({
            ingredent_exist: element.ingredent_exist,
            ingredent_name: element.ingredent_name,
            ingredent_id: element.ingredent_id,
            ingredent_measure: element.ingredent_measure
        })
    });

    return res;
}
