/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : soft_design_user

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-30 13:31:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `COMPANY_ID` varchar(64) NOT NULL COMMENT '公司编号',
  `COMPANY_ALL_NAME` varchar(128) DEFAULT NULL COMMENT '公司全称',
  `COMPANY_SIMPLE_NAME` varchar(64) DEFAULT NULL COMMENT '公司简称',
  `LOGO_URL` varchar(1024) DEFAULT NULL COMMENT '公司商标资源路径',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公司';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('AAA', 'AAA', 'AAA', 'AAA', '1');
INSERT INTO `company` VALUES ('BBB', 'BBB', 'BBB', 'http://', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ROLE_ID` varchar(64) NOT NULL COMMENT '角色编号',
  `ROLE_NAME` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `ROLE_CODE` varchar(32) DEFAULT NULL COMMENT '角色代码',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `USER_ID` varchar(64) NOT NULL COMMENT '用户编号',
  `USER_NAME` varchar(128) DEFAULT NULL COMMENT '用户名(邮箱 或 手机号码)',
  `USER_NICKNAME` varchar(32) DEFAULT NULL COMMENT '用户昵称(建议用真实姓名)',
  `PASSWORD` varchar(32) DEFAULT NULL COMMENT '登录密码',
  `ROLE_ID` varchar(64) DEFAULT NULL COMMENT '角色编号',
  `COMPANY_ID` varchar(64) DEFAULT NULL COMMENT '公司编号',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`USER_ID`),
  KEY `FK_USER_COMPANY_FK` (`COMPANY_ID`),
  KEY `FK_USER_ROLE_FK` (`ROLE_ID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`COMPANY_ID`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product` (
  `USER_PRODUCT_ID` varchar(64) NOT NULL COMMENT '用户产品编号',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '用户编号',
  `PRODUCT_ID` varchar(64) DEFAULT NULL COMMENT '产品编号',
  PRIMARY KEY (`USER_PRODUCT_ID`),
  KEY `FK_Reference_3` (`USER_ID`),
  KEY `FK_Reference_4` (`PRODUCT_ID`),
  CONSTRAINT `user_product_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`),
  CONSTRAINT `user_product_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户产品';

-- ----------------------------
-- Records of user_product
-- ----------------------------
