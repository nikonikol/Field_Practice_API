
//加载所需模块
var express = require('express')
var infoquery = require('./mysql')
var PushInfo = require('./InformationPush')
var fs = require('fs')
var multer = require('multer')
const os = require('os');
const myHost = getIPAdress();
var router = express.Router()
//上传图片配置
var storge = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'upload/')
    },
    filename: function (req, file, cb) {
        var fileformat = (file.originalname).split('.');
        cb(null, file.fieldname+'-'+Date.now()+'.'+fileformat[fileformat.length-1]);
    }
})

// 创建文件夹
var createFolder = function(folder){
    try{
        // 测试 path 指定的文件或目录的用户权限,我们用来检测文件是否存在
        // 如果文件路径不存在将会抛出错误"no such file or directory"
        fs.accessSync(folder); 
    }catch(e){
        // 文件夹不存在，以同步的方式创建文件目录。
        fs.mkdirSync(folder);
    }  
}
//创建文件夹
var uploadFolder = './upload/'
createFolder(uploadFolder)
var upload = multer({storage: storge})
// const promisify = require('util').promisify

//设置asyn
function mypinfoquery(sql) {
    return new Promise(function (resolve, reject) {
        infoquery(sql, (err, data) => {
            if (err) {
                reject(err)
            }
            resolve(data)
        })
    })
}


///////////////////获取本机ip///////////////////////
function getIPAdress() {
    var interfaces = os.networkInterfaces();
    for (var devName in interfaces) {
        var iface = interfaces[devName];
        for (var i = 0; i < iface.length; i++) {
            var alias = iface[i];
            //console.log(alias, '')
            if (alias.family === 'IPv4' && alias.address !== '127.0.0.1' && !alias.internal) {
                //return alias.address;
            }
        }
    }
}

console.log('Lets go~~')

//登陆
router.post('/IscheckLogin', function (req, res) {

    console.log(req.body)
    var username = req.body.username
    var userpsd = req.body.password
    try {
        infoquery("SELECT * FROM studentinfo WHERE UserId='" + username + "'AND Password='" + userpsd + "'", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {
                    console.log(data[0])
                    return res.status(200).json({
                        code: 0,
                        error: "",
                        message: data[0]
                    })
                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
        //console.log(a)
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            error: err.message,
            message: []
        })
    }

})

