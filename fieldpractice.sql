/*
 Navicat Premium Data Transfer

 Source Server         : fieldpractice
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : fieldpractice

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 01/06/2019 12:51:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `GroupId` int(20) NOT NULL,
  `TaskId` int(20) NOT NULL,
  `Headman` int(20) NOT NULL,
  `Members` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`GroupId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LastTime` datetime(6) NULL DEFAULT NULL,
  `Location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TaskId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (4, '5120160000', '2019-07-02 23:34:10.000000', '[object Object],[object Object],[object Object]', '4');
INSERT INTO `location` VALUES (5, 'T001', '2019-07-02 00:00:00.000000', '[object Object],[object Object],[object Object]', NULL);
INSERT INTO `location` VALUES (6, 'T001', '2019-07-02 00:00:00.000000', '[object Object]', NULL);
INSERT INTO `location` VALUES (7, 'T001', '2019-07-02 00:00:00.000000', '[object Object]', NULL);
INSERT INTO `location` VALUES (8, '5120160100', '2019-07-02 23:34:10.000000', '', '3');
INSERT INTO `location` VALUES (9, '5120160100', '2019-07-02 23:34:10.000000', '[object Object],[object Object],[object Object]', '3');
INSERT INTO `location` VALUES (10, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (11, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (12, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (13, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (14, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (15, '5120160100', '2019-07-02 23:34:10.000000', '{\"log\":1212,\"lat\":5656.45}', '5');
INSERT INTO `location` VALUES (18, '5120163333', '2019-07-02 23:34:10.000000', '{\"count\":2,\"location\":[{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45}]}', '1');

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
INSERT INTO `studentinfo` VALUES ('5120160000', '管理员', '123', 'admin', '1', '地理信息科学1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160001', '李明崴', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160002', '李明崴', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603,地信1602', 0);
INSERT INTO `studentinfo` VALUES ('5120160003', '李明崴12', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603,地信1602', 0);
INSERT INTO `studentinfo` VALUES ('5120160004', '李明崴12', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('T001', '李明崴', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603,地信1602', 1);

-- ----------------------------
-- Table structure for tasktable
-- ----------------------------
DROP TABLE IF EXISTS `tasktable`;
CREATE TABLE `tasktable`  (
  `TaskId` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FromTime` datetime(6) NOT NULL,
  `EndTime` datetime(6) NOT NULL,
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
INSERT INTO `tasktable` VALUES (3, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1603', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (9, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (10, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (11, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (53, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (54, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (55, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (56, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (57, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (58, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (59, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);

-- ----------------------------
-- Table structure for testresult
-- ----------------------------
DROP TABLE IF EXISTS `testresult`;
CREATE TABLE `testresult`  (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskId` int(20) NOT NULL,
  `TestId` int(20) NOT NULL,
  `Grade` int(20) NULL DEFAULT NULL COMMENT 'Student due to grade',
  `SubmitTime` datetime(6) NOT NULL,
  `Answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testresult
-- ----------------------------
INSERT INTO `testresult` VALUES (1, '5120160100', 5, 5, NULL, '2019-07-02 23:34:10.000000', '歪歪真是个小可爱');

-- ----------------------------
-- Table structure for testtable
-- ----------------------------
DROP TABLE IF EXISTS `testtable`;
CREATE TABLE `testtable`  (
  `Testid` int(20) NOT NULL AUTO_INCREMENT,
  `TestName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskId` int(20) NOT NULL,
  `Content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TotalGrade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Deadtime` datetime(6) NOT NULL,
  PRIMARY KEY (`Testid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of testtable
-- ----------------------------
INSERT INTO `testtable` VALUES (1, '5120160100', 5, 'waiwai is shabi', '5120160100', '2019-07-02 23:34:10.000000');

SET FOREIGN_KEY_CHECKS = 1;
