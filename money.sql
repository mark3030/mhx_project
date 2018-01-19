/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : money

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-01-16 23:27:25
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户访问记录表';


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='app错误日表';


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='品牌图片';



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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='品牌设置表';


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='会员表';

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信的access_token 用户调用其他接口的';


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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of org
-- ----------------------------
INSERT INTO `org` VALUES ('2', '机构A', '2019-01-16 00:00:00', '700000', '1', '2018-01-16 23:09:09', '2018-01-16 23:09:09');
INSERT INTO `org` VALUES ('3', '机构B', '2019-01-16 00:00:00', '99999999', '1', '2018-01-16 23:11:53', '2018-01-16 23:11:53');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表（管理员）';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('30', '1', 'mark', '13570436205', '', '0', '1', '', 'mark', '0a9fa6470781137a102dc209cc72cc65', 'cF3JfH5FJfQ8B2Ba', '1', '2018-03-15 00:00:00', '2018-03-15 00:00:00');
INSERT INTO `user` VALUES ('31', '2', '机构A管理员', '13570000000', '440181198912043313', '0', '1', 'default_avatar', 'org1', '90ca5fdc269c45ff8ab8b805b914aef3', 'ec5Rub1lLFDWWATl', '1', '2018-01-16 23:09:09', '2018-01-16 23:09:09');
INSERT INTO `user` VALUES ('32', '3', '机构B管理员', '13589998876', '440181198912043313', '0', '1', 'default_avatar', 'org2', 'cfdd823dd97373bec063ce756057ce4e', '!DR*Jx#1Mah6YA7E', '1', '2018-01-16 23:18:32', '2018-01-16 23:11:53');
