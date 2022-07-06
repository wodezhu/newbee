/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : newbee_mall_db_v2

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 05/07/2022 12:06:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_newbee_mall_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_admin_user`;
CREATE TABLE `tb_newbee_mall_admin_user`  (
  `admin_user_id` int(10) NOT NULL AUTO_INCREMENT,
  `login_user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `locked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_admin_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_admin_user` VALUES (1, 'admin', '123456', '小猪猪', '0');
INSERT INTO `tb_newbee_mall_admin_user` VALUES (2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'oner', '0');
INSERT INTO `tb_newbee_mall_admin_user` VALUES (3, '18065111203', '233b617331ec7488e5a4a00214f5c94c', 'hzy', '0');

-- ----------------------------
-- Table structure for tb_newbee_mall_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_carousel`;
CREATE TABLE `tb_newbee_mall_carousel`  (
  `carousel_id` int(255) NOT NULL AUTO_INCREMENT,
  `carousel_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `redirect_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `carousel_rank` int(11) NULL DEFAULT NULL,
  `is_deleted` tinyint(255) NULL DEFAULT 0,
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_carousel
-- ----------------------------
INSERT INTO `tb_newbee_mall_carousel` VALUES (1, 'http://localhost:27019/upload/20220627_15012518.jpg', '##ssssssssss', 0, 1, '2022-06-30 17:03:02', NULL, '2022-06-30 17:03:02', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (2, 'http://localhost:27019/upload/20220701_08331557.png', 'http://localhost:27019/upload/20220630_15270286.PNG', 5, 1, '2022-07-04 13:00:31', NULL, '2022-07-04 13:00:31', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (3, 'http://localhost:27019/upload/20220630_17031697.png', 'http://localhost:27019/upload/20220630_16464156.png', 9, 1, '2022-07-04 13:00:31', NULL, '2022-07-04 13:00:31', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (4, 'http://localhost:27019/upload/20220701_08303037.png', 'http://localhost:27019/upload/20220630_16121649.png', 7, 1, '2022-07-04 13:00:31', NULL, '2022-07-04 13:00:31', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (5, 'http://localhost:27019/upload/20220701_08322041.png', 'http://localhost:27019/upload/20220630_16152626.png', 5, 1, '2022-07-04 13:00:31', NULL, '2022-07-04 13:00:31', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (6, 'http://localhost:27019/upload/20220704_10384996.png', '##', 20, 1, '2022-07-04 13:00:31', NULL, '2022-07-04 13:00:31', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (7, 'http://localhost:27019/upload/20220704_12564112.png', 'http://localhost:8080/#/product/10921', 50, 0, '2022-07-04 12:59:17', NULL, '2022-07-04 12:59:17', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (8, 'http://localhost:27019/upload/20220704_12592962.png', 'http://localhost:8080/#/product/10916', 48, 0, '2022-07-04 13:00:38', NULL, '2022-07-04 13:00:38', NULL);
INSERT INTO `tb_newbee_mall_carousel` VALUES (9, 'http://localhost:27019/upload/20220704_13001180.png', 'http://localhost:8080/#/product/10908', 47, 0, '2022-07-04 13:00:40', NULL, '2022-07-04 13:00:41', NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_category`;
CREATE TABLE `tb_newbee_mall_goods_category`  (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_level` tinyint(4) NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(255) NULL DEFAULT 0,
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `update_user` int(11) NULL DEFAULT NULL,
  `category_rank` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_category
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_category` VALUES (7, 1, 0, '足球专区', 0, '2022-06-30 10:50:44', NULL, '2022-06-30 10:50:44', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (8, 1, 0, '运动户外', 0, '2022-07-04 13:21:28', NULL, '2022-07-04 13:21:28', NULL, 50);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (9, 1, 0, '篮球专区', 0, '2022-06-30 10:49:26', NULL, '2022-06-30 10:49:26', NULL, 5);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (11, 2, 8, '运动服饰', 0, '2022-06-30 10:59:23', NULL, '2022-06-30 10:59:23', NULL, 2);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (13, 2, 7, '足球鞋系列', 0, '2022-06-30 10:51:13', NULL, '2022-06-30 10:51:13', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (14, 2, 7, '足球服系列', 0, '2022-06-30 10:51:32', NULL, '2022-06-30 10:51:32', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (15, 2, 7, '其他配件', 0, '2022-06-30 10:52:00', NULL, '2022-06-30 10:52:00', NULL, 5);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (16, 3, 15, '足球袜', 0, '2022-06-30 10:53:19', NULL, '2022-06-30 10:53:19', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (17, 3, 15, '守门员手套', 0, '2022-06-30 10:53:16', NULL, '2022-06-30 10:53:16', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (18, 3, 15, '足球背包', 0, '2022-06-30 10:53:07', NULL, '2022-06-30 10:53:07', NULL, 6);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (19, 3, 15, '裁判口哨', 0, '2022-06-30 10:53:10', NULL, '2022-06-30 10:53:10', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (20, 2, 9, '篮球', 0, '2022-06-30 10:55:07', NULL, '2022-06-30 10:55:07', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (21, 2, 9, '篮球装备', 0, NULL, NULL, NULL, NULL, 0);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (22, 3, 20, 'CBA经典篮球', 0, '2022-06-30 10:55:45', NULL, '2022-06-30 10:55:45', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (25, 3, 20, '街头篮球', 0, '2022-06-30 16:36:12', NULL, '2022-06-30 10:56:41', NULL, 6);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (26, 3, 21, '篮球服', 0, '2022-06-30 10:57:07', NULL, '2022-06-30 10:57:07', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (28, 3, 21, '篮球背包', 0, '2022-06-30 10:58:24', NULL, '2022-06-30 10:58:24', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (30, 2, 8, '运动鞋', 0, '2022-06-30 11:14:44', NULL, '2022-06-30 11:14:44', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (35, 1, 0, '羽毛球专区', 0, '2022-07-04 13:21:44', NULL, '2022-07-04 13:21:44', NULL, 20);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (36, 2, 35, '羽毛球，羽毛球拍', 0, '2022-06-30 15:39:41', NULL, '2022-06-30 15:39:41', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (39, 2, 35, '羽毛球配件', 0, '2022-06-30 11:05:36', NULL, '2022-06-30 11:05:36', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (40, 3, 39, '羽毛球包', 0, '2022-06-30 11:05:20', NULL, '2022-06-30 11:05:20', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (41, 3, 39, '手胶', 0, '2022-06-30 11:05:23', NULL, '2022-06-30 11:05:23', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (42, 3, 13, 'Nike足球鞋', 0, '2022-06-30 11:10:44', NULL, '2022-06-30 11:10:44', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (43, 3, 13, 'Adidas足球鞋', 0, '2022-06-30 11:10:47', NULL, '2022-06-30 11:10:47', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (44, 3, 13, '李宁足球鞋', 0, '2022-06-30 11:10:52', NULL, '2022-06-30 11:10:52', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (45, 3, 13, 'Puma足球鞋', 0, '2022-06-30 11:10:56', NULL, '2022-06-30 11:10:56', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (47, 3, 14, '俱乐部足球服饰', 0, '2022-06-30 16:13:35', NULL, '2022-06-30 11:12:29', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (48, 3, 30, '跑步鞋', 0, '2022-06-30 11:14:25', NULL, '2022-06-30 11:14:25', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (49, 3, 30, '休闲鞋', 0, '2022-06-30 11:14:27', NULL, '2022-06-30 11:14:27', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (50, 3, 30, '板鞋', 0, '2022-06-30 11:14:31', NULL, '2022-06-30 11:14:31', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (51, 3, 30, '滑板鞋', 0, '2022-06-30 11:14:35', NULL, '2022-06-30 11:14:35', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (52, 3, 11, 'T恤背心', 0, '2022-06-30 11:16:25', NULL, '2022-06-30 11:16:25', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (53, 3, 11, '短裤', 0, '2022-06-30 11:16:28', NULL, '2022-06-30 11:16:28', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (54, 3, 11, '长裤', 0, '2022-06-30 11:16:31', NULL, '2022-06-30 11:16:31', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (55, 3, 11, '外套', 0, '2022-06-30 11:16:38', NULL, '2022-06-30 11:16:38', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (58, 3, 36, '入门初级球拍', 0, '2022-06-30 14:33:14', NULL, '2022-06-30 14:33:14', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (59, 3, 36, '进阶级球拍', 0, '2022-06-30 14:33:11', NULL, '2022-06-30 14:33:11', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (60, 3, 36, '专业级球拍', 0, '2022-06-30 14:33:08', NULL, '2022-06-30 14:33:08', NULL, 8);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (61, 3, 36, '明星款球拍', 0, '2022-06-30 14:33:05', NULL, '2022-06-30 14:33:05', NULL, 7);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (62, 3, 36, '羽毛球', 0, '2022-06-30 15:40:56', NULL, '2022-06-30 15:40:56', NULL, 6);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (63, 1, 0, '家电数码手机', 0, '2022-07-04 13:21:22', NULL, '2022-07-04 13:21:22', NULL, 99);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (64, 2, 63, '手机', 0, NULL, NULL, NULL, NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (65, 3, 64, '华为手机', 0, NULL, NULL, NULL, NULL, 20);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (66, 2, 63, '电脑', 0, NULL, NULL, NULL, NULL, 19);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (67, 3, 66, '华为电脑', 0, NULL, NULL, NULL, NULL, 20);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (68, 3, 64, '苹果手机', 0, NULL, NULL, NULL, NULL, 19);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (69, 3, 66, '苹果电脑', 0, NULL, NULL, NULL, NULL, 19);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (70, 2, 63, '耳机', 0, NULL, NULL, NULL, NULL, 18);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (71, 3, 70, 'Airpods', 0, NULL, NULL, NULL, NULL, 20);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (72, 3, 70, '华为耳机', 0, NULL, NULL, NULL, NULL, 19);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (73, 2, 63, '平板', 0, NULL, NULL, NULL, NULL, 5);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (74, 3, 73, '苹果平板', 0, NULL, NULL, NULL, NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (75, 3, 73, '华为平板', 0, NULL, NULL, NULL, NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (76, 2, 63, '音响', 0, NULL, NULL, NULL, NULL, 4);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (77, 3, 76, '华为音响', 0, NULL, NULL, NULL, NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (78, 2, 63, '智能手表', 0, NULL, NULL, NULL, NULL, 3);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (79, 3, 78, '华为智能手表', 0, NULL, NULL, NULL, NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (80, 1, 0, '美妆清洁宠物', 0, '2022-07-04 13:21:34', NULL, '2022-07-04 13:21:35', NULL, 40);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (81, 2, 80, '口红', 0, '2022-07-04 13:22:27', NULL, '2022-07-04 13:22:28', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (82, 2, 80, '睫毛膏', 0, '2022-07-04 13:22:31', NULL, '2022-07-04 13:22:31', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (83, 3, 81, '纪梵希', 0, '2022-07-04 13:23:32', NULL, '2022-07-04 13:23:32', NULL, 10);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (84, 3, 81, '圣罗兰', 0, '2022-07-04 13:23:34', NULL, '2022-07-04 13:23:34', NULL, 9);
INSERT INTO `tb_newbee_mall_goods_category` VALUES (85, 3, 81, '迪奥', 0, '2022-07-04 13:23:38', NULL, '2022-07-04 13:23:38', NULL, 8);

-- ----------------------------
-- Table structure for tb_newbee_mall_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_goods_info`;
CREATE TABLE `tb_newbee_mall_goods_info`  (
  `goods_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_category_id` bigint(20) NULL DEFAULT NULL,
  `goods_cover_img` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_carousel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `original_price` int(10) NULL DEFAULT NULL,
  `selling_price` int(10) NULL DEFAULT NULL,
  `stock_num` int(11) NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_sell_status` tinyint(255) NULL DEFAULT NULL,
  `create_user` int(255) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  `update_user` int(255) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `goods_detail_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_goods_info
-- ----------------------------
INSERT INTO `tb_newbee_mall_goods_info` VALUES (1, '男子轻便跑鞋', '男子跑鞋', 48, 'http://localhost:27019/upload/20220630_14222340.jpg', 'http://localhost:27019/upload/20220630_14222340.jpg', 299, 599, 99, 'tag1', 0, NULL, NULL, NULL, NULL, '<p style=\"text-indent:2em;\">\n	<img src=\"http://localhost:27019/admin/plugins/kindeditor-4.1.10/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" />\n</p>');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (2, '夏季新款缓震网面透气训练跑鞋', '升级冲动科技中底，在保留其强劲会谈的性能上，打造更加柔软轻量的运动表现，助力提升运动表现。', 48, 'http://localhost:27019/upload/20220630_1426539.png', 'http://localhost:27019/upload/20220630_1426539.png', 399, 699, 88, 'tag2', 0, NULL, NULL, NULL, NULL, '升级冲动科技中底，在保留其强劲会谈的性能上，打造更加柔软轻量的运动表现，助力提升运动表现。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (3, '夏季耐磨国潮休闲复古轻便鞋', '鞋面透氧呼吸，保持鞋腔干爽，带来舒适运动体验。', 49, 'http://localhost:27019/upload/20220630_14305415.png', 'http://localhost:27019/upload/20220630_14305415.png', 299, 499, 88, 'tag3', 0, NULL, NULL, NULL, NULL, '一双轻质跑鞋，为舒适而生，轻盈起跑，一路畅跑。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (4, '龙飞凤舞系列厚底休闲鞋', '从战国刺绣珍品龙凤虎绣中汲取创意养分，以现代工艺连接东方传统美学，将传统纹样融入鞋子设计中，以创新概念演绎古典神韵。', 49, 'http://localhost:27019/upload/20220630_14371217.png', 'http://localhost:27019/upload/20220630_14371217.png', 499, 699, 88, 'tag4', 0, NULL, NULL, NULL, NULL, '从战国刺绣珍品龙凤虎绣中汲取创意养分，以现代工艺连接东方传统美学，将传统纹样融入鞋子设计中，以创新概念演绎古典神韵。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (5, '纪元2.0系列新款时尚板鞋', '经典的存在就是用来超越的，不拘于过去，不止于未来，潮流，是你的主场，携手开启新纪元。', 50, 'http://localhost:27019/upload/20220630_14393641.png', 'http://localhost:27019/upload/20220630_14393641.png', 299, 499, 88, 'tag5', 0, NULL, NULL, NULL, NULL, '经典的存在就是用来超越的，不拘于过去，不止于未来，潮流，是你的主场，携手开启新纪元。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (6, 'A道新款低帮复古透气板鞋', '多种配色，任意传达，小心机撞色拼接设计，时尚百搭，质感革面+细腻网布，舒适不闷脚。', 50, 'http://localhost:27019/upload/20220630_1442043.png', 'http://localhost:27019/upload/20220630_1442043.png', 299, 399, 88, 'tag6', 0, NULL, NULL, NULL, NULL, '多种配色，任意传达，小心机撞色拼接设计，时尚百搭，质感革面+细腻网布，舒适不闷脚。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (7, '男子低帮轻便潮流滑板鞋', '掌握百搭公式，拒绝日常穿搭内卷，恣意表达不同风格，自由踏出多元自我。', 51, 'http://localhost:27019/upload/20220630_14451716.png', 'http://localhost:27019/upload/20220630_14451716.png', 199, 399, 88, 'tag7', 0, NULL, NULL, NULL, NULL, '掌握百搭公式，拒绝日常穿搭内卷，恣意表达不同风格，自由踏出多元自我。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (8, '2022春夏新款男士轻便透气百搭滑板鞋', '多材质拼接，日常轻松穿搭，革料拼接鞋面，结合中腰透气MONO网纱，丰富视觉层次，契合日常多元穿搭。', 51, 'http://localhost:27019/upload/20220630_14485258.png', 'http://localhost:27019/upload/20220630_14485258.png', 259, 459, 88, 'tag8', 0, NULL, NULL, NULL, NULL, '多材质拼接，日常轻松穿搭，革料拼接鞋面，结合中腰透气MONO网纱，丰富视觉层次，契合日常多元穿搭。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (9, '男士速干短袖冰丝吸汗健身T恤', '降温短袖，冰爽一夏，快速干燥，吸湿排汗没回发湿热气体，保持皮肤透爽舒适，原理闷湿干燥。', 52, 'http://localhost:27019/upload/20220630_14530250.png', 'http://localhost:27019/upload/20220630_14530250.png', 99, 199, 88, 'tag9', 0, NULL, NULL, NULL, NULL, '多材质拼接，日常轻松穿搭，革料拼接鞋面，结合中腰透气MONO网纱，丰富视觉层次，契合日常多元穿搭。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (10, '夏季男士冰丝短袖薄款运动速干透气T恤', '冰凉透爽，酷爽一夏，透气网布，速干吸汗，轻薄防晒，舒适透气。', 52, 'http://localhost:27019/upload/20220630_14553715.png', 'http://localhost:27019/upload/20220630_14553715.png', 68, 168, 88, 'tag10', 0, NULL, NULL, NULL, '2022-06-30 14:56:16', '冰凉透爽，酷爽一夏，透气网布，速干吸汗，轻薄防晒，舒适透气。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (11, '男子 夏季新款休闲速干健身短裤', '多场景穿搭，高弹力速干面料，反光logo设计。', 53, 'http://localhost:27019/upload/20220630_15002291.png', 'http://localhost:27019/upload/20220630_15002291.png', 45, 99, 88, 'tag11', 0, NULL, NULL, NULL, NULL, '甄选优质四面弹面料，优质速干，透气干爽，吸湿排汗，舒适的穿着体验，彻底告别夏季燥热。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (12, '速干冰丝运动夏季男士宽松短裤', '冰感黑科技，释放冰凉感。', 53, 'http://localhost:27019/upload/20220630_15035861.png', 'http://localhost:27019/upload/20220630_15035861.png', 49, 69, 88, 'tag12', 0, NULL, NULL, NULL, NULL, '轻薄舒爽，拒绝闷热，弹力舒适不紧绷，个性裤脚,图标点缀。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (13, '男子垂坠感简约直筒运动长裤', '吸汗透气，舒适晾干，百搭速干。', 54, 'http://localhost:27019/upload/20220630_15073053.png', 'http://localhost:27019/upload/20220630_15073053.png', 89, 129, 88, 'tag13', 0, NULL, NULL, NULL, NULL, '吸汗透气，舒适晾干，百搭速干。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (14, '冰丝运动裤男士速干长裤', '高弹轻薄，垂坠抗皱，四面弹力纤维，穿着随他不紧绷，弹性良好，畅享运动。', 54, 'http://localhost:27019/upload/20220630_15120756.png', 'http://localhost:27019/upload/20220630_15120756.png', 99, 129, 88, 'tag14', 0, NULL, NULL, NULL, NULL, '高弹轻薄，垂坠抗皱，四面弹力纤维，穿着随他不紧绷，弹性良好，畅享运动。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (15, '绝绝紫防晒运动速干男士外套', '四面弹力，运动自由，防晒科技，不惧炎夏，夜间反光，夜跑安全。', 55, 'http://localhost:27019/upload/20220630_15173172.png', 'http://localhost:27019/upload/20220630_15173172.png', 79, 159, 88, 'tag15', 0, NULL, NULL, NULL, NULL, '四面弹力，运动自由，防晒科技，不惧炎夏，夜间反光，夜跑安全。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (16, '男子防风防泼连帽运动外套', '拒绝闷热，轻薄凉爽，防泼水，科技面料，防风排汗，自由呼吸。', 55, 'http://localhost:27019/upload/20220630_1520159.png', 'http://localhost:27019/upload/20220630_1520159.png', 129, 179, 88, 'tag16', 0, NULL, NULL, NULL, '2022-06-30 15:20:38', '拒绝闷热，轻薄凉爽，防泼水，科技面料，防风排汗，自由呼吸。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (38, '全碳素超轻初级球拍', '轻量化设计，方形拍头设计，碳素拍杆设计，内置T型接头。', 58, 'http://localhost:27019/upload/20220630_15270286.PNG', 'http://localhost:27019/upload/20220630_15270286.PNG', 99, 129, 88, 'tag17', 0, NULL, NULL, NULL, NULL, '轻量化设计，方形拍头设计，碳素拍杆设计，内置T型接头。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (39, '全碳素超轻耐用进攻进阶级球拍', '三角系统设计，增强扣杀能力，较硬的中杆，提示杀球威力。', 59, 'http://localhost:27019/upload/20220630_15301292.png', 'http://localhost:27019/upload/20220630_15301292.png', 259, 429, 88, 'tag18', 0, NULL, NULL, NULL, NULL, '三角系统设计，增强扣杀能力，较硬的中杆，提示杀球威力。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (40, '进攻型耐用专业级球拍', '高强度体积压缩树脂。通过在拍框使用高强度的体积压缩树脂，带来超致密的重量分布设计，使得挥拍更顺畅。', 60, 'http://localhost:27019/upload/20220630_15333352.png', 'http://localhost:27019/upload/20220630_15333352.png', 1099, 1599, 88, 'tag19', 0, NULL, NULL, NULL, NULL, '高强度体积压缩树脂。通过在拍框使用高强度的体积压缩树脂，带来超致密的重量分布设计，使得挥拍更顺畅。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (41, '尤尼克斯碳素耐用明星款球拍', '搭载了全新的内置T型接头，表面凹凸设计使其减少了重量，并增加了与碳素的结合性，有效提升了拍面击球时的稳定性。', 61, 'http://localhost:27019/upload/20220630_15371838.png', 'http://localhost:27019/upload/20220630_15371838.png', 1599, 2099, 88, 'tag20', 0, NULL, NULL, NULL, NULL, '搭载了全新的内置T型接头，表面凹凸设计使其减少了重量，并增加了与碳素的结合性，有效提升了拍面击球时的稳定性。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (42, '室外室内专用训练12只装羽毛球', '飞行稳定，落点精准。每根鸭毛都用心精选。', 62, 'http://localhost:27019/upload/20220630_15523277.png', 'http://localhost:27019/upload/20220630_15523277.png', 25, 39, 88, 'tag21', 0, NULL, NULL, NULL, '2022-06-30 15:52:32', '复合软木球头，毛杆笔直粗壮，高密度线圈，精选优质鸭毛。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (43, 'yonex尤尼克斯羽毛球包男女款6支装矩形方包拍袋便携手提', '聚酯+PU面料，防泼水，耐磨抗，撕裂，侧边鞋仓收纳袋子。', 40, 'http://localhost:27019/upload/20220630_15562877.png', 'http://localhost:27019/upload/20220630_15562877.png', 128, 198, 88, 'tag22', 0, NULL, NULL, NULL, NULL, '聚酯+PU面料，防泼水，耐磨抗，撕裂，侧边鞋仓收纳袋子。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (44, '尤尼克斯羽毛球拍手胶薄款', '手感柔软舒适，经济实惠。', 41, 'http://localhost:27019/upload/20220630_15583742.png', 'http://localhost:27019/upload/20220630_15583742.png', 28, 48, 88, 'tag23', 0, NULL, NULL, NULL, NULL, '手感柔软舒适，经济实惠。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (45, 'Nike官方SUPERFLY耐克刺客男女天然硬质草地足球鞋', 'NikeSuperfly 天然硬质草地足球鞋', 42, 'http://localhost:27019/upload/20220630_16022987.png', 'http://localhost:27019/upload/20220630_16022987.png', 1488, 1998, 88, 'tag24', 0, NULL, NULL, NULL, '2022-06-30 16:02:58', 'NikeSuperfly 天然硬质草地足球鞋，专业设计元素打造新颖造型，助你在比赛中畅享疾速。弹性鞋口提供出色支撑，革新底板，为高速运动中的快速切入塑就出众的瞬时响应能力。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (46, '阿迪达斯GOLETTO VIII TF男女硬人造草坪足球鞋', 'GOLETTO VIII TF 男女硬人造草坪足球鞋', 43, 'http://localhost:27019/upload/20220630_16063237.png', 'http://localhost:27019/upload/20220630_16063237.png', 159, 289, 88, 'tag25', 0, NULL, NULL, NULL, NULL, '无论助攻还是抢断，足球比赛为进球而生。这款球鞋，包含别致的合成鞋面，前掌缝线助力控球，后更衬垫更添舒适。采用凸耳橡胶外底，旨在适合偏硬人造草场。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (47, '李宁袋鼠皮足球鞋铁系列2铁粉男碳板TF碎钉人造草专业比赛训练鞋', '全新TF鞋底设计，进行了区域性鞋钉分布，提供强力的场地适应性', 44, 'http://localhost:27019/upload/20220630_16095422.png', 'http://localhost:27019/upload/20220630_16095422.png', 259, 399, 88, 'tag26', 0, NULL, NULL, NULL, NULL, '全新TF鞋底设计，进行了区域性鞋钉分布，提供强力的场地适应性及抓地性鞋底非受力部位进行轻量化设计，大大降低了鞋身的重量。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (48, 'PUMA 新款男子人造草坪足球鞋碎钉', '人造革鞋面搭配活力图案，突显运动热情。', 45, 'http://localhost:27019/upload/20220630_16121649.png', 'http://localhost:27019/upload/20220630_16121649.png', 169, 2479, 88, 'tag27', 0, NULL, NULL, NULL, NULL, '扁形织物鞋带，牢固不易散，鞋侧添加puma美洲狮logo印花，一眼醒目。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (49, '1980德国队球衣定制复古纪念足球服运动套装男', '聚酯纤维针孔面料，更轻更薄更透气。', 47, 'http://localhost:27019/upload/20220630_16152626.png', 'http://localhost:27019/upload/20220630_16152626.png', 79, 99, 88, 'tag28', 0, NULL, NULL, NULL, NULL, '聚酯纤维针孔面料，更轻更薄更透气。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (50, 'SPANT足球长筒运动比赛训练过膝加厚防滑运动透气吸汗毛巾袜', '足球运动护脚袜', 16, 'http://localhost:27019/upload/20220630_16174723.png', 'http://localhost:27019/upload/20220630_16174723.png', 19, 29, 88, 'tag29', 0, NULL, NULL, NULL, NULL, '全掌能量条设计，增大蹬地爆发力，后掌软弹落地缓冲。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (51, 'SPANT足球比赛守门员运动手套乳胶防滑带护指龙门加厚防护手套', '全乳胶掌面，手背PU材质。', 17, 'http://localhost:27019/upload/20220630_16194285.png', 'http://localhost:27019/upload/20220630_16194285.png', 48, 68, 88, 'tag30', 0, NULL, NULL, NULL, NULL, '全乳胶掌面，手背PU材质。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (52, 'molten摩腾口哨篮球足球裁判专用哨子', '震撼全场，响度高达124DB', 19, 'http://localhost:27019/upload/20220630_16230379.png', 'http://localhost:27019/upload/20220630_16230379.png', 58, 98, 88, 'tag31', 0, NULL, NULL, NULL, NULL, '精准定音，足球专用。哨音尖锐嘹亮，响彻全场。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (53, '欧雷德足球包袋双肩背包', '轻松便携，运动无忧。', 18, 'http://localhost:27019/upload/20220630_16344838.png', 'http://localhost:27019/upload/20220630_16344838.png', 25, 45, 88, 'tag32', 0, NULL, NULL, NULL, NULL, '轻松便携，运动无忧。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (54, '李宁CBA联赛经典发泡橡胶深蓝篮球', '一人一球，一份简单的快乐。', 22, 'http://localhost:27019/upload/20220630_16380555.png', 'http://localhost:27019/upload/20220630_16380555.png', 58, 98, 88, 'tag33', 0, NULL, NULL, NULL, NULL, '一人一球，一份简单的快乐。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (55, '篮球标准7号七号球青少年专用街头户外野球', '人球合一，霸气控场', 25, 'http://localhost:27019/upload/20220630_16444241.png', 'http://localhost:27019/upload/20220630_16444241.png', 129, 199, 88, 'tag33', 0, NULL, NULL, NULL, NULL, '人球合一，霸气控场');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (56, 'NBA球衣勇士队篮球服复古版30号库里11号汤普森篮球衣球迷版背心', '更速干，运动更畅快。', 26, 'http://localhost:27019/upload/20220630_16464156.png', 'http://localhost:27019/upload/20220630_16464156.png', 118, 188, 88, 'tag34', 0, NULL, NULL, NULL, NULL, '更速干，运动更畅快。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (57, '篮球包双肩单肩专业运动抽绳背包', '加厚防水牛津布，坚固肩带扣。', 28, 'http://localhost:27019/upload/20220630_1649365.png', 'http://localhost:27019/upload/20220630_1649365.png', 49, 79, 88, 'tag34', 0, NULL, NULL, NULL, '2022-07-01 14:17:37', '加厚防水牛津布，坚固肩带扣。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (58, 'HUAWEI P50 Pocket 4G全网通 超光谱影像系统 创新双屏操作体验 P50宝盒 12GB+512GB鎏光金华为折叠屏手机', '掌间万象，美学升华。', 65, 'http://localhost:27019/upload/20220704_10413156.png', 'http://localhost:27019/upload/20220704_10413156.png', 10988, 10988, 88, 'tag50', 0, NULL, NULL, NULL, NULL, '掌间万象，美学升华。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (59, '华为笔记本电脑MateBook X Pro 2022', '原色全面屏，轻薄金属机身。超级终端，一拉即合。全新压力触控板，四重散热，性能释放翻倍。', 67, 'http://localhost:27019/upload/20220704_10441621.png', 'http://localhost:27019/upload/20220704_10441621.png', 10499, 10499, 88, 'tag51', 0, NULL, NULL, NULL, NULL, '原色全面屏，轻薄金属机身。超级终端，一拉即合。全新压力触控板，四重散热，性能释放翻倍。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (60, 'Apple iPhone 13 (A2634) 256GB 粉色', '解锁超能力，显示屏和设计超明亮，超绚丽，超锐利。', 68, 'http://localhost:27019/upload/20220704_10461479.png', 'http://localhost:27019/upload/20220704_10461479.png', 6799, 6799, 88, 'tag52', 0, NULL, NULL, NULL, NULL, '解锁超能力，显示屏和设计超明亮，超绚丽，超锐利。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (61, 'HUAWEI P50 Pro 4G全网通 8GB+512GB可可茶金', '万象双环设计，美学新生。超级主摄单元，将艺术融进日常。', 65, 'http://localhost:27019/upload/20220704_10480063.png', 'http://localhost:27019/upload/20220704_10480063.png', 7488, 7488, 88, 'tag53', 0, NULL, NULL, NULL, NULL, '万象双环设计，美学新生。超级主摄单元，将艺术融进日常。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (62, 'MacBook Pro 16英寸 M1 Pro芯片', '超速M1pro，M1Max芯片，带来颠覆性表现和惊人续航。炫目的Liquid视网膜XDR显示屏，以及各类强大端口也都整装就位。', 69, 'http://localhost:27019/upload/20220704_10504461.jpeg', 'http://localhost:27019/upload/20220704_10504461.jpeg', 18999, 18999, 88, 'tag54', 0, NULL, NULL, NULL, NULL, '超速M1pro，M1Max芯片，带来颠覆性表现和惊人续航。炫目的Liquid视网膜XDR显示屏，以及各类强大端口也都整装就位。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (63, 'Apple AirPods (第三代)', '美妙新声。拥有让声音环绕在你周围的空间音频，让音乐为你量耳定制的自适应均衡，以及更持久的续航。', 71, 'http://localhost:27019/upload/20220704_10555159.jpeg', 'http://localhost:27019/upload/20220704_10555159.jpeg', 1399, 1399, 88, 'tag55', 0, NULL, NULL, NULL, NULL, '美妙新声。拥有让声音环绕在你周围的空间音频，让音乐为你量耳定制的自适应均衡，以及更持久的续航。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (64, 'HUAWEI Mate 40 Pro 全网通5G手机 8GB+512GB（黄色）', '非凡性能，强“芯”才有大智慧。非凡设计，科技缔造艺术之美。', 65, 'http://localhost:27019/upload/20220704_10572610.png', 'http://localhost:27019/upload/20220704_10572610.png', 6488, 6488, 88, 'tag56', 0, NULL, NULL, NULL, NULL, '非凡性能，强“芯”才有大智慧。非凡设计，科技缔造艺术之美。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (65, 'Apple iPhone12 Pro (A2408) 128GB 海蓝色 支持移动联通电信5G 双卡双待手机', '自我再飞跃，创新设计，拓展至边沿，芯片界的新篇章。', 68, 'http://localhost:27019/upload/20220704_11000794.png', 'http://localhost:27019/upload/20220704_11000794.png', 8499, 8499, 88, 'tag57', 0, NULL, NULL, NULL, NULL, '自我再飞跃，创新设计，拓展至边沿，芯片界的新篇章。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (66, '华为 HUAWEI P40 冰霜银 全网通5G手机', '高级内敛，全时段超清，全焦段高清，深度科技，全环境高速，全天候高能。', 65, 'http://localhost:27019/upload/20220704_11014252.png', 'http://localhost:27019/upload/20220704_11014252.png', 4299, 4299, 88, 'tag58', 0, NULL, NULL, NULL, NULL, '高级内敛，全时段超清，全焦段高清，深度科技，全环境高速，全天候高能。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (67, 'HUAWEI P50 雪域白', '超级变焦单元，远景皆是精彩，有细节的自拍，才更有戏。', 65, 'http://localhost:27019/upload/20220704_11033065.png', 'http://localhost:27019/upload/20220704_11033065.png', 4488, 4488, 88, 'tag59', 0, NULL, NULL, NULL, NULL, '超级变焦单元，远景皆是精彩，有细节的自拍，才更有戏。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (68, '华为FreeBuds Pro无线耳机', '智慧动态降噪，人声透传模式，全场景设备双链接，非凡音质，稳态动圈。', 72, 'http://localhost:27019/upload/20220704_11045417.png', 'http://localhost:27019/upload/20220704_11045417.png', 749, 749, 88, 'tag60', 0, NULL, NULL, NULL, NULL, '智慧动态降噪，人声透传模式，全场景设备双链接，非凡音质，稳态动圈。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (69, 'Apple iPhone 13 Pro 远峰蓝色', '超视网膜XDR显示屏，支持ProMotion自适应刷新率，画面流畅，响应灵敏；Pro级摄像头系统强悍提升，打开了摄影的新天地。', 68, 'http://localhost:27019/upload/20220704_11065124.png', 'http://localhost:27019/upload/20220704_11065124.png', 7999, 7999, 88, 'tag61', 0, NULL, NULL, NULL, NULL, '超视网膜XDR显示屏，支持ProMotion自适应刷新率，画面流畅，响应灵敏；Pro级摄像头系统强悍提升，打开了摄影的新天地。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (70, 'HUAWEI Mate 40 Pro 全网通5G手机 8GB+512GB（秘银色）', '非凡影像，超感知徕卡电影影像。', 65, 'http://localhost:27019/upload/20220704_11080947.png', 'http://localhost:27019/upload/20220704_11080947.png', 6488, 6488, 88, 'tag61', 0, NULL, NULL, NULL, NULL, '非凡影像，超感知徕卡电影影像。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (71, 'HUAWEI MatePad Pro 12.6英寸', '旗舰芯片，更高性能。OLED全面屏，大有看点。', 75, 'http://localhost:27019/upload/20220704_13123126.png', 'http://localhost:27019/upload/20220704_13123126.png', 4699, 4699, 88, 'tag65', 0, NULL, NULL, NULL, NULL, '旗舰芯片，更高性能。OLED全面屏，大有看点。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (72, '华为 HUAWEI Sound X 2021', '一台音响就是一个交响乐队。', 77, 'http://localhost:27019/upload/20220704_13162942.png', 'http://localhost:27019/upload/20220704_13162942.png', 2199, 2199, 87, 'tag66', 0, NULL, NULL, NULL, NULL, '一台音响就是一个交响乐队。');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (73, 'HUAWEI WATCH 3 Pro智能手表', '钛金属材质，独立通话，强劲续航，心脏与呼吸健康管理', 79, 'http://localhost:27019/upload/20220704_13183749.png', 'http://localhost:27019/upload/20220704_13183749.png', 3899, 3899, 88, 'tag67', 0, NULL, NULL, NULL, NULL, '钛金属材质，独立通话，强劲续航，心脏与呼吸健康管理');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (74, '纪梵希高定香榭天鹅绒唇膏306', '纪梵希高定香榭天鹅绒唇膏306', 83, 'http://localhost:27019/upload/20220704_13244397.jpg', 'http://localhost:27019/upload/20220704_13244397.jpg', 355, 355, 88, 'tag69', 0, NULL, NULL, NULL, NULL, '<span style=\"color:#333333;font-family:Avenir, Helvetica, Arial, sans-serif;font-size:25.92px;\">纪梵希高定香榭天鹅绒唇膏306</span>');
INSERT INTO `tb_newbee_mall_goods_info` VALUES (75, '迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红', '迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红', 85, 'http://localhost:27019/upload/20220704_13253751.jpg', 'http://localhost:27019/upload/20220704_13253751.jpg', 315, 315, 88, 'tag70', 0, NULL, NULL, NULL, NULL, '迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红');

-- ----------------------------
-- Table structure for tb_newbee_mall_index_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_index_config`;
CREATE TABLE `tb_newbee_mall_index_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `config_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config_type` tinyint(4) NULL DEFAULT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `redirect_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config_rank` int(11) NULL DEFAULT NULL,
  `is_deleted` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `create_user` int(11) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `update_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_newbee_mall_index_config
-- ----------------------------
INSERT INTO `tb_newbee_mall_index_config` VALUES (5, '414', 4, 1, '##44', 1, '1', '2022-07-01 08:23:56', NULL, '2022-07-01 08:23:56', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (8, '414', 4, 17, '##71', 4, '1', '2022-07-01 08:23:56', NULL, '2022-07-01 08:23:56', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (9, '525', 5, 0, '##72', 0, '1', '2022-07-01 08:25:53', NULL, '2022-07-01 08:25:53', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (10, '球鞋', 4, 3, '452', 3, '1', '2022-07-01 08:23:56', NULL, '2022-07-01 08:23:56', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (11, '龙飞凤舞系列厚底休闲鞋', 3, 4, 'http://localhost:27019/upload/20220630_14371217.png', 10, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (12, '夏季男士冰丝短袖薄款运动速干透气T恤', 3, 10, 'http://localhost:27019/upload/20220630_14553715.png', 9, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (13, '纪元系列新款时尚板鞋', 3, 5, 'http://localhost:27019/upload/20220630_14393641.png', 7, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (14, '男子 夏季新款休闲速干健身短裤', 3, 11, 'http://localhost:27019/upload/20220630_15002291.png', 7, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (15, '冰丝运动裤男士速干长裤', 3, 14, 'http://localhost:27019/upload/20220630_15120756.png', 6, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (16, '绝绝紫防晒运动速干男士外套', 3, 15, 'http://localhost:27019/upload/20220630_15173172.png', 5, '1', '2022-07-04 12:51:19', NULL, '2022-07-04 12:51:19', NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (17, 'HUAWEIP50Pocket4G', 4, 58, 'http://localhost:8080/#/product/10925', 10, '0', '2022-07-04 13:03:44', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (18, 'MateBookXPro2022', 4, 59, 'http://localhost:8080/#/product/10926', 9, '0', '2022-07-04 13:04:38', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (19, 'iPhone13', 4, 60, 'http://localhost:8080/#/product/10915', 8, '0', '2022-07-04 13:05:31', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (20, 'MacBookPro16', 4, 62, 'http://localhost:8080/#/product/10920', 7, '0', '2022-07-04 13:06:02', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (21, 'HUAWEI P50 雪域白', 5, 67, 'http://localhost:8080/#/product/10922', 10, '0', '2022-07-04 13:07:38', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (22, '华为FreeBuds Pro无线耳机', 5, 68, 'http://localhost:8080/#/product/10930', 9, '0', '2022-07-04 13:08:10', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (23, 'iPhone13Pro远峰蓝色', 5, 69, 'http://localhost:8080/#/product/10916', 8, '0', '2022-07-04 13:09:00', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (24, 'MatePadPro12寸', 5, 71, 'http://localhost:8080/#/product/10927', 7, '0', '2022-07-04 13:10:29', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (25, 'AppleAirPodsPro', 3, 63, 'http://localhost:8080/#/product/10918', 49, '0', '2022-07-04 13:01:07', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (26, 'HUAWEIMate40Pro', 3, 70, 'http://localhost:8080/#/product/10908', 48, '0', '2022-07-04 13:01:19', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (27, 'AppleiPhone12Pro', 3, 65, 'http://localhost:8080/#/product/10906', 47, '0', '2022-07-04 13:01:30', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (28, '华为HUAWEIP40冰霜银', 3, 66, 'http://localhost:8080/#/product/10902', 46, '0', '2022-07-04 13:01:42', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (29, 'HUAWEIP50Pro4G', 4, 61, 'http://localhost:8080/#/product/10921', 5, '0', '2022-07-04 13:07:00', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (30, 'MacBookPro16英寸', 5, 62, 'http://localhost:8080/#/product/10920', 6, '0', '2022-07-04 13:13:37', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (31, 'HUAWEISoundX2021', 5, 72, '华为 HUAWEI Sound X 2021', 6, '0', '2022-07-04 13:19:39', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (32, 'HUAWEIWATCH3Pro', 5, 73, 'http://localhost:8080/#/product/10928', 5, '0', '2022-07-04 13:19:29', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (33, '纪梵希高定香榭天鹅绒唇膏306', 5, 74, 'http://localhost:8080/#/product/10233', 5, '0', '2022-07-04 13:27:28', NULL, NULL, NULL);
INSERT INTO `tb_newbee_mall_index_config` VALUES (34, 'HUAWEIMate40Pro', 5, 70, 'http://localhost:8080/#/product/10907', 4, '0', '2022-07-04 13:27:36', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_newbee_mall_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order`;
CREATE TABLE `tb_newbee_mall_order`  (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `total_price` int(11) NULL DEFAULT NULL,
  `pay_status` tinyint(4) NULL DEFAULT NULL,
  `pay_type` tinyint(4) NULL DEFAULT NULL,
  `pay_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `order_status` tinyint(4) NULL DEFAULT NULL,
  `extra_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order
-- ----------------------------
INSERT INTO `tb_newbee_mall_order` VALUES (1, '1', 1, 998, 2, 2, '2022-07-01 14:19:46', 3, NULL, 0, '2022-06-30 16:54:39', '2022-07-01 14:19:46');
INSERT INTO `tb_newbee_mall_order` VALUES (2, '2', 1, 488, 1, 1, '2022-06-13 16:55:29', 2, NULL, 0, '2022-06-30 16:55:34', '2022-06-30 16:55:37');
INSERT INTO `tb_newbee_mall_order` VALUES (3, '3', 2, 588, 0, 0, NULL, 0, NULL, 0, '2022-06-30 17:00:15', '2022-06-30 17:00:17');

-- ----------------------------
-- Table structure for tb_newbee_mall_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_order_item`;
CREATE TABLE `tb_newbee_mall_order_item`  (
  `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NULL DEFAULT NULL,
  `goods_id` bigint(20) NULL DEFAULT NULL,
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `selling_price` int(10) NULL DEFAULT NULL,
  `goods_count` int(255) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_order_item
-- ----------------------------
INSERT INTO `tb_newbee_mall_order_item` VALUES (1, 1, 1, '李宁袋鼠皮足球鞋铁系列2铁粉男碳板TF碎钉人造草专业比赛训练鞋', '', NULL, 2, '2022-06-30 16:58:56');
INSERT INTO `tb_newbee_mall_order_item` VALUES (2, 2, 2, '尤尼克斯羽毛球拍手胶薄款', NULL, NULL, 1, '2022-06-30 16:59:44');
INSERT INTO `tb_newbee_mall_order_item` VALUES (3, 3, 3, 'PUMA 新款男子人造草坪足球鞋碎钉', NULL, NULL, 1, '2022-06-30 17:01:05');

-- ----------------------------
-- Table structure for tb_newbee_mall_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_newbee_mall_user`;
CREATE TABLE `tb_newbee_mall_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password_md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce_sign` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_deleted` tinyint(255) NULL DEFAULT 0,
  `locked_flag` tinyint(255) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_newbee_mall_user
-- ----------------------------
INSERT INTO `tb_newbee_mall_user` VALUES (1, 'nick', 'upward', 's654f4x64a654f66136', '123456', 0, 1, '2022-06-30 16:51:55');
INSERT INTO `tb_newbee_mall_user` VALUES (3, 'nano', 'backword', 'a4654fsg15as446549', '123456', 0, 1, '2022-06-29 16:53:01');
INSERT INTO `tb_newbee_mall_user` VALUES (4, 'gige', 'distinct', '5466s545s6466f487s', '123456', 0, 0, '2022-06-21 16:53:51');
INSERT INTO `tb_newbee_mall_user` VALUES (5, 'Shell', '13514039758', 'dasd6asf65s4f6asf6as54f', '123456', 1, 0, '2022-07-01 08:35:55');
INSERT INTO `tb_newbee_mall_user` VALUES (6, 'Sam', '18065111203', '57f20f88233b617331ec7488e5a4a00214f5c94c', '123456', 0, 0, '2022-07-01 08:36:35');

SET FOREIGN_KEY_CHECKS = 1;
