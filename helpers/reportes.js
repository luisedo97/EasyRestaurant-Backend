const db = require('./db');
const sql = require('./queries.js');

module.exports.getBill = async (id) => {
    try{
        let bill = await db.oneOrNone(sql.getBill,id);
        console.log(bill);
        if(bill){
            let list_plate = await db.any(sql.getListPlate,id);
            return {bill:bill, list_plate:list_plate};    
        }else{
            throw error('No exist bill');
        }
    }catch(error){
        console.log(error);
    }
    
    
}

module.exports.newReport = (dateFrom, dateTo, name) => {
    return new Promise((res, rej) => {
        db.connect().then((obj) => {
            obj.any(sql.newReport, [dateFrom, dateTo, `%${name}%`]).then((data) => {
                res(data);
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
};

module.exports.newBill = async (data,user_id) => {
    try{
        //bill_mount,bill_facture_number,bill_name_client,bill_lastname_client,user_id
        Query = 'SELECT recipe_price FROM recipe WHERE';
        for(let i = 0; i < data.list_plate.length; i++){
            
            Query += ' recipe_id = ' + data.list_plate[i].recipe_id;
            
            if(i + 1 != data.list_plate.length){
                Query += ' OR ';
            }

            //console.log(Query);
        }

        let listPrice = await db.many(Query);
        let mount = 0;
        
        listPrice.forEach(plate=>{
            mount += plate.recipe_price;
        })

        
        let {bill_id} = await db.one(sql.newBill,[mount,data.facture_number,data.name_client,data.lastname_client,user_id]); // Modificar el ultimo parametro
        
        data.list_plate.forEach(async recipe =>{
            await db.none(sql.insertPlate, [bill_id,recipe.recipe_id]);
        })
        
    }catch(error){
        console.log(error);
        res.status(500).json({status:500,message:error});
    }

}

module.exports.updateBill = async (data) =>{
    try{
        //bill_mount,bill_facture_number,bill_name_client,bill_lastname_client,user_id
        Query = 'SELECT recipe_price FROM recipe WHERE';
        for(let i = 0; i < data.list_plate.length; i++){
            
            Query += ' recipe_id = ' + data.list_plate[i].recipe_id;
            
            if(i + 1 != data.list_plate.length){
                Query += ' OR ';
            }
        }

        let listPrice = await db.many(Query);
        let mount = 0;
        
        listPrice.forEach(plate=>{
            mount += plate.recipe_price;
        })

        
        await db.none(sql.updateBill,[mount,data.facture_number,data.name_client,data.lastname_client,data.bill_id]); // Modificar el ultimo parametro
        
        await db.none(sql.deleteListPlate, data.bill_id);

        data.list_plate.forEach(async recipe =>{
            await db.none(sql.insertPlate, [data.bill_id,recipe.recipe_id]);
        })
        
    }catch(error){
        console.log(error);
        res.status(500).json({status:500,message:error});
    }
}

module.exports.deleteBill = async bill_id => {
    try{
        db.none(sql.deleteListPlate, bill_id);
        db.none(sql.deleteBill, bill_id);
    }catch(error){
        console.log(error);
        res.status(500).json({status:500,message:error});
    }
}
