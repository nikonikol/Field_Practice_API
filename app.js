
var express =require('express')

var router=require("./router")

var app = express()

var moment = require('moment')
    //导入cors模块,该模块为跨域所用
var cors = require('cors');

app.use(cors());

//解决跨域
app.all('*', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');  //设置允许跨域的域名，*代表允许任意域名跨域
    res.header('Access-Control-Allow-Headers', 'Content-Type, Content-Length, Authorization, Accept, X-Requested-With');//允许的header类型
    res.header('Access-Control-Allow-Methods', 'PUT, POST, GET, DELETE, OPTIONS'); //跨域允许的请求方式 
    if (req.method == 'OPTIONS') {
      res.send(200);//让options尝试请求快速结束
    } else {
      next();
    }
  });

var bodyParser=require('body-parser')

app.use(bodyParser.urlencoded({extended:false}))

app.use(bodyParser.json())

app.use('/public/',express.static('./public'))

app.use('/public/',express.static('./upload'))

app.engine('html',require('express-art-template'))

app.use(router)

app.listen(3001,function(){
    console.log('go````')
}) 