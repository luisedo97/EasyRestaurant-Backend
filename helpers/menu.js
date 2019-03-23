const db = require('./db');
const bcrypt = require('bcryptjs');
const sql = require('./queries.js');

module.exports.getMenu = () => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            //console.log(recipe_id);
            obj.any(sql.getMenu).then((data) => {
                //console.log(data);
                res(clearJSONMenu(data));
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

clearJSONMenu = (data)=>{
    let res = {
        general_category: []
    }
    let i = data[0].type_recipe_general_id - 1;
    console.log(i);
    data.forEach(element => {

        if(element.type_recipe_general_id != i){
            //console.log('New list recipe',element.type_recipe_general_id);
            i = element.type_recipe_general_id;
            res.general_category.push({general_name:element.type_recipe_general_description,list_recipe:[]});
        }

        if(element.type_recipe_general_id == i){
            //console.log('New recipe', res.general_category);
            j = res.general_category.length;
            res.general_category[j-1].list_recipe.push({
                type_recipe_id:element.type_recipe_id,
                type_recipe_description:element.type_recipe_description,
                recipe_id:element.recipe_id,
                recipe_title:element.recipe_title,
            })
        }

    });

    return res;
}