//由学生学号，查询学生全部信息，并返回。
router.post('/StudentInfom', function (req, res) {
    var username = req.body.username
    console.log(req.body)
    try {

        infoquery("SELECT * FROM studentinfo WHERE Name='" + username + "'", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//保存任务信息到数据库
router.post('/SaveTaskInfom', function (req, res) {
    
    var FromTime = req.body.FromTime
    var EndTime = req.body.EndTime
    var Tag = req.body.Tag

    var TaskName = req.body.TaskName
    var Class = req.body.Class
    var Address = req.body.Address
    var TaskContent = req.body.TaskContent
    //number
    var Sponsor = req.body.Sponsor
    var TaskState = req.body.TaskState
   
    console.log(req.body)

    const sql="INSERT INTO tasktable (FromTime,EndTime,TaskName,Class,Address,TaskContent,Sponsor,TaskState) VALUES('" + FromTime + "','" + EndTime + "','" + TaskName + "','" + Class + "','" + Address + "','" + TaskContent + "','" + Sponsor + "'," + TaskState + ")"
    const searchsql="SELECT Name FROM studentinfo WHERE UserId='" + Sponsor + "'"
    const searchtaskid="SELECT TaskId FROM tasktable WHERE TaskName='" + TaskName + "'"

    ;(async ()=>{
        try {
            await mypinfoquery(sql)
            const searchresult= await mypinfoquery(searchsql)
            const queryresult= await mypinfoquery(searchtaskid)
            var Sendime =Date.parse(FromTime)
            var SendEndTime =Date.parse(EndTime)
            PreSendime= Sendime-7200000
            PushInfo('通知',searchresult[0].Name+'新发布了一个任务:'+TaskName+'，快来查看吧',561874646000,Tag,0,null)
            PushInfo('通知','温馨提示：两个小时之后开始'+searchresult[0].Name+'发布的实习任务'+TaskName+'，请注意时间哦',PreSendime,Tag,0,null)
            var body={
                'TaskName':TaskName,
                'Class':Class,
                'TaskContent':TaskContent,
                'Sponsor':Sponsor,
                'TaskId':queryresult[0].TaskId.toString()
            }
            console.log(body, '外边')
            PushInfo('任务开始',"任务开始",Sendime,Tag,1,body)
            PushInfo('任务结束',"任务结束",SendEndTime,Tag,1,body)
            return res.status(200).json({
                code: 0,
                err: "",
                message: []
            })
        } catch (err) {
            console.log(err.message)
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    })()


    // try {
     

    //     infoquery("INSERT INTO tasktable (FromTime,EndTime,TaskName,Class,Address,TaskContent,Sponsor,TaskState) VALUES('" + FromTime + "','" + EndTime + "','" + TaskName + "','" + Class + "','" + Address + "','" + TaskContent + "','" + Sponsor + "'," + TaskState + ")", function (err, data) {
    //         if (err) {
    //             console.log(err)
    //         } else {
    //             return res.status(200).json({
    //                 code: 0,
    //                 error: err,
    //                 message: []
    //             })
    //         }
    //     })
    // } catch (err) {
    //     console.log('err')
    //     res.status(500).json({
    //         code: 2,
    //         err: err.message,
    //         message: []
    //     })
    // }

})

//通过链接访问数据库获取文件
router.post('/PushInformation', function (req, res) {

    var Tittle = req.body.Tittle
    //var Content = req.body.Content
    var Sendime = req.body.Sendime
    var Tag = req.body.Tag
    var Type = req.body.Type

    try{
        if(Type===0){
            PushInfo('通知','老师新发布了一个任务，快来查看吧','2019-06-28 22:50:30',Tag)
            PushInfo('通知','温馨提示：两个小时之后开始实习，请注意时间哦',Sendime,Tag)
        }
        else if(Type===1){
            PushInfo(Tittle,Content,'2019-06-28 22:50:30',Tag)
        }
    }
  
    catch(e){
        return res.status(500).json({
            code: 2,
            err: e.message,
            message: []
        })
    }

    return res.status(200).json({
        code: 0,
        err: "",
        message: []
    })

    // const sql="SELECT Password FROM studentinfo  WHERE UserId='" + UserId + "'"

    // ;(async ()=>{
    //     try {
    //         await mypinfoquery(sql)
    //         return res.status(200).json({
    //             code: 0,
    //             err: "",
    //             message: []
    //         })
    //     } catch (err) {
    //         console.log('err')
    //         res.status(500).json({
    //             code: 2,
    //             err: err.message,
    //             message: []
    //         })
    //     }
    // })()
   

})

//保存坐标信息到数据库
router.post('/SaveLocationInfom', function (req, res) {

    var UserId = req.body.UserId
    var LastTime = req.body.LastTime
    var Location = req.body.Location
    var TaskId = req.body.TaskId
    console.log(req.body)
    sql = `SELECT
    location.Location
    FROM
    location
    WHERE
    location.TaskId = "` + TaskId + `" AND
    location.UserId = "` + UserId + `"`

    try {

        infoquery(sql, function (err, data) {
            if (err) {
                console.log(err)
            } else {
                console.log(data[0].Location==="")
                if (data[0] == undefined||data[0].Location==="") {
                    
       //如果没有查询到信息，则直接插入
                    //修改JSON
                    Location = `{"count":1,"location":[` + Location + `]}`
                    console.log(Location)
                    console.log('插入数据')

                    infoquery("INSERT INTO Location (UserId,LastTime,Location,TaskId) VALUES('" + UserId + "','" + LastTime + "','" + Location + "',+'" + TaskId + "')", function (err, data) {
                        if (err) {
                            console.log(err)
                        } else {
                            return res.status(200).json({
                                code: 0,
                                error: err,
                                message: []
                            })
                        }
                    })
                } else {

                    //如果已经有记录，则进行修改
                    //查询到的'{"count":0,"location":[{"log":1212,"lat":5656.45}]}'
                    var querlocation = data[0].Location
                    console.log(data[0].Location+'weizhi')
                    //转成JSON对象
                    var locationobject = JSON.parse(data[0].Location)
                    //count进行计数
                    locationobject.count = locationobject.count + 1
                    //再数组中插入所查询的值
                    //console.log(locationobject.location)
                    locationobject.location.push(JSON.parse(Location))
                    //console.log(locationobject.count)
                    //console.log(locationobject.location)
                    Location = JSON.stringify(locationobject)
                    Location = JSON.stringify(Location)
                    //console.log(Location)
                    updatesql = `UPDATE Location SET Location=` + Location + ` WHERE location.TaskId = "` + TaskId + `" AND location.UserId = "` + UserId + `"`
                    infoquery(updatesql, function (err, data) {

                        if (err) {
                            console.log(err)
                        } else {
                            return res.status(200).json({
                                code: 0,
                                error: err,
                                message: []
                            })
                        }
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})


//由任务ID，查询学生查询位置信息全部信息，并返回。
router.post('/SearchLocation', function (req, res) {
    var TaskId = req.body.TaskId
    var sql = null
    console.log(req.body)
    try {

        sql = `SELECT
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
        location.TaskId = "` + TaskId + `" AND
        location.UserId = studentinfo.UserId`

        infoquery(sql, function (err, data) {
            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//保存用户信息到数据库
router.post('/SaveInfom', function (req, res) {

    var id = req.body.Id
    var name = req.body.name
    var pasword = req.body.pasword
    var nickname = req.body.nickname
    var icon = req.body.icon
    var classs = req.body.class
    var role = req.body.role

    console.log(req.body)
    try {

        infoquery("INSERT INTO studentinfo (UserId,Name,Password,Nickname,Icon,Class,Role) VALUES('" + id + "','" + name + "','" + pasword + "','" + nickname + "','" + icon + "','" + classs + "'," + role + ")", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                return res.status(200).json({
                    code: 0,
                    error: err,
                    message: []
                })
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//发送班级信息返回班级里所有的实习任务
router.post('/ClassAllTask', function (req, res) {
    var id = req.body.UserId
    var role = req.body.Role
    var stuclass = req.body.Class
    console.log(req.body.UserId)
    var sql = null
    if (role === "1") {
        try {
            sql = `SELECT
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
            tasktable.Sponsor="` + id + `" AND
            studentinfo.UserId="` + id + `"
            ORDER BY
            tasktable.FromTime DESC
            `
            infoquery(sql, function (err, data) {
                if (err) {
                    //console.log(err)
                } else {
                    if (data[0] != undefined) {

                        return res.status(200).json({
                            code: 0,
                            error: '',
                            message: data
                        })

                    } else {
                        return res.status(200).json({
                            code: 0,
                            error: err,
                            message: []
                        })
                    }
                }
            })
        } catch (err) {
            //console.log('err')
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    } else if (role === "0") {
        try {
            sql = `SELECT
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
            tasktable.Class="` + stuclass + `"AND
            tasktable.Sponsor = studentinfo.UserId 
            ORDER BY
            tasktable.FromTime DESC
            `
            infoquery(sql, function (err, data) {
                if (err) {
                    //console.log(err)
                } else {
                    if (data[0] != undefined) {

                        return res.status(200).json({
                            code: 0,
                            error: '',
                            message: data
                        })

                    } else {
                        return res.status(200).json({
                            code: 0,
                            error: err,
                            message: []
                        })
                    }
                }
            })
        } catch (err) {
            //console.log('err')
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    }

})

//提交测试信息
router.post('/SubmitExam', function (req, res) {

    var TestName = req.body.TestName
    var TaskId = req.body.TaskId
    var Content = req.body.Content
    var TotalGrade = req.body.TotalGrade
    var Deadtime = req.body.Deadtime

    console.log(req.body)
    try {

        infoquery("INSERT INTO testtable (TestName,TaskId,Content,TotalGrade,Deadtime) VALUES('" + TestName + "'," + TaskId + ",'" + Content + "'," + TotalGrade + ",'" + Deadtime + "')", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                return res.status(200).json({
                    code: 0,
                    error: err,
                    message: []
                })
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//学生提交测试结果
router.post('/Studentsubmit', function (req, res) {

    var UserId = req.body.UserId
    var TaskId = req.body.TaskId
    var TestId = req.body.TestId
    var SubmitTime = req.body.SubmitTime
    var Answer = req.body.Answer

    console.log(req.body)
    try {

        infoquery("INSERT INTO testresult (UserId,TaskId,TestId,SubmitTime,Answer) VALUES('" + UserId + "'," + TaskId + "," + TestId + ",'" + SubmitTime + "','" + Answer + "')", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                return res.status(200).json({
                    code: 0,
                    error: err,
                    message: []
                })
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//老师批改测试结果
router.post('/ExamCorrection', function (req, res) {
    var examarry = eval(req.body.StudentGrade)
    console.log(examarry)
    var UserId
    var TaskId
    var TestId
    var Grade
    var Evaluate
    var SumGrade =0
        ;(async()=>{
            try{
                for (i = 0; i < examarry.length; i++) {
                    exam = examarry[i]
                    UserId = exam.UserId
                    TaskId = exam.TaskId
                    TestId = exam.TestId
                    Grade = exam.Grade
                    Evaluate = exam.Evaluate
                    await mypinfoquery("UPDATE testresult SET Grade=" + Grade + ",State=1,Evaluate='" + Evaluate + "' WHERE UserId='" + UserId + "' AND TaskId=" + TaskId + " AND TestId=" + TestId)         
                    const queryresult= await mypinfoquery(`SELECT testresult.Grade FROM testresult WHERE testresult.TaskId=` + TaskId + ` AND testresult.UserId ='` + UserId + `'`)
                    SumGrade = 0
                    for(j=0;j<queryresult.length;j++){
                        SumGrade+=queryresult[j].Grade
                    }
                    await mypinfoquery("UPDATE testresult SET FinallyGrade=" + SumGrade + "  WHERE UserId='" + UserId + "' AND TaskId=" + TaskId)
                }
                return res.status(200).json({
                    code: 0,
                    error: null,
                    message: []
                })
            }
            catch (e) {
                return res.status(500).json({
                    code: 2,
                    err: e.message,
                    message: []
                })
            }
        })()
})

//由学生学号，查询学生全部信息，并返回。
router.post('/SearchTaskinform', function (req, res) {
    var TaskName = req.body.TaskName
    console.log(req.body)
    try {

        infoquery("SELECT * FROM tasktable WHERE TaskName LIKE '%" + TaskName + "%'", function (err, data) {
            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//根据TaskId获取该task包含的Test信息
router.post('/GetTestByTaskId', function (req, res) {
    var TaskId = req.body.TaskId
    console.log(req.body)
    try {
        sql = `
        SELECT
        *
        FROM
        testtable
        WHERE
        testtable.TaskId = ` + TaskId + `
        `
        infoquery(sql, function (err, data) {
            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})
//根据TestId返回TestTb里面TestId与发送的TestId相等的记录 已经批改
router.post('/GetUnCheckedTestResultByTestId', function (req, res) {
    var TestId = req.body.TestId
    console.log(req.body)
    try {
        //未批改
        sql = `SELECT
        studentinfo.Icon,
        studentinfo.UserId,
        studentinfo.Name,
        studentinfo.Class,
        testresult.SubmitTime,
        testresult.Answer
        FROM
        testtable ,
        studentinfo ,
        testresult
        WHERE
        testtable.Testid = ` + TestId + ` AND
        testtable.Testid = testresult.TestId AND
        testtable.TaskId = testresult.TaskId AND
        testresult.State = 0 AND
        testresult.UserId = studentinfo.UserId        
        `
        infoquery(sql, function (err, data) {

            if (err) {
                console.log(err)
            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})
//根据TestId返回TestTb里面TestId与发送的TestId相等的记录 未批改
router.post('/GetCheckedTestResultByTestId', function (req, res) {
    var TestId = req.body.TestId
    var arr = new Array
    console.log(req.body)
    try {
        //已经批改
        sql = `SELECT
        studentinfo.Icon,
        studentinfo.UserId,
        studentinfo.Name,
        studentinfo.Class,
        testresult.Answer,
        testresult.Grade,
        testresult.SubmitTime,
        testresult.Evaluate

        FROM
        testtable ,
        studentinfo ,
        testresult
        WHERE
        testtable.Testid = ` + TestId + ` AND
        testtable.Testid = testresult.TestId AND
        testtable.TaskId = testresult.TaskId AND
        testresult.State = 1 AND
        testresult.UserId = studentinfo.UserId
        
        `
        
        infoquery(sql, function (err, data) {
            if (err) {

            } else {
                if (data[0] != undefined) {

                    return res.status(200).json({
                        code: 0,
                        error: '',
                        message: data
                    })

                } else {
                    return res.status(200).json({
                        code: 0,
                        error: err,
                        message: []
                    })
                }
            }
        })
    } catch (err) {
        console.log('err')
        res.status(500).json({
            code: 2,
            err: err.message,
            message: []
        })
    }

})

//修改密码和信息
router.post('/ModifyUserInfo',upload.single('upload'), function (req, res) {

    var file = req.file;
    var Icon=myHost+':3001/public/'+file.filename
    console.log('文件保存路径：%s',Icon );

    //console.log(req.body+"body")
    student = req.body
    UserId = student.UserId
    OldPassword = student.OldPassword
    NewPassword = student.NewPassword
    //Icon = student.Icon
    NickName = student.NickName
    errmessage = ""
    
    ;(async () => {
        try {
            if (OldPassword !== "" && NewPassword !== "") {
                //Password1=data[0].Password
                const queryresult = await mypinfoquery("SELECT Password FROM studentinfo  WHERE UserId='" + UserId + "'")

                if (queryresult[0].Password === OldPassword) {
                    await mypinfoquery("UPDATE studentinfo SET Password='" + NewPassword + "' WHERE UserId='" + UserId + "' ")
                    errmessage = "密码修改成功"
                    if (Icon !== "") {
                        await mypinfoquery("UPDATE studentinfo SET Icon='" + Icon + "' WHERE UserId='" + UserId + "' ")
                        errmessage += " 头像信息修改成功"
                    }
                    if (NickName !== "") {
                        await mypinfoquery("UPDATE studentinfo SET Icon='" + NickName + "' WHERE UserId='" + NickName + "' ")
                        errmessage += " 昵称信息修改成功"
                    }
                } else {
                    errmessage = "对不起，密码错误，请重新输入"

                }
            }
            if (Icon !== "" && OldPassword == "" && NewPassword == "") {
                await mypinfoquery("UPDATE studentinfo SET Icon='" + Icon + "' WHERE UserId='" + UserId + "' ")
                errmessage = "个人信息修改成功"
            }
            if (NickName !== "" && OldPassword == "" && NewPassword == "") {
                await mypinfoquery("UPDATE studentinfo SET NickName='" + NickName + "' WHERE UserId='" + UserId + "' ")
                errmessage = "个人信息修改成功"
            }


            return res.status(200).json({
                code: 0,
                err: errmessage,
                message: []
            })

        } catch (e) {
            return res.status(500).json({
                code: 2,
                err: e.message,
                message: []
            })

        }
    })()

})
//紧急任务EmergencyMuster
router.post('/EmergencyMuster', function (req, res) {

    var TaskId = req.body.TaskId
    var Tag = req.body.Tag
    var location = req.body.Location

    const sql="UPDATE tasktable SET EmergencyMuster='" + location + "' WHERE TaskId='" + TaskId + "' "
    const searchsql="SELECT Name FROM studentinfo,tasktable WHERE TaskId=" + TaskId + " AND tasktable.Sponsor = studentinfo.UserId"
    ;(async ()=>{
        try {
            await mypinfoquery(sql)
            const queryresult= await mypinfoquery(searchsql)
            const jsonname={
                'TeacherName':queryresult[0].Name,
                'location':location
            }
            console.log(queryresult[0].Name, '')
            PushInfo('紧急通知',queryresult[0].Name+"发布了紧急集合",561874646000,Tag,1,jsonname)

            return res.status(200).json({
                code: 0,
                err: "",
                message: []
            })
        } catch (err) {
            console.log(err)
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    })()
   

})
//通过链接访问数据库获取文件
router.post('/GetIconFile', function (req, res) {

    var Icon = req.body.Icon

    const sql="SELECT Password FROM studentinfo  WHERE UserId='" + UserId + "'"

    ;(async ()=>{
        try {
            await mypinfoquery(sql)
            return res.status(200).json({
                code: 0,
                err: "",
                message: []
            })
        } catch (err) {
            console.log('err')
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    })()
   

})
//根据班级名称查询正在进行的任务， 返回所有信息
router.post('/GetCurTaskByClass', function (req, res) {

    var StudentClass = req.body.Class

    const sql="SELECT*FROM tasktable WHERE tasktable.Class LIKE '%"+StudentClass+"%' AND tasktable.TaskState=1"

    ;(async ()=>{
        try {
            const result =await mypinfoquery(sql)
            return res.status(200).json({
                code: 0,
                err: "",
                message: result
            })
        } catch (err) {
            console.log('err')
            res.status(500).json({
                code: 2,
                err: err.message,
                message: []
            })
        }
    })()
   

})

//通过链接访问数据库获取文件
// router.post('/SaveIconFile',upload.single('upload'), function (req, res,next) {

    

//     console.log(req.body, 'body')
//     // //console.log(req.files[0], 'body')
//     // console.log(req.file, 'body')
//     // console.log(req.files[0], 'body')
//     const sql="SELECT Password FROM studentinfo  WHERE UserId='" + UserId + "'"

//     ;(async ()=>{
//         try {
//            //await mypinfoquery("UPDATE studentinfo SET Icon='" + Icon + "' WHERE UserId='" + UserId + "' ")
//             return res.status(200).json({
//                 code: 0,
//                 err: "",
//                 message: []
//             })
//         } catch (err) {
//             console.log('err')
//             res.status(500).json({
//                 code: 2,
//                 err: err.message,
//                 message: []
//             })
//         }
//     })()
   

// })


//把router导出
module.exports = router