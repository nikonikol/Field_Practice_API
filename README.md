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
    "Location":[{"log":1212,"lat":5656.45},{"log":1212,"lat":5656.45},{"log":1212,"lat":5656.45}],
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
    "TotalGrade": "5120160100",
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
    "UserId": "5120160100",
    "TaskId": 5,
    "TestId": 5,
    "SubmitTime": "2019-07-05 23:34:10.000000",
    "Grade": 100
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

