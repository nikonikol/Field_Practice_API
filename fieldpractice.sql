/*
 Navicat Premium Data Transfer

 Source Server         : zmmmm
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : fieldpractice

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 09/06/2019 15:16:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LastTime` datetime(6) NULL DEFAULT NULL,
  `Location` varchar(21700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TaskId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (13, '5120160004', '2019-07-02 23:34:10.000000', '{\"count\":9,\"location\":[{\"log\":104.621494,\"lat\":31.5401},{\"log\":104.622494,\"lat\":31.5401},\r\n{\"log\":104.623494,\"lat\":31.5401},\r\n{\"log\":104.624494,\"lat\":31.5401},\r\n{\"log\":104.625494,\"lat\":31.5401},\r\n{\"log\":104.626494,\"lat\":31.5401},\r\n{\"log\":104.627494,\"lat\":31.5401},\r\n{\"log\":104.628494,\"lat\":31.5401},\r\n{\"log\":104.629494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (14, '5120160003', '2019-06-01 17:28:22.000000', '{\"count\":10,\"location\":[{\"log\":104.611494,\"lat\":31.5401},{\"log\":104.612494,\"lat\":31.5401},\r\n{\"log\":104.613494,\"lat\":31.5401},\r\n{\"log\":104.614494,\"lat\":31.5401},\r\n{\"log\":104.615494,\"lat\":31.5401},\r\n{\"log\":104.616494,\"lat\":31.5401},\r\n{\"log\":104.617494,\"lat\":31.5401},\r\n{\"log\":104.618494,\"lat\":31.5401},\r\n{\"log\":104.619494,\"lat\":31.5401},\r\n{\"log\":104.620494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (15, '5120160006', '2019-07-02 23:34:10.000000', '{\"count\":9,\"location\":[{\"log\":104.641494,\"lat\":31.5401},{\"log\":104.642494,\"lat\":31.5401},\r\n{\"log\":104.643494,\"lat\":31.5401},\r\n{\"log\":104.644494,\"lat\":31.5401},\r\n{\"log\":104.645494,\"lat\":31.5401},\r\n{\"log\":104.646494,\"lat\":31.5401},\r\n{\"log\":104.647494,\"lat\":31.5401},\r\n{\"log\":104.648494,\"lat\":31.5401},\r\n{\"log\":104.649494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (18, '5120163333', '2019-07-02 23:34:10.000000', '{\"count\":9,\"location\":[{\"log\":104.651494,\"lat\":31.5401},{\"log\":104.652494,\"lat\":31.5401},\r\n{\"log\":104.653494,\"lat\":31.5401},\r\n{\"log\":104.654494,\"lat\":31.5401},\r\n{\"log\":104.655494,\"lat\":31.5401},\r\n{\"log\":104.656494,\"lat\":31.5401},\r\n{\"log\":104.657494,\"lat\":31.5401},\r\n{\"log\":104.658494,\"lat\":31.5401},\r\n{\"log\":104.659494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (19, '5120160001', '2019-06-01 13:45:25.000000', '{\"count\":9,\"location\":[{\"log\":104.661494,\"lat\":31.5401},{\"log\":104.662494,\"lat\":31.5401},\r\n{\"log\":104.663494,\"lat\":31.5401},\r\n{\"log\":104.664494,\"lat\":31.5401},\r\n{\"log\":104.665494,\"lat\":31.5401},\r\n{\"log\":104.666494,\"lat\":31.5401},\r\n{\"log\":104.667494,\"lat\":31.5401},\r\n{\"log\":104.668494,\"lat\":31.5401},\r\n{\"log\":104.669494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (20, '5120160002', '2019-06-01 14:07:48.000000', '{\"count\":9,\"location\":[{\"log\":104.671494,\"lat\":31.5401},{\"log\":104.672494,\"lat\":31.5401},\r\n{\"log\":104.673494,\"lat\":31.5401},\r\n{\"log\":104.674494,\"lat\":31.5401},\r\n{\"log\":104.675494,\"lat\":31.5401},\r\n{\"log\":104.676494,\"lat\":31.5401},\r\n{\"log\":104.677494,\"lat\":31.5401},\r\n{\"log\":104.678494,\"lat\":31.5401},\r\n{\"log\":104.679494,\"lat\":31.5401}]}', '3');
INSERT INTO `location` VALUES (21, 'undefined', '2019-06-01 17:29:42.000000', '{\"count\":261,\"location\":[{\"log\":104.685492,\"lat\":31.54011},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685492,\"lat\":31.540112},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540106},{\"log\":104.685492,\"lat\":31.540106},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.54011},{\"log\":104.685491,\"lat\":31.540105},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685492,\"lat\":31.540107},{\"log\":104.685489,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540102},{\"log\":104.685489,\"lat\":31.540111},{\"log\":104.685489,\"lat\":31.540111},{\"log\":104.685489,\"lat\":31.540111},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685491,\"lat\":31.540112},{\"log\":104.685491,\"lat\":31.540112},{\"log\":104.685489,\"lat\":31.540107},{\"log\":104.685489,\"lat\":31.540107},{\"log\":104.685489,\"lat\":31.540107},{\"log\":104.685489,\"lat\":31.540107},{\"log\":104.685491,\"lat\":31.540108},{\"log\":104.685491,\"lat\":31.540108},{\"log\":104.685492,\"lat\":31.540105},{\"log\":104.685492,\"lat\":31.540105},{\"log\":104.685492,\"lat\":31.540112},{\"log\":104.685491,\"lat\":31.540108},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685492,\"lat\":31.540116},{\"log\":104.685492,\"lat\":31.540116},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685491,\"lat\":31.54011},{\"log\":104.685492,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540113},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540109},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685491,\"lat\":31.540114},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685487,\"lat\":31.540106},{\"log\":104.685487,\"lat\":31.540106},{\"log\":104.685492,\"lat\":31.540106},{\"log\":104.685492,\"lat\":31.540106},{\"log\":104.685492,\"lat\":31.540106},{\"log\":104.685489,\"lat\":31.540099},{\"log\":104.685489,\"lat\":31.540099},{\"log\":104.68549,\"lat\":31.540098},{\"log\":104.68549,\"lat\":31.540098},{\"log\":104.68549,\"lat\":31.540098},{\"log\":104.68549,\"lat\":31.540098},{\"log\":104.68549,\"lat\":31.540098},{\"log\":104.685491,\"lat\":31.540102},{\"log\":104.685491,\"lat\":31.540102},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685489,\"lat\":31.540103},{\"log\":104.685489,\"lat\":31.540103},{\"log\":104.685494,\"lat\":31.540103},{\"log\":104.685494,\"lat\":31.540103},{\"log\":104.685491,\"lat\":31.540111},{\"log\":104.68549,\"lat\":31.540106},{\"log\":104.68549,\"lat\":31.540106},{\"log\":104.68549,\"lat\":31.540106},{\"log\":104.685492,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540104},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685492,\"lat\":31.540103},{\"log\":104.685492,\"lat\":31.540102},{\"log\":104.685492,\"lat\":31.540102},{\"log\":104.685492,\"lat\":31.540102},{\"log\":104.685491,\"lat\":31.540102},{\"log\":104.685491,\"lat\":31.540108},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.683168,\"lat\":31.537367},{\"log\":104.686898,\"lat\":31.536535},{\"log\":104.686885,\"lat\":31.536541},{\"log\":104.686885,\"lat\":31.536541},{\"log\":104.690175,\"lat\":31.536047},{\"log\":104.688244,\"lat\":31.538135},{\"log\":104.688241,\"lat\":31.538135},{\"log\":104.684981,\"lat\":31.536647},{\"log\":104.684981,\"lat\":31.536647},{\"log\":104.686659,\"lat\":31.537133},{\"log\":104.690136,\"lat\":31.536078},{\"log\":104.690136,\"lat\":31.536078},{\"log\":104.684983,\"lat\":31.536652},{\"log\":104.690193,\"lat\":31.536049},{\"log\":104.686894,\"lat\":31.536536},{\"log\":104.685494,\"lat\":31.540109},{\"log\":104.685494,\"lat\":31.540109},{\"log\":104.685496,\"lat\":31.540112},{\"log\":104.685496,\"lat\":31.540112},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685496,\"lat\":31.5401},{\"log\":104.685496,\"lat\":31.5401},{\"log\":104.685496,\"lat\":31.5401},{\"log\":104.685496,\"lat\":31.5401},{\"log\":104.685496,\"lat\":31.5401},{\"log\":104.685493,\"lat\":31.540112},{\"log\":104.685493,\"lat\":31.540112},{\"log\":104.685493,\"lat\":31.540112},{\"log\":104.685493,\"lat\":31.540112},{\"log\":104.685493,\"lat\":31.540112},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685495,\"lat\":31.540101},{\"log\":104.685495,\"lat\":31.540101},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685493,\"lat\":31.540109},{\"log\":104.685494,\"lat\":31.54011},{\"log\":104.685494,\"lat\":31.54011},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685494,\"lat\":31.540112},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685496,\"lat\":31.540106},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685495,\"lat\":31.54011},{\"log\":104.685494,\"lat\":31.540109},{\"log\":104.685494,\"lat\":31.540105},{\"log\":104.685494,\"lat\":31.540108},{\"log\":104.685493,\"lat\":31.540102},{\"log\":104.685493,\"lat\":31.540102},{\"log\":104.685493,\"lat\":31.540102},{\"log\":104.685493,\"lat\":31.540103},{\"log\":104.685493,\"lat\":31.540103},{\"log\":104.685495,\"lat\":31.540109},{\"log\":104.685494,\"lat\":31.540107},{\"log\":104.685494,\"lat\":31.540107},{\"log\":104.685494,\"lat\":31.540107},{\"log\":104.685494,\"lat\":31.540107},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685493,\"lat\":31.540105},{\"log\":104.685495,\"lat\":31.540107}]}', 'undefined');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `UserId` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学号',
  `Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NickName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Role` int(5) NOT NULL,
  PRIMARY KEY (`UserId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('5120160000', 'user000', '123', 'admin', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384196495&di=3c72b90315c4a07e7bd024ee6e2233c0&imgtype=0&src=http%3A%2F%2Fi9.hexunimg.cn%2F2013-07-05%2F155842064.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160001', 'user001', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384196489&di=89acc57bb6c577d13c3270718d888e79&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F16880e1f05dc8807c3e5336d1d8eb4eeeb6130ac3423e-xa0xnN_fw658', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160002', 'user002', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384240067&di=8636ace4214c96c3e6eb817e99e97ee5&imgtype=0&src=http%3A%2F%2Fimg8.zol.com.cn%2Fbbs%2Fupload%2F23766%2F23765836.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160003', 'user003', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384240065&di=4b7d4f208189328f09bb0ea31bee00b3&imgtype=0&src=http%3A%2F%2Fpic1.nipic.com%2F2008-09-02%2F200892181925454_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160004', 'user004', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384240061&di=43a124d544802be5684eebf87a660479&imgtype=0&src=http%3A%2F%2Fs2.sinaimg.cn%2Fmw690%2F006hikKrzy7sly9c7wR41%26690', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160005', 'user005', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384240060&di=9e1733f947747d9fcb416b7ff0e967bc&imgtype=0&src=http%3A%2F%2Fpic27.nipic.com%2F20130313%2F10359352_100646435000_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160006', 'user006', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384334725&di=94b0b1d307e043592f4b80dc411e377a&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160329%2F2a8b875df7674bac8b3c5be74ea8f52e_th.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160007', 'user007', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160008', 'user008', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384396348&di=f5878b71e1077480632e56128198bce8&imgtype=0&src=http%3A%2F%2Fpic.chinaxinge.com%2Fxinge%2Fphoto%2Fupload%2Fshopimg%2Fbig2%2F201606%2FH46154182107.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160009', 'user009', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384396348&di=31bd7432d5ae5b021596e325268e53a1&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F437658f08a68e1d24ea512b48b4a8cb7d808f3de25148-uBjU7Q_fw658', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160010', 'user010', '123', 'nickname', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559384396347&di=26a760ffe40388bd68013c0b370d540c&imgtype=0&src=http%3A%2F%2Ffile06.16sucai.com%2F2016%2F0401%2Ffb9155ba45c860eaaf457a9c29356aea.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160011', 'user011', '123', 'nickname', 'http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160012', 'user012', '123', 'nickname', 'http://pic15.nipic.com/20110628/1369025_192645024000_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160013', 'user013', '123', 'nickname', 'http://pic37.nipic.com/20140110/17563091_221827492154_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160014', 'user014', '123', 'nickname', 'http://pic1.nipic.com/2009-02-17/200921701719614_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160015', 'user015', '123', 'nickname', 'http://pic9.nipic.com/20100923/2531170_140325352643_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160016', 'user016', '123', 'nickname', 'http://img3.redocn.com/tupian/20150312/haixinghezhenzhubeikeshiliangbeijing_3937174.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160017', 'user017', '123', 'nickname', 'http://pic32.nipic.com/20130902/13395269_103525238102_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160018', 'user018', '123', 'nickname', 'http://pic25.nipic.com/20121205/10197997_003647426000_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160019', 'user019', '123', 'nickname', 'http://pic40.nipic.com/20140331/9469669_142840860000_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160020', 'user020', '123', 'nickname', 'http://pic18.nipic.com/20120204/8339340_144203764154_2.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('T001', '李老师', '123', 'sb', 'http://pic9.nipic.com/20100827/5252423_161258496483_2.jpg', '地信1603,地信1602', 1);
INSERT INTO `studentinfo` VALUES ('T002', '王老师', '123', '王老师', 'http://pic17.nipic.com/20111101/3094309_171235018306_2.jpg', '地信1601,地信1602,地信1603', 1);
INSERT INTO `studentinfo` VALUES ('T003', '赵老师', '123', '赵老师', 'http://pic38.nipic.com/20140226/2457331_112835004364_2.jpg', '地信1601,地信1602,地信1603', 1);
INSERT INTO `studentinfo` VALUES ('T004', '孙老师', '123', '孙老师', 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1559474838&di=c4f19affec6b910b619c80c08fec7ec1&src=http://i9.hexunimg.cn/2013-07-05/155842064.jpg', '地信1601,地信1602,地信1603', 1);
INSERT INTO `studentinfo` VALUES ('T005', '吧老师', '123', '吧老师', 'https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike92%2C5%2C5%2C92%2C30/sign=e1c4d3ea9b25bc313f5009ca3fb6e6d4/42a98226cffc1e1746b38a154890f603738de982.jpg', '地信1601,地信1602,地信1603', 1);

-- ----------------------------
-- Table structure for tasktable
-- ----------------------------
DROP TABLE IF EXISTS `tasktable`;
CREATE TABLE `tasktable`  (
  `TaskId` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FromTime` datetime(6) NULL,
  `EndTime` datetime(6) NULL,
  `TaskName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskContent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskState` int(20) NOT NULL,
  PRIMARY KEY (`TaskId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasktable
-- ----------------------------
INSERT INTO `tasktable` VALUES (3, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname', '地信1603', '绵阳', '三调', 'T001', 1);
INSERT INTO `tasktable` VALUES (9, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname1', '地信1603', '绵阳', '三调', 'T002', 1);
INSERT INTO `tasktable` VALUES (10, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname2', '地信1603', '绵阳', '三调', 'T003', 1);
INSERT INTO `tasktable` VALUES (11, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname3', '地信1603', '绵阳', '三调', 'T004', 0);
INSERT INTO `tasktable` VALUES (53, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname4', '地信1603', '绵阳', '三调', 'T005', 1);
INSERT INTO `tasktable` VALUES (54, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname5', '地信1603', '绵阳', '三调', 'T001', 0);
INSERT INTO `tasktable` VALUES (55, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname6', '地信1603', '绵阳', '三调', 'T001', 1);
INSERT INTO `tasktable` VALUES (56, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname7', '地信1603', '绵阳', '三调', 'T003', 1);
INSERT INTO `tasktable` VALUES (57, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname8', '地信1603', '绵阳', '三调', 'T003', 1);
INSERT INTO `tasktable` VALUES (58, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname9', '地信1603', '绵阳', '三调', 'T002', 0);
INSERT INTO `tasktable` VALUES (59, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'taskname10', '地信1603', '绵阳', '三调', 'T004', 1);

-- ----------------------------
-- Table structure for testresult
-- ----------------------------
DROP TABLE IF EXISTS `testresult`;
CREATE TABLE `testresult`  (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `TaskId` int(20) NOT NULL COMMENT 'taskid',
  `TestId` int(20) NOT NULL,
  `Grade` int(20) NULL DEFAULT NULL COMMENT '老师对于该学生答案的打分，默认为0分',
  `SubmitTime` datetime(6) NULL DEFAULT NULL COMMENT '学生提交时间',
  `Answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生答案',
  `Evaluate` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '老师对于该学生的答案评价',
  `State` int(255) NULL DEFAULT NULL COMMENT '状态，0代表老师未批改，1代表老师已批改',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testresult
-- ----------------------------
INSERT INTO `testresult` VALUES (2, '5120160001', 3, 1, 6, '2019-06-06 17:49:21.000000', '答案：11111111111111111111111111111', 'fdhgdfgfdg', 1);
INSERT INTO `testresult` VALUES (3, '5120160002', 3, 1, 4, '2019-06-06 17:50:39.000000', '答案：22222222222222222', 'dfgff', 1);
INSERT INTO `testresult` VALUES (4, '5120160003', 3, 1, 2, NULL, '答案：333333333333333', '苹果笔记本', 1);
INSERT INTO `testresult` VALUES (5, '5120160004', 3, 1, 2, NULL, '答案：44444444444444', '空间看看', 1);
INSERT INTO `testresult` VALUES (6, '5120160005', 3, 1, 2, NULL, '答案：555555555555555', '空间看看mm', 1);
INSERT INTO `testresult` VALUES (7, '5120160006', 3, 1, 2, NULL, '答案：66666666666666666666', '空间看看mm', 1);
INSERT INTO `testresult` VALUES (8, '5120160007', 3, 1, 4, NULL, '答案：777777777777777', '觉得可可小姐才能', 1);
INSERT INTO `testresult` VALUES (9, '5120160008', 3, 1, 6, NULL, '答案：8888888888', 'undefined', 1);
INSERT INTO `testresult` VALUES (10, '5120160009', 3, 1, NULL, NULL, '答案：99999999', NULL, 0);
INSERT INTO `testresult` VALUES (11, '5120160010', 3, 1, NULL, NULL, '答案：111111111', NULL, 0);
INSERT INTO `testresult` VALUES (12, '5120160011', 3, 1, 1, '2019-06-06 23:55:54.000000', '答案：111', '偏题了', 1);
INSERT INTO `testresult` VALUES (13, '5120160012', 3, 1, 4, '2019-06-05 23:56:03.000000', '答案：22', '答案不够全面，漏写', 1);
INSERT INTO `testresult` VALUES (14, '5120160013', 3, 1, 6, '2019-05-28 23:56:08.000000', '答案：完全正确似懂非懂防守打法地方舒服舒服', '该同学答案完全正确', 1);
INSERT INTO `testresult` VALUES (15, '5120160014', 3, 1, 5, '2019-06-06 01:56:17.000000', '高等丰富的', '字体差了点，不过答案正确', 1);
INSERT INTO `testresult` VALUES (16, '5120160015', 3, 1, 6, '2019-06-06 22:49:23.000000', '22是士大夫撒的地方是发达是的大幅度撒地方撒', '完全正确', 1);
INSERT INTO `testresult` VALUES (17, '5120160016', 3, 1, 0, '2019-06-06 23:49:30.000000', '000', '答非所问', 1);
INSERT INTO `testresult` VALUES (18, '5120160017', 3, 1, 2, '2019-06-07 23:56:37.000000', '2110', NULL, 1);

-- ----------------------------
-- Table structure for testtable
-- ----------------------------
DROP TABLE IF EXISTS `testtable`;
CREATE TABLE `testtable`  (
  `Testid` int(20) NOT NULL AUTO_INCREMENT,
  `TestName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskId` int(20) NOT NULL,
  `Content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TotalGrade` int(255) NOT NULL,
  `Deadtime` datetime(6) NULL,
  PRIMARY KEY (`Testid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testtable
-- ----------------------------
INSERT INTO `testtable` VALUES (1, '找金刚石', 3, '找到一块野生金刚石并拍照', 6, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (2, '找玫瑰花', 3, '找到一朵正在开放的玫瑰花并采集花瓣做标本', 10, '2019-06-12 19:38:36.000000');
INSERT INTO `testtable` VALUES (3, '寻找一块较大的岩浆岩', 3, '在附近找到一个相对较大的岩浆岩并带回学校研究', 5, '2019-06-11 19:40:14.000000');
INSERT INTO `testtable` VALUES (4, '查看地质构造', 3, '查看附近地貌并判断地质构造', 10, '2019-06-04 13:46:01.000000');
INSERT INTO `testtable` VALUES (5, '寻找菊科植物', 3, '在附近寻找一颗菊科植物并拍照上传', 5, '2019-06-04 19:47:06.000000');
INSERT INTO `testtable` VALUES (6, '找被风化了的石头', 3, '寻找附近被风化或侵蚀了的石头', 5, '2019-06-04 19:48:45.000000');
INSERT INTO `testtable` VALUES (7, '统计所见动物种类', 3, '统计动物种类和数量', 5, '2019-06-03 19:52:40.000000');
INSERT INTO `testtable` VALUES (8, '找一根牛毛', 3, '找一根牛毛', 5, '2019-06-13 19:53:12.000000');
INSERT INTO `testtable` VALUES (9, '找扁玉螺', 3, '在附近海滩上找一个扁玉螺', 2, '2019-05-28 19:54:39.000000');
INSERT INTO `testtable` VALUES (10, '采集老虎血样做标本', 3, '采集老虎血样回学校做成标本上交', 3, '2019-06-03 19:55:58.000000');
INSERT INTO `testtable` VALUES (11, '5120160100', 5, 'waiwai is shabi', 5, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (12, '几句话', 3, '哈哈', 8, '2019-06-04 12:57:18.000000');
INSERT INTO `testtable` VALUES (13, '几句话', 3, '哈哈', 8, '2019-06-04 12:57:18.000000');
INSERT INTO `testtable` VALUES (14, '几句话', 3, '哈哈', 8, '2019-06-04 12:57:18.000000');
INSERT INTO `testtable` VALUES (15, '扣扣电话', 3, '滚滚滚滚滚', 6, '2019-06-12 13:13:56.000000');
INSERT INTO `testtable` VALUES (16, 'bb', 3, '解救', 9, '2019-06-04 13:16:57.000000');
INSERT INTO `testtable` VALUES (17, 'bb', 3, '解救', 9, '2019-06-04 13:16:57.000000');
INSERT INTO `testtable` VALUES (18, '计算机', 3, '继续继续就', 1, '2019-06-04 13:21:02.000000');
INSERT INTO `testtable` VALUES (19, '欧', 3, 'GG', 6, '2019-06-04 13:23:54.000000');
INSERT INTO `testtable` VALUES (20, '5120160100', 5, 'waiwai is shabi', 5, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (21, '你不想', 3, '继续继续就', 5, '2019-06-04 14:10:33.000000');
INSERT INTO `testtable` VALUES (22, '发个', 3, '方法', 55, '2019-06-04 14:10:56.000000');
INSERT INTO `testtable` VALUES (23, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (24, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (25, '5120160100', 5, 'waiwai is shabi', 5, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (26, '5120160100', 1, 'waiwai is shabi', 5, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (27, '5120160100', 3, 'waiwai is shabi', 5, '2019-07-02 23:34:10.000000');
INSERT INTO `testtable` VALUES (28, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (29, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (30, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (31, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (32, 'testName', 3, 'testcontent', 10, '2019-06-04 14:12:20.000000');
INSERT INTO `testtable` VALUES (33, '你的名字', 3, '年休假小姐姐', 5, '2019-06-04 15:15:33.000000');
INSERT INTO `testtable` VALUES (34, '哈哈', 3, '表白墙', 6464, '2019-06-12 14:52:51.000000');
INSERT INTO `testtable` VALUES (35, '收集熊猫便便', 9, '在熊猫繁殖基地收集熊猫便便', 8, '2019-06-09 14:28:49.000000');

SET FOREIGN_KEY_CHECKS = 1;
