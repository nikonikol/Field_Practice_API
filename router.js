var express = require('express')

var infoquery = require('./mysql')
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


router.post('/IscheckLogin', function (req, res) {

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
router.post('/StudentInfom', function (req, res){
    var username=req.body.username
    console.log(req.body)
    try{

        infoquery("SELECT * FROM studentinfo WHERE id='"+username+"'" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                if(data[0]!=undefined){

                    return res.status(200).json({
                        code:0,
                        error: '',
                        message: data[0]
                    })
                   
                } 
                else{
                    return res.status(200).json({
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

//保存任务信息到数据库
router.post('/SaveTaskInfom', function (req, res){

    var FromTime=req.body.FromTime
    var EndTime=req.body.EndTime
    
    var TaskName=req.body.TaskName
    var Class=req.body.Class
    var Address=req.body.Address
    var TaskContent=req.body.TaskContent
    //number
    var Sponsor=req.body.Sponsor
    var TaskState=req.body.TaskState
    console.log(req.body)
    try{

        infoquery("INSERT INTO tasktable (FromTime,EndTime,TaskName,Class,Address,TaskContent,Sponsor,TaskState) VALUES('"+FromTime+"','"+EndTime+"','"+TaskName+"','"+Class+"','"+Address+"','"+TaskContent+"','"+Sponsor+"',"+TaskState+")" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                return res.status(200).json({
                    code:0,
                    error: err,
                    message: ""
                })
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
//保存坐标信息到数据库
router.post('/SaveLocationInfom', function (req, res){

    var UserId=req.body.UserId
    var LastTime=req.body.LastTime
    
    var Location=req.body.Location
    var TaskId=req.body.TaskId
    console.log(req.body)
    try{

        infoquery("INSERT INTO Location (UserId,LastTime,Location,TaskId) VALUES('"+UserId+"','"+LastTime+"','"+Location+"',+'"+TaskId+"')" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                return res.status(200).json({
                    code:0,
                    error: err,
                    message: ""
                })
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


//由任务ID，查询学生查询位置信息全部信息，并返回。


router.post('/SearchLocation', function (req, res){
    var TaskId=req.body.TaskId
    var sql =null
    console.log(req.body)
    try{
        sql =`SELECT
        studentinfo.name,
        studentinfo.nickname,
        studentinfo.icon,
        studentinfo.class,
        studentinfo.role,
        location.LastTime,
        location.Location 
    FROM
        tasktable,
        location,
        studentinfo 
    WHERE
        tasktable.TaskId = "`+TaskId+`"
        AND tasktable.TaskId = location.TaskId 
        AND tasktable.Class = studentinfo.class`
        infoquery(sql ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                if(data[0]!=undefined){

                    return res.status(200).json({
                        code:0,
                        error: '',
                        message: data
                    })
                   
                } 
                else{
                    return res.status(200).json({
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

//保存用户信息到数据库
router.post('/SaveInfom', function (req, res){

    var id=req.body.Id
    var name=req.body.name
    var pasword=req.body.pasword
    var nickname=req.body.nickname
    var icon=req.body.icon  
    var classs =req.body.class
    var role=req.body.role
    
    console.log(req.body)
    try{

        infoquery("INSERT INTO studentinfo (id,name,password,nickname,icon,class,role) VALUES('"+id+"','"+name+"','"+pasword+"','"+nickname+"','"+icon+"','"+classs+"',"+role+")" ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                return res.status(200).json({
                    code:0,
                    error: err,
                    message: ""
                })
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