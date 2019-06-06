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
        infoquery("SELECT * FROM studentinfo WHERE UserId='"+username+"'AND Password='"+userpsd+"'" ,function(err,data){
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
                        code:0,
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

        infoquery("SELECT * FROM studentinfo WHERE UserId='"+username+"'" ,function(err,data){
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
                        code:0,
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
    sql =`SELECT
    location.Location
    FROM
    location
    WHERE
    location.TaskId = "`+TaskId+`" AND
    location.UserId = "`+UserId+`"`

    try{

        infoquery(sql ,function(err,data){
            if(err){
                console.log(err)
            }
            else{
                if(data[0]!=undefined){
                //如果已经有记录，则进行修改
                //查询到的'{"count":0,"location":[{"log":1212,"lat":5656.45}]}'
                var querlocation = data[0].Location
                //转成JSON对象
                var locationobject =JSON.parse(data[0].Location)
                //count进行计数
                locationobject.count= locationobject.count+1
                //再数组中插入所查询的值
                locationobject.location.push(JSON.parse(Location))
                
                console.log(locationobject.count)
                console.log(locationobject.location)
                Location=JSON.stringify(locationobject)
                Location=JSON.stringify(Location)
                console.log(Location)
                updatesql = `UPDATE Location SET Location=`+Location+` WHERE location.TaskId = "`+TaskId+`" AND location.UserId = "`+UserId+`"`
                infoquery(updatesql ,function(err,data){
                   
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
                else{
                  
                //如果没有查询到信息，则直接插入
                //修改JSON
                Location = `{"count":1,"location":[`+Location+`]}`
                console.log(Location)

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
        studentinfo.Name,
        studentinfo.Nickname,
        studentinfo.Icon,
        studentinfo.Class,
        studentinfo.Role,
        location.UserId,
        location.LastTime,
        location.Location,
        location.TaskId
        FROM
        studentinfo ,
        location
        WHERE
        location.TaskId = "`+TaskId+`" AND
        location.UserId = studentinfo.UserId`
        
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
                        code:0,
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

        infoquery("INSERT INTO studentinfo (UserId,Name,Password,Nickname,Icon,Class,Role) VALUES('"+id+"','"+name+"','"+pasword+"','"+nickname+"','"+icon+"','"+classs+"',"+role+")" ,function(err,data){
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

//发送班级信息返回班级里所有的实习任务
router.post('/ClassAllTask', function (req, res){
    var id=req.body.UserId
    var role=req.body.Role
    var stuclass=req.body.Class
    console.log(req.body.UserId)
    var sql=null
    if(role==="1"){
        try{
            sql=`SELECT
            tasktable.FromTime,
            tasktable.EndTime,
            tasktable.TaskName,
            tasktable.Class,
            tasktable.Address,
            tasktable.TaskContent,
            tasktable.Sponsor,
            tasktable.TaskState,
            tasktable.TaskId,
            studentinfo.Name,
            studentinfo.Icon
            FROM
            tasktable,
            studentinfo
            WHERE
            tasktable.Sponsor="`+id+`" AND
            studentinfo.UserId="`+id+`"
            ORDER BY
            tasktable.FromTime DESC
            `      
            infoquery( sql,function(err,data){
                if(err){
                    //console.log(err)
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
                            code:0,
                            error: err,
                            message: ""
                        })
                    }
                }
            })
        }
        catch(err){
            //console.log('err')
            res.status(500).json({
                code:2,
                err: err.message,
                message: ''
            })
        }
    }
    else if(role==="0"){
        try{
            sql=`SELECT
            tasktable.FromTime,
            tasktable.EndTime,
            tasktable.TaskName,
            tasktable.Class,
            tasktable.Address,
            tasktable.TaskContent,
            tasktable.Sponsor,
            tasktable.TaskState,
            tasktable.TaskId,
            studentinfo.Name,
            studentinfo.Icon
        FROM
            tasktable,
            studentinfo
        WHERE
            tasktable.Class="`+stuclass+`"AND
            tasktable.Sponsor = studentinfo.UserId 
            ORDER BY
            tasktable.FromTime DESC
            `      
            infoquery( sql,function(err,data){
                if(err){
                    //console.log(err)
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
                            code:0,
                            error: err,
                            message: ""
                        })
                    }
                }
            })
        }
        catch(err){
            //console.log('err')
            res.status(500).json({
                code:2,
                err: err.message,
                message: ''
            })
        }
    }

})

//提交测试信息
router.post('/SubmitExam', function (req, res){

    var TestName=req.body.TestName
    var TaskId=req.body.TaskId
    var Content=req.body.Content
    var TotalGrade=req.body.TotalGrade
    var Deadtime=req.body.Deadtime  
    
    console.log(req.body)
    try{

        infoquery("INSERT INTO testtable (TestName,TaskId,Content,TotalGrade,Deadtime) VALUES('"+TestName+"',"+TaskId+",'"+Content+"',"+TotalGrade+",'"+Deadtime+"')" ,function(err,data){
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
//学生提交测试结果
router.post('/Studentsubmit', function (req, res){

    var UserId=req.body.UserId
    var TaskId=req.body.TaskId
    var TestId=req.body.TestId
    var SubmitTime=req.body.SubmitTime
    var Answer=req.body.Answer
    
    console.log(req.body)
    try{

        infoquery("INSERT INTO testresult (UserId,TaskId,TestId,SubmitTime,Answer) VALUES('"+UserId+"',"+TaskId+","+TestId+",'"+SubmitTime+"','"+Answer+"')" ,function(err,data){
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
//老师批改测试结果
router.post('/ExamCorrection', function (req, res){

    var UserId=req.body.UserId
    var TaskId=req.body.TaskId
    var TestId=req.body.TestId
    var SubmitTime=req.body.SubmitTime
    var Grade=req.body.Grade
    var Evaluate=req.body.Evaluate
    
    console.log(req.body)
    try{
        sql ="UPDATE testresult SET Grade="+Grade+",SubmitTime='"+SubmitTime+"',State=1,Evaluate='"+Evaluate+"'  WHERE UserId='"+UserId+"' AND TaskId="+TaskId+" AND TestId="+TestId

        infoquery(sql ,function(err,data){
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

//由学生学号，查询学生全部信息，并返回。
router.post('/SearchTaskinform', function (req, res){
    var TaskName=req.body.TaskName
    console.log(req.body)
    try{

        infoquery("SELECT * FROM tasktable WHERE TaskName LIKE '%"+TaskName+"%'" ,function(err,data){
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
                        code:0,
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

//根据TaskId获取该task包含的Test信息
router.post('/GetTestByTaskId', function (req, res){
    var TaskId=req.body.TaskId
    console.log(req.body)
    try{
        sql=`
        SELECT
        *
        FROM
        testtable
        WHERE
        testtable.TaskId = `+TaskId+`
        `
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
                        code:0,
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
//根据TestId返回TestTb里面TestId与发送的TestId相等的记录 已经批改
router.post('/GetUnCheckedTestResultByTestId', function (req, res){
    var TestId=req.body.TestId
    console.log(req.body)
    try{
        //未批改
        sql=`SELECT
        studentinfo.Icon,
        studentinfo.UserId,
        studentinfo.Name,
        testresult.Answer
        FROM
        testtable ,
        studentinfo ,
        testresult
        WHERE
        testtable.Testid = `+TestId+` AND
        testtable.Testid = testresult.TestId AND
        testtable.TaskId = testresult.TaskId AND
        testresult.State = 0 AND
        testresult.UserId = studentinfo.UserId
        
        `
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
                        code:0,
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
//根据TestId返回TestTb里面TestId与发送的TestId相等的记录 未批改
router.post('/GetCheckedTestResultByTestId', function (req, res){
    var TestId=req.body.TestId
    var arr =new Array
    console.log(req.body)
    try{

        //已经批改
        sql=`SELECT
        studentinfo.Icon,
        studentinfo.UserId,
        studentinfo.Name,
        testresult.Answer,
        testresult.Grade,
        testresult.Evaluate
        FROM
        testtable ,
        studentinfo ,
        testresult
        WHERE
        testtable.Testid = `+TestId+` AND
        testtable.Testid = testresult.TestId AND
        testtable.TaskId = testresult.TaskId AND
        testresult.State = 1 AND
        testresult.UserId = studentinfo.UserId
        
        `
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
                        code:0,
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