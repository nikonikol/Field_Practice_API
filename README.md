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
            "name": "李明崴",
            "nickname": "sb",
            "icon": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg",
            "class": "地信1603",
            "role": 0,
            "LastTime": "2019-07-02T15:34:10.000Z",
            "Location": "[object Object],[object Object],[object Object]"
        },
        {
            "name": "李明崴12",
            "nickname": "sb",
            "icon": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg",
            "class": "地信1603",
            "role": 0,
            "LastTime": "2019-07-02T15:34:10.000Z",
            "Location": "[object Object],[object Object],[object Object]"
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