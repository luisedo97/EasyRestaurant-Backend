const PS = require('pg-promise').PreparedStatement;
let queries = {
  newUser: new PS('new-user', "INSERT INTO users (user_username, user_password, user_name, user_lastname, type_user_id) VALUES ($1,$2,$3,$4,$5)"),
  getUser: new PS('get-user', "SELECT * FROM USERS WHERE user_username = $1"),
  uploadPicture: new PS('new-pic', "UPDATE USERS SET user_avatar=$1 WHERE user_id=$2"),
  updateInfo: new PS('update-info', "UPDATE USERS SET user_username=$1,user_name=$2,user_lastname=$3,user_email=$4,user_avatar=$5 WHERE user_id=$6"),

  getPosts: new PS('get-posts',"SELECT * FROM POST WHERE user_id = $1 OR user_id IN (SELECT user_id2 FROM FRIENDS WHERE user_id1 = $2)"),
  newPost: new PS('new-post', "INSERT INTO POST (user_id, type_post_id, post_text, post_url, post_creation_time) VALUES ($1, $2, $3, $4, $5)"),
  deletePost: new PS('delete-post', "DELETE FROM POST WHERE post_id=$1 AND user_id=$2"),

  searchUser: new PS('search', "SELECT user_id, user_username, user_name, user_lastname, user_avatar from users WHERE user_username LIKE $1"),
  checkPost: new PS('check-post', 'SELECT user_id FROM post WHERE post_id = $1'),
  newComment: new PS('new-comment', "INSERT INTO COMMENTS (comment_text, user_id, post_id, comment_url) VALUES ($1,$2,$3, 'nada')"),
  updateComment: new PS('update-comment', 'UPDATE COMMENTS set comment_text = $1 WHERE comment_id = $2'),
  getComments: new PS('get-comments', 'SELECT co.comment_text, co.comment_id, us.user_name, us.user_lastname, co.user_id FROM COMMENTS co INNER JOIN POST pos ON pos.post_id = co.post_id INNER JOIN USERS us ON us.user_id = co.user_id  WHERE co.post_id = $1'),
  deleteComment: new PS('delete-comment', "DELETE FROM COMMENTS WHERE comment_id= $1"),

  checkLike: new PS('check-like', 'SELECT like_id FROM likes WHERE user_id = $1 AND post_id = $2'),
  newLike: new PS('new-like', "INSERT INTO LIKES (user_id,post_id,type_like_id) VALUES ($1,$2,$3)"),
  updateLike: new PS('update-like', "UPDATE likes SET type_like_id = $3 WHERE user_id = $1 AND post_id = $2"),
  deleteLike: new PS('delete-like', ""),

  checkFriendship: new PS('check-friendship',"SELECT user_id1, count(*) AS friendship_level FROM FRIENDS WHERE user_id1=$1 AND user_id2=$2 OR user_id1=$3 AND user_id2=$4 GROUP BY user_id1"),
  newFriend:new PS('new-friend',"INSERT INTO FRIENDS (user_id1, user_id2, date) VALUES ($1, $2, $3)"),
  deleteFriend:new PS('delete-friend',"DELETE FROM FRIENDS WHERE user_id1=$1 AND user_id2=$2"),

  mergeLikes: new PS('merge-likes',"SELECT COUNT(*) AS likes FROM LIKES WHERE post_id=$1 AND type_like_id=1"),
  mergeDislikes: new PS('merge-dislikes',"SELECT COUNT(*) AS dislikes FROM LIKES WHERE post_id=$1 AND type_like_id=2"),
  mergeComments: new PS('merge-comments', "SELECT COUNT(*) AS comment_quantity FROM COMMENTS WHERE post_id=$1"),

}

module.exports = queries;