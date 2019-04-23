const PS = require('pg-promise').PreparedStatement;
let queries = {
  newUser: new PS('new-user', "INSERT INTO users (user_username, user_password, user_name, user_lastname, type_users_id) VALUES ($1,$2,$3,$4,$5)"),
  getUser: new PS('get-user', "SELECT * FROM users WHERE user_username = $1"),
  getRecipe: new PS('get-recipe',"SELECT * FROM ((ingredent_recipe INNER JOIN recipe ON recipe.recipe_id = ingredent_recipe.recipe_id AND recipe.recipe_id = $1) INNER JOIN ingredent ON ingredent.ingredent_id = ingredent_recipe.ingredent_id)"),
  getMenu: new PS('get-menu',"SELECT * FROM ((type_general_recipe INNER JOIN type_recipe ON type_recipe.type_recipe_general_id = type_general_recipe.type_recipe_general_id) INNER JOIN recipe ON recipe.type_recipe_id = type_recipe.type_recipe_id) ORDER BY type_general_recipe.type_recipe_general_id"),
  getRecipeSimple: new PS('get-recipe-simple',"SELECT recipe_title,recipe_price,recipe_id FROM recipe WHERE recipe_title ILIKE $1"),
  getIngredients: new PS('get-ingredients', "SELECT * FROM ingredent"),
  updateIngredient: new PS('update-ingredient', "UPDATE ingredent SET  ingredent_name = $1 where ingredent_id = $2  RETURNING *"),
  newIngredient: new PS('new-ingredient',"INSERT into ingredent (ingredent_name, ingredent_exist) VALUES ($1, true) RETURNING *"),
  newReport: new PS('new-report', "SELECT * FROM bill WHERE bill_creatin_time >= $1 AND bill_creatin_time < $2 And CONCAT(bill_name_client, ' ', bill_lastname_client) ilike ($3) order by bill_creatin_time desc"),


  newRecipe: new PS('new-recipe', "INSERT INTO recipe("+
    "recipe_text, recipe_url, recipe_title, recipe_time_waiting, recipe_price, type_recipe_id)"+
    "VALUES ($1, 'url', $2, $3, $4, $5) RETURNING recipe_id;"),
  updateRecipe: new PS('update-recipe',"UPDATE recipe SET recipe_text = $2, recipe_title = $3, recipe_time_waiting = $4, recipe_price = $5, type_recipe_id = $6 WHERE recipe_id = $1"),
  deleteRecipe: new PS('delete-recipe',"DELETE FROM recipe WHERE recipe_id = $1"),
  addIngredentRecipe: new PS('add-ingredent-recipe',"INSERT INTO ingredent_recipe(recipe_id, ingredent_id, ingredent_measure) VALUES ($1, $2, $3);"),
  newBill: new PS('new-bill','INSERT INTO bill (bill_mount,bill_facture_number,bill_name_client,bill_lastname_client,user_id) VALUES($1,$2,$3,$4,$5);')
}


module.exports = queries;
