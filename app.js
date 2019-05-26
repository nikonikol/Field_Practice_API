
var express =require('express')

var router=require("./router")

var app = express()

var moment = require('moment')
    //导入cors模块,该模块为跨域所用
var cors = require('cors');

app.use(cors());

var bodyParser=require('body-parser')

app.use(bodyParser.urlencoded({extended:false}))

app.use(bodyParser.json())



app.engine('html',require('express-art-template'))

app.use(router)

app.listen(3001,function(){
    console.log('go````')
}) 