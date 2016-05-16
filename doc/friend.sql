/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost
 Source Database       : friend

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : utf-8

 Date: 05/16/2016 22:16:15 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `blood`
-- ----------------------------
DROP TABLE IF EXISTS `blood`;
CREATE TABLE `blood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `blood`
-- ----------------------------
BEGIN;
INSERT INTO `blood` VALUES ('1', 'A型', ''), ('2', 'AB型', 'AB型'), ('3', 'C型', ''), ('5', 'O型', 'O型');
COMMIT;

-- ----------------------------
--  Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `friendid` int(11) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `keyworld` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `contact`
-- ----------------------------
BEGIN;
INSERT INTO `contact` VALUES ('1', '聚会', '0', '同学聚会，侃大山', '聚会', '2015-12-27', '2015-12-27', ''), ('2', 't1', '41', '', '51', null, null, '');
COMMIT;

-- ----------------------------
--  Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `department`
-- ----------------------------
BEGIN;
INSERT INTO `department` VALUES ('1', '开发部', ''), ('2', '行政部', ''), ('3', 'DKG部', '');
COMMIT;

-- ----------------------------
--  Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `education`
-- ----------------------------
BEGIN;
INSERT INTO `education` VALUES ('1', '大专2', ''), ('2', '本科', ''), ('3', '硕士', ''), ('4', '博士', '');
COMMIT;

-- ----------------------------
--  Table structure for `educationexperience`
-- ----------------------------
DROP TABLE IF EXISTS `educationexperience`;
CREATE TABLE `educationexperience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendid` int(11) DEFAULT NULL,
  `schoolname` varchar(50) DEFAULT NULL,
  `educationid` varchar(11) DEFAULT NULL,
  `zhuanye` varchar(50) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `educationexperience`
-- ----------------------------
BEGIN;
INSERT INTO `educationexperience` VALUES ('41', '41', '科大', '本科', '', null, null, '');
COMMIT;

-- ----------------------------
--  Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) DEFAULT NULL,
  `cnname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `nativeplace` varchar(50) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `health` varchar(50) DEFAULT NULL,
  `native1` varchar(200) DEFAULT NULL,
  `icno` varchar(30) DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL,
  `idaddress` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `linkman` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emailwork` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `genderid` int(11) DEFAULT NULL,
  `partyid` int(11) DEFAULT NULL,
  `bloodid` int(11) DEFAULT NULL,
  `maritalid` int(11) DEFAULT NULL,
  `procreateid` int(11) DEFAULT NULL,
  `nativetypeid` int(11) DEFAULT NULL,
  `ictypeid` int(11) DEFAULT NULL,
  `educationid` int(11) DEFAULT NULL,
  `usefullife` date DEFAULT NULL,
  `graduatetime` date DEFAULT NULL,
  `startworkingdate` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `employee`
-- ----------------------------
BEGIN;
INSERT INTO `employee` VALUES ('1', 'AE1001,', '钟伟', 'zhongwei,,,,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', null, '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('2', 'AE1001,AE1001,', '钟伟,钟伟,', 'zhongwei,zhongwei,', ',,', ',,', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('3', 'AE1003', '钟伟2', 'zhongwei', '汉', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, '30', '1', '1', '1', '1', '1', '1', '1', '2', '2015-03-23', '2015-03-23', '2015-03-23', '2015-03-23'), ('4', 'AE1001,', '钟伟,', 'zhongwei,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('5', 'AE1001,', '钟伟,', 'zhongwei,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('6', 'AE1001,AE1001,', '钟伟,钟伟,', 'zhongwei,zhongwei,', ',,', ',,', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('7', 'AE1002', null, '秦奉', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null), ('8', 'AE1001,', '钟伟', 'zhongwei,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', '1', '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('9', 'AE1002', '秦奉', 'QinFeng', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '2', '3', '5', '1', '1', '1', '1', '2', null, null, null, null), ('10', 'AE1001', '钟伟', 'zhongwei', '', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', null, '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('11', 'AE1001', '钟伟,', 'zhongwei,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', null, '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22'), ('12', 'AE1001,', '钟伟', 'zhongwei,', ',', ',', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', null, null, null, '1', '1', '1', null, '1', '1', '1', '1', '2015-03-22', '2015-03-22', '2015-03-22', '2015-03-22');
COMMIT;

-- ----------------------------
--  Table structure for `familymembers`
-- ----------------------------
DROP TABLE IF EXISTS `familymembers`;
CREATE TABLE `familymembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `friendid` int(11) DEFAULT NULL,
  `relation` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `politicalstatus` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `familymembers`
