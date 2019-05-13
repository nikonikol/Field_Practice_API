var express = require('express')

var infoquery = require('./demo1')
//var testdata = require('./modules/testdata')

//加载文件
var fs = require('fs')

var router = express.Router()




console.log('jiazai')
// router.get('/test', function (req, res) {
//     //console.log(req.query)
//     testdata.find({
//         dataname:'Tem',
//         data:123
//     },function(err,data){
//         if(err){
//             return res.status(500).json({
//                 err_code: 500,
//                 message: err.message
//             })           
//         }
//         console.log(data)
//         res.status(200).json({
//             err_code: 0,
//             message: data
//         })

//     })

//    // res.redirect('/students')

// })


//返回是否成功，接收数据为账号和密码

router.get('/Ischecklogin', function (req, res) {
    console.log('ok')
    return res.status(200).json({
        err_code: 0,
        message: 'data'
    })

})

router.post('/Ischecklogin', function (req, res) {

    console.log(req.body)
    var username=req.body.username
    var userpsd=req.body.password
    try {
        infoquery("SELECT * FROM studentinfo WHERE id='"+username+"'AND password='"+userpsd+"'" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                if(data[0]!=undefined){
                    console.log(data[0])
                    return res.status(200).json({
                        code:0,
                        error:"",
                        message: data[0]
                    })
                } 
                else{
                    return res.status(200).json({
                        code:1,
                        error:err,
                        message: ''
                    })
                }
            }
        })
        //console.log(a)
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code:2,
            error:err.message,
            message: ''
        })
    }

})

//由学生学号，查询学生全部信息，并返回。
router.post('/Student_infom', function (req, res){
    var username=req.body.username
    console.log(req.body)
    try{

        infoquery("SELECT * FROM studentinfo WHERE id='"+username+"'" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                if(data[0]!=undefined){

                    return res.status(500).json({
                        code:0,
                        error: '',
                        message: data[0]
                    })
                   
                } 
                else{
                    return res.status(500).json({
                        code:1,
                        error: err,
                        message: ""
                    })
                }
            }
        })
    }
    catch(err){
        console.log('err')
        res.status(500).json({
            code:2,
            err: err.message,
            message: ''
        })
    }

})
//把router导出



  



module.exports = router