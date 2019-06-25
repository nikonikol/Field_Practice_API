# Field_Practice_API
---
## 数据库
+ 在文件夹中
## StudentInfom
+ http://localhost:3001/StudentInfom
+ {
	"username":"5120160000"
}
+ {
    "code": 0,
    "error": "",
    "message": {
        "id": "5120160000",
        "name": "管理员",
        "password": "123",
        "nickname": "admin",
        "icon": "1",
        "class": "地理信息科学1603"，
        "role":0
    }
}
## Ischecklogin
+ http://localhost:3001/IscheckLogin
+ {
	"username":"5120160000",
	"password":"123"
}
+ {
    "code": 0,
    "error": "",
    "message": {
        "id": "5120160000",
        "name": "管理员",
        "password": "123",
        "nickname": "admin",
        "icon": "1",
        "class": "地理信息科学1603",
        "role":0
    }
}

## SaveTaskInfom
+ {
	"FromTime": "2019-05-02 23:34:10.000000",
	"EndTime": "2019-07-02 23:34:10.000000",
	"TaskName":"sda",
	"Class":"地信1601",
	"Address":"绵阳",
	"TaskContent":"三调",
	"Sponsor":"5120160000",
	"TaskState":0
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
## SaveLocationInfom
+ 
	{
	"UserId": "5120160100",
	"LastTime":"2019-07-02 23:34:10.000000",
    "Location":[{\"log\": 104.6855,\"lat\": 31.5401,\"time\": \"2017-6-31 05:23:22\"}, {\"log\": 104.655496,\"lat\": 31.550108,\"time\": \"2017-6-31 05:23:22\"}\"],
    "TaskId": "3"
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
## SearchLocation
+ {
	"TaskId": "3"	
}

+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "name": "管理员",
            "nickname": "admin",
            "icon": "1",
            "class": "地理信息科学1603",
            "role": 0,
            "UserId": "5120160000",
            "LastTime": "2019-07-02T15:34:10.000Z",
            "Location": "[object Object],[object Object],[object Object]",
            "TaskId": "4"
        }
    ]
}
## Seach
+ {
	"Id": "T001"
}



## SaveInfom
+ {
	 "Id":"5120160004",
	"name": "李明崴12",
	"pasword": "123",
	"nickname":"sb",
	"icon":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg",
	"class":["地信1603"],
	"role":0
}


## ClassAllTask
+  {
	{
	"UserId":"5120160000",
	"Role":"0",
	"Class":"地信1603"
}
}
+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "FromTime": "2019-05-02T15:34:10.000Z",
            "EndTime": "2019-07-02T15:34:10.000Z",
            "TaskName": "sda",
            "Class": "地信1603",
            "Address": "绵阳",
            "TaskContent": "三调",
            "Sponsor": "5120160000",
            "TaskState": 0,
            "TaskId": 3,
            "name": "李明崴",
            "icon":""
        }
    ]
}
+  {
	"UserId":"5120160000",
	"Role":"1"
}
+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "FromTime": "2019-05-02T15:34:10.000Z",
            "EndTime": "2019-07-02T15:34:10.000Z",
            "TaskName": "sda",
            "Class": "地信1603",
            "Address": "绵阳",
            "TaskContent": "三调",
            "Sponsor": "5120160000",
            "TaskState": 0,
            "TaskId": 3,
            "name": "管理员"
            "icon":""
        },
##SubmitExam
+ {
    "TestName": "5120160100",
    "TaskId": 5,
    "Content": "waiwai is shabi",
    "TotalGrade": 100,
    "Deadtime":"2019-07-02 23:34:10.000000"
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}

##Studentsubmit
+ {
    "UserId": "5120160100",
    "TaskId": 5,
    "TestId": 5,
    "SubmitTime": "2019-07-02 23:34:10.000000",
    "Answer": "歪歪真是个小可爱"
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
##ExamCorrection
+ 8接口8：老师批改试题
接口说明：老师批改试题
发送数据：TaskId，TestId，UserId，Grade（学生得分数）
返回数据：code、error（批改不成功error显示不成功原因）

+ {
	"StudentGrade":	[{
    "UserId": "5120160000",
    "TaskId": 5,
    "TestId": 5,
    "SubmitTime": "2019-07-05 23:34:10.000000",
    "Grade": 95,
    "Evaluate": "歪歪你这小子天天不学好"
},
{
    "UserId": "5120160002",
    "TaskId": 5,
    "TestId": 5,
    "SubmitTime": "2019-07-05 23:34:10.000000",
    "Grade": 12,
    "Evaluate": "歪歪你这小子天天不学好"
}]

}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
##SearchTaskinform
+ 9接口9：搜索任务名
接口说明：搜索任务名
发送数据：SearchTaskName（要搜索的任务名称，可以进行模糊查询，所以这个名称可能不全）
返回数据：将匹配的任务信息返回，其具体返回信数据和接口1一样

+ {
    "TaskName": "sda"
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
##GetTestByTaskId
+ 10接口10：根据TaskId获取该task包含的Test信息
接口名定义为GetTestByTaskId
接口说明：根据TaskId获取该task包含的Test信息
发送数据：TaskId
返回数据：将TestTable中所有taskid与发送taskid相等的记录返回给客户端


+ {
    "TaskId": 5
}
+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "Testid": 1,
            "TestName": "5120160100",
            "TaskId": 5,
            "Content": "waiwai is shabi",
            "TotalGrade": "5.68",
            "Deadtime": "2019-07-02T15:34:10.000Z"
        }
    ]
}

