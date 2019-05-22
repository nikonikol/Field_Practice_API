# Field_Practice_API
---
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
        "class": "地理信息科学1603"
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
        "class": "地理信息科学1603"
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
	"UserId": "5120160000",
	"LastTime":"2019-07-02 23:34:10.000000",
    "Location":[{"log":1212,"lat":5656.45},{"log":1212,"lat":5656.45},{"log":1212,"lat":5656.45}]
}
+ {
    "code": 0,
    "error": null,
    "message": ""
}
## SearchLocation
+ {
	"UserId": "5120160000"	
}

+ {
    "code": 0,
    "error": "",
    "message": {
        "Id": 1,
        "UserId": "5120160000",
        "LastTime": "2019-05-22T05:38:24.000Z",
        "Location": "{[{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45}]}"
    }
}
