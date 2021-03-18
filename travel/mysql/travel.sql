/*
 Navicat Premium Data Transfer

 Source Server         : springboot
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 30/03/2020 11:05:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1088810619659923456', 'admin', '$2a$10$VarDOmyYc3EOnk2MlpJ3AuMXZTEAWFa7I.AhNW87xaEa139S1nWTi');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `comment` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容',
  `scenictime` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('1091587235217711104', '欢迎来到CLT', '追逐生活和旅游', '尽在CLT');

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `img` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `comment` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容',
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '城市国家',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('1226054903782686720', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-08/bac220480cca4f09a2964140b9f66f0e-15646974479764286_200965039_H800.jpg', 'hehua', '1212', NULL);
INSERT INTO `gallery` VALUES ('1226772823760371712', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/41c2d2faa4e64e4bbf84fbaff8911f95-aiqinhai.jpg', '爱琴海', '爱琴海', NULL);
INSERT INTO `gallery` VALUES ('1226773191617609728', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/d9b1ab2721424fdd8a97c68a031a1ef7-daocheng.jpg', '稻城', '稻城亚丁', NULL);
INSERT INTO `gallery` VALUES ('1226774000849846272', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/6eba2baeb8bf453c8435ce710dd192b8-15649299883810671_200945258_H800.jpg', '不透明蓝', '不透明蓝', NULL);
INSERT INTO `gallery` VALUES ('1226774206580457472', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/bebdf94ec7ae491e8f0050711970c616-15648899824080239_201074485_H800.jpg', '揉碎梦境的边疆', '揉碎梦境的边疆', NULL);
INSERT INTO `gallery` VALUES ('1226774426269712384', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/73a102ea0a504b43adcd02e31dc61eb0-15645426014509510_201122619_H800.jpg', '神也爱花', '神也爱花', NULL);
INSERT INTO `gallery` VALUES ('1226775114978623488', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/f8e7aae8578e41b9994646b6641684f5-15644977075804072_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);
INSERT INTO `gallery` VALUES ('1226775202887041024', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/d4fccc4b991547358d5f90349848f40a-15644977071164284_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);
INSERT INTO `gallery` VALUES ('1226775275393974272', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/451adca26c2a443aae6e6627f859c967-15644977079424730_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);
INSERT INTO `gallery` VALUES ('1226775347548585984', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/8624bf1588fd49f783f325dd96152b8d-15644977078496049_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);
INSERT INTO `gallery` VALUES ('1226775412702904320', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/37214e2b0547493ebd6b5f5607093d64-15644977077449085_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);
INSERT INTO `gallery` VALUES ('1226775467639898112', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/ca32e88dee214043b034f31cbdf4d822-15644977076787780_183182485_H800.jpg', '时间虽倒计着_但在呢喃中照样漫长', '时间虽倒计着_但在呢喃中照样漫长', NULL);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `img` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '酒店名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `bed` int(0) NULL DEFAULT NULL COMMENT '床数',
  `day` int(0) NULL DEFAULT 1 COMMENT '天数',
  `star` int(0) NULL DEFAULT 0 COMMENT '评论星',
  `startdate` datetime(0) NULL DEFAULT NULL COMMENT '入住时间',
  `addr` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '酒店城市',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1226816862891241472', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/fc7fbeffa4df4a5b91d1fcb66f6a7a7f-hotels01.jpg', '青岛凯越旅馆', 120.00, '青岛凯越旅馆坐落在一栋优雅的白色建筑内，曾是一座历史悠久的基督教堂，地理位置优越，位于古镇中心，距离栈桥和信号山公园等许多著名旅游景点有15分钟步行路程，距离中山购物街和劈柴院有10分钟的步行路程。', 99, NULL, 6, NULL, '青岛');
INSERT INTO `hotel` VALUES ('1226818931098337280', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/b22c82202f7a4ebd92321059df1fe12a-hotels02.jpg', '青岛香格里拉大酒店', 522.00, '青岛香格里拉大酒店位于青岛的中央商业区，距离五四广场有10分钟的步行路程，设有健身中心、Spa和桑拿浴室以及4个餐饮场所。\n酒店距离青岛流亭国际机场有30公里，距离奥林匹克帆船中心有1公里，距离八大关2.9公里，靠近中国最大的购物中心之一MIXC。客人乘坐地铁3号线到青岛火车站需要12分钟。\n青岛香格里拉大酒店的客房位于青香阁和盛世阁两座相连的建筑。所有客房均配有平板电视和迷你吧。盛世阁的客房配备了更高水平的设施。', 98, NULL, 7, NULL, '青岛');
INSERT INTO `hotel` VALUES ('1226821061955764224', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/640ec645fce5434b91b80021ce437c2c-hotels03.jpg', '青岛李沧绿城喜来登酒店', 420.00, '华丽的青岛李沧绿城喜来登酒店位于青岛李沧区，距离崂山国家森林公园有20分钟车程，各处均覆盖免费无线网络连接。\n酒店现代化的客房配有空调、热水浴池和迷你吧。用餐区配有冰箱，亦配有电烧水壶。私人浴室配有浴缸和淋浴，亦配有吹风机。部分客房享有湖景和山景。\n青岛李沧绿城喜来登酒店设有自助餐厅。酒店提供的其他设施包括会议设施、票务服务和旅游咨询台。酒店提供免费停车场。', 99, NULL, 8, NULL, '青岛');

-- ----------------------------
-- Table structure for hotel_orders
-- ----------------------------
DROP TABLE IF EXISTS `hotel_orders`;
CREATE TABLE `hotel_orders`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `qty` int(0) NULL DEFAULT NULL COMMENT '数量',
  `payment` decimal(10, 2) NULL DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `paytime` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `scenicname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `begin` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '入住时间',
  `end` varchar(2255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '离开时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel_orders
-- ----------------------------
INSERT INTO `hotel_orders` VALUES ('1121588580272168960', '109137339', '1103622546225336320', 1, 963.00, '0', '2019-04-26 09:35:30', '15688198593', 'tz', '好好', NULL, NULL);
INSERT INTO `hotel_orders` VALUES ('1121589539505299456', '109137339', '1103622546225336320', 1, 963.00, '0', '2019-04-26 09:39:19', '15688198593', 'tz', '好好', NULL, NULL);
INSERT INTO `hotel_orders` VALUES ('1121589770657587200', '109137339', '1103622546225336320', 1, 963.00, '0', '2019-04-26 09:40:14', '15688198593', 'tz', '好好', NULL, NULL);
INSERT INTO `hotel_orders` VALUES ('1121590009703555072', '109137339', '1103622546225336320', 1, 963.00, '0', '2019-04-26 09:41:11', '15688198593', 'tz', '好好', NULL, NULL);
INSERT INTO `hotel_orders` VALUES ('1121594259896655872', '1091', '1103622546225336320', 1, 654.00, '0', '2019-04-26 09:58:04', '15688198593', 'tz', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121594583441022976', '1091', '1103622546225336320', 1, 654.00, '0', '2019-04-26 09:59:21', '15688198593', 'tz', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121594730950500352', '1091', '1103622546225336320', 1, 654.00, '0', '2019-04-26 09:59:56', '15688198593', 'tz', '八六', '2019-04-26', '2019-04-27');
INSERT INTO `hotel_orders` VALUES ('1121610508663861248', '1091373396', '1103622546225336320', 1, 753.00, '0', '2019-04-26 11:02:38', '15688198593', 'tz', '四六', '2019-04-26', '2019-04-27');
INSERT INTO `hotel_orders` VALUES ('1121615112885624832', '1091', '1103490713909239808', 1, 654.00, '0', '2019-04-26 11:20:56', '13937660933', '张三', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121615238433726464', '1091373396', '1103490713909239808', 1, 753.00, '0', '2019-04-26 11:21:26', '13937660933', '张三', '四六', '2019-04-26', '2019-04-28');
INSERT INTO `hotel_orders` VALUES ('1126694143169810432', '109137', '1126690336067244032', 1, 741.00, '0', '2019-05-10 11:43:11', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-11');
INSERT INTO `hotel_orders` VALUES ('1126699220660015104', '109137', '1126690336067244032', 1, 741.00, '0', '2019-05-10 12:03:21', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-11');
INSERT INTO `hotel_orders` VALUES ('1126699263282532352', '109137', '1126690336067244032', 2, 1482.00, '0', '2019-05-10 12:03:32', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-12');
INSERT INTO `hotel_orders` VALUES ('1225035601759629312', '1091', '1224322702257471488', 1, 654.00, '0', '2020-02-05 20:37:02', '', 'chs', '八六', '2020-02-06', '2020-02-07');
INSERT INTO `hotel_orders` VALUES ('1226824136921661440', '1226818931098337280', '1224322702257471488', 1, 522.00, '0', '2020-02-10 19:04:02', '15589028968', 'chs', '青岛香格里拉大酒店', '2020-02-12', '2020-02-15');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户id',
  `qty` int(0) NULL DEFAULT NULL COMMENT '数量',
  `payment` decimal(10, 2) NULL DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `paytime` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `scenicname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1118095265778114560', '1102950003585847299', '1103622546225336320', 1, 24.00, '1', '2019-04-16 18:14:19', '15688198593', 'tz', '南阳诸葛庐');
INSERT INTO `orders` VALUES ('1224322977819049984', '1102950003585847230', '1224322702257471488', 1, 888.00, '1', '2020-02-03 21:25:19', '13937660933', 'chs', '洛阳');
INSERT INTO `orders` VALUES ('1226059149013897216', '1226056698227527680', '1224322702257471488', 1, 21.00, '1', '2020-02-08 16:24:14', '15589028968', 'chs', 'wd');
INSERT INTO `orders` VALUES ('1226491326331514880', '1226490051481202688', '1224322702257471488', 2, 120.00, '1', '2020-02-09 21:01:33', '15589028968', 'chs', '崂山');
INSERT INTO `orders` VALUES ('1226492533070524416', '1226486194915176448', '1224322702257471488', 1, 50.00, '1', '2020-02-09 21:06:21', '15589028968', 'chs', '八大关');

-- ----------------------------
-- Table structure for park
-- ----------------------------
DROP TABLE IF EXISTS `park`;
CREATE TABLE `park`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(8, 2) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of park
-- ----------------------------
INSERT INTO `park` VALUES (1, '车位一', 100.00, 1);
INSERT INTO `park` VALUES (2, '车位二', 79.50, 0);
INSERT INTO `park` VALUES (4, '车位三', 213.00, 0);
INSERT INTO `park` VALUES (8, '车位四', 112.00, 0);
INSERT INTO `park` VALUES (9, '车位五', 88.00, 0);
INSERT INTO `park` VALUES (10, '车位六', 998.00, 0);
INSERT INTO `park` VALUES (11, '车位七', 100.00, 0);
INSERT INTO `park` VALUES (12, '车位八', 100.00, 0);
INSERT INTO `park` VALUES (13, '车位九', 90.00, 0);
INSERT INTO `park` VALUES (14, '车位十', 77.00, 0);

-- ----------------------------
-- Table structure for park_orders
-- ----------------------------
DROP TABLE IF EXISTS `park_orders`;
CREATE TABLE `park_orders`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_id` int(0) NULL DEFAULT NULL,
  `createDate` date NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `total` double(255, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of park_orders
-- ----------------------------
INSERT INTO `park_orders` VALUES (21, '7188de7f-386b-11e8-9125-047d7b48770f', '1224322702257471488', 1, '2018-04-05', 1, 80);
INSERT INTO `park_orders` VALUES (22, '23407dc4-386c-11e8-9125-047d7b48770f', '1224322702257471488', 4, '2018-04-05', 1, 170);
INSERT INTO `park_orders` VALUES (24, '17b89a46-386f-11e8-9125-047d7b48770f', '1224322702257471488', 9, '2018-04-05', 1, 70);
INSERT INTO `park_orders` VALUES (25, 'd43ec8d3-3879-11e8-9125-047d7b48770f', '1224322702257471488', 10, '2018-04-05', 1, 0);
INSERT INTO `park_orders` VALUES (26, '3d1203c6-389c-11e8-9125-047d7b48770f', '1224322702257471488', 1, '2018-04-05', 1, 0);
INSERT INTO `park_orders` VALUES (27, '3e165b85-48d5-11ea-b69f-6c110f174822', '1224322702257471488', 9, '2020-02-06', 1, 79);
INSERT INTO `park_orders` VALUES (28, 'e575cac5-48d5-11ea-b69f-6c110f174822', '1224322702257471488', 4, '2020-02-06', 1, 192);
INSERT INTO `park_orders` VALUES (29, '1241f325-48d6-11ea-b69f-6c110f174822', '1224322702257471488', 1, '2020-02-06', 1, 90);
INSERT INTO `park_orders` VALUES (30, 'adac8dfe-497c-11ea-b69f-6c110f174822', '1225684691325485056', 1, '2020-02-07', 0, 90);

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '景点名称',
  `img` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '景点图片',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `comment` varchar(10000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '详情',
  `stock` int(0) NULL DEFAULT NULL COMMENT '库存',
  `start` int(0) NULL DEFAULT NULL COMMENT '评分',
  `contry` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '国家地区',
  `startdate` datetime(0) NULL DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1226483573596811264', '泰山', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-09/690ff9c6111b493fb3d29cbb00435d42-%E6%B3%B0%E5%B1%B1.jpg', 115.00, '世界文化与自然双重遗产——泰山', '泰山，又名岱山、岱宗、岱岳、东岳、泰岳，为中国著名的五岳之一，位于山东省中部，绵亘于泰安、济南、淄博三市之间，总面积2.42万公顷。主峰玉皇顶海拔1545米，气势雄伟磅礴，有“五岳之首”、“五岳之长”、“五岳之尊”、“天下第一山”之称。是世界文化与自然双重遗产，世界地质公园，国家AAAAA级旅游景区，国家级风景名胜区，全国重点文物保护单位，全国文明风景旅游区。泰山被古人视为“直通帝座”的天堂，成为百姓崇拜，帝王告祭的神山，有“泰山安，四海皆安”的说法。自秦始皇开始到清代，先后有13代帝王引次亲登泰山封禅或祭祀，另外有24代帝王遣官祭祀72次。泰山宏大的山体上留下了20余处古建筑群，2200余处碑碣石刻。道教、佛教视泰山为“仙山佛国”，神化泰山，在泰山建造了大量宫观寺庙。泰山是中华民族的象征，是东方文化的缩影，是“天人合一”思想的寄托之地，是中华民族精神的家园。', 999, NULL, '泰安', NULL);
INSERT INTO `scenic` VALUES ('1226486194915176448', '八大关', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-09/08ed79827b3f42f09a27b2a66f56777b-badaguan.jpg', 50.00, '八大关是最能体现青岛“红瓦绿树、碧海蓝天”特点的风景区', '所谓\"八大关\"，是因为这里有八条马路（现已增到十条），是以中国古代长城著名关隘命名的。此处是著名的别墅区，人称“万国建筑博物馆”。\r\n解放前，这里是官僚资本家的别墅区。解放后，人民政府对八大关进行了全面修缮，使其为中国重要的疗养区之一，许多党和国家领导人及重要的国际友人，曾在这里下榻。', 998, 4, '青岛', NULL);
INSERT INTO `scenic` VALUES ('1226490051481202688', '崂山', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-09/b8221848060d4ce5b0b6ada97e1ce954-laoshan.jpg', 60.00, '崂山是中国海岸线第一高峰，有着海上“第一名山”之称', '崂山，东高而悬崖傍海，西缓而丘陵起伏，山区面积446平方公里。山脉以崂顶为中心，向四方延伸，尤以西北、西南两个方向延伸较长，形成了巨峰、三标山、石门山和午山四条支脉，崂山的余脉沿东海岸向北至即墨区的东部，西抵胶州湾畔，西南方向的余脉则延伸到青岛市区，形成了市区的十余个山头和跌宕起伏的丘陵地形。', 997, 5, '青岛', '2020-02-19 08:00:00');
INSERT INTO `scenic` VALUES ('1226708688599220224', '胡杨林风景区', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/da73011cd8eb4384bd48d2529af93282-parallax1.jpg', 240.00, '额济纳胡杨林景区现已被列为世界地质公园、中国国家地质公园、中国阿拉善沙漠地质公园、中国国家森林公园', '内蒙古额济纳胡杨林国家级自然保护区位于额济纳旗的中心位置—额济纳绿洲，西邻额济纳旗政府驻地达来呼布镇，北临居延海，保护区总面积26253平方公里。这里是胡杨的故乡，也是大漠的居所。胡杨有“生而一千年不死，死而一千年不倒，倒而一千年不朽”的说法，被世人称为英雄树。保护区内的一道桥至八道桥，分布着不同的胡杨景观，是摄影爱好者的天堂。八道桥的大漠景区，沧桑醉人心魄。保护区内还有各种露营地、餐厅、滑沙、沙漠冲浪越野车等各种餐饮、娱乐设施，是集绝美风光、娱乐休闲为一体的综合风景区。', 99, NULL, '内蒙古自治区', '2020-02-28 08:00:00');
INSERT INTO `scenic` VALUES ('1226714356358025216', '爱琴海', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/920b2ec66fec403c9fcf589c70412e75-aiqinhai.jpg', 3999.00, '爱琴海是希腊半岛东部的一个蓝色系海洋，南抵克里特岛，属地中海的一部分。', '爱琴海名称起源有各种解释，其中一个可能的词源是Αιγ- ，意思是波浪，因此Αιγαίο Πέλαγος意思是波浪起伏的海。它不仅是西方欧洲文明的摇篮，对世界各国旅客来说，更是浪漫情调旅程的象征。', 99, NULL, '雅典', '2020-04-12 08:00:00');
INSERT INTO `scenic` VALUES ('1226717136690843648', '稻城亚丁', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/d833e60034cc48c38c5980c0a98f1641-daocheng.jpg', 99.00, '旅游稻城亚丁留下天堂，忘却地狱', '一有个地方叫稻城那里有蔚蓝的天空金色的草地圣洁的雪山如果你有心爱的人一定要和他去看一场秋天的童话如果没有也一定要背着包，来一次神山与白云，蓝天与大地，草甸与悬崖天堂与地狱的挑战。\n', 99, NULL, '稻城', '2020-09-30 08:00:00');
INSERT INTO `scenic` VALUES ('1226722976407678976', '黄山', 'https://lvyou-xsh.oss-cn-hangzhou.aliyuncs.com/images/2020-02-10/d2c0d0a361f144c49fd3bdef90c647d2-huangshan.jpg', 150.00, '黄山：世界文化与自然双重遗产，中华十大名山，天下第一奇山。', '黄山原名“黟山”，因峰岩青黑，遥望苍黛而名。后因传说轩辕黄帝曾在此炼丹，故改名为“黄山”。黄山代表景观有“五绝三瀑”，五绝：奇松、怪石、云海、温泉、冬雪；三瀑：人字瀑、百丈泉、九龙瀑。黄山迎客松是安徽人民热情友好的象征，承载着拥抱世界的东方礼仪文化。', 99, NULL, '黄山市', '2020-04-16 08:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `mobile` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `sex` char(6) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '性别，男1，女0',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `salt` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盐',
  `plate_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1224322702257471488', 'chs', '$2a$10$7YvJ9xenX7qeCKqn91I8WuIqmbeqglE60ar0PqWNlzUNZld1hF6nq', '15589028968', '2714140156@qq.com', '男', 21, NULL, NULL);
INSERT INTO `user` VALUES ('1225684691325485056', 'xsh', '$2a$10$o4EvQHqSkpY6f7JvtgOZfOzMWN3jy56b3YOqdImZjSJPz1I3s7Ili', '17660676452', '110@qq.com', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES ('1225686090448777216', 'xsh1', '$2a$10$4VJUXAygt/.xD06yQQFFsOkOvkqqBQsROyVtUJhWs3l.dcZBL47xO', '15589028969', '112@qq.com', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
