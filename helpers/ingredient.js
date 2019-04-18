const db = require('./db');
const sql = require('./queries.js');

module.exports.getIngredients = () => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.any(sql.getIngredients).then((data) => {
                res(clearJSONIngredients(data));
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

clearJSONIngredients = (data)=>{
    let res = {
        ingredients: []
    }

    data.forEach(element => {
        res.ingredients.push({
            ingredent_exist: element.ingredent_exist,
            ingredent_name: element.ingredent_name,
            ingredent_id: element.ingredent_id
        })
    });

    return res;
}

module.exports.NewIngredient = (name) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.one(sql.newIngredient, [name])
                .then((data) => {
                    res(data);
                    obj.done();
                }).catch((error) => {
                rej({
                    error: error,
                    msg: 'not Created',
                    status: 500
                });
                obj.done();
            });
        });
    });
};



module.exports.UpdateIngredient = ( name, id) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.one(sql.updateIngredient, [name, id])
                .then((data) => {
                    res(data);
                    obj.done();
                }).catch((error) => {
                rej({
                    error: error,
                    msg: 'not Updated',
                    status: 500
                });
                obj.done();
            });
        });
    });
};

