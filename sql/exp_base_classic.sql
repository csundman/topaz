/*
Navicat MySQL Data Transfer

Source Server         : DarkStar
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : dspdb

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2014-10-02 21:48:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `exp_base`
-- ----------------------------
DROP TABLE IF EXISTS `exp_base`;
CREATE TABLE `exp_base` (
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=9;

-- ----------------------------
-- Records of exp_base
-- ----------------------------
INSERT INTO `exp_base` VALUES ('1', '0');
INSERT INTO `exp_base` VALUES ('2', '500');
INSERT INTO `exp_base` VALUES ('3', '750');
INSERT INTO `exp_base` VALUES ('4', '1000');
INSERT INTO `exp_base` VALUES ('5', '1250');
INSERT INTO `exp_base` VALUES ('6', '1500');
INSERT INTO `exp_base` VALUES ('7', '1750');
INSERT INTO `exp_base` VALUES ('8', '2000');
INSERT INTO `exp_base` VALUES ('9', '2200');
INSERT INTO `exp_base` VALUES ('10', '2400');
INSERT INTO `exp_base` VALUES ('11', '2600');
INSERT INTO `exp_base` VALUES ('12', '2800');
INSERT INTO `exp_base` VALUES ('13', '3000');
INSERT INTO `exp_base` VALUES ('14', '3200');
INSERT INTO `exp_base` VALUES ('15', '3400');
INSERT INTO `exp_base` VALUES ('16', '3600');
INSERT INTO `exp_base` VALUES ('17', '3800');
INSERT INTO `exp_base` VALUES ('18', '4000');
INSERT INTO `exp_base` VALUES ('19', '4200');
INSERT INTO `exp_base` VALUES ('20', '4400');
INSERT INTO `exp_base` VALUES ('21', '4600');
INSERT INTO `exp_base` VALUES ('22', '4800');
INSERT INTO `exp_base` VALUES ('23', '5000');
INSERT INTO `exp_base` VALUES ('24', '5100');
INSERT INTO `exp_base` VALUES ('25', '5200');
INSERT INTO `exp_base` VALUES ('26', '5300');
INSERT INTO `exp_base` VALUES ('27', '5400');
INSERT INTO `exp_base` VALUES ('28', '5500');
INSERT INTO `exp_base` VALUES ('29', '5600');
INSERT INTO `exp_base` VALUES ('30', '5700');
INSERT INTO `exp_base` VALUES ('31', '5800');
INSERT INTO `exp_base` VALUES ('32', '5900');
INSERT INTO `exp_base` VALUES ('33', '6000');
INSERT INTO `exp_base` VALUES ('34', '6100');
INSERT INTO `exp_base` VALUES ('35', '6200');
INSERT INTO `exp_base` VALUES ('36', '6300');
INSERT INTO `exp_base` VALUES ('37', '6400');
INSERT INTO `exp_base` VALUES ('38', '6500');
INSERT INTO `exp_base` VALUES ('39', '6600');
INSERT INTO `exp_base` VALUES ('40', '6700');
INSERT INTO `exp_base` VALUES ('41', '6800');
INSERT INTO `exp_base` VALUES ('42', '6900');
INSERT INTO `exp_base` VALUES ('43', '7000');
INSERT INTO `exp_base` VALUES ('44', '7100');
INSERT INTO `exp_base` VALUES ('45', '7200');
INSERT INTO `exp_base` VALUES ('46', '7300');
INSERT INTO `exp_base` VALUES ('47', '7400');
INSERT INTO `exp_base` VALUES ('48', '7500');
INSERT INTO `exp_base` VALUES ('49', '7600');
INSERT INTO `exp_base` VALUES ('50', '7700');
INSERT INTO `exp_base` VALUES ('51', '7800');
INSERT INTO `exp_base` VALUES ('52', '10000');
INSERT INTO `exp_base` VALUES ('53', '11000');
INSERT INTO `exp_base` VALUES ('54', '13000');
INSERT INTO `exp_base` VALUES ('55', '16000');
INSERT INTO `exp_base` VALUES ('56', '20000');
INSERT INTO `exp_base` VALUES ('57', '20000');
INSERT INTO `exp_base` VALUES ('58', '20000');
INSERT INTO `exp_base` VALUES ('59', '20000');
INSERT INTO `exp_base` VALUES ('60', '20000');
INSERT INTO `exp_base` VALUES ('61', '20000');
INSERT INTO `exp_base` VALUES ('62', '30000');
INSERT INTO `exp_base` VALUES ('63', '31000');
INSERT INTO `exp_base` VALUES ('64', '32000');
INSERT INTO `exp_base` VALUES ('65', '33000');
INSERT INTO `exp_base` VALUES ('66', '34000');
INSERT INTO `exp_base` VALUES ('67', '35000');
INSERT INTO `exp_base` VALUES ('68', '36000');
INSERT INTO `exp_base` VALUES ('69', '37000');
INSERT INTO `exp_base` VALUES ('70', '38000');
INSERT INTO `exp_base` VALUES ('71', '39000');
INSERT INTO `exp_base` VALUES ('72', '40000');
INSERT INTO `exp_base` VALUES ('73', '41000');
INSERT INTO `exp_base` VALUES ('74', '42000');
INSERT INTO `exp_base` VALUES ('75', '43000');
INSERT INTO `exp_base` VALUES ('76', '44000');
INSERT INTO `exp_base` VALUES ('77', '44500');
INSERT INTO `exp_base` VALUES ('78', '45000');
INSERT INTO `exp_base` VALUES ('79', '45500');
INSERT INTO `exp_base` VALUES ('80', '46000');
INSERT INTO `exp_base` VALUES ('81', '46500');
INSERT INTO `exp_base` VALUES ('82', '47000');
INSERT INTO `exp_base` VALUES ('83', '47500');
INSERT INTO `exp_base` VALUES ('84', '48000');
INSERT INTO `exp_base` VALUES ('85', '48500');
INSERT INTO `exp_base` VALUES ('86', '49000');
INSERT INTO `exp_base` VALUES ('87', '49500');
INSERT INTO `exp_base` VALUES ('88', '50000');
INSERT INTO `exp_base` VALUES ('89', '50500');
INSERT INTO `exp_base` VALUES ('90', '51000');
INSERT INTO `exp_base` VALUES ('91', '51500');
INSERT INTO `exp_base` VALUES ('92', '52000');
INSERT INTO `exp_base` VALUES ('93', '52500');
INSERT INTO `exp_base` VALUES ('94', '53000');
INSERT INTO `exp_base` VALUES ('95', '53500');
INSERT INTO `exp_base` VALUES ('96', '54000');
INSERT INTO `exp_base` VALUES ('97', '54500');
INSERT INTO `exp_base` VALUES ('98', '55000');
INSERT INTO `exp_base` VALUES ('99', '55500');
INSERT INTO `exp_base` VALUES ('100', '56000');
