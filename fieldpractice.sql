/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : fieldpractice

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 04/06/2019 10:52:52
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
  `Location` varchar(21700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TaskId` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
-- Table structure for tasktable
-- ----------------------------
DROP TABLE IF EXISTS `tasktable`;
CREATE TABLE `tasktable`  (
  `TaskId` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FromTime` datetime(6) NULL DEFAULT NULL,
  `EndTime` datetime(6) NULL DEFAULT NULL,
  `TaskName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskContent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskState` int(20) NOT NULL,
  PRIMARY KEY (`TaskId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `SubmitTime` datetime(6) NULL DEFAULT NULL,
  `Answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for testtable
-- ----------------------------
DROP TABLE IF EXISTS `testtable`;
CREATE TABLE `testtable`  (
  `Testid` int(20) NOT NULL AUTO_INCREMENT,
  `TestName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskId` int(20) NOT NULL,
  `Content` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TotalGrade` int(10) NOT NULL,
  `Deadtime` datetime(6) NOT NULL,
  PRIMARY KEY (`Testid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
