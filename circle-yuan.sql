/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : circle-yuan

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/05/2022 10:36:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_del
-- ----------------------------
DROP TABLE IF EXISTS `admin_del`;
CREATE TABLE `admin_del`  (
  `num` int NOT NULL AUTO_INCREMENT,
  `stu_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cou_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `term` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_del
-- ----------------------------

-- ----------------------------
-- Table structure for admin_login
-- ----------------------------
DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login`  (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_login
-- ----------------------------
INSERT INTO `admin_login` VALUES ('nini', '11111111');
INSERT INTO `admin_login` VALUES ('yuanyuan', '1234567');

-- ----------------------------
-- Table structure for choose_courses_data
-- ----------------------------
DROP TABLE IF EXISTS `choose_courses_data`;
CREATE TABLE `choose_courses_data`  (
  `num` int NOT NULL AUTO_INCREMENT,
  `stuid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `term` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `couid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teaid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `usuper` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tesper` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `finper` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jidian` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of choose_courses_data
-- ----------------------------
INSERT INTO `choose_courses_data` VALUES (1, '1101', '2020秋', '08305001', '0103', '60', '100', '60', '1.0');
INSERT INTO `choose_courses_data` VALUES (2, '1102', '2020秋', '08305001', '0103', '87', '95', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (3, '1102', '2020春', '08305002', '0101', '82', '70', '80', '3.3');
INSERT INTO `choose_courses_data` VALUES (4, '1102', '2021秋', '08305004', '0101', '73', '78', '87', '3.7');
INSERT INTO `choose_courses_data` VALUES (5, '1103', '2020秋', '08305001', '0103', '56', '78', '31', '0');
INSERT INTO `choose_courses_data` VALUES (6, '1103', '2020春', '08305002', '0102', '75', '80', 'null', '0');
INSERT INTO `choose_courses_data` VALUES (7, '1103', '2020春', '08305003', '0102', '84', '83', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (8, '1103', '2021秋', '08305001', '0102', 'null', '81', '31', '0.0');
INSERT INTO `choose_courses_data` VALUES (9, '1103', '2021秋', '08305004', '0101', '80', '85', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (10, '1104', '2020秋', '08305001', '0103', '74', '84', '53', '0.0');
INSERT INTO `choose_courses_data` VALUES (11, '1104', '2021春', '08302001', '0201', 'null', '83', '90', '4.0');
INSERT INTO `choose_courses_data` VALUES (12, '1106', '2020秋', '08305001', '0103', '85', '70', '60', '1.0');
INSERT INTO `choose_courses_data` VALUES (13, '1106', '2020春', '08305002', '0103', '66', '75', '32', '0.0');
INSERT INTO `choose_courses_data` VALUES (14, '1107', '2020秋', '08305001', '0103', '90', '94', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (15, '1107', '2020春', '08305003', '0102', '79', '84', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (16, '1107', '2021秋', '08305004', '0101', '81', '88', '90', '4.0');
INSERT INTO `choose_courses_data` VALUES (17, '1108', '2020秋', '08305001', '0123', '91', '93', '100', '4.0');
INSERT INTO `choose_courses_data` VALUES (18, '1108', '2020春', '08305003', '0105', '85', '84', '49', '0.0');
INSERT INTO `choose_courses_data` VALUES (19, '1108', '2021秋', '08305004', '0101', '83', '88', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (20, '1108', '2020春', '08305002', '0104', '81', '86', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (21, '1108', '2021春', '08305005', '0105', 'null', '84', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (22, '1108', '2021春', '08305006', '0105', 'null', '87', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (23, '1108', '2020春', '08305009', '0123', '77', '80', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (24, '1108', '2020春', '08305008', '0106', '91', '93', '89', '3.7');
INSERT INTO `choose_courses_data` VALUES (25, '1108', '2021秋', '08305007', '0106', '78', '87', '90', '4.0');
INSERT INTO `choose_courses_data` VALUES (26, '1109', '2020秋', '08305001', '0123', '93', '97', '91', '4.0');
INSERT INTO `choose_courses_data` VALUES (27, '1109', '2020春', '08305003', '0105', '86', '88', '92', '4.0');
INSERT INTO `choose_courses_data` VALUES (28, '1109', '2021秋', '08305004', '0101', '85', '84', '93', '4.0');
INSERT INTO `choose_courses_data` VALUES (29, '1109', '2020春', '08305002', '0102', '77', '80', '94', '4.0');
INSERT INTO `choose_courses_data` VALUES (30, '1109', '2021春', '08305005', '0105', 'null', '85', '95', '4.0');
INSERT INTO `choose_courses_data` VALUES (31, '1109', '2021春', '08305006', '0105', 'null', '84', '96', '4.0');
INSERT INTO `choose_courses_data` VALUES (32, '1109', '2020春', '08305009', '0123', '75', '88', '97', '4.0');
INSERT INTO `choose_courses_data` VALUES (33, '1109', '2021春', '08305008', '0106', 'null', '89', '98', '4.0');
INSERT INTO `choose_courses_data` VALUES (34, '1109', '2020秋', '08305007', '0106', '75', '84', '99', '4.0');
INSERT INTO `choose_courses_data` VALUES (35, '1111', '2020秋', '08305001', '0123', '92', '89', '100', '4.0');
INSERT INTO `choose_courses_data` VALUES (36, '1111', '2020春', '08305003', '0105', '86', '86', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (37, '1111', '2021秋', '08305004', '0101', '87', '88', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (38, '1111', '2020春', '08305002', '0101', '83', '89', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (39, '1111', '2021春', '08305005', '0105', 'null', '90', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (40, '1111', '2021春', '08305006', '0101', 'null', '73', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (41, '1111', '2020春', '08305009', '0212', '76', '78', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (42, '1111', '2020春', '08305008', '0106', '87', '80', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (43, '1110', '2020秋', '08301001', '0212', '75', '84', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (44, '1110', '2021春', '08302001', '0201', 'null', '68', '47', '0.0');
INSERT INTO `choose_courses_data` VALUES (45, '0990', '2021春', '08305005', '0105', 'null', '89', '22', '0.0');
INSERT INTO `choose_courses_data` VALUES (46, '0990', '2021秋', '08305004', '0101', '60', '76', '89', '3.7');
INSERT INTO `choose_courses_data` VALUES (47, '0990', '2020秋', '08305001', '0123', '67', '79', '100', '4.0');
INSERT INTO `choose_courses_data` VALUES (48, '0990', '2020春', '08305002', '0104', '48', '70', '90', '4.0');
INSERT INTO `choose_courses_data` VALUES (49, '0990', '2021春', '08305002', '0104', 'null', '52', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (50, '1112', '2021秋', '08305001', '0102', '71', '80', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (51, '1112', '2021春', '08305003', '0105', 'null', '87', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (52, '1112', '2021秋', '08305004', '0101', '69', '77', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (53, '1112', '2021春', '08305002', '0212', 'null', '79', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (54, '1112', '2020春', '08305005', '0105', '53', '60', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (55, '1112', '2021春', '08305005', '0105', 'null', '64', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (56, '1112', '2020春', '08305006', '0105', '83', '89', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (57, '1112', '2020春', '08305009', '0212', '56', '80', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (58, '1112', '2020秋', '08305008', '0608', '89', '94', 'null', 'null');
INSERT INTO `choose_courses_data` VALUES (59, '0990', '2021秋', '08305007', '0106', '88', '88', '88', '3.7');
INSERT INTO `choose_courses_data` VALUES (60, '1101', '2020春', '08305009', '0123', '79', '84', '82', 'null');
INSERT INTO `choose_courses_data` VALUES (61, '1101', '2020春', '08305008', '0103', '77', '81', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (62, '1101', '2020春', '08305002', '0101', '76', '90', '83', '3.3');
INSERT INTO `choose_courses_data` VALUES (63, '1101', '2020春', '08305003', '0102', '87', '94', '91', '4.0');
INSERT INTO `choose_courses_data` VALUES (64, '1102', '2020春', '08305005', '0104', '84', '81', '83', '3.3');
INSERT INTO `choose_courses_data` VALUES (65, '1102', '2020春', '08305009', '0123', '89', '88', '89', '3.7');
INSERT INTO `choose_courses_data` VALUES (66, '1102', '2020春', '08305008', '0103', '81', '86', '83', '3.3');
INSERT INTO `choose_courses_data` VALUES (67, '1102', '2020春', '08305003', '0102', '71', '84', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (68, '1103', '2020春', '08305005', '0104', '76', '83', '80', 'null');
INSERT INTO `choose_courses_data` VALUES (69, '1103', '2020春', '08305009', '0123', '78', '70', '74', '2.3');
INSERT INTO `choose_courses_data` VALUES (70, '1103', '2020春', '08305008', '0103', '81', '79', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (71, '1104', '2020春', '08305005', '0104', '82', '74', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (72, '1104', '2020春', '08305009', '0123', '72', '81', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (73, '1104', '2020春', '08305008', '0103', '86', '90', '88', '3.7');
INSERT INTO `choose_courses_data` VALUES (74, '1104', '2020春', '08305002', '0102', '79', '89', '84', 'null');
INSERT INTO `choose_courses_data` VALUES (75, '1104', '2020春', '08305003', '0102', '89', '81', '85', '3.7');
INSERT INTO `choose_courses_data` VALUES (76, '1105', '2020春', '08305005', '0104', '84', '78', '81', 'null');
INSERT INTO `choose_courses_data` VALUES (77, '1105', '2020春', '08305009', '0123', '89', '79', '84', '3.3');
INSERT INTO `choose_courses_data` VALUES (78, '1105', '2020春', '08305008', '0103', '79', '76', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (79, '1105', '2020春', '08305002', '0103', '88', '77', '83', '3.3');
INSERT INTO `choose_courses_data` VALUES (80, '1105', '2020春', '08305003', '0102', '78', '84', '81', '3.0');
INSERT INTO `choose_courses_data` VALUES (81, '1106', '2020春', '08305005', '0104', '79', '79', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (82, '1106', '2020春', '08305009', '0123', '88', '89', '89', '3.7');
INSERT INTO `choose_courses_data` VALUES (83, '1106', '2020春', '08305008', '0103', '86', '74', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (84, '1106', '2020春', '08305003', '0102', '83', '71', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (85, '1107', '2020春', '08305005', '0104', '81', '76', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (86, '1107', '2020春', '08305009', '0123', '88', '76', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (87, '1107', '2020春', '08305008', '0103', '89', '74', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (88, '1107', '2020春', '08305002', '0104', '76', '77', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (89, '1110', '2020春', '08305002', '0101', '73', '77', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (90, '1110', '2020春', '08305003', '0102', '71', '79', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (91, '1110', '2020春', '08305005', '0104', '80', '78', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (92, '1110', '2020春', '08305009', '0212', '89', '76', '83', '3.3');
INSERT INTO `choose_courses_data` VALUES (93, '1110', '2020春', '08305008', '0103', '80', '71', '73', '2.3');
INSERT INTO `choose_courses_data` VALUES (94, '1113', '2020春', '08305002', '0103', '70', '79', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (95, '1113', '2020春', '08305003', '0105', '70', '71', '71', '2.0');
INSERT INTO `choose_courses_data` VALUES (96, '1113', '2020春', '08305005', '0105', '80', '76', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (97, '1113', '2020春', '08305009', '0212', '84', '84', '84', '3.3');
INSERT INTO `choose_courses_data` VALUES (98, '1113', '2020春', '08305008', '0106', '81', '88', '85', '3.7');
INSERT INTO `choose_courses_data` VALUES (99, '1114', '2020春', '08305002', '0104', '70', '84', '77', '2.7');
INSERT INTO `choose_courses_data` VALUES (100, '1114', '2020春', '08305003', '0105', '71', '89', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (101, '1114', '2020春', '08305005', '0105', '76', '86', '81', '3.0');
INSERT INTO `choose_courses_data` VALUES (102, '1114', '2020春', '08305009', '0101', '72', '83', '88', '3.7');
INSERT INTO `choose_courses_data` VALUES (103, '1114', '2020春', '08305008', '0106', '69', '81', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (104, '1115', '2020春', '08305002', '0101', '81', '87', '84', '3.3');
INSERT INTO `choose_courses_data` VALUES (105, '1115', '2020春', '08305003', '0105', '60', '88', '74', '2.3');
INSERT INTO `choose_courses_data` VALUES (106, '1115', '2020春', '08305005', '0105', '75', '83', '79', '3.0');
INSERT INTO `choose_courses_data` VALUES (107, '1115', '2020春', '08305009', '0101', '79', '81', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (108, '1115', '2020春', '08305008', '0106', '80', '83', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (109, '1116', '2020春', '08305002', '0102', '91', '97', '94', '4.0');
INSERT INTO `choose_courses_data` VALUES (110, '1116', '2020春', '08305003', '0105', '90', '99', '95', '4.0');
INSERT INTO `choose_courses_data` VALUES (111, '1116', '2020春', '08305005', '0105', '97', '94', '96', '4.0');
INSERT INTO `choose_courses_data` VALUES (112, '1116', '2020春', '08305009', '0101', '96', '92', '94', '4.0');
INSERT INTO `choose_courses_data` VALUES (113, '1116', '2020春', '08305008', '0106', '93', '99', '96', '4.0');
INSERT INTO `choose_courses_data` VALUES (114, '1117', '2020春', '08305002', '0103', '70', '60', '65', '0.0');
INSERT INTO `choose_courses_data` VALUES (115, '1117', '2020春', '08305003', '0105', '71', '61', '66', '0.0');
INSERT INTO `choose_courses_data` VALUES (116, '1117', '2020春', '08305005', '0105', '75', '66', '71', '2.0');
INSERT INTO `choose_courses_data` VALUES (117, '1117', '2020春', '08305009', '0101', '77', '67', '72', '2.3');
INSERT INTO `choose_courses_data` VALUES (118, '1117', '2020春', '08305008', '0106', '77', '59', '68', '2.0');
INSERT INTO `choose_courses_data` VALUES (119, '1118', '2020春', '08305002', '0104', '80', '70', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (120, '1118', '2020春', '08305003', '0105', '83', '77', '80', '3.0');
INSERT INTO `choose_courses_data` VALUES (121, '1118', '2020春', '08305005', '0105', '84', '71', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (122, '1118', '2020春', '08305009', '0101', '88', '79', '84', '3.3');
INSERT INTO `choose_courses_data` VALUES (123, '1118', '2020春', '08305008', '0106', '90', '73', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (124, '1119', '2020春', '08305002', '0101', '91', '71', '81', '3.0');
INSERT INTO `choose_courses_data` VALUES (125, '1119', '2020春', '08305003', '0105', '88', '76', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (126, '1119', '2020春', '08305005', '0105', '79', '71', '75', '2.7');
INSERT INTO `choose_courses_data` VALUES (127, '1119', '2020春', '08305009', '0101', '89', '74', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (128, '1119', '2020春', '08305008', '0106', '95', '77', '86', '3.7');
INSERT INTO `choose_courses_data` VALUES (129, '0990', '2020春', '08305003', '0102', '78', '78', '78', '3.0');
INSERT INTO `choose_courses_data` VALUES (130, '0990', '2020春', '08305009', '0212', '85', '79', '82', '3.3');
INSERT INTO `choose_courses_data` VALUES (131, '0990', '2020春', '08305008', '0106', '81', '71', '76', '2.7');

-- ----------------------------
-- Table structure for coll_data
-- ----------------------------
DROP TABLE IF EXISTS `coll_data`;
CREATE TABLE `coll_data`  (
  `collid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `addr` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`collid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coll_data
-- ----------------------------
INSERT INTO `coll_data` VALUES ('01', '计算机学院', '上大东校区三号楼', '65347567');
INSERT INTO `coll_data` VALUES ('02', '通讯学院', '上大东校区二号楼', '65341234');
INSERT INTO `coll_data` VALUES ('03', '材料学院', '上大东校区四号楼', '65347890');

-- ----------------------------
-- Table structure for courses_data
-- ----------------------------
DROP TABLE IF EXISTS `courses_data`;
CREATE TABLE `courses_data`  (
  `couid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `xf` int NULL DEFAULT NULL,
  `xs` int NULL DEFAULT NULL,
  `coll` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`couid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_data
-- ----------------------------
INSERT INTO `courses_data` VALUES ('08301001', '分子物理学', 6, 40, '03');
INSERT INTO `courses_data` VALUES ('08302001', '通信学', 4, 30, '02');
INSERT INTO `courses_data` VALUES ('08305001', '离散数学', 5, 40, '01');
INSERT INTO `courses_data` VALUES ('08305002', '数据库原理', 4, 50, '01');
INSERT INTO `courses_data` VALUES ('08305003', '数据结构', 4, 50, '01');
INSERT INTO `courses_data` VALUES ('08305004', '系统结构', 6, 60, '01');
INSERT INTO `courses_data` VALUES ('08305005', '编译原理', 4, 40, '01');
INSERT INTO `courses_data` VALUES ('08305006', '高级语言程序设计', 5, 50, '01');
INSERT INTO `courses_data` VALUES ('08305007', '计算机组成原理', 5, 50, '01');
INSERT INTO `courses_data` VALUES ('08305008', '操作系统', 5, 50, '01');
INSERT INTO `courses_data` VALUES ('08305009', '计算机网络', 3, 30, '01');

-- ----------------------------
-- Table structure for member_num
-- ----------------------------
DROP TABLE IF EXISTS `member_num`;
CREATE TABLE `member_num`  (
  `member` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `num` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_num
-- ----------------------------
INSERT INTO `member_num` VALUES ('stu', 20);
INSERT INTO `member_num` VALUES ('tea', 10);

-- ----------------------------
-- Table structure for open_courses_data
-- ----------------------------
DROP TABLE IF EXISTS `open_courses_data`;
CREATE TABLE `open_courses_data`  (
  `num` int NOT NULL AUTO_INCREMENT,
  `term` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cou_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tea_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class_time` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of open_courses_data
-- ----------------------------
INSERT INTO `open_courses_data` VALUES (1, '2020秋', '08305001', '0103', '一2-4');
INSERT INTO `open_courses_data` VALUES (2, '2020春', '08305002', '0101', '三1-4');
INSERT INTO `open_courses_data` VALUES (3, '2020春', '08305002', '0102', '三1-4');
INSERT INTO `open_courses_data` VALUES (4, '2020春', '08305002', '0103', '三1-4');
INSERT INTO `open_courses_data` VALUES (5, '2020春', '08305003', '0102', '五5-8');
INSERT INTO `open_courses_data` VALUES (6, '2021秋', '08305004', '0101', '二1-4');
INSERT INTO `open_courses_data` VALUES (7, '2021秋', '08305001', '0102', '一5-8');
INSERT INTO `open_courses_data` VALUES (8, '2021春', '08302001', '0201', '一5-8');
INSERT INTO `open_courses_data` VALUES (9, '2021春', '08305002', '0104', '三1-4');
INSERT INTO `open_courses_data` VALUES (10, '2020春', '08305002', '0104', '三1-4');
INSERT INTO `open_courses_data` VALUES (11, '2021春', '08305003', '0105', '四5-8');
INSERT INTO `open_courses_data` VALUES (12, '2020春', '08305003', '0105', '四5-8');
INSERT INTO `open_courses_data` VALUES (13, '2020春', '08305006', '0105', '三1-4');
INSERT INTO `open_courses_data` VALUES (14, '2021春', '08305006', '0105', '三1-4');
INSERT INTO `open_courses_data` VALUES (15, '2021春', '08305006', '0101', '三1-4');
INSERT INTO `open_courses_data` VALUES (16, '2021秋', '08305007', '0106', '五5-8');
INSERT INTO `open_courses_data` VALUES (17, '2020秋', '08305007', '0106', '四5-8');
INSERT INTO `open_courses_data` VALUES (18, '2020春', '08305008', '0106', '一1-4');
INSERT INTO `open_courses_data` VALUES (19, '2021春', '08305008', '0106', '一1-4');
INSERT INTO `open_courses_data` VALUES (20, '2020春', '08305009', '0123', '一5-8');
INSERT INTO `open_courses_data` VALUES (21, '2020春', '08305009', '0212', '一5-8');
INSERT INTO `open_courses_data` VALUES (22, '2020秋', '08301001', '0212', '二1-4');
INSERT INTO `open_courses_data` VALUES (23, '2020秋', '08305001', '0123', '五1-4');
INSERT INTO `open_courses_data` VALUES (24, '2021春', '08305002', '0212', '三1-4');
INSERT INTO `open_courses_data` VALUES (25, '2021春', '08305005', '0105', '二1-4');
INSERT INTO `open_courses_data` VALUES (26, '2020春', '08305005', '0105', '二1-4');

-- ----------------------------
-- Table structure for stu_login
-- ----------------------------
DROP TABLE IF EXISTS `stu_login`;
CREATE TABLE `stu_login`  (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_login
-- ----------------------------
INSERT INTO `stu_login` VALUES ('1101', '12345');
INSERT INTO `stu_login` VALUES ('1104', '33442');

-- ----------------------------
-- Table structure for stu_person_data
-- ----------------------------
DROP TABLE IF EXISTS `stu_person_data`;
CREATE TABLE `stu_person_data`  (
  `sno` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` date NULL DEFAULT NULL,
  `hometown` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coll` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_person_data
-- ----------------------------
INSERT INTO `stu_person_data` VALUES ('0990', '元宝', '男', '2000-04-20', '上海', '77568', '02');
INSERT INTO `stu_person_data` VALUES ('1101', '李明', '男', '1996-03-06', '上海', '13613005486', '01');
INSERT INTO `stu_person_data` VALUES ('1102', '刘晓明', '男', '1995-12-08', '安徽', '18913457890', '01');
INSERT INTO `stu_person_data` VALUES ('1103', '张颖', '女', '1996-01-05', '江苏', '18826490423', '01');
INSERT INTO `stu_person_data` VALUES ('1104', '刘晶晶', '女', '1997-11-06', '上海', '13331934111', '01');
INSERT INTO `stu_person_data` VALUES ('1105', '刘成刚', '男', '1994-06-07', '上海', '18015872567', '01');
INSERT INTO `stu_person_data` VALUES ('1106', '李二丽', '女', '1996-05-04', '江苏', '18107620945', '01');
INSERT INTO `stu_person_data` VALUES ('1107', '张晓峰', '男', '1995-08-16', '浙江', '13912341078', '01');
INSERT INTO `stu_person_data` VALUES ('1108', '姚逸歌', '女', '2001-07-13', '广东', '18800378246', '01');
INSERT INTO `stu_person_data` VALUES ('1109', '俞可馨', '女', '2001-04-25', '浙江', '17302190425', '01');
INSERT INTO `stu_person_data` VALUES ('1110', '王汪汪', '男', '2000-01-01', '江西', '17310086111', '03');
INSERT INTO `stu_person_data` VALUES ('1111', '倪园', '女', '2000-10-12', '上海', '13812124040', '01');
INSERT INTO `stu_person_data` VALUES ('1112', '路六', '男', '1998-09-30', '北京', '15945671234', '01');
INSERT INTO `stu_person_data` VALUES ('1113', '齐木楠雄', '男', '2002-08-16', '东京', '15912341234', '01');
INSERT INTO `stu_person_data` VALUES ('1114', '笨', '男', '2002-02-22', '纽约', '15914567894', '01');
INSERT INTO `stu_person_data` VALUES ('1115', '太宰治', '男', '1999-06-19', '东京', '15745679457', '01');
INSERT INTO `stu_person_data` VALUES ('1116', '薛霸', '男', '1999-12-20', '天津', '15412347593', '01');
INSERT INTO `stu_person_data` VALUES ('1117', '薛扎', '男', '1999-12-20', '天津', '15412347845', '01');
INSERT INTO `stu_person_data` VALUES ('1118', '莉莉', '女', '2000-01-01', '陕西', '13478941234', '01');
INSERT INTO `stu_person_data` VALUES ('1119', '安安', '女', '2000-12-31', '福建', '15678941234', '01');

-- ----------------------------
-- Table structure for tea_login
-- ----------------------------
DROP TABLE IF EXISTS `tea_login`;
CREATE TABLE `tea_login`  (
  `id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tea_login
-- ----------------------------
INSERT INTO `tea_login` VALUES ('0101', '12345');
INSERT INTO `tea_login` VALUES ('0104', '12345');

-- ----------------------------
-- Table structure for tea_person_data
-- ----------------------------
DROP TABLE IF EXISTS `tea_person_data`;
CREATE TABLE `tea_person_data`  (
  `tno` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birth` date NULL DEFAULT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `coll` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tea_person_data
-- ----------------------------
INSERT INTO `tea_person_data` VALUES ('0101', '陈迪茂', '男', '1976-03-06', '副教授', '02');
INSERT INTO `tea_person_data` VALUES ('0102', '马小红', '女', '1975-12-08', '副教授', '02');
INSERT INTO `tea_person_data` VALUES ('0103', '吴宝钢', '男', '1983-11-06', '副教授', '01');
INSERT INTO `tea_person_data` VALUES ('0104', '李卫民', '男', '1972-02-01', '教授', '01');
INSERT INTO `tea_person_data` VALUES ('0105', '沈俊', '男', '1969-01-01', '教授', '02');
INSERT INTO `tea_person_data` VALUES ('0106', '刘福岩', '男', '1960-03-01', '副教授', '01');
INSERT INTO `tea_person_data` VALUES ('0123', '珠珠', '男', '1997-05-21', '教授', '01');
INSERT INTO `tea_person_data` VALUES ('0201', '张心颖', '女', '1963-01-05', '教授', '02');
INSERT INTO `tea_person_data` VALUES ('0212', '方方', '男', '1982-07-01', '教授', '02');
INSERT INTO `tea_person_data` VALUES ('0608', '圆圆', '女', '2022-05-11', '教授', '08');

-- ----------------------------
-- View structure for stusumxf
-- ----------------------------
DROP VIEW IF EXISTS `stusumxf`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `stusumxf` AS select sum(`cd`.`xf`) AS `sumxf`,`ccd`.`stuid` AS `stuid` from (`choose_courses_data` `ccd` left join `courses_data` `cd` on((`cd`.`couid` = `ccd`.`couid`))) where (`ccd`.`jidian` is not null) group by `ccd`.`stuid`;

-- ----------------------------
-- Procedure structure for select_courses
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_courses`;
delimiter ;;
CREATE PROCEDURE `select_courses`(in cou_name VARCHAR(45))
BEGIN
   SELECT * from courses_data where name like concat('%',cou_name,'%');
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for select_courses_page
-- ----------------------------
DROP PROCEDURE IF EXISTS `select_courses_page`;
delimiter ;;
CREATE PROCEDURE `select_courses_page`(in cou_name VARCHAR(45), in pagetop int,in pagesize int)
BEGIN
   SELECT * from courses_data where name like concat('%',cou_name,'%') LIMIT pagetop,pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stu_person_data
-- ----------------------------
DROP TRIGGER IF EXISTS `stu_add`;
delimiter ;;
CREATE TRIGGER `stu_add` AFTER INSERT ON `stu_person_data` FOR EACH ROW BEGIN
    UPDATE member_num SET num=num+1 where member="stu";
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table stu_person_data
-- ----------------------------
DROP TRIGGER IF EXISTS `stu_del`;
delimiter ;;
CREATE TRIGGER `stu_del` AFTER DELETE ON `stu_person_data` FOR EACH ROW BEGIN
    UPDATE member_num SET num=num-1 where member="stu";
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tea_person_data
-- ----------------------------
DROP TRIGGER IF EXISTS `tea_del`;
delimiter ;;
CREATE TRIGGER `tea_del` AFTER DELETE ON `tea_person_data` FOR EACH ROW BEGIN
    UPDATE member_num SET num=num-1 where member="tea";
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table tea_person_data
-- ----------------------------
DROP TRIGGER IF EXISTS `tea_add`;
delimiter ;;
CREATE TRIGGER `tea_add` AFTER INSERT ON `tea_person_data` FOR EACH ROW BEGIN
    UPDATE member_num SET num=num+1 where member="tea";
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