-- ----------------------------
BEGIN;
INSERT INTO `familymembers` VALUES ('41', '阿爸', '41', '阿爸', '', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(20) DEFAULT NULL,
  `cnname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `guanxiid` int(11) DEFAULT NULL,
  `xinyongid` int(11) DEFAULT NULL,
  `pinlvid` int(11) DEFAULT NULL,
  `genderid` int(11) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `partyid` int(11) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `health` varchar(50) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `bloodid` int(11) DEFAULT NULL,
  `maritalid` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `linkman` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `educationid` int(11) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `graduatetime` date DEFAULT NULL,
  `startworkingdate` date DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `xinge` varchar(200) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `friend`
-- ----------------------------
BEGIN;
INSERT INTO `friend` VALUES ('41', '1001', '钟伟', 'zw', '1', '1', '1', '1', '', null, '1', '', '', null, null, '1', null, '', '', '', '', '', '1', '', '', null, null, null, null, '', ''), ('42', '1002', 'test1', 'test1', '1', '1', '1', '1', '', null, '1', '', '', null, null, '1', null, '', '', '', '', '', '1', '', '', null, null, null, null, '', '');
COMMIT;

-- ----------------------------
--  Table structure for `gender`
-- ----------------------------
DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `gender`
-- ----------------------------
BEGIN;
INSERT INTO `gender` VALUES ('1', 'Male-男', '男'), ('2', 'Female-女', '女'), ('3', '其他', '');
COMMIT;

-- ----------------------------
--  Table structure for `guanxi`
-- ----------------------------
DROP TABLE IF EXISTS `guanxi`;
CREATE TABLE `guanxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `guanxi`
-- ----------------------------
BEGIN;
INSERT INTO `guanxi` VALUES ('1', '大学同学', ''), ('2', 'Moki同事', ''), ('3', '恒图同事', ''), ('4', '易极天成同事', ''), ('5', '高中同学', '');
COMMIT;

-- ----------------------------
--  Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `corpname` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `info`
-- ----------------------------
BEGIN;
INSERT INTO `info` VALUES ('1', '四川摩奇HR管理系统 v1.0', '四川摩奇', 'MK EHR1.0');
COMMIT;

-- ----------------------------
--  Table structure for `jinengpj`
-- ----------------------------
DROP TABLE IF EXISTS `jinengpj`;
CREATE TABLE `jinengpj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pingjia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `jinengpj`
-- ----------------------------
BEGIN;
INSERT INTO `jinengpj` VALUES ('1', '41', 'Java', '熟练');
COMMIT;

-- ----------------------------
--  Table structure for `marital`
-- ----------------------------
DROP TABLE IF EXISTS `marital`;
CREATE TABLE `marital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `marital`
-- ----------------------------
BEGIN;
INSERT INTO `marital` VALUES ('1', '未婚', ''), ('2', '已婚', '');
COMMIT;

-- ----------------------------
--  Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `cnname` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `menu`
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES ('8', '0', 'info', '基础数据', '＃', '1', '0'), ('9', '0', 'sys', '系统管理', '#', '1', '60'), ('10', 'sys', 'user', '用户管理', '/user', '1', '0'), ('11', 'sys', 'menu', '菜单管理', '/menu', '1', '0'), ('12', 'sys', 'info', '信息设置', '/info', '1', '0'), ('13', 'info', 'gender', '性别', '/gender', '1', '0'), ('14', 'info', 'guanxi', '关系', '/guanxi', '1', '0'), ('15', 'info', 'xinyong', '信用等级', '/xinyong', '1', '0'), ('16', 'info', 'pinlv', '联系平率', '/pinlv', '1', '0'), ('20', 'info', 'education', '学历', '/education', '1', '0'), ('21', 'info', 'marital', '婚姻', '/marital', '1', '0'), ('22', 'info', 'blood', '血型', '/blood', '1', '0'), ('24', '0', 'em', '人脉管理', '#', '1', '10'), ('25', 'em', 'friend', '朋友管理', '/friend', '1', '2'), ('27', 'info', 'party', '政治面貌', '/party', '1', '0'), ('38', '0', 'search', '综合查询', '#', '1', '7'), ('39', 'search', 'rewards', '关系统计', '/rewards', '1', '6'), ('40', 'search', 'positive', '信用统计', '/positive', '1', '4'), ('41', 'search', 'contract', '综合查询', '/contract', '1', '5');
COMMIT;

-- ----------------------------
--  Table structure for `party`
-- ----------------------------
DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `party`
-- ----------------------------
BEGIN;
INSERT INTO `party` VALUES ('1', '党员', ''), ('2', '团员', ''), ('3', '群众', '');
COMMIT;

-- ----------------------------
--  Table structure for `pinlv`
-- ----------------------------
DROP TABLE IF EXISTS `pinlv`;
CREATE TABLE `pinlv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `pinlv`
-- ----------------------------
BEGIN;
INSERT INTO `pinlv` VALUES ('1', '1天', ''), ('2', '3天', ''), ('3', '1周', ''), ('4', '半月', ''), ('5', '1月', ''), ('6', '3月', ''), ('7', '半年', ''), ('8', '1年', '');
COMMIT;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `user`
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('1', 'dongfangx', '50f7aafcb35f1610ef608419e9c93aef', 'dongfang.x@qq.com', '18982280521', '0'), ('2', 'zw', '6a204bd89f3c8348afd5c77c717a097a', 'dongfang.x@qq.com', '13882295401', null);
COMMIT;

-- ----------------------------
--  Table structure for `workexperience`
-- ----------------------------
DROP TABLE IF EXISTS `workexperience`;
CREATE TABLE `workexperience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendid` int(11) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `corpname` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `workexperience`
-- ----------------------------
BEGIN;
INSERT INTO `workexperience` VALUES ('41', '41', 'CEO', '六亿科技', null, null, '', '');
COMMIT;

-- ----------------------------
--  Table structure for `xinyong`
-- ----------------------------
DROP TABLE IF EXISTS `xinyong`;
CREATE TABLE `xinyong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `xinyong`
-- ----------------------------
BEGIN;
INSERT INTO `xinyong` VALUES ('1', '5星', ''), ('2', '4星', ''), ('3', '3星', ''), ('4', '2星', ''), ('5', '1星', '');
COMMIT;

-- ----------------------------
--  Table structure for `xmjinyan`
-- ----------------------------
DROP TABLE IF EXISTS `xmjinyan`;
CREATE TABLE `xmjinyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `zhizhe` varchar(50) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `des` varchar(200) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
--  Records of `xmjinyan`
-- ----------------------------
BEGIN;
INSERT INTO `xmjinyan` VALUES ('41', '41', 'EHR', '', '2015-12-27', '2015-12-27', '', '', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
