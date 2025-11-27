const express = require("express");
const User = require('../models/user');

const authRouter = express.Router();
authRouter.post("/api/signup",(req,res)=>{
     try {
        const {fullName,email,password} = req.body;
        User.findOne({email})
     } catch (error) {
        
     }
});
