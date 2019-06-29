var Xinge = require('./public/js/lib/Xinge');

console.log('loading', '')
var accessId = 2100336155;
var secretKey = '32bbf5c95a6c46f3eb2ffdf26cd4808e';
var XingeApp = new Xinge.XingeApp(accessId, secretKey);

//Android message start.
var style = new Xinge.Style();
style.ring = 1; //响铃
style.vibrate = 0; //震动
style.ringRaw = 'a'; //默认铃声
style.smallIcon = ''; //为空即APP头像
style.builderId = 77; //本地通知样式

var action = new Xinge.ClickAction();
action.actionType = Xinge.ACTION_TYPE_ACTIVITY; //打开activity或app本身
//action.packageName.packageName = 'com.demo.xg';
//action.packageName.packageDownloadUrl = 'http://a.com';
//action.packageName.confirm = 1;

// var androidMessage = new Xinge.AndroidMessage();
// androidMessage.type = Xinge.MESSAGE_TYPE_NOTIFICATION;//通知
// androidMessage.title = '告示';//标题
// androidMessage.content = '您的傻逼崴已到达，请签收';
// androidMessage.style = style;//样式如上
// androidMessage.action = action;//动作如上
// androidMessage.sendTime = Date.parse('2019-06-28 22:50:30') / 1000;
// androidMessage.expireTime = 0;//不储存
// //androidMessage.acceptTime.push(new Xinge.TimeInterval(0, 0, 23, 59));
// //androidMessage.customContent = {
// //	'name': 'huangnaiang'
// //};
// androidMessage.multiPkg = 0;//按注册时提供的包名分发消息
//androidMessage.loopTimes = 3;
//androidMessage.loopInterval = 2;
//And message end.

//IOS message start.
// var iOSMessage = new Xinge.IOSMessage();
// iOSMessage.alert = 'av';
// iOSMessage.badge = 22;
// iOSMessage.sound = 'df';
// iOSMessage.acceptTime.push(new Xinge.TimeInterval(0, 0, 23, 0));
// iOSMessage.customContent = {
//     key1: 'value1',
//     key2: 'value2'
// };
//iOSMessage.loopTimes = 3;
//iOSMessage.loopInterval = 2;
//IOS message end.

//推送消息给指定设备
// XingeApp.pushToSingleDevice('29c38d06591ed0e643c48a0092f495a2a1c91ae9', iOSMessage, Xinge.IOS_ENV_DEV, function(err, result){
// 	console.log(result);
// });

//推送消息给指定账户或别名
// XingeApp.pushToSingleAccount('account', androidMessage, function(err, result){
// 	console.log(result);
// });

//推送消息给批量账号
// XingeApp.pushByAccounts(['a', 'b'], androidMessage, function(err, result){
//     console.log(result);
// });

//推送消息给所有设备
// XingeApp.pushToAllDevices(androidMessage, function(err, result){
//     if(err){
//         console.log(err);
//     }
//     //console.log(androidMessage);
//     console.log(result);
// });

//推送消息给指定tag
// XingeApp.pushByTags(['av'], Xinge.TAG_OPERATION_OR, iOSMessage, Xinge.IOS_ENV_DEV, function(err, result){
// 	console.log(result);
// });

//批量查询消息推送状态
// XingeApp.queryPushStatus(['2824'], function(err, result){
// 	console.log(result);
// });

//查询设备数量
// XingeApp.queryDeviceNum(function(err, result){
// 	console.log(result);
// });

//查询tag
// XingeApp.queryTags(0, 100, function(err, result){
// 	console.log(result);
// });

//取消未触发的定时任务
// XingeApp.cancelTimingTask(718, function(err, result){
// 	console.log(result);
// });

//批量设置标签
// XingeApp.setTags([['tag1','token1'], ['tag2','token2']], function(err, result){
//     console.log(result);
// });

//批量删除标签
// XingeApp.deleteTags([['tag1','token1'], ['tag2','token2']], function(err, result){
//     console.log(result);
// });

//根据设备token查询tag
// XingeApp.queryTagsByDeviceToken('token1', function(err, result){
//     console.log(result);
// });

//根据tag查询设备数
// XingeApp.queryDeviceNumByTag('tag1', function(err, result){
//     console.log(result);
// });

function PushInfo(Title, Content, Sendime, Tag,Type) {
    console.log(Content, '')
    //Tag为数组
    var androidMessage = new Xinge.AndroidMessage();
    if(Type===0){
        androidMessage.type = Xinge.MESSAGE_TYPE_NOTIFICATION; //通知
    }
    else if(Type===1){
        androidMessage.type = Xinge.MESSAGE_TYPE_MESSAGE; //通知
    }
    androidMessage.title = Title; //标题
    androidMessage.content = Content;
    androidMessage.style = style; //样式如上
    androidMessage.action = action; //动作如上
    androidMessage.sendTime = Sendime / 1000;
    androidMessage.expireTime = 0; //不储存
    //androidMessage.acceptTime.push(new Xinge.TimeInterval(0, 0, 23, 59));
    //androidMessage.customContent = {
    //	'name': 'huangnaiang'
    //};
    androidMessage.multiPkg = 0; //按注册时提供的包名分发消息





    //推送消息给指定tag
    XingeApp.pushByTags(Tag, Xinge.TAG_OPERATION_OR, androidMessage, function (err, result) {
        console.log(result);
    });
}
module.exports = PushInfo