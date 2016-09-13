/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : soft_design

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-08-10 10:37:27
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
-- Table structure for concept
-- ----------------------------
DROP TABLE IF EXISTS `concept`;
CREATE TABLE `concept` (
  `CONCEPT_ID` varchar(64) NOT NULL COMMENT '概念编号',
  `PRODUCT_ID` varchar(64) DEFAULT NULL COMMENT '产品编号',
  `CONCEPT_NAME` varchar(64) DEFAULT NULL COMMENT '概念名称',
  `DEFINITION` varchar(256) DEFAULT NULL COMMENT '概念定义',
  `CONCEPT_EXPLAIN` varchar(256) DEFAULT NULL COMMENT '举例说明',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`CONCEPT_ID`),
  KEY `FK_Reference_7` (`PRODUCT_ID`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概念';

-- ----------------------------
-- Table structure for concept_style
-- ----------------------------
DROP TABLE IF EXISTS `concept_style`;
CREATE TABLE `concept_style` (
  `CONCEPT_STYLE_ID` varchar(64) NOT NULL COMMENT '概念模型样式编号',
  `STYLE_CODE` varchar(64) DEFAULT NULL COMMENT '样式代码',
  `HTML_STYLE` varchar(128) DEFAULT NULL COMMENT 'HTML样式',
  `DATA_STAYE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`CONCEPT_STYLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概念模型样式';

-- ----------------------------
-- Table structure for module_function
-- ----------------------------
DROP TABLE IF EXISTS `module_function`;
CREATE TABLE `module_function` (
  `FUNCTION_ID` varchar(64) NOT NULL COMMENT '功能编号',
  `PRODUCT_MODULE_ID` varchar(64) DEFAULT NULL COMMENT '产品模块编号',
  `FUNCTION_NAME` varchar(64) DEFAULT NULL COMMENT '功能名称',
  `FUNCTION_CODE` varchar(64) DEFAULT NULL COMMENT '功能代码',
  `FUNCTION_EXPLAIN` varchar(1024) DEFAULT NULL COMMENT '功能详细说明',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`FUNCTION_ID`),
  KEY `FK_Reference_6` (`PRODUCT_MODULE_ID`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`PRODUCT_MODULE_ID`) REFERENCES `product_module` (`PRODUCT_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块功能';

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `PRODUCT_ID` varchar(64) NOT NULL COMMENT '产品编号',
  `PRODUCT_NAME` varchar(64) DEFAULT NULL COMMENT '产品名称',
  `CREAT_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `PRODUCT_INTRODUCE` text COMMENT '产品介绍',
  `SYSTEM_ELEMENT_JSON` varchar(2048) DEFAULT NULL COMMENT '系统组件',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品';

-- ----------------------------
-- Table structure for product_module
-- ----------------------------
DROP TABLE IF EXISTS `product_module`;
CREATE TABLE `product_module` (
  `PRODUCT_MODULE_ID` varchar(64) NOT NULL COMMENT '产品模块编号',
  `PRODUCT_MODULE_NAME` varchar(64) DEFAULT NULL COMMENT '产品模块名称',
  `PRODUCT_MODULE_CODE` varchar(64) DEFAULT NULL COMMENT '产品模块代码',
  `MODULE_INTRODUCE` varchar(512) DEFAULT NULL COMMENT '模块简介',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  `PRODUCT_ID` varchar(64) DEFAULT NULL COMMENT '产品编号',
  PRIMARY KEY (`PRODUCT_MODULE_ID`),
  KEY `FK_Reference_5` (`PRODUCT_ID`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品模块';

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
-- Table structure for system_element
-- ----------------------------
DROP TABLE IF EXISTS `system_element`;
CREATE TABLE `system_element` (
  `ELEMENT_ID` varchar(64) NOT NULL COMMENT '组件编号',
  `ELEMENT_NAME` varchar(64) DEFAULT NULL COMMENT '组件名称',
  `ELEMENT_CODE` varchar(64) DEFAULT NULL COMMENT '组件代码',
  `DATA_STATE` varchar(8) DEFAULT NULL COMMENT '数据状态',
  PRIMARY KEY (`ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统组件';

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
  CONSTRAINT `FK_USER_COMPANY_FK` FOREIGN KEY (`COMPANY_ID`) REFERENCES `company` (`COMPANY_ID`),
  CONSTRAINT `FK_USER_ROLE_FK` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

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
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`USER_ID`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户产品';
