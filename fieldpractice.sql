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

 Date: 22/05/2019 14:27:11
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
  `LastTime` datetime(0) NOT NULL,
  `Location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (1, '5120160000', '2019-05-22 13:38:24', '{[{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45},{\"log\":1212,\"lat\":5656.45}]}');
INSERT INTO `location` VALUES (2, '5120160000', '2019-07-02 23:34:10', '');
INSERT INTO `location` VALUES (3, '5120160000', '2019-07-02 23:34:10', '[object Object],[object Object],[object Object]');
INSERT INTO `location` VALUES (4, '5120160000', '2019-07-02 23:34:10', '[object Object],[object Object],[object Object]');

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `id` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生学号',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('5120160000', '管理员', '123', 'admin', '1', '地理信息科学1603', 0);

-- ----------------------------
-- Table structure for tasktable
-- ----------------------------
DROP TABLE IF EXISTS `tasktable`;
CREATE TABLE `tasktable`  (
  `TaskId` int(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `FromTime` datetime(6) NULL DEFAULT NULL,
  `EndTime` datetime(6) NULL DEFAULT NULL,
  `TaskName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskContent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskState` int(20) NOT NULL,
  PRIMARY KEY (`TaskId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasktable
-- ----------------------------
INSERT INTO `tasktable` VALUES (00000000000000000001, '2019-05-02 23:34:10.000000', '2019-05-14 23:34:16.000000', 'niko', '地信1603', '西科大', '地址探查', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000002, '2019-05-14 23:36:02.000000', '2019-05-31 23:36:06.000000', 'cxz', '地信1602', '西科大', '画画', '5120160000', 1);
INSERT INTO `tasktable` VALUES (00000000000000000003, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000004, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000005, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000006, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000007, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (00000000000000000008, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);

SET FOREIGN_KEY_CHECKS = 1;
