const PS = require('pg-promise').PreparedStatement;
let queries = {
  newUser: new PS('new-user', "INSERT INTO users (user_username, user_password, user_name, user_lastname, type_user_id) VALUES ($1,$2,$3,$4,$5)"),
  getUser: new PS('get-user', "SELECT * FROM USERS WHERE user_username = $1"),
}

module.exports = queries;