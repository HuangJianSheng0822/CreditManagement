/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : credit_management

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2022-07-12 16:45:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` varchar(255) NOT NULL,
  `adminPwd` varchar(255) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `stId` varchar(255) NOT NULL,
  `stName` varchar(255) NOT NULL,
  `stDepartment` varchar(255) NOT NULL,
  `stAge` varchar(255) NOT NULL,
  `stNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`stId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` varchar(255) NOT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userPwd` varchar(255) NOT NULL,
  `userSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userAN` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', '1', '男', '1', 'a', '1', '1');
INSERT INTO `user` VALUES ('101', '101', '101', '男', '101', '101', '101', '101');
INSERT INTO `user` VALUES ('333', '333', '333', '男', '333', '333', '333', '333');
INSERT INTO `user` VALUES ('416', '416', '123', '男', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for user_credit
-- ----------------------------
DROP TABLE IF EXISTS `user_credit`;
CREATE TABLE `user_credit` (
  `userId` varchar(255) NOT NULL,
  `reputation` varchar(255) NOT NULL,
  `Illegal` varchar(255) NOT NULL,
  `defendant` varchar(255) NOT NULL,
  `default1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_credit
-- ----------------------------
INSERT INTO `user_credit` VALUES ('101', '好', '101', '否', '否');
INSERT INTO `user_credit` VALUES ('416', '好', '2', '否', '否');
INSERT INTO `user_credit` VALUES ('333', '好', '33', '否', '否');

-- ----------------------------
-- Table structure for user_feedback
-- ----------------------------
DROP TABLE IF EXISTS `user_feedback`;
CREATE TABLE `user_feedback` (
  `userId` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `quota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_feedback
-- ----------------------------
INSERT INTO `user_feedback` VALUES ('101', '黄金', '40000');
INSERT INTO `user_feedback` VALUES ('416', '白银', '20000');
INSERT INTO `user_feedback` VALUES ('333', '白银', '20000');

-- ----------------------------
-- Table structure for user_guarantee
-- ----------------------------
DROP TABLE IF EXISTS `user_guarantee`;
CREATE TABLE `user_guarantee` (
  `userId` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `car` varchar(255) NOT NULL,
  `shares` varchar(255) NOT NULL,
  `bond` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_guarantee
-- ----------------------------
INSERT INTO `user_guarantee` VALUES ('101', '101', '无车', '101', '101');
INSERT INTO `user_guarantee` VALUES ('333', '33', '无车', '33', '33');
INSERT INTO `user_guarantee` VALUES ('416', '1', '无车', '1', '2');

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information` (
  `userId` varchar(255) NOT NULL,
  `userAge` varchar(255) NOT NULL,
  `userMarriage` varchar(255) NOT NULL,
  `userOccupation` varchar(255) NOT NULL,
  `userTitle` varchar(255) NOT NULL,
  `userEducation` varchar(255) NOT NULL,
  `userSupportingPopulation` varchar(255) NOT NULL,
  `userWorkingHours` varchar(255) NOT NULL,
  `userAnnualIncome` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_information
-- ----------------------------
INSERT INTO `user_information` VALUES ('101', '101', '已婚', '101', '101', '101', '101', '101', '101');
INSERT INTO `user_information` VALUES ('333', '3', '已婚', '33', '333', '33', '33', '33', '33');
INSERT INTO `user_information` VALUES ('416', '1', '已婚', '2', '2', '3', '4', '1', '1');
