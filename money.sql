/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : money

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-22 18:19:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app_access_log
-- ----------------------------
DROP TABLE IF EXISTS `app_access_log`;
CREATE TABLE `app_access_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT 'uid',
  `referer_url` varchar(255) NOT NULL DEFAULT '' COMMENT '当前访问的refer',
  `target_url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问的url',
  `query_params` text NOT NULL COMMENT 'get和post参数',
  `ua` varchar(255) NOT NULL DEFAULT '' COMMENT '访问ua',
  `ip` varchar(32) NOT NULL DEFAULT '' COMMENT '访问ip',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT 'json格式备注字段',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8 COMMENT='用户访问记录表';

-- ----------------------------
-- Records of app_access_log
-- ----------------------------
INSERT INTO `app_access_log` VALUES ('1', '30', 'http://www.project.com//web/user/login', '//web/', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:53');
INSERT INTO `app_access_log` VALUES ('2', '30', 'http://www.project.com//web/user/login', '//web/dashboard/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:53');
INSERT INTO `app_access_log` VALUES ('3', '30', 'http://www.project.com//web/dashboard/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:53');
INSERT INTO `app_access_log` VALUES ('4', '30', 'http://www.project.com//web/dashboard/index', '/web/charts/dashboard', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:53');
INSERT INTO `app_access_log` VALUES ('5', '30', 'http://www.project.com//web/dashboard/index', '//web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:57');
INSERT INTO `app_access_log` VALUES ('6', '30', 'http://www.project.com//web/account/index', '//web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:44:57');
INSERT INTO `app_access_log` VALUES ('7', '30', 'http://www.project.com//web/org/index', '//web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:12');
INSERT INTO `app_access_log` VALUES ('8', '30', 'http://www.project.com//web/brand/info', '//web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:13');
INSERT INTO `app_access_log` VALUES ('9', '30', 'http://www.project.com//web/org/index', '//web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:26');
INSERT INTO `app_access_log` VALUES ('10', '30', 'http://www.project.com//web/account/index', '//web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:26');
INSERT INTO `app_access_log` VALUES ('11', '30', 'http://www.project.com//web/org/index', '//web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:28');
INSERT INTO `app_access_log` VALUES ('12', '30', 'http://www.project.com//web/qrcode/index', '//web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:32');
INSERT INTO `app_access_log` VALUES ('13', '30', 'http://www.project.com//web/qrcode/index', '//web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:34');
INSERT INTO `app_access_log` VALUES ('14', '30', 'http://www.project.com//web/finance/index', '//web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:35');
INSERT INTO `app_access_log` VALUES ('15', '30', 'http://www.project.com//web/finance/index', '//web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:45:53');
INSERT INTO `app_access_log` VALUES ('16', '30', 'http://www.project.com//web/finance/index', '//web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:46:05');
INSERT INTO `app_access_log` VALUES ('17', '30', '', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:46:08');
INSERT INTO `app_access_log` VALUES ('18', '30', '', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:46:14');
INSERT INTO `app_access_log` VALUES ('19', '30', 'http://www.project.com/web/qrcode/index', '/web/qrcode/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:46:16');
INSERT INTO `app_access_log` VALUES ('20', '30', 'http://www.project.com/web/qrcode/set', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:46:19');
INSERT INTO `app_access_log` VALUES ('21', '30', 'http://www.project.com/web/qrcode/index', '/web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:48:31');
INSERT INTO `app_access_log` VALUES ('22', '30', 'http://www.project.com/web/org/index', '/web/org/index?status=1&mix_kw=&p=1', '{\"status\":\"1\",\"mix_kw\":\"\",\"p\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:48:35');
INSERT INTO `app_access_log` VALUES ('23', '30', 'http://www.project.com/web/org/index?status=1&mix_kw=&p=1', '/web/org/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:48:37');
INSERT INTO `app_access_log` VALUES ('24', '30', 'http://www.project.com/web/org/set', '/web/org/set', '{\"org_name\":\"\\u673a\\u6784C\",\"nickname\":\"\\u673a\\u6784C\\u5c0f\\u9f50\",\"mobile\":\"13570436205\",\"ident\":\"440181198912043313\",\"balance\":\"1000000\",\"deadline\":\"2018-01-19\",\"login_name\":\"\\u5c0f\\u9f50\",\"login_pwd\":\"232323\",\"id\":\"0\",\"org_id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:38');
INSERT INTO `app_access_log` VALUES ('25', '30', 'http://www.project.com/web/org/set', '/web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:40');
INSERT INTO `app_access_log` VALUES ('26', '33', 'http://www.project.com/web/user/login', '/web/', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:58');
INSERT INTO `app_access_log` VALUES ('27', '33', 'http://www.project.com/web/user/login', '/web/dashboard/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:58');
INSERT INTO `app_access_log` VALUES ('28', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/dashboard', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:58');
INSERT INTO `app_access_log` VALUES ('29', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 16:49:58');
INSERT INTO `app_access_log` VALUES ('30', '33', 'http://www.project.com/web/dashboard/index', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:06:47');
INSERT INTO `app_access_log` VALUES ('31', '33', 'http://www.project.com/web/brand/info', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:06:50');
INSERT INTO `app_access_log` VALUES ('32', '33', 'http://www.project.com/web/qrcode/index', '/web/qrcode/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:06:51');
INSERT INTO `app_access_log` VALUES ('33', '33', 'http://www.project.com/web/qrcode/set', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:06:57');
INSERT INTO `app_access_log` VALUES ('34', '33', 'http://www.project.com/web/account/index', '/web/account/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:23:02');
INSERT INTO `app_access_log` VALUES ('35', '33', 'http://www.project.com/web/account/set', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:23');
INSERT INTO `app_access_log` VALUES ('36', '33', 'http://www.project.com/web/brand/info', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:24');
INSERT INTO `app_access_log` VALUES ('37', '33', 'http://www.project.com/web/brand/info', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:25');
INSERT INTO `app_access_log` VALUES ('38', '33', 'http://www.project.com/web/brand/info', '/web/book/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:26');
INSERT INTO `app_access_log` VALUES ('39', '33', 'http://www.project.com/web/book/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:28');
INSERT INTO `app_access_log` VALUES ('40', '33', 'http://www.project.com/web/member/index', '/web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:30');
INSERT INTO `app_access_log` VALUES ('41', '33', 'http://www.project.com/web/finance/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:31');
INSERT INTO `app_access_log` VALUES ('42', '33', 'http://www.project.com/web/member/index', '/web/member/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:33');
INSERT INTO `app_access_log` VALUES ('43', '33', 'http://www.project.com/web/member/set', '/web/book/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:38');
INSERT INTO `app_access_log` VALUES ('44', '33', 'http://www.project.com/web/book/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:39');
INSERT INTO `app_access_log` VALUES ('45', '33', 'http://www.project.com/web/member/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:27:41');
INSERT INTO `app_access_log` VALUES ('46', '33', 'http://www.project.com/web/member/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:43:42');
INSERT INTO `app_access_log` VALUES ('47', '33', 'http://www.project.com/web/member/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:37');
INSERT INTO `app_access_log` VALUES ('48', '33', 'http://www.project.com/web/member/index', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:39');
INSERT INTO `app_access_log` VALUES ('49', '30', 'http://www.project.com/web/user/login', '/web/', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:45');
INSERT INTO `app_access_log` VALUES ('50', '30', 'http://www.project.com/web/user/login', '/web/dashboard/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:45');
INSERT INTO `app_access_log` VALUES ('51', '30', 'http://www.project.com/web/dashboard/index', '/web/charts/dashboard', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:45');
INSERT INTO `app_access_log` VALUES ('52', '30', 'http://www.project.com/web/dashboard/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:45');
INSERT INTO `app_access_log` VALUES ('53', '30', 'http://www.project.com/web/dashboard/index', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:47');
INSERT INTO `app_access_log` VALUES ('54', '30', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:53');
INSERT INTO `app_access_log` VALUES ('55', '30', 'http://www.project.com/web/account/index', '/web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:46:55');
INSERT INTO `app_access_log` VALUES ('56', '30', 'http://www.project.com/web/org/index', '/web/org/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:03');
INSERT INTO `app_access_log` VALUES ('57', '30', 'http://www.project.com/web/org/set', '/web/org/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:06');
INSERT INTO `app_access_log` VALUES ('58', '33', 'http://www.project.com/web/user/login', '/web/', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:11');
INSERT INTO `app_access_log` VALUES ('59', '33', 'http://www.project.com/web/user/login', '/web/dashboard/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:12');
INSERT INTO `app_access_log` VALUES ('60', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:12');
INSERT INTO `app_access_log` VALUES ('61', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/dashboard', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:12');
INSERT INTO `app_access_log` VALUES ('62', '33', 'http://www.project.com/web/dashboard/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:21');
INSERT INTO `app_access_log` VALUES ('63', '33', 'http://www.project.com/web/dashboard/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:44');
INSERT INTO `app_access_log` VALUES ('64', '33', 'http://www.project.com/web/member/index', '/web/member/comment', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:46');
INSERT INTO `app_access_log` VALUES ('65', '33', 'http://www.project.com/web/member/comment', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:47:47');
INSERT INTO `app_access_log` VALUES ('66', '33', 'http://www.project.com/web/member/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:48:37');
INSERT INTO `app_access_log` VALUES ('67', '33', 'http://www.project.com/web/member/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:48:40');
INSERT INTO `app_access_log` VALUES ('68', '33', 'http://www.project.com/web/member/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:50:42');
INSERT INTO `app_access_log` VALUES ('69', '33', 'http://www.project.com/web/member/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:57:48');
INSERT INTO `app_access_log` VALUES ('70', '33', 'http://www.project.com/web/member/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:58:20');
INSERT INTO `app_access_log` VALUES ('71', '33', 'http://www.project.com/web/role/index', '/web/org/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:58:21');
INSERT INTO `app_access_log` VALUES ('72', '33', 'http://www.project.com/web/org/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:58:32');
INSERT INTO `app_access_log` VALUES ('73', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:58:34');
INSERT INTO `app_access_log` VALUES ('74', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:59:40');
INSERT INTO `app_access_log` VALUES ('75', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:59:41');
INSERT INTO `app_access_log` VALUES ('76', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 17:59:43');
INSERT INTO `app_access_log` VALUES ('77', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:22:34');
INSERT INTO `app_access_log` VALUES ('78', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:22:38');
INSERT INTO `app_access_log` VALUES ('79', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:23:17');
INSERT INTO `app_access_log` VALUES ('80', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:23:37');
INSERT INTO `app_access_log` VALUES ('81', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:24:29');
INSERT INTO `app_access_log` VALUES ('82', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:24:44');
INSERT INTO `app_access_log` VALUES ('83', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-19 18:25:04');
INSERT INTO `app_access_log` VALUES ('84', '33', '', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 09:57:22');
INSERT INTO `app_access_log` VALUES ('85', '33', 'http://www.project.com/web/account/index', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 09:57:25');
INSERT INTO `app_access_log` VALUES ('86', '33', 'http://www.project.com/web/account/index', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:01:40');
INSERT INTO `app_access_log` VALUES ('87', '33', 'http://www.project.com/web/qrcode/index', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:03:14');
INSERT INTO `app_access_log` VALUES ('88', '33', 'http://www.project.com/web/qrcode/index', '/web/qrcode/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:03:20');
INSERT INTO `app_access_log` VALUES ('89', '33', 'http://www.project.com/web/qrcode/set', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:03:23');
INSERT INTO `app_access_log` VALUES ('90', '33', 'http://www.project.com/web/qrcode/set', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:07:55');
INSERT INTO `app_access_log` VALUES ('91', '33', 'http://www.project.com/web/qrcode/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:08:34');
INSERT INTO `app_access_log` VALUES ('92', '33', 'http://www.project.com/web/channel/index', '/web/channel/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:08:37');
INSERT INTO `app_access_log` VALUES ('93', '33', 'http://www.project.com/web/channel/set', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:08:38');
INSERT INTO `app_access_log` VALUES ('94', '33', 'http://www.project.com/web/qrcode/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:19:46');
INSERT INTO `app_access_log` VALUES ('95', '33', 'http://www.project.com/web/channel/index', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:20:14');
INSERT INTO `app_access_log` VALUES ('96', '33', 'http://www.project.com/web/qrcode/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:48:52');
INSERT INTO `app_access_log` VALUES ('97', '33', 'http://www.project.com/web/channel/index', '/web/channel/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:48:53');
INSERT INTO `app_access_log` VALUES ('98', '33', 'http://www.project.com/web/channel/set', '/web/channel/set', '{\"name\":\"\\u9ea6\\u5148\\u751f\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:48:57');
INSERT INTO `app_access_log` VALUES ('99', '33', 'http://www.project.com/web/channel/set', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:48:59');
INSERT INTO `app_access_log` VALUES ('100', '33', 'http://www.project.com/web/channel/set', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:50:51');
INSERT INTO `app_access_log` VALUES ('101', '33', 'http://www.project.com/web/channel/set', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 10:50:58');
INSERT INTO `app_access_log` VALUES ('102', '33', 'http://www.project.com/web/channel/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:14:53');
INSERT INTO `app_access_log` VALUES ('103', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:14:54');
INSERT INTO `app_access_log` VALUES ('104', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:17:14');
INSERT INTO `app_access_log` VALUES ('105', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:17:16');
INSERT INTO `app_access_log` VALUES ('106', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:18:38');
INSERT INTO `app_access_log` VALUES ('107', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:19:11');
INSERT INTO `app_access_log` VALUES ('108', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:20:50');
INSERT INTO `app_access_log` VALUES ('109', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:21:04');
INSERT INTO `app_access_log` VALUES ('110', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:34:48');
INSERT INTO `app_access_log` VALUES ('111', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:50:50');
INSERT INTO `app_access_log` VALUES ('112', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:50:51');
INSERT INTO `app_access_log` VALUES ('113', '33', 'http://www.project.com/web/role/set', '/web/stat/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:37');
INSERT INTO `app_access_log` VALUES ('114', '33', 'http://www.project.com/web/stat/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:37');
INSERT INTO `app_access_log` VALUES ('115', '33', 'http://www.project.com/web/stat/index', '/web/qrcode/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:38');
INSERT INTO `app_access_log` VALUES ('116', '33', 'http://www.project.com/web/qrcode/index', '/web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:40');
INSERT INTO `app_access_log` VALUES ('117', '33', 'http://www.project.com/web/finance/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:42');
INSERT INTO `app_access_log` VALUES ('118', '33', 'http://www.project.com/web/member/index', '/web/member/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:43');
INSERT INTO `app_access_log` VALUES ('119', '33', 'http://www.project.com/web/member/set', '/web/book/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:45');
INSERT INTO `app_access_log` VALUES ('120', '33', 'http://www.project.com/web/book/index', '/web/book/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:50');
INSERT INTO `app_access_log` VALUES ('121', '33', 'http://www.project.com/web/book/set', '/web/book/cat', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:57');
INSERT INTO `app_access_log` VALUES ('122', '33', 'http://www.project.com/web/book/cat', '/web/book/images', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:52:59');
INSERT INTO `app_access_log` VALUES ('123', '33', 'http://www.project.com/web/book/images', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:01');
INSERT INTO `app_access_log` VALUES ('124', '33', 'http://www.project.com/web/brand/info', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:02');
INSERT INTO `app_access_log` VALUES ('125', '33', 'http://www.project.com/web/role/index', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:04');
INSERT INTO `app_access_log` VALUES ('126', '33', 'http://www.project.com/web/account/index', '/web/dashboard/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:07');
INSERT INTO `app_access_log` VALUES ('127', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/dashboard', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:07');
INSERT INTO `app_access_log` VALUES ('128', '33', 'http://www.project.com/web/dashboard/index', '/web/charts/finance', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:07');
INSERT INTO `app_access_log` VALUES ('129', '33', 'http://www.project.com/web/dashboard/index', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:08');
INSERT INTO `app_access_log` VALUES ('130', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:10');
INSERT INTO `app_access_log` VALUES ('131', '33', 'http://www.project.com/web/role/index', '/web/brand/info', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:11');
INSERT INTO `app_access_log` VALUES ('132', '33', 'http://www.project.com/web/brand/info', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:15');
INSERT INTO `app_access_log` VALUES ('133', '33', 'http://www.project.com/web/channel/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:19');
INSERT INTO `app_access_log` VALUES ('134', '33', 'http://www.project.com/web/channel/index', '/web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:20');
INSERT INTO `app_access_log` VALUES ('135', '33', 'http://www.project.com/web/finance/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:21');
INSERT INTO `app_access_log` VALUES ('136', '33', 'http://www.project.com/web/channel/index', '/web/channel/set?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:26');
INSERT INTO `app_access_log` VALUES ('137', '33', 'http://www.project.com/web/channel/set?id=1', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:29');
INSERT INTO `app_access_log` VALUES ('138', '33', 'http://www.project.com/web/member/index', '/web/book/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:38');
INSERT INTO `app_access_log` VALUES ('139', '33', 'http://www.project.com/web/book/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:38');
INSERT INTO `app_access_log` VALUES ('140', '33', 'http://www.project.com/web/member/index', '/web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:41');
INSERT INTO `app_access_log` VALUES ('141', '33', 'http://www.project.com/web/finance/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:42');
INSERT INTO `app_access_log` VALUES ('142', '33', 'http://www.project.com/web/member/index', '/web/member/comment', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:46');
INSERT INTO `app_access_log` VALUES ('143', '33', 'http://www.project.com/web/member/comment', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:47');
INSERT INTO `app_access_log` VALUES ('144', '33', 'http://www.project.com/web/member/index', '/web/finance/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:52');
INSERT INTO `app_access_log` VALUES ('145', '33', 'http://www.project.com/web/finance/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:53');
INSERT INTO `app_access_log` VALUES ('146', '33', 'http://www.project.com/web/member/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 11:53:56');
INSERT INTO `app_access_log` VALUES ('147', '33', 'http://www.project.com/web/member/index', '/web/channel/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:07:50');
INSERT INTO `app_access_log` VALUES ('148', '33', 'http://www.project.com/web/channel/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:07:52');
INSERT INTO `app_access_log` VALUES ('149', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:07:53');
INSERT INTO `app_access_log` VALUES ('150', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:10:03');
INSERT INTO `app_access_log` VALUES ('151', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:10:07');
INSERT INTO `app_access_log` VALUES ('152', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 12:10:11');
INSERT INTO `app_access_log` VALUES ('153', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:42:04');
INSERT INTO `app_access_log` VALUES ('154', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:42:11');
INSERT INTO `app_access_log` VALUES ('155', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:42:16');
INSERT INTO `app_access_log` VALUES ('156', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:42:17');
INSERT INTO `app_access_log` VALUES ('157', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:42:27');
INSERT INTO `app_access_log` VALUES ('158', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:46:05');
INSERT INTO `app_access_log` VALUES ('159', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:47:48');
INSERT INTO `app_access_log` VALUES ('160', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:48:23');
INSERT INTO `app_access_log` VALUES ('161', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:49:45');
INSERT INTO `app_access_log` VALUES ('162', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:49:58');
INSERT INTO `app_access_log` VALUES ('163', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:50:43');
INSERT INTO `app_access_log` VALUES ('164', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:52:52');
INSERT INTO `app_access_log` VALUES ('165', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:56:02');
INSERT INTO `app_access_log` VALUES ('166', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:56:18');
INSERT INTO `app_access_log` VALUES ('167', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:56:24');
INSERT INTO `app_access_log` VALUES ('168', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 13:56:49');
INSERT INTO `app_access_log` VALUES ('169', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:02:44');
INSERT INTO `app_access_log` VALUES ('170', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:03:09');
INSERT INTO `app_access_log` VALUES ('171', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:09:27');
INSERT INTO `app_access_log` VALUES ('172', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:10:11');
INSERT INTO `app_access_log` VALUES ('173', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u5730\\u65b9\",\"roles\":\",1,2,3,4\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:10:16');
INSERT INTO `app_access_log` VALUES ('174', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u5730\\u65b9\",\"roles\":\",1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:10:20');
INSERT INTO `app_access_log` VALUES ('175', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u5730\\u65b9\",\"roles\":\",1,4\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:10:23');
INSERT INTO `app_access_log` VALUES ('176', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u6c34\\u7535\\u8d39\\u72d7\\u72d7\\u72d7\",\"roles\":\",1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 14:11:01');
INSERT INTO `app_access_log` VALUES ('177', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:22:12');
INSERT INTO `app_access_log` VALUES ('178', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u7684\",\"roles\":\",1\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:22:20');
INSERT INTO `app_access_log` VALUES ('179', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:27:05');
INSERT INTO `app_access_log` VALUES ('180', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u89d2\\u82721\",\"roles\":\",1,2\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:27:12');
INSERT INTO `app_access_log` VALUES ('181', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:28:41');
INSERT INTO `app_access_log` VALUES ('182', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:38:20');
INSERT INTO `app_access_log` VALUES ('183', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u89d2\\u82721\",\"roles\":\",1,2\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:38:25');
INSERT INTO `app_access_log` VALUES ('184', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:38:26');
INSERT INTO `app_access_log` VALUES ('185', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:22');
INSERT INTO `app_access_log` VALUES ('186', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:41');
INSERT INTO `app_access_log` VALUES ('187', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:48');
INSERT INTO `app_access_log` VALUES ('188', '33', 'http://www.project.com/web/role/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:48');
INSERT INTO `app_access_log` VALUES ('189', '33', 'http://www.project.com/web/member/index', '/web/member/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:50');
INSERT INTO `app_access_log` VALUES ('190', '33', 'http://www.project.com/web/member/index', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:52');
INSERT INTO `app_access_log` VALUES ('191', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:51:54');
INSERT INTO `app_access_log` VALUES ('192', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:54:54');
INSERT INTO `app_access_log` VALUES ('193', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:57:05');
INSERT INTO `app_access_log` VALUES ('194', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 15:57:49');
INSERT INTO `app_access_log` VALUES ('195', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:09');
INSERT INTO `app_access_log` VALUES ('196', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:10');
INSERT INTO `app_access_log` VALUES ('197', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:11');
INSERT INTO `app_access_log` VALUES ('198', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:11');
INSERT INTO `app_access_log` VALUES ('199', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:11');
INSERT INTO `app_access_log` VALUES ('200', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:12');
INSERT INTO `app_access_log` VALUES ('201', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:00:12');
INSERT INTO `app_access_log` VALUES ('202', '33', 'http://www.project.com/web/role/index', '/web/role/info?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:01:29');
INSERT INTO `app_access_log` VALUES ('203', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:06:05');
INSERT INTO `app_access_log` VALUES ('204', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:06:06');
INSERT INTO `app_access_log` VALUES ('205', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:13:54');
INSERT INTO `app_access_log` VALUES ('206', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:14:10');
INSERT INTO `app_access_log` VALUES ('207', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:15:16');
INSERT INTO `app_access_log` VALUES ('208', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:15:44');
INSERT INTO `app_access_log` VALUES ('209', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:15:59');
INSERT INTO `app_access_log` VALUES ('210', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:16:28');
INSERT INTO `app_access_log` VALUES ('211', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:19:37');
INSERT INTO `app_access_log` VALUES ('212', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:23:37');
INSERT INTO `app_access_log` VALUES ('213', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:23:39');
INSERT INTO `app_access_log` VALUES ('214', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:24:10');
INSERT INTO `app_access_log` VALUES ('215', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u89d2\\u82722\",\"roles\":\",2,3\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:24:16');
INSERT INTO `app_access_log` VALUES ('216', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:24:18');
INSERT INTO `app_access_log` VALUES ('217', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:34:21');
INSERT INTO `app_access_log` VALUES ('218', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:35:25');
INSERT INTO `app_access_log` VALUES ('219', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:35:47');
INSERT INTO `app_access_log` VALUES ('220', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:37:59');
INSERT INTO `app_access_log` VALUES ('221', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:38:20');
INSERT INTO `app_access_log` VALUES ('222', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:38:38');
INSERT INTO `app_access_log` VALUES ('223', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:38:40');
INSERT INTO `app_access_log` VALUES ('224', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:39:12');
INSERT INTO `app_access_log` VALUES ('225', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:39:32');
INSERT INTO `app_access_log` VALUES ('226', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:39:47');
INSERT INTO `app_access_log` VALUES ('227', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:45:56');
INSERT INTO `app_access_log` VALUES ('228', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:46:57');
INSERT INTO `app_access_log` VALUES ('229', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:50:36');
INSERT INTO `app_access_log` VALUES ('230', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:51:10');
INSERT INTO `app_access_log` VALUES ('231', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:51:23');
INSERT INTO `app_access_log` VALUES ('232', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 16:58:36');
INSERT INTO `app_access_log` VALUES ('233', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:12:04');
INSERT INTO `app_access_log` VALUES ('234', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:13:32');
INSERT INTO `app_access_log` VALUES ('235', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:14:18');
INSERT INTO `app_access_log` VALUES ('236', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:14:40');
INSERT INTO `app_access_log` VALUES ('237', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:15:42');
INSERT INTO `app_access_log` VALUES ('238', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:16:39');
INSERT INTO `app_access_log` VALUES ('239', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:17:30');
INSERT INTO `app_access_log` VALUES ('240', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:17:38');
INSERT INTO `app_access_log` VALUES ('241', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u89d2\\u82723\",\"roles\":\",1,2,3,4\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:17:44');
INSERT INTO `app_access_log` VALUES ('242', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:17:45');
INSERT INTO `app_access_log` VALUES ('243', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:18:22');
INSERT INTO `app_access_log` VALUES ('244', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:19:01');
INSERT INTO `app_access_log` VALUES ('245', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:19:17');
INSERT INTO `app_access_log` VALUES ('246', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:19:55');
INSERT INTO `app_access_log` VALUES ('247', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:20:28');
INSERT INTO `app_access_log` VALUES ('248', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:44:10');
INSERT INTO `app_access_log` VALUES ('249', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:48:56');
INSERT INTO `app_access_log` VALUES ('250', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:48:58');
INSERT INTO `app_access_log` VALUES ('251', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:49:17');
INSERT INTO `app_access_log` VALUES ('252', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:49:42');
INSERT INTO `app_access_log` VALUES ('253', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:50:34');
INSERT INTO `app_access_log` VALUES ('254', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:56:41');
INSERT INTO `app_access_log` VALUES ('255', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:56:57');
INSERT INTO `app_access_log` VALUES ('256', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:57:20');
INSERT INTO `app_access_log` VALUES ('257', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:57:24');
INSERT INTO `app_access_log` VALUES ('258', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:57:44');
INSERT INTO `app_access_log` VALUES ('259', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:58:04');
INSERT INTO `app_access_log` VALUES ('260', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:58:40');
INSERT INTO `app_access_log` VALUES ('261', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:58:41');
INSERT INTO `app_access_log` VALUES ('262', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:59:00');
INSERT INTO `app_access_log` VALUES ('263', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:59:01');
INSERT INTO `app_access_log` VALUES ('264', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 17:59:16');
INSERT INTO `app_access_log` VALUES ('265', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:00:02');
INSERT INTO `app_access_log` VALUES ('266', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:00');
INSERT INTO `app_access_log` VALUES ('267', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:02');
INSERT INTO `app_access_log` VALUES ('268', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:02');
INSERT INTO `app_access_log` VALUES ('269', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:45');
INSERT INTO `app_access_log` VALUES ('270', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:45');
INSERT INTO `app_access_log` VALUES ('271', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:46');
INSERT INTO `app_access_log` VALUES ('272', '33', 'http://www.project.com/web/role/set?id=3', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:48');
INSERT INTO `app_access_log` VALUES ('273', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:02:50');
INSERT INTO `app_access_log` VALUES ('274', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:04:52');
INSERT INTO `app_access_log` VALUES ('275', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:04:53');
INSERT INTO `app_access_log` VALUES ('276', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:04:54');
INSERT INTO `app_access_log` VALUES ('277', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:04:56');
INSERT INTO `app_access_log` VALUES ('278', '33', 'http://www.project.com/web/role/set?id=2', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:04:57');
INSERT INTO `app_access_log` VALUES ('279', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:05:02');
INSERT INTO `app_access_log` VALUES ('280', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:05:04');
INSERT INTO `app_access_log` VALUES ('281', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:05:58');
INSERT INTO `app_access_log` VALUES ('282', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:07:57');
INSERT INTO `app_access_log` VALUES ('283', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:07:59');
INSERT INTO `app_access_log` VALUES ('284', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:22');
INSERT INTO `app_access_log` VALUES ('285', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=2', '{\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:29');
INSERT INTO `app_access_log` VALUES ('286', '33', 'http://www.project.com/web/role/set?id=2', '/web/role/set', '{\"name\":\"\\u89d2\\u82722\",\"roles\":\",1,2,3\",\"id\":\"2\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:32');
INSERT INTO `app_access_log` VALUES ('287', '33', 'http://www.project.com/web/role/set?id=2', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:33');
INSERT INTO `app_access_log` VALUES ('288', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=1', '{\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:40');
INSERT INTO `app_access_log` VALUES ('289', '33', 'http://www.project.com/web/role/set?id=1', '/web/role/set', '{\"name\":\"\\u89d2\\u82721\",\"roles\":\",1,2,4\",\"id\":\"1\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:43');
INSERT INTO `app_access_log` VALUES ('290', '33', 'http://www.project.com/web/role/set?id=1', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:45');
INSERT INTO `app_access_log` VALUES ('291', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:51');
INSERT INTO `app_access_log` VALUES ('292', '33', 'http://www.project.com/web/role/set?id=3', '/web/role/set', '{\"name\":\"\\u89d2\\u82723\",\"roles\":\",1,3,4\",\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:55');
INSERT INTO `app_access_log` VALUES ('293', '33', 'http://www.project.com/web/role/set?id=3', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:56');
INSERT INTO `app_access_log` VALUES ('294', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=3', '{\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:08:58');
INSERT INTO `app_access_log` VALUES ('295', '33', 'http://www.project.com/web/role/set?id=3', '/web/role/set', '{\"name\":\"\\u89d2\\u82723\",\"roles\":\",1,3,4\",\"id\":\"3\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:09:00');
INSERT INTO `app_access_log` VALUES ('296', '33', 'http://www.project.com/web/role/set?id=3', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:09:01');
INSERT INTO `app_access_log` VALUES ('297', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:09:04');
INSERT INTO `app_access_log` VALUES ('298', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:10:29');
INSERT INTO `app_access_log` VALUES ('299', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:10:30');
INSERT INTO `app_access_log` VALUES ('300', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:10:31');
INSERT INTO `app_access_log` VALUES ('301', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:10:32');
INSERT INTO `app_access_log` VALUES ('302', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:00');
INSERT INTO `app_access_log` VALUES ('303', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:21');
INSERT INTO `app_access_log` VALUES ('304', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:25');
INSERT INTO `app_access_log` VALUES ('305', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:26');
INSERT INTO `app_access_log` VALUES ('306', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:49');
INSERT INTO `app_access_log` VALUES ('307', '33', 'http://www.project.com/web/role/set', '/web/account/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:50');
INSERT INTO `app_access_log` VALUES ('308', '33', 'http://www.project.com/web/account/index', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:51');
INSERT INTO `app_access_log` VALUES ('309', '33', 'http://www.project.com/web/role/index', '/web/role/set', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:11:52');
INSERT INTO `app_access_log` VALUES ('310', '33', 'http://www.project.com/web/role/set', '/web/role/set', '{\"name\":\"\\u89d2\\u82724\",\"roles\":\",1,2,3\",\"id\":\"0\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:12:08');
INSERT INTO `app_access_log` VALUES ('311', '33', 'http://www.project.com/web/role/set', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:12:09');
INSERT INTO `app_access_log` VALUES ('312', '33', 'http://www.project.com/web/role/index', '/web/role/set?id=4', '{\"id\":\"4\"}', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:12:15');
INSERT INTO `app_access_log` VALUES ('313', '33', 'http://www.project.com/web/role/set?id=4', '/web/role/index', '[]', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '127.0.0.1', '', '2018-01-22 18:12:17');

-- ----------------------------
-- Table structure for app_log
-- ----------------------------
DROP TABLE IF EXISTS `app_log`;
CREATE TABLE `app_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(30) NOT NULL DEFAULT '' COMMENT 'app 名字',
  `err_name` varchar(50) NOT NULL DEFAULT 'NOT SET',
  `http_code` int(11) NOT NULL DEFAULT '0',
  `err_code` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL,
  `ua` varchar(200) NOT NULL,
  `content` longtext NOT NULL COMMENT '日志内容',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='app错误日表';

-- ----------------------------
-- Records of app_log
-- ----------------------------
INSERT INTO `app_log` VALUES ('1', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/web/role/index][post:]', '2018-01-19 17:44:09');
INSERT INTO `app_log` VALUES ('2', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/web/channel/index][post:]', '2018-01-22 10:07:58');
INSERT INTO `app_log` VALUES ('3', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 10:19:48');
INSERT INTO `app_log` VALUES ('4', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 10:20:15');
INSERT INTO `app_log` VALUES ('5', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 10:48:52');
INSERT INTO `app_log` VALUES ('6', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 10:48:53');
INSERT INTO `app_log` VALUES ('7', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 10:50:51');
INSERT INTO `app_log` VALUES ('8', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:19:20');
INSERT INTO `app_log` VALUES ('9', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:40:14');
INSERT INTO `app_log` VALUES ('10', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:50:50');
INSERT INTO `app_log` VALUES ('11', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:50:52');
INSERT INTO `app_log` VALUES ('12', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:37');
INSERT INTO `app_log` VALUES ('13', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:38');
INSERT INTO `app_log` VALUES ('14', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:40');
INSERT INTO `app_log` VALUES ('15', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:42');
INSERT INTO `app_log` VALUES ('16', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:43');
INSERT INTO `app_log` VALUES ('17', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:45');
INSERT INTO `app_log` VALUES ('18', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:51');
INSERT INTO `app_log` VALUES ('19', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:57');
INSERT INTO `app_log` VALUES ('20', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:52:59');
INSERT INTO `app_log` VALUES ('21', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:01');
INSERT INTO `app_log` VALUES ('22', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:02');
INSERT INTO `app_log` VALUES ('23', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:04');
INSERT INTO `app_log` VALUES ('24', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:07');
INSERT INTO `app_log` VALUES ('25', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:09');
INSERT INTO `app_log` VALUES ('26', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:10');
INSERT INTO `app_log` VALUES ('27', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:12');
INSERT INTO `app_log` VALUES ('28', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:16');
INSERT INTO `app_log` VALUES ('29', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:19');
INSERT INTO `app_log` VALUES ('30', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:20');
INSERT INTO `app_log` VALUES ('31', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:22');
INSERT INTO `app_log` VALUES ('32', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:27');
INSERT INTO `app_log` VALUES ('33', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:29');
INSERT INTO `app_log` VALUES ('34', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:38');
INSERT INTO `app_log` VALUES ('35', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:39');
INSERT INTO `app_log` VALUES ('36', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:42');
INSERT INTO `app_log` VALUES ('37', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:42');
INSERT INTO `app_log` VALUES ('38', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:46');
INSERT INTO `app_log` VALUES ('39', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:47');
INSERT INTO `app_log` VALUES ('40', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:52');
INSERT INTO `app_log` VALUES ('41', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:53');
INSERT INTO `app_log` VALUES ('42', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 11:53:56');
INSERT INTO `app_log` VALUES ('43', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:07:50');
INSERT INTO `app_log` VALUES ('44', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:07:52');
INSERT INTO `app_log` VALUES ('45', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:07:53');
INSERT INTO `app_log` VALUES ('46', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:10:03');
INSERT INTO `app_log` VALUES ('47', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:10:08');
INSERT INTO `app_log` VALUES ('48', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 12:10:12');
INSERT INTO `app_log` VALUES ('49', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:42:05');
INSERT INTO `app_log` VALUES ('50', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:42:23');
INSERT INTO `app_log` VALUES ('51', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:42:28');
INSERT INTO `app_log` VALUES ('52', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:46:05');
INSERT INTO `app_log` VALUES ('53', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:47:48');
INSERT INTO `app_log` VALUES ('54', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:48:23');
INSERT INTO `app_log` VALUES ('55', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:49:46');
INSERT INTO `app_log` VALUES ('56', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:49:58');
INSERT INTO `app_log` VALUES ('57', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:50:43');
INSERT INTO `app_log` VALUES ('58', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:52:52');
INSERT INTO `app_log` VALUES ('59', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:56:02');
INSERT INTO `app_log` VALUES ('60', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:56:18');
INSERT INTO `app_log` VALUES ('61', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:56:24');
INSERT INTO `app_log` VALUES ('62', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 13:56:50');
INSERT INTO `app_log` VALUES ('63', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 14:02:44');
INSERT INTO `app_log` VALUES ('64', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 14:03:09');
INSERT INTO `app_log` VALUES ('65', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 14:09:27');
INSERT INTO `app_log` VALUES ('66', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 14:10:11');
INSERT INTO `app_log` VALUES ('67', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:22:12');
INSERT INTO `app_log` VALUES ('68', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:27:05');
INSERT INTO `app_log` VALUES ('69', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:28:41');
INSERT INTO `app_log` VALUES ('70', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:38:20');
INSERT INTO `app_log` VALUES ('71', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:38:26');
INSERT INTO `app_log` VALUES ('72', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:51:41');
INSERT INTO `app_log` VALUES ('73', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:51:48');
INSERT INTO `app_log` VALUES ('74', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:51:50');
INSERT INTO `app_log` VALUES ('75', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:51:52');
INSERT INTO `app_log` VALUES ('76', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 15:51:55');
INSERT INTO `app_log` VALUES ('77', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:06:05');
INSERT INTO `app_log` VALUES ('78', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:06:07');
INSERT INTO `app_log` VALUES ('79', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:13:55');
INSERT INTO `app_log` VALUES ('80', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:14:10');
INSERT INTO `app_log` VALUES ('81', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:46:10');
INSERT INTO `app_log` VALUES ('82', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:46:57');
INSERT INTO `app_log` VALUES ('83', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:50:36');
INSERT INTO `app_log` VALUES ('84', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 16:51:10');
INSERT INTO `app_log` VALUES ('85', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 18:05:07');
INSERT INTO `app_log` VALUES ('86', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 18:05:58');
INSERT INTO `app_log` VALUES ('87', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 18:07:58');
INSERT INTO `app_log` VALUES ('88', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 18:07:59');
INSERT INTO `app_log` VALUES ('89', 'basic', 'Not Found', '404', '0', '127.0.0.1', '[UA:Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36]', 'Page not found. [file: D:\\wamp64\\www\\mhx_project\\vendor\\yiisoft\\yii2\\web\\Application.php][line: 114][err code:0.][url:/css/web/bootstrap.min.css.map][post:]', '2018-01-22 18:08:22');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类id',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '书籍名称',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售卖金额',
  `main_image` varchar(100) NOT NULL DEFAULT '' COMMENT '主图',
  `summary` varchar(2000) NOT NULL DEFAULT '' COMMENT '描述',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `tags` varchar(200) NOT NULL DEFAULT '' COMMENT 'tag关键字，以","连接',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `month_count` int(11) NOT NULL DEFAULT '0' COMMENT '月销售数量',
  `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '总销售量',
  `view_count` int(11) NOT NULL DEFAULT '0' COMMENT '总浏览次数',
  `comment_count` int(11) NOT NULL DEFAULT '0' COMMENT '总评论量',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍表';

-- ----------------------------
-- Records of book
-- ----------------------------

-- ----------------------------
-- Table structure for book_cat
-- ----------------------------
DROP TABLE IF EXISTS `book_cat`;
CREATE TABLE `book_cat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '类别名称',
  `weight` tinyint(4) NOT NULL DEFAULT '1' COMMENT '权重',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍分类';

-- ----------------------------
-- Records of book_cat
-- ----------------------------

-- ----------------------------
-- Table structure for book_sale_change_log
-- ----------------------------
DROP TABLE IF EXISTS `book_sale_change_log`;
CREATE TABLE `book_sale_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '售卖数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '售卖金额',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '售卖时间',
  PRIMARY KEY (`id`),
  KEY `idx_book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品销售情况';

-- ----------------------------
-- Records of book_sale_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for book_stock_change_log
-- ----------------------------
DROP TABLE IF EXISTS `book_stock_change_log`;
CREATE TABLE `book_stock_change_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL COMMENT '书籍商品id',
  `unit` int(11) NOT NULL DEFAULT '0' COMMENT '变更多少',
  `total_stock` int(11) NOT NULL DEFAULT '0' COMMENT '变更之后总量',
  `note` varchar(100) NOT NULL DEFAULT '' COMMENT '备注字段',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库存变更表';

-- ----------------------------
-- Records of book_stock_change_log
-- ----------------------------

-- ----------------------------
-- Table structure for brand_images
-- ----------------------------
DROP TABLE IF EXISTS `brand_images`;
CREATE TABLE `brand_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_key` varchar(200) NOT NULL DEFAULT '' COMMENT '图片地址',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_image_key` (`image_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌图片';

-- ----------------------------
-- Records of brand_images
-- ----------------------------

-- ----------------------------
-- Table structure for brand_setting
-- ----------------------------
DROP TABLE IF EXISTS `brand_setting`;
CREATE TABLE `brand_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '品牌名称',
  `description` varchar(2000) NOT NULL DEFAULT '' COMMENT '品牌描述',
  `address` varchar(200) NOT NULL DEFAULT '' COMMENT '公司地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `logo` varchar(200) NOT NULL DEFAULT '' COMMENT 'logo图片',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌设置表';

-- ----------------------------
-- Records of brand_setting
-- ----------------------------

-- ----------------------------
-- Table structure for channel_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `channel_qrcode`;
CREATE TABLE `channel_qrcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名字',
  `qrcode_info` varchar(62) NOT NULL DEFAULT '' COMMENT '二维码内容',
  `expired_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  `total_scan_count` int(11) NOT NULL DEFAULT '0' COMMENT '总扫码关注量',
  `total_reg_count` int(11) NOT NULL DEFAULT '0' COMMENT '总注册数量',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of channel_qrcode
-- ----------------------------
INSERT INTO `channel_qrcode` VALUES ('1', '麦先生', 'https://www.baidu.com/?id=1', '2018-01-22 10:48:58', '0', '0', '2018-01-22 10:48:58', '2018-01-22 10:48:58');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `province_id` mediumint(9) NOT NULL,
  `province` varchar(20) NOT NULL,
  `province_alias_name` varchar(20) NOT NULL DEFAULT '' COMMENT '省份别名',
  `city_id` mediumint(9) NOT NULL,
  `city` varchar(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  `area` varchar(20) NOT NULL,
  `region_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '区域id，0：其他 1：华北 2：东北 3：西北 4：华南 5：华中 6：西南 7：华东',
  `region_name` varchar(20) NOT NULL DEFAULT '' COMMENT '区域名称 如：华北',
  PRIMARY KEY (`id`),
  KEY `province_id` (`province_id`),
  KEY `city_id` (`city_id`),
  KEY `region_id` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bucket` varchar(20) NOT NULL DEFAULT '',
  `file_key` varchar(60) NOT NULL DEFAULT '' COMMENT '文件名',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_bucket` (`bucket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for market_qrcode
-- ----------------------------
DROP TABLE IF EXISTS `market_qrcode`;
CREATE TABLE `market_qrcode` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '名字',
  `qrcode` varchar(62) NOT NULL DEFAULT '' COMMENT '二维码内容',
  `extra` varchar(2000) NOT NULL DEFAULT '' COMMENT '接口返回的信息',
  `expired_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  `total_scan_count` int(11) NOT NULL DEFAULT '0' COMMENT '总扫码关注量',
  `total_reg_count` int(11) NOT NULL DEFAULT '0' COMMENT '总注册数量',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_qrcode
-- ----------------------------

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '会员名',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '会员手机号码',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别 1：男 2：女',
  `avatar` varchar(200) NOT NULL DEFAULT '' COMMENT '会员头像',
  `salt` varchar(32) NOT NULL DEFAULT '' COMMENT '随机salt',
  `reg_ip` varchar(100) NOT NULL DEFAULT '' COMMENT '注册ip',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for member_address
-- ----------------------------
DROP TABLE IF EXISTS `member_address`;
CREATE TABLE `member_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '收货人手机号码',
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省id',
  `city_id` int(11) NOT NULL DEFAULT '0' COMMENT '城市id',
  `area_id` int(11) NOT NULL DEFAULT '0' COMMENT '区域id',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地址',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址 1：是 0：不是',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效 1：有效 0：无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id_status` (`member_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员收货地址';

-- ----------------------------
-- Records of member_address
-- ----------------------------

-- ----------------------------
-- Table structure for member_cart
-- ----------------------------
DROP TABLE IF EXISTS `member_cart`;
CREATE TABLE `member_cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '图书id',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of member_cart
-- ----------------------------

-- ----------------------------
-- Table structure for member_comments
-- ----------------------------
DROP TABLE IF EXISTS `member_comments`;
CREATE TABLE `member_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '商品id',
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `score` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评分',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '评论内容',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员评论表';

-- ----------------------------
-- Records of member_comments
-- ----------------------------

-- ----------------------------
-- Table structure for member_fav
-- ----------------------------
DROP TABLE IF EXISTS `member_fav`;
CREATE TABLE `member_fav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '书籍id',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员收藏表';

-- ----------------------------
-- Records of member_fav
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `access_token` varchar(600) NOT NULL DEFAULT '',
  `expired_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_expired_time` (`expired_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信的access_token 用户调用其他接口的';

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_member_bind
-- ----------------------------
DROP TABLE IF EXISTS `oauth_member_bind`;
CREATE TABLE `oauth_member_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `client_type` varchar(20) NOT NULL DEFAULT '' COMMENT '客户端来源类型。qq,weibo,weixin',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '类型 type 1:wechat ',
  `openid` varchar(80) NOT NULL DEFAULT '' COMMENT '第三方id',
  `unionid` varchar(100) NOT NULL DEFAULT '',
  `extra` text NOT NULL COMMENT '额外字段',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_type_openid` (`type`,`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方登录绑定关系';

-- ----------------------------
-- Records of oauth_member_bind
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_token`;
CREATE TABLE `oauth_token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `client_type` varchar(20) NOT NULL DEFAULT '' COMMENT '客户端来源类型。qq,weibo,weixin',
  `token` varchar(500) NOT NULL DEFAULT '',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT '备注',
  `valid_to` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '有效期截止日期',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `createdt_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `client_type_token` (`client_type`,`token`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='oauth token 表';

-- ----------------------------
-- Records of oauth_token
-- ----------------------------

-- ----------------------------
-- Table structure for org
-- ----------------------------
DROP TABLE IF EXISTS `org`;
CREATE TABLE `org` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `org_name` varchar(50) NOT NULL DEFAULT '' COMMENT '机构名称',
  `deadline` timestamp NOT NULL COMMENT '截至日期（帐号有限期）',
  `balance` int(11) NOT NULL DEFAULT '0' COMMENT '余额',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：有效 0：无效',
  `updated_time` timestamp NOT NULL COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of org
-- ----------------------------
INSERT INTO `org` VALUES ('2', '机构A', '2019-01-16 00:00:00', '700000', '1', '2018-01-16 23:09:09', '2018-01-16 23:09:09');
INSERT INTO `org` VALUES ('3', '机构B', '2019-01-16 00:00:00', '99999999', '1', '2018-01-16 23:11:53', '2018-01-16 23:11:53');
INSERT INTO `org` VALUES ('4', '机构C', '2018-01-19 00:00:00', '1000000', '1', '2018-01-19 16:49:38', '2018-01-19 16:49:38');

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(40) NOT NULL DEFAULT '' COMMENT '随机订单号',
  `member_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `target_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商品类型 1:书籍',
  `pay_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1:微信 2：支付宝 3：银行转账 4: 现金 5:其他 6:刷卡',
  `pay_source` tinyint(1) NOT NULL DEFAULT '0' COMMENT '下单来源:1:PC 2:m',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单应付金额',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠金额',
  `pay_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单实付金额',
  `pay_in_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '扣点后的所得金额',
  `ratio` float NOT NULL DEFAULT '0' COMMENT '所扣点数',
  `pay_sn` varchar(128) NOT NULL DEFAULT '' COMMENT '第三方流水号',
  `note` text NOT NULL COMMENT '备注信息',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1：支付完成 0 无效 -1 申请退款 -2 退款中 -9 退款成功  -8 待支付  -7 完成支付待确认',
  `express_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '快递状态，-8 待支付 -7 已付款待发货 1：确认收货 0：失败',
  `express_address_id` int(11) NOT NULL DEFAULT '0' COMMENT '快递地址id',
  `express_info` varchar(100) NOT NULL DEFAULT '' COMMENT '快递单新',
  `comment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态',
  `pay_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '付款到账时间',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_order_sn` (`order_sn`),
  KEY `idx_member_id_status` (`member_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线购买订单表';

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_callback_data
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_callback_data`;
CREATE TABLE `pay_order_callback_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '支付订单id',
  `pay_data` text NOT NULL COMMENT '支付回调信息',
  `refund_data` text NOT NULL COMMENT '退款回调信息',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_order_id` (`pay_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_order_callback_data
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_item
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_item`;
CREATE TABLE `pay_order_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pay_order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单id',
  `member_id` bigint(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `quantity` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量 默认1份',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品总价格，售价 * 数量',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当前折扣',
  `target_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商品类型 1:书籍',
  `target_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应不同商品表的id字段',
  `note` text NOT NULL COMMENT '备注信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1：成功 0 失败',
  `comment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评价状态 1：已评价，0 ：未评价',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `id_order_id` (`pay_order_id`),
  KEY `idx_target_type_id` (`target_type`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of pay_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for qrcode_scan_history
-- ----------------------------
DROP TABLE IF EXISTS `qrcode_scan_history`;
CREATE TABLE `qrcode_scan_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'openid',
  `qrcode_id` int(11) NOT NULL DEFAULT '0' COMMENT '二维码id',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='渠道二维码扫码openid记录';

-- ----------------------------
-- Records of qrcode_scan_history
-- ----------------------------

-- ----------------------------
-- Table structure for queue_list
-- ----------------------------
DROP TABLE IF EXISTS `queue_list`;
CREATE TABLE `queue_list` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(30) NOT NULL DEFAULT '' COMMENT '队列名字',
  `data` varchar(500) NOT NULL DEFAULT '' COMMENT '队列数据',
  `status` tinyint(1) NOT NULL DEFAULT '-1' COMMENT '状态 -1 待处理 1 已处理',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='事件队列表';

-- ----------------------------
-- Records of queue_list
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名称',
  `info` varchar(100) NOT NULL DEFAULT '' COMMENT '角色权限信息，json保存',
  `org_id` int(11) NOT NULL COMMENT '机构id',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：有效  0：无效',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '角色1', '1,2,4', '4', '1', '2018-01-22 18:08:43', '2018-01-22 18:08:43');
INSERT INTO `role` VALUES ('2', '角色2', '1,2,3', '4', '1', '2018-01-22 18:08:32', '2018-01-22 18:08:32');
INSERT INTO `role` VALUES ('3', '角色3', '1,3,4', '4', '1', '2018-01-22 18:09:00', '2018-01-22 18:09:00');
INSERT INTO `role` VALUES ('4', '角色4', '1,2,3', '4', '1', '2018-01-22 18:12:08', '2018-01-22 18:12:08');

-- ----------------------------
-- Table structure for sms_captcha
-- ----------------------------
DROP TABLE IF EXISTS `sms_captcha`;
CREATE TABLE `sms_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL DEFAULT '',
  `captcha` varchar(10) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_captcha
-- ----------------------------
INSERT INTO `sms_captcha` VALUES ('1', '13570436205', '93328', '127.0.0.1', '2017-12-28 23:16:46', '0', '2017-12-28 23:06:46');

-- ----------------------------
-- Table structure for sms_queue
-- ----------------------------
DROP TABLE IF EXISTS `sms_queue`;
CREATE TABLE `sms_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(256) NOT NULL DEFAULT '' COMMENT '手机号码',
  `sign` varchar(10) NOT NULL DEFAULT '' COMMENT '签名',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '发送手机内容',
  `channel` varchar(30) NOT NULL DEFAULT '' COMMENT '发送渠道名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '发送状态 1成功 0 失败 -2 等待发送 -1 发送中',
  `return_msg` varchar(255) NOT NULL DEFAULT '' COMMENT '返回信息',
  `taskid` varchar(60) NOT NULL DEFAULT '' COMMENT '任务id',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '客户端发送ip',
  `send_number` int(11) NOT NULL DEFAULT '1' COMMENT '发送条数，默认1',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_status_mobile` (`status`,`mobile`(255)),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信发送队列表';

-- ----------------------------
-- Records of sms_queue
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_book
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_book`;
CREATE TABLE `stat_daily_book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `book_id` int(11) NOT NULL DEFAULT '0' COMMENT '书籍id',
  `total_count` int(11) NOT NULL DEFAULT '0' COMMENT '售卖总数量',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总售卖金额',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `date_book_id` (`date`,`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍售卖日统计';

-- ----------------------------
-- Records of stat_daily_book
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_member
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_member`;
CREATE TABLE `stat_daily_member` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '会员id',
  `total_shared_count` int(11) NOT NULL DEFAULT '0' COMMENT '当日分享总次数',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当日付款总金额',
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_date_member_id` (`date`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员日统计';

-- ----------------------------
-- Records of stat_daily_member
-- ----------------------------

-- ----------------------------
-- Table structure for stat_daily_site
-- ----------------------------
DROP TABLE IF EXISTS `stat_daily_site`;
CREATE TABLE `stat_daily_site` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `total_pay_money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '当日应收总金额',
  `total_member_count` int(11) NOT NULL COMMENT '会员总数',
  `total_new_member_count` int(11) NOT NULL COMMENT '当日新增会员数',
  `total_order_count` int(11) NOT NULL COMMENT '当日订单数',
  `total_shared_count` int(11) NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  PRIMARY KEY (`id`),
  KEY `idx_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全站日统计';

-- ----------------------------
-- Records of stat_daily_site
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户uid',
  `org_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '机构id',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名(真实姓名)',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  `ident` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证号',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1：男 2：女 0：没填写',
  `role` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户角色，1:机构管理人员',
  `avatar` varchar(64) NOT NULL DEFAULT '' COMMENT '头像',
  `login_name` varchar(20) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `login_pwd` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `login_salt` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码的随机加密秘钥',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：有效 0：无效',
  `updated_time` timestamp NOT NULL COMMENT '最后一次更新时间',
  `created_time` timestamp NOT NULL COMMENT '插入时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='用户表（管理员）';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('30', '1', 'mark', '13570436205', '', '0', '1', '', 'mark', '0a9fa6470781137a102dc209cc72cc65', 'cF3JfH5FJfQ8B2Ba', '1', '2018-03-15 00:00:00', '2018-03-15 00:00:00');
INSERT INTO `user` VALUES ('31', '2', '机构A管理员', '13570000000', '440181198912043313', '0', '1', 'default_avatar', 'org1', '90ca5fdc269c45ff8ab8b805b914aef3', 'ec5Rub1lLFDWWATl', '1', '2018-01-16 23:09:09', '2018-01-16 23:09:09');
INSERT INTO `user` VALUES ('32', '3', '机构B管理员', '13589998876', '440181198912043313', '0', '1', 'default_avatar', 'org2', 'cfdd823dd97373bec063ce756057ce4e', '!DR*Jx#1Mah6YA7E', '1', '2018-01-16 23:18:32', '2018-01-16 23:11:53');
INSERT INTO `user` VALUES ('33', '4', '机构C小齐', '13570436205', '440181198912043313', '0', '1', 'default_avatar', '小齐', 'c3268883ef79dc72d0ffe198cbca69d5', 'Qp1j4rhvhs@z335V', '1', '2018-01-19 16:49:38', '2018-01-19 16:49:38');
