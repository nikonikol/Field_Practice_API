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

 Date: 24/05/2019 23:55:54
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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (4, '5120160000', '2019-07-02 23:34:10.000000', '[object Object],[object Object],[object Object]', '3');
INSERT INTO `location` VALUES (9, 'T001', '2019-05-24 20:45:06.000000', '{\"log\":104.085485,\"lat\":31.540105}', '1');
INSERT INTO `location` VALUES (10, '5120160001', '2019-05-24 20:45:35.000000', '{\"log\":104.685485,\"lat\":31.540105}', '1');
INSERT INTO `location` VALUES (11, '5120160002', '2019-05-24 20:46:05.000000', '{\"log\":104.685485,\"lat\":31.840105}', '1');
INSERT INTO `location` VALUES (12, '5120160003', '2019-05-24 20:46:36.000000', '{\"log\":104.985486,\"lat\":31.240107}', '1');
INSERT INTO `location` VALUES (13, 'T001', '2019-05-24 20:47:05.000000', '{\"log\":104.685486,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (14, 'T001', '2019-05-24 20:47:36.000000', '{\"log\":104.685485,\"lat\":31.540108}', 'undefined');
INSERT INTO `location` VALUES (15, 'T001', '2019-05-24 20:49:23.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (16, 'T001', '2019-05-24 20:49:53.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (17, 'T001', '2019-05-24 20:50:23.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (18, 'T001', '2019-05-24 20:50:53.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (19, 'T001', '2019-05-24 20:51:23.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (20, 'T001', '2019-05-24 20:51:53.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (21, 'T001', '2019-05-24 20:52:23.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (22, 'T001', '2019-05-24 20:52:53.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (23, 'T001', '2019-05-24 20:53:23.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (24, 'T001', '2019-05-24 20:53:53.000000', '{\"log\":104.685483,\"lat\":31.540107}', 'undefined');
INSERT INTO `location` VALUES (25, 'T001', '2019-05-24 20:54:23.000000', '{\"log\":104.685485,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (26, 'T001', '2019-05-24 20:54:53.000000', '{\"log\":104.685485,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (27, 'T001', '2019-05-24 20:55:23.000000', '{\"log\":104.685485,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (28, 'T001', '2019-05-24 20:55:53.000000', '{\"log\":104.685485,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (29, 'T001', '2019-05-24 20:56:24.000000', '{\"log\":104.685485,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (30, 'T001', '2019-05-24 20:56:54.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (31, 'T001', '2019-05-24 21:11:24.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (32, 'T001', '2019-05-24 21:15:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (33, 'T001', '2019-05-24 21:16:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (34, 'T001', '2019-05-24 21:16:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (35, 'T001', '2019-05-24 21:17:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (36, 'T001', '2019-05-24 21:17:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (37, 'T001', '2019-05-24 21:18:18.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (38, 'T001', '2019-05-24 21:18:47.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (39, 'T001', '2019-05-24 21:19:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (40, 'T001', '2019-05-24 21:19:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (41, 'T001', '2019-05-24 21:20:18.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (42, 'T001', '2019-05-24 21:20:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (43, 'T001', '2019-05-24 21:21:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (44, 'T001', '2019-05-24 21:21:47.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (45, 'T001', '2019-05-24 21:22:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (46, 'T001', '2019-05-24 21:22:47.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (47, 'T001', '2019-05-24 21:23:18.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (48, 'T001', '2019-05-24 21:23:47.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (49, 'T001', '2019-05-24 21:24:17.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (50, 'T001', '2019-05-24 21:24:47.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (51, 'T001', '2019-05-24 21:25:18.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (52, 'T001', '2019-05-24 21:25:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (53, 'T001', '2019-05-24 21:26:18.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (54, 'T001', '2019-05-24 21:26:48.000000', '{\"log\":104.685484,\"lat\":31.540109}', 'undefined');
INSERT INTO `location` VALUES (55, 'T001', '2019-05-24 22:00:13.000000', '{\"log\":104.685485,\"lat\":31.54011}', 'undefined');
INSERT INTO `location` VALUES (56, 'T001', '2019-05-24 22:05:34.000000', '{\"log\":104.685484,\"lat\":31.540111}', 'undefined');
INSERT INTO `location` VALUES (57, 'T001', '2019-05-24 22:07:38.000000', '{\"log\":104.685484,\"lat\":31.540111}', 'undefined');
INSERT INTO `location` VALUES (58, 'T001', '2019-05-24 22:08:05.000000', '{\"log\":104.685484,\"lat\":31.540111}', 'undefined');
INSERT INTO `location` VALUES (59, 'T001', '2019-05-24 22:08:35.000000', '{\"log\":104.685484,\"lat\":31.540111}', 'undefined');
INSERT INTO `location` VALUES (60, 'T001', '2019-05-24 22:29:09.000000', '{\"log\":104.685485,\"lat\":31.540106}', 'undefined');
INSERT INTO `location` VALUES (61, 'T001', '2019-05-24 22:30:11.000000', '{\"log\":104.685485,\"lat\":31.540106}', 'undefined');
INSERT INTO `location` VALUES (62, 'T001', '2019-05-24 22:30:40.000000', '{\"log\":104.685485,\"lat\":31.540106}', 'undefined');
INSERT INTO `location` VALUES (63, 'T001', '2019-05-24 22:31:10.000000', '{\"log\":104.685485,\"lat\":31.540106}', 'undefined');
INSERT INTO `location` VALUES (64, 'T001', '2019-05-24 22:43:46.000000', '{\"log\":104.685485,\"lat\":31.540106}', 'undefined');
INSERT INTO `location` VALUES (65, 'T001', '2019-05-24 22:44:33.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (66, 'T001', '2019-05-24 22:45:02.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (67, 'T001', '2019-05-24 22:54:43.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (68, 'T001', '2019-05-24 22:55:16.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (69, 'T001', '2019-05-24 22:59:52.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (70, 'T001', '2019-05-24 23:00:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (71, 'T001', '2019-05-24 23:00:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (72, 'T001', '2019-05-24 23:01:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (73, 'T001', '2019-05-24 23:01:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (74, 'T001', '2019-05-24 23:02:22.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (75, 'T001', '2019-05-24 23:02:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (76, 'T001', '2019-05-24 23:03:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (77, 'T001', '2019-05-24 23:03:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (78, 'T001', '2019-05-24 23:04:22.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (79, 'T001', '2019-05-24 23:04:52.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (80, 'T001', '2019-05-24 23:05:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (81, 'T001', '2019-05-24 23:05:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (82, 'T001', '2019-05-24 23:06:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (83, 'T001', '2019-05-24 23:06:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (84, 'T001', '2019-05-24 23:07:22.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (85, 'T001', '2019-05-24 23:07:51.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (86, 'T001', '2019-05-24 23:08:21.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (87, 'T001', '2019-05-24 23:08:49.000000', '{\"log\":104.685484,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (88, 'undefined', '2019-05-24 23:09:53.000000', '{\"log\":104.685485,\"lat\":31.540111}', 'undefined');
INSERT INTO `location` VALUES (89, 'undefined', '2019-05-24 23:10:24.000000', '{\"log\":104.685485,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (90, 'undefined', '2019-05-24 23:10:54.000000', '{\"log\":104.685485,\"lat\":31.540104}', 'undefined');
INSERT INTO `location` VALUES (91, 'undefined', '2019-05-24 23:11:23.000000', '{\"log\":104.685485,\"lat\":31.540104}', 'undefined');

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
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` int(5) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('5120160000', '管理员0', '123', 'admin', '1', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160001', '李明崴1', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160002', '李明崴2', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160003', '李明崴3', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('5120160004', '李明崴4', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603', 0);
INSERT INTO `studentinfo` VALUES ('T001', '李明崴', '123', 'sb', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558546245284&di=38f27b13fdf6f6940fd6fa2be952c38e&imgtype=0&src=http%3A%2F%2Fphoto.16pic.com%2F00%2F47%2F87%2F16pic_4787818_b.jpg', '地信1603,地信1602,地信1604,地信1605', 1);

-- ----------------------------
-- Table structure for tasktable
-- ----------------------------
DROP TABLE IF EXISTS `tasktable`;
CREATE TABLE `tasktable`  (
  `TaskId` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FromTime` datetime(6) NULL DEFAULT NULL,
  `EndTime` datetime(6) NULL DEFAULT NULL,
  `TaskName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Class` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Address` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskContent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sponsor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TaskState` int(20) NOT NULL,
  PRIMARY KEY (`TaskId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasktable
-- ----------------------------
INSERT INTO `tasktable` VALUES (3, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1603', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (9, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (10, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (11, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda', '地信1601', '绵阳', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (12, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1601', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (52, '2019-05-23 20:22:41.000000', '2019-05-24 20:22:41.000000', '哈哈哈', '地信1603', 'undefined', '家家户户', 'T001', 0);
INSERT INTO `tasktable` VALUES (53, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1601', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (54, '2019-05-24 20:04:22.000000', '2019-05-24 20:04:22.000000', '句好尴尬', '地信1603', 'undefined', '几句话', 'T001', 0);
INSERT INTO `tasktable` VALUES (55, '2019-05-24 20:07:34.000000', '2019-05-25 20:07:34.000000', '名称', '地信1602', 'undefined', '详情', 'T001', 0);
INSERT INTO `tasktable` VALUES (56, '2019-05-24 20:09:36.000000', '2019-05-24 20:09:36.000000', '明', '地信1602', '第四', '究极进化', 'T001', 0);
INSERT INTO `tasktable` VALUES (57, '2019-05-24 20:09:36.000000', '2019-05-24 20:09:36.000000', '明', '地信1602', '第四', '究极进化', 'T001', 0);
INSERT INTO `tasktable` VALUES (58, '2019-05-24 20:14:25.000000', '2019-05-25 20:14:25.000000', '哈哈哈', '地信1602', 'hhh', '哈哈哈', 'T001', 0);
INSERT INTO `tasktable` VALUES (59, '2019-05-24 20:21:27.000000', '2019-05-24 20:21:27.000000', '鹿晗', '地信1605', '哈哈', '八号公馆', 'T001', 0);
INSERT INTO `tasktable` VALUES (60, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1601', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (61, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1601,地信1602,地信1603', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (63, '2019-05-24 20:36:32.000000', '2019-05-24 20:36:32.000000', 'usual', '地信1603,地信1602,地信1604,地信1605', '回电话', '你到家', 'T001', 0);
INSERT INTO `tasktable` VALUES (64, '2019-05-24 20:36:32.000000', '2019-05-24 20:36:32.000000', 'usual', '地信1603,地信1602,地信1604,地信1605', '回电话', '你到家', 'T001', 0);
INSERT INTO `tasktable` VALUES (65, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1603,地信1602,地信1604,地信1605', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (66, '2019-05-02 23:34:10.000000', '2019-07-02 23:34:10.000000', 'sda11', '地信1603,地信1602,地信1604,地信1605', 'undefined', '三调', '5120160000', 0);
INSERT INTO `tasktable` VALUES (67, '2019-05-24 20:36:32.000000', '2019-05-24 20:36:32.000000', 'usual', '地信1603,地信1602,地信1604,地信1605', '回电话', '你到家', 'T001', 0);

SET FOREIGN_KEY_CHECKS = 1;
