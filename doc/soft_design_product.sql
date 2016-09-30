/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : soft_design_product

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-30 13:31:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
  CONSTRAINT `concept_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='概念';

-- ----------------------------
-- Records of concept
-- ----------------------------

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
-- Records of concept_style
-- ----------------------------

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
  CONSTRAINT `module_function_ibfk_1` FOREIGN KEY (`PRODUCT_MODULE_ID`) REFERENCES `product_module` (`PRODUCT_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模块功能';

-- ----------------------------
-- Records of module_function
-- ----------------------------

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
-- Records of product
-- ----------------------------

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
  CONSTRAINT `product_module_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品模块';

-- ----------------------------
-- Records of product_module
-- ----------------------------

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
-- Records of system_element
-- ----------------------------
