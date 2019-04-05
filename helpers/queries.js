const PS = require('pg-promise').PreparedStatement;
let queries = {
  newUser: new PS('new-user', "INSERT INTO users (user_username, user_password, user_name, user_lastname, type_users_id) VALUES ($1,$2,$3,$4,$5)"),
  getUser: new PS('get-user', "SELECT * FROM users WHERE user_username = $1"),
  getRecipe: new PS('get-recipe',"SELECT * FROM ((ingredent_recipe INNER JOIN recipe ON recipe.recipe_id = ingredent_recipe.recipe_id AND recipe.recipe_id = $1) INNER JOIN ingredent ON ingredent.ingredent_id = ingredent_recipe.ingredent_id)"),
  getMenu: new PS('get-menu',"SELECT * FROM ((type_general_recipe INNER JOIN type_recipe ON type_recipe.type_recipe_general_id = type_general_recipe.type_recipe_general_id) INNER JOIN recipe ON recipe.type_recipe_id = type_recipe.type_recipe_id) ORDER BY type_general_recipe.type_recipe_general_id"),
  getIngredients: new PS('get-ingredients', "SELECT * FROM ingredent"),
  updateIngredient: new PS('update-ingredient', "UPDATE ingredent SET  ingredent_name = $1 where ingredent_id = $2  RETURNING *"),
  newIngredient: new PS('new-ingredient',"INSERT into ingredent (ingredent_name, ingredent_exist) VALUES ($1, true) RETURNING *")

}

module.exports = queries;