##GetUnCheckedTestResultByTestId
11接口11：根据TestId返回TestTb里面TestId与发送的TestId相等的记录
接口说明：根据TestId返回TestTb里面TestId与发送的TestId相等的记录
接口名字：GetTestResultByTestId
发送数据TestId
返回数据：返回数据分为2类：已经批改过的和未批改过的，未批改过的返回用户头像、用户id、用户姓名、用户答案，已经批改过的还要返回批改分数和老师评价以及SubmitNumber（该test用户学生所有已提交数）、TotalNumber（该test所有应提交数）
+ {
    "TestId": 5
}
+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "Icon": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384196495&di=3c72b90315c4a07e7bd024ee6e2233c0&imgtype=0&src=http%3A%2F%2Fi9.hexunimg.cn%2F2013-07-05%2F155842064.jpg",
            "UserId": "5120160000",
            "Name": "user000",
            "Answer": "歪歪真是个小可爱"
        }
    ]
}
#GetUnCheckedTestResultByTestId
SubmitNumber（该test用户学生所有已提交数）、TotalNumber（该test所有应提交数）
已经批改过的还要返回批改分数和老师评价以及

##GetCheckedTestResultByTestId
12接口12：根据TestId返回TestTb里面TestId与发送的TestId相等的记录
接口说明：根据TestId返回TestTb里面TestId与发送的TestId相等的记录+多添加两个字段Content（testtable里面的字段）和TotalGrade（testtable里面的字段）
接口名字：GetTestResultByTestId
发送数据TestId
返回数据：已经批改过的用户头像、用户id、用户姓名、用户答案
+ {
    "TestId": 5
}
+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "Icon": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384196495&di=3c72b90315c4a07e7bd024ee6e2233c0&imgtype=0&src=http%3A%2F%2Fi9.hexunimg.cn%2F2013-07-05%2F155842064.jpg",
            "UserId": "5120160000",
            "Name": "user000",
            "Answer": "歪歪真是个小可爱",
            "Grade": 100,
            "Evaluate": "歪歪你这小子天天不学好"
        },
        {
            "Icon": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384196489&di=89acc57bb6c577d13c3270718d888e79&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F16880e1f05dc8807c3e5336d1d8eb4eeeb6130ac3423e-xa0xnN_fw658",
            "UserId": "5120160001",
            "Name": "user001",
            "Answer": "佳哥大帅逼",
            "Grade": 99,
            "Evaluate": "佳哥你个变态"
        }
    ],
    "count": 2
}

##ModifyUserInfo
+ 接口说明：修改用户的个人信息
发送字段：UserId，OldPassword，NewPassword，Icon,NickName；
限制条件：如果老密码输入正确则给予更新用户信息，否则返回errormsg：旧密码输入错误
返回信息 code ，errorMsg，Message（为空）
说明：userid是必须字段，若用户没有修改nickname，那么nickname就为空，代表不需要修改，icon一样，要是更改密码，那么oldpassword也是必须字段，若不改密码，oldpasssword和newpassword都为空
+ {
    "UserId": "5120160000",
    "OldPassword": "123",
    "NewPassword": "456",
    "Icon": "是个文件",
    "NickName": "歪歪真是个小可爱"
}

+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "Testid": 1,
            "TestName": "5120160100",
            "TaskId": 5,
            "Content": "waiwai is shabi",
            "TotalGrade": "5.68",
            "Deadtime": "2019-07-02T15:34:10.000Z"
        }
    ]
}

详细说明：
1. 可以只修改昵称和头像
2. 其他的如果没有就是""
3. 文件上传不能中止，密码不对也保存文件，但不保存地址
##GetIconFile
- 通过链接访问数据库获取文件
+ {
    "Icon": "另一个链接"
}

+ {
    "code": 0,
    "error": "",
    "message": [
        {
            "Testid": 1,
            "TestName": "5120160100",
            "TaskId": 5,
            "Content": "waiwai is shabi",
            "TotalGrade": "5.68",
            "Deadtime": "2019-07-02T15:34:10.000Z"
        }
    ]
}

##EmergencyMuster
+ 接口名字EmergencyMuster
发送数据：紧急集合时间（string），taskid，经纬度（string），经纬度格式为json转的string格式："{\"log\":" +log + ",\"lat\":" + lat + "}";

返回数据：code 和error，message为空
实现原理，拿到taskid后去查询tasktb中taskid对应记录，将EmergencyMuster字段更新，该字段结构为
{"location":[{"log":104.6855,"lat":31.5401,“time”:2017-6-31 05:23:22},{"log":104.655496,"lat":31.550108,“time”:2017-6-31 05:23:22}]}

+ {
    "TaskId":5,
    "EmergencyMuster":
                        {
                            "location": [{
                                "log": 104.6855,
                                "lat": 31.5401,
                                "time": "2017-6-31 05:23:22"
                            }, {
                                "log": 104.655496,
                                "lat": 31.550108,
                                "time": "2017-6-31 05:23:22"
                            }]
                        }
}