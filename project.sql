/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-02-09 17:06:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `now_price` decimal(10,2) NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `qty` int(255) NOT NULL DEFAULT '1',
  `description` varchar(255) NOT NULL,
  `imgs` varchar(255) NOT NULL DEFAULT 'img/null.jpg',
  `categroy` varchar(255) DEFAULT NULL COMMENT '分类',
  `add_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '添加时间',
  `img_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '1960.00', '2940.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KY2167', '../img/product1.jpg', '沙发', '2018-02-08 14:46:53', '../img/product1.jpg,../img/product1_1.jpg');
INSERT INTO `goods` VALUES ('2', '1790.00', '2685.00', '1', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KY2129', '../img/product2.jpg', '沙发', '2018-02-08 15:10:53', '../img/product2.jpg,../img/product1_1.jpg');
INSERT INTO `goods` VALUES ('3', '1450.00', '2175.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2097', '../img/product3.jpg', '沙发', '2018-02-08 15:11:29', '../img/product3.jpg,../img/product1_1.jpg');
INSERT INTO `goods` VALUES ('4', '1700.00', '2550.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2157', '../img/product4.jpg', '沙发', '2018-02-08 15:16:27', '../img/product4.jpg,../img/product4_1.jpg,../img/product1_1.jpg');
INSERT INTO `goods` VALUES ('5', '1870.00', '2805.00', '4', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2168', '../img/product5.jpg', '沙发', '2018-02-08 15:17:47', '../img/product5.jpg,../img/product5_1.jpg');
INSERT INTO `goods` VALUES ('6', '2890.00', '4335.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2121三人位', '../img/product6.jpg', '沙发', '2018-02-08 15:18:21', '../img/product6.jpg,../img/product5_1.jpg');
INSERT INTO `goods` VALUES ('7', '5960.00', '8940.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2151', '../img/product7.jpg', '沙发', '2018-02-08 15:21:33', '../img/product7.jpg,../img/product7_1.jpg');
INSERT INTO `goods` VALUES ('8', '2890.00', '4435.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2138 三人沙发', '../img/product8.jpg', '沙发', '2018-02-08 15:22:54', '../img/product8.jpg,../img/product7_1.jpg');
INSERT INTO `goods` VALUES ('9', '3660.00', '5490.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2160 双人位', '../img/product9.jpg', '沙发', '2018-02-08 15:24:35', '../img/product9.jpg,../img/product9_1.jpg');
INSERT INTO `goods` VALUES ('10', '2380.00', '3570.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2169', '../img/product10.jpg', '沙发', '2018-02-08 15:25:28', '../img/product10.jpg,../img/product9_1.jpg');
INSERT INTO `goods` VALUES ('11', '4250.00', '6375.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2160三人位', '../img/product11.jpg', '沙发', '2018-02-08 15:25:34', '../img/product11.jpg,../img/product9_1.jpg');
INSERT INTO `goods` VALUES ('12', '2640.00', '3960.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2126 双人位', '../img/product12.jpg', '沙发', '2018-02-08 15:26:48', '../img/product12.jpg,../img/product12_1.jpg');
INSERT INTO `goods` VALUES ('13', '1530.00', '2295.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2126 单人位', '../img/product13.jpg', '沙发', '2018-02-08 15:27:46', '../img/product13.jpg,../img/product12_1.jpg');
INSERT INTO `goods` VALUES ('14', '3230.00', '4845.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2126三人位', '../img/product14.jpg', '沙发', '2018-02-08 15:27:52', '../img/product14.jpg,../img/product12_1.jpg');
INSERT INTO `goods` VALUES ('15', '1750.00', '2625.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ky2130', '../img/product15.jpg', '沙发', '2018-02-08 15:30:19', '../img/product15.jpg,../img/product15_1.jpg');
INSERT INTO `goods` VALUES ('16', '1960.00', '2940.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ky2150', '../img/product16.jpg', '沙发', '2018-02-08 15:30:24', '../img/product16.jpg,../img/product15_1.jpg');
INSERT INTO `goods` VALUES ('17', '2980.00', '4470.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2079三人位', '../img/product17.jpg', '沙发', '2018-02-08 15:30:28', '../img/product17.jpg,../img/product15_1.jpg');
INSERT INTO `goods` VALUES ('18', '1550.00', '2325.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2163', '../img/product18.jpg', '沙发', '2018-02-08 15:33:03', '../img/product18.jpg,../img/product18_1.jpg');
INSERT INTO `goods` VALUES ('19', '1870.00', '2805.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2152单人位', '../img/product19.jpg', '沙发', '2018-02-08 15:32:59', '../img/product19.jpg,../img/product18_1.jpg');
INSERT INTO `goods` VALUES ('20', '3570.00', '5355.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2152三人位', '../img/product20.jpg', '沙发', '2018-02-08 15:32:54', '../img/product20.jpg,../img/product18_1.jpg');
INSERT INTO `goods` VALUES ('21', '2610.00', '3915.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2133双人位', '../img/product21.jpg', '沙发', '2018-02-08 15:36:15', '../img/product21.jpg,../img/product21_1.jpg');
INSERT INTO `goods` VALUES ('22', '1960.00', '2940.00', '4', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2065', '../img/product22.jpg', '沙发', '2018-02-08 15:36:10', '../img/product22.jpg,../img/product21_1.jpg');
INSERT INTO `goods` VALUES ('23', '3150.00', '4725.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2133 三人位', '../img/product23.jpg', '沙发', '2018-02-08 15:36:04', '../img/product23.jpg,../img/product21_1.jpg');
INSERT INTO `goods` VALUES ('24', '2720.00', '4080.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2156双人位', '../img/product24.jpg', '沙发', '2018-02-08 15:39:15', '../img/product24.jpg,../img/product24_1.jpg');
INSERT INTO `goods` VALUES ('25', '1620.00', '2430.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ky2165', '../img/product25.jpg', '沙发', '2018-02-08 15:39:10', '../img/product25.jpg,../img/product24_1.jpg');
INSERT INTO `goods` VALUES ('26', '3320.00', '4980.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2156三人沙发', '../img/product26.jpg', '沙发', '2018-02-08 15:39:05', '../img/product26.jpg,../img/product24_1.jpg');
INSERT INTO `goods` VALUES ('27', '6300.00', '9450.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 ks2137', '../img/product27.jpg', '沙发', '2018-02-08 15:41:10', '../img/product27.jpg,../img/product27_1.jpg');
INSERT INTO `goods` VALUES ('28', '5450.00', '8175.00', '3', '斐亨外贸家具折扣 布艺沙发 进口实木 随心搭配 KS2122', '../img/product28.jpg', '沙发', '2018-02-08 15:41:17', '../img/product28.jpg,../img/product27_1.jpg');
INSERT INTO `goods` VALUES ('29', '198.00', '258.00', '2', '瑞肯橱柜 榻榻米 白色 平方', '../img/index1.jpg', '橱柜', '2018-02-08 15:50:59', '../img/index1.jpg');
INSERT INTO `goods` VALUES ('30', '193.33', '230.00', '9997', '大将军陶瓷 客厅 全抛釉地砖 MQ8806P 800*800', '../img/index2.png', '地砖', '2018-02-08 16:33:06', '../img/index2.png');
INSERT INTO `goods` VALUES ('31', '199.00', '199.00', '90', '扬子地板 超实木健康系列（真木纹型） 古堡灰橡 木地板 如图 平方米', '../img/index3.jpg', '地板', '2018-02-08 15:55:55', '../img/index3.jpg,../img/index3_1.jpg,../img/index3_2.jpg');
INSERT INTO `goods` VALUES ('32', '3752.00', '5360.00', '12', '龙凤床垫 天然无甲醛 椰棕床垫 乳胶特硬 东方明珠系列 T550 1800*2000mm', '../img/index4.jpg', '床垫', '2018-02-08 15:58:21', '../img/index4.jpg,../img/index4_1.jpg');
INSERT INTO `goods` VALUES ('33', '139.00', '688.00', '97', '瀚庭 全棉 夏凉被 空调被 爱丽丝 蓝色 2.0x2.3m', '../img/index5.jpg', '空调被', '2018-02-08 15:59:53', '../img/index5.jpg,../img/index5_1.jpg');
INSERT INTO `goods` VALUES ('34', '1599.00', '1599.00', '93', '索菲亚整体衣柜马赛大百叶 定制衣柜 大衣柜推拉门移门定做衣橱', '../img/index6.jpg', '衣橱', '2018-02-08 16:01:39', '../img/index6.jpg');
INSERT INTO `goods` VALUES ('35', '999.00', '1999.00', '98', '索菲亚旗舰店官方店 整体衣柜定制衣柜 经典百叶带顶柜衣柜大衣柜', '../img/index7.jpg', '衣柜', '2018-02-08 16:02:45', '../img/index7.jpg');
INSERT INTO `goods` VALUES ('36', '199.00', '399.00', '33', '青岛一木 北欧风格 宜家 简约风 实木休闲椅（颜色随机发货）', '../img/index8.jpg', '休闲椅', '2018-02-08 16:04:38', '../img/index8.jpg,../img/index8_1.jpg');
INSERT INTO `goods` VALUES ('37', '2299.00', '2299.00', '96', '青岛一木 北欧系列 全实木 橡木五斗柜 ', '../img/index9.jpg', '五斗柜', '2018-02-08 16:06:35', '../img/index9.jpg,../img/index9_1.jpg');
INSERT INTO `goods` VALUES ('38', '7450.00', '11175.00', '18', '柚至臻 黑胡桃木+桐木 梳妆台 Bn-125801', '../img/index10.jpg', '梳妆台', '2018-02-08 16:08:29', '../img/index10.jpg,../img/index10_1.jpg');
INSERT INTO `goods` VALUES ('39', '1250.00', '1450.00', '10', '鼎豪淋浴房 不锈钢两移门 T-W728 平方米', '../img/index11.jpg', '浴房门', '2018-02-08 16:09:35', '../img/index11.jpg');
INSERT INTO `goods` VALUES ('40', '2080.00', '2880.00', '7', '致尚名门 镶嵌工艺玻璃-风景香槟砂金单边套推拉中空铝门 Z-1366 平方米', '../img/index12.jpg', '铝门', '2018-02-08 16:10:51', '../img/index12.jpg');
INSERT INTO `goods` VALUES ('41', '148.00', '178.00', '100', '梵瓦伦 枫木实木复合地板 5007 平方米', '../img/index13.jpg', '地板', '2018-02-08 16:11:46', '../img/index13.jpg');
INSERT INTO `goods` VALUES ('42', '9800.00', '37500.00', '16', '凯纳豪迪 柚木 移门衣柜 2012-A', '../img/index14.jpg', '衣柜', '2018-02-08 16:13:21', '../img/index14.jpg,../img/index14_1.jpg');
INSERT INTO `goods` VALUES ('43', '720.00', '980.00', '19', '蒂思 客厅卧室 背景墙 软包 A-060 如图 1平方米', '../img/index15.jpg', '背景墙', '2018-02-08 16:15:37', '../img/index15.jpg,../img/index15_1.jpg');
INSERT INTO `goods` VALUES ('44', '1481.00', '1799.00', '97', '朗斯淋浴房 浴室隔断 钢化玻璃+防爆膜 圆弧形整体淋浴房海伦B42', '../img/classify1.jpg', '家装主材', '2018-02-08 19:00:05', '../img/classify1.jpg');
INSERT INTO `goods` VALUES ('45', '2098.00', '2680.00', '5', '欧卡诺定制进口爱格板石英石台面', '../img/classify2.jpg', '家装主材', '2018-02-08 19:00:50', '../img/classify2.jpg');
INSERT INTO `goods` VALUES ('46', '320.00', '480.00', '20', '永壮铝业 普铝 定制窗', '../img/classify3.jpg', '家装主材', '2018-02-08 19:01:03', '../img/classify3.jpg,../img/classify3_1.jpg');
INSERT INTO `goods` VALUES ('47', '2080.00', '2880.00', '10', '致尚名门 汇景香槟砂金二代单/双边套中空推拉铝门 Z-1311二代单/双边套 平方米', '../img/classify4.jpg', '家装主材', '2018-02-08 19:01:11', '../img/classify4.jpg');
INSERT INTO `goods` VALUES ('48', '356.00', '356.00', '90', '美实在地板 实木复合地板 榆木人字拼 如图 平方米', '../img/classify5.jpg', '家装主材', '2018-02-08 19:01:22', '../img/classify5.jpg,../img/classify5_1.jpg');
INSERT INTO `goods` VALUES ('49', '2508.00', '2888.00', '10', '全能保险柜铁将军系列TGG4538家用防盗 国家3C认证办公保险箱', '../img/classify6.jpg', '家装主材', '2018-02-08 19:01:32', '../img/classify6.jpg');
INSERT INTO `goods` VALUES ('50', '115.00', '158.00', '99', '汇丽地板 强化复合地板 幻影高光系列 BL-H76017', '../img/classify7.jpg', '家装主材', '2018-02-08 19:01:45', '../img/classify7.jpg,../img/classify7_1.jpg');
INSERT INTO `goods` VALUES ('51', '560.00', '720.00', '999', '金永石材 白玉兰(天然) 白玉兰 平方米', '../img/classify8.jpg', '家装主材', '2018-02-08 19:02:04', '../img/classify8.jpg');
INSERT INTO `goods` VALUES ('52', '5440.00', '6800.00', '20', '天开 全柚木 实木 卧室 梳妆台(含凳） TK', '../img/classify9.jpg', '软装家具', '2018-02-08 19:02:17', '../img/classify9.jpg,../img/classify9_1.jpg');
INSERT INTO `goods` VALUES ('53', '5500.00', '11300.00', '20', '克罗德曼 布艺/松木框架 床架 AFB-616', '../img/classify10.jpg', '软装家具', '2018-02-08 19:02:32', '../img/classify10.jpg,../img/classify10_1.jpg');
INSERT INTO `goods` VALUES ('54', '3500.00', '4800.00', '19', '傲吉 栾叶苏木 卧室 客厅 实木 电视柜 908', '../img/classify11.jpg', '软装家具', '2018-02-08 19:02:47', '../img/classify11.jpg,../img/classify11_1.jpg');
INSERT INTO `goods` VALUES ('55', '1900.00', '3800.00', '15', '宝莱佳 实木生态板 卧室 白蜡木五斗柜 2M01', '../img/classify12.jpg', '软装家具', '2018-02-08 19:03:01', '../img/classify12.jpg,../img/classify12_1.jpg');
INSERT INTO `goods` VALUES ('56', '8316.00', '11880.00', '47', '美诚美诺 客厅 油楠木 沙发组合 双人沙发 D135', '../img/classify13.jpg', '软装家具', '2018-02-08 19:03:17', '../img/classify13.jpg,../img/classify13_1.jpg');
INSERT INTO `goods` VALUES ('57', '6126.00', '9189.00', '16', '盛世东方 胡桃木+松木+玻璃 高柜 3911', '../img/classify14.jpg', '软装家具', '2018-02-08 19:03:29', '../img/classify14.jpg,../img/classify14_1.jpg');
INSERT INTO `goods` VALUES ('58', '3260.00', '6520.00', '18', '龙凤床垫 3E椰棕硬床垫 正反二用 富豪家族系列 乐轩 1500*1900mm', '../img/classify15.jpg', '软装家具', '2018-02-08 19:03:43', '../img/classify15.jpg,../img/classify15_1.jpg');
INSERT INTO `goods` VALUES ('59', '5000.00', '7500.00', '20', '柚至臻 黑胡桃木+桐木 五斗柜 Bn-475801', '../img/classify16.jpg', '软装家具', '2018-02-08 19:03:56', '../img/classify16.jpg,../img/classify16_1.jpg');
INSERT INTO `goods` VALUES ('60', '99.00', '688.00', '99', '瀚庭 全棉 夏凉被 空调被 爱丽丝 蓝色 1.5x2.0m', '../img/classify17.jpg', '家纺家饰', '2018-02-08 19:04:10', '../img/classify17.jpg,../img/classify17_1.jpg');
INSERT INTO `goods` VALUES ('61', '259.00', '1199.00', '5', 'YOGA伊加 全棉斜纹活性印花四件套 紫韵花语 1.5米', '../img/classify18.jpg', '家纺家饰', '2018-02-08 19:04:26', '../img/classify18.jpg,../img/classify18_1.jpg');
INSERT INTO `goods` VALUES ('62', '128.00', '600.00', '125', '瀚庭 全棉 印花 四件套 8090', '../img/classify19.jpg', '家纺家饰', '2018-02-08 19:04:40', '../img/classify19.jpg,../img/classify19_1.jpg');
INSERT INTO `goods` VALUES ('63', '89.00', '1349.00', '12', 'YOGA伊加 清雅防螨床护垫 1.5米', '../img/classify20.jpg', '家纺家饰', '2018-02-08 19:04:52', '../img/classify20.jpg,../img/classify20_1.jpg');
INSERT INTO `goods` VALUES ('64', '299.00', '1299.00', '4', 'YOGA伊加 全棉斜纹活性印花四件套 利兹风情 1.8米', '../img/classify21.jpg', '家纺家饰', '2018-02-08 19:05:02', '../img/classify21.jpg,../img/classify21_1.jpg');
INSERT INTO `goods` VALUES ('65', '49.00', '299.00', '251', '瀚庭 时尚与传统 老粗布床单 清明上河图', '../img/classify22.jpg', '家纺家饰', '2018-02-08 19:05:13', '../img/classify22.jpg,../img/classify22_1.jpg');
INSERT INTO `goods` VALUES ('66', '118.00', '688.00', '100', '瀚庭 清凉 爽滑 透气 冰丝席系列 约定粉 1.8x1.95m', '../img/classify23.jpg', '家纺家饰', '2018-02-08 19:05:25', '../img/classify23.jpg,../img/classify23_1.jpg');
INSERT INTO `goods` VALUES ('67', '299.00', '1299.00', '3', 'YOGA伊加 全棉斜纹活性印花四件套 紫韵花语 1.8米', '../img/classify24.jpg', '家纺家饰', '2018-02-08 19:05:38', '../img/classify24.jpg,../img/classify24_1.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(3) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT 'nan',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lemon', '123', '39', null, 'nan', null);
INSERT INTO `user` VALUES ('2', 'laoxie', '12', null, null, 'nan', null);
INSERT INTO `user` VALUES ('3', '老谢', 'dfd', null, null, 'nan', null);
INSERT INTO `user` VALUES ('69', 'laoxie111', 'a1cab95df79930fa63947a2bc6f746dd', null, null, 'nan', '2018-02-09 15:10:35');
INSERT INTO `user` VALUES ('68', 'haha', '202cb962ac59075b964b07152d234b70', null, null, 'nan', '2018-02-09 14:32:10');
INSERT INTO `user` VALUES ('67', 'fadsfsad', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:14:00');
INSERT INTO `user` VALUES ('66', 'laoxieggg', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:11:47');
INSERT INTO `user` VALUES ('65', 'fdsafa', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:10:32');
INSERT INTO `user` VALUES ('64', 'laox', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:10:17');
INSERT INTO `user` VALUES ('70', 'la', 'c4ca4238a0b923820dcc509a6f75849b', null, null, 'nan', '2018-02-09 15:10:50');
INSERT INTO `user` VALUES ('63', 'ha', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:09:28');
INSERT INTO `user` VALUES ('62', 'lao', 'f0118e9bd2c4fb29c64ee03abce698b8', null, null, 'nan', '2018-02-09 14:06:04');
INSERT INTO `user` VALUES ('61', '', 'd41d8cd98f00b204e9800998ecf8427e', null, null, 'nan', '2018-02-09 14:05:27');
SET FOREIGN_KEY_CHECKS=1;
