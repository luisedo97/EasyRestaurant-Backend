const express = require('express');
let router = express.Router();
const Report = require('../helpers/reportes');

router.post('', async (req,res) =>{
    const data = req.body;
    try{
        if(data.list_plate.length > 0){
            let mount = await Report.newBill(data);
            res.status(201).json({status: 201, message: 'Bill create', mount: mount});
        }else{
            res.status(401).json({status:401,message: 'Bill not create, list_plate.length == 0'});
        }
    }catch(error){
        res.status(500).json({status: 500, message: 'Error connection database'});
    }
});

router.put('',async (req,res) =>{
    const data = req.body;
    try{
        await Report.updateBill(data);
        res.status(200).json({status: 200, message: 'Bill update succesfully'});
    }catch(error){
        console.log(error);
        res.status(500).json({status: 500, message: 'Error connection database', error: error});
    }
});

router.delete('/:id',async (req,res) =>{
    const id = req.params.id;
    try{
        await Report.deleteBill(id);
        res.status(200).json({status: 200, message: 'Bill delete succesfully'});
    }catch(error){
        console.log(error);
        res.status(500).json({status: 500, message: 'Error connection database', error:error});
    }
});


module.exports = router;