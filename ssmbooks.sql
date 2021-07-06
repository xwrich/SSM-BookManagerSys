/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50550
 Source Host           : localhost:3306
 Source Schema         : ssmbooks

 Target Server Type    : MySQL
 Target Server Version : 50550
 File Encoding         : 65001

 Date: 06/07/2021 11:39:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `bookID` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `bookName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `bookCounts` int(11) NOT NULL COMMENT '数量',
  `bookSummary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  PRIMARY KEY (`bookID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, 'Java基础入门', 10, '零基础入门学习Java');
INSERT INTO `books` VALUES (2, 'MySQL从入门到精通', 8, '带领读者学习MySQL基本语法');
INSERT INTO `books` VALUES (3, '计算机网络考研复习指导', 18, '针对考试计算机网络的学生进行辅导');
INSERT INTO `books` VALUES (4, '高等数学', 6, '同济大学编写');
INSERT INTO `books` VALUES (6, '111111', 9, '1234585648');

SET FOREIGN_KEY_CHECKS = 1;
