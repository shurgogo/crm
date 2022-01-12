/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/02/2021 18:58:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_cus_dev_plan
-- ----------------------------
DROP TABLE IF EXISTS `t_cus_dev_plan`;
CREATE TABLE `t_cus_dev_plan`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sale_chance_id` int(0) NULL DEFAULT NULL,
  `plan_item` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plan_date` datetime(0) NULL DEFAULT NULL,
  `exe_affect` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_t_cus_dev_plan`(`sale_chance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 136 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_cus_dev_plan
-- ----------------------------
INSERT INTO `t_cus_dev_plan` VALUES (69, 128, 'test01', '2021-02-14 12:09:44', 'test01', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (70, 128, 'test02', '2021-02-14 12:09:44', 'test02', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (71, 97, 'test03', '2021-02-14 12:09:44', 'test03', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (72, 97, 'test06', '2021-02-14 12:09:44', 'test06', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (73, 97, 'test05', '2021-02-14 12:09:44', 'test05', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (74, 97, '123424', '2021-02-14 12:09:44', '234324', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (75, 97, '123213', '2021-02-14 12:09:44', '21321', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (76, 56, 'test', '2021-02-14 12:09:44', 'qqqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (77, 56, '345435', '2021-02-14 12:09:44', '345435', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (78, 56, '456546', '2021-02-14 12:09:44', '456546', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (79, 56, '567657', '2021-02-14 12:09:44', '567657', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (80, 62, 'test20', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (81, 62, '234343', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (82, 62, '345435', '2021-02-14 12:09:44', '345435', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (83, 62, '345435', '2021-02-14 12:09:44', '345435', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (84, 55, '111', '2021-02-14 12:09:44', 'qqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', NULL);
INSERT INTO `t_cus_dev_plan` VALUES (85, 66, '111', '2021-02-14 12:09:44', 'qqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (86, 66, '111', '2021-02-14 12:09:44', 'qqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (87, 66, '111', '2021-02-14 12:09:44', 'qqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (88, 66, '111', '2021-02-14 12:09:44', 'qqq', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (89, 66, '3434543', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (90, 66, '34353', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (91, 66, '678678', '2021-02-14 12:09:44', '678678', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (92, 66, 'aaaa', '2021-02-14 12:09:44', '678678', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (93, 66, 'abc', '2021-02-14 12:09:44', '678678', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (94, 66, '客户即将开发成功', '2021-02-14 12:09:44', 'very good', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (95, 66, '请客吃饭', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (96, 66, 'test02', '2021-02-14 12:09:44', 'test02', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (97, 67, 'test', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (98, 67, 'test02', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (99, 67, 'test03', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (100, 67, 'test04', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (101, 67, 'test05', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (102, 67, 'test07', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (103, 67, '请老王吃饭', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (104, 73, '133', '2021-02-14 12:09:44', '1', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (105, 73, '3', '2021-02-14 12:09:44', '3', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (106, 56, 'test', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (107, 56, 'test', '2021-02-14 12:09:44', '123213', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (108, 56, 'test002', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (109, 56, 'test00001', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (110, 56, 'aaaa', '2021-02-14 12:09:44', 'ok', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (111, 97, '请客吃饭', '2021-02-14 12:09:44', '满意', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (112, 97, 'test', '2021-02-14 12:09:44', 'test', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (113, 97, 'test01', '2021-02-14 12:09:44', 'test01', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (114, 97, 'test02', '2021-02-14 12:09:44', 'test02', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (115, 98, '客户见面', '2021-02-14 12:09:44', '总体ok ，等待下一步沟通', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (116, 98, 'test01', '2021-02-14 12:09:44', 'test', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (117, 98, 'test02', '2021-02-14 12:09:44', 'test02', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (118, 98, '产品购买', '2021-02-14 12:09:44', '成交', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (119, 98, '产品购买', '2021-02-14 12:09:44', '成功', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (120, 96, 'test', '2021-02-14 12:09:44', 'test', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (121, 96, 'test05', '2021-02-14 12:09:44', 'test05', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (122, 93, 'test01', '2021-02-14 12:09:44', 'test01', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (123, 93, 'test', '2021-02-14 12:09:44', 'test', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (124, 124, 'test', '2021-02-14 12:09:44', 'test23423', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (125, 98, 'test', '2021-02-14 12:09:44', 'testasd', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (126, 98, 'test', '2021-02-14 12:09:44', 'test23423', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (127, 124, 'test', '2021-02-14 12:09:44', 'test23423', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (128, 97, 'test', '2021-02-14 12:09:44', 'test23423', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (129, 128, 'test03', '2021-02-14 12:09:44', NULL, '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (130, 97, '123456789', '2021-02-14 12:09:44', '满意', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (131, 97, '测试', '2021-02-14 12:09:44', '满意', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (132, 128, '测试', '2021-02-14 12:09:44', '满意', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (133, 130, '计划A', '2021-02-14 12:09:44', '执行成功', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);
INSERT INTO `t_cus_dev_plan` VALUES (134, 130, '计划B', '2021-02-14 12:09:44', NULL, '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (135, 130, '计划c', '2021-02-14 12:09:44', '', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 0);
INSERT INTO `t_cus_dev_plan` VALUES (136, 135, '计划test', '2021-02-14 12:09:44', '执行成功', '2021-02-14 11:57:47', '2021-02-14 11:57:47', 1);

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `khno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `myd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xyd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `web_site` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yyzzzch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fr` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zczj` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nyye` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khyh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `khzh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gsdjh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES (1, 'KH21321321', '北京大牛科技', '北京', 'test', '战略合作伙伴', '☆☆☆', '☆☆☆', '北京海淀区双榆树东里15号', '100027', '010-62263393', '010-62263393', 'www.daniu.com', '420103000057404', '赵飞翔', '1000', '5000', '中国银行', '6225231243641', '4422214321321', '4104322332', 1, 1, '2020-07-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (2, 'KH20150526073022', '风驰科技', '北京', 'test', '大客户', '☆☆☆☆', '☆☆☆☆', '321', '21', '321', '321', '321', '321', '码云', '', '21', '321', '321', '321', '3213', 1, 1, '2020-01-14 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (20, 'KH201709181013450', '腾讯', '测试', 'test', '大客户', '☆☆☆☆☆', '☆☆☆☆', '', '', '13327792156', '', '', NULL, '赵飞翔', '', '', '', '', '', '', 0, 1, '2020-01-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (21, 'KH201709181112739', '阿里巴巴', '北京', 'test01', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浙江杭州', '324324', '23424324324', '2343', 'www.alibaba.com', '232432', '码云', '100', '100000', '杭州', '23432432', '4324324', '234324234', 1, 1, '2020-01-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (22, 'KH20171021105508617', '中国工商银行', '上海', 'test', '战略合作伙伴', '☆☆☆☆☆', '☆☆☆☆☆', '浦东', '201600', '18920156732', '12312321', 'www.icbc.com', '12323', '耿鹏', '1000000', '100000', '工商', '212321', '', '', 1, 1, '2020-01-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (23, 'KH20180115104723756', '百度', '北京', 'test', '战略合作伙伴', '☆☆☆☆', '☆☆☆☆☆', '北京西二旗', '100000', '2321321', '213123', '123213', '2321321', '李彦宏', '10000', '100000', '工商', '121321313', '', '', 1, 1, '2020-01-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (24, 'KH20180504112003301', '小米科技', '上海', 'test', '重点开发客户', '☆☆☆☆☆', '☆☆☆☆☆', '北京市海淀区清河中街68号华润五彩城购物中心二期13层', '1000000', '010-12345678', '123123131', 'www.xiaomi.com', '110108012660422', '雷军', '185000', '5000000', '中国银行', '99999999999', '91110108551385082Q', '91110108551385082Q', 0, 1, '2020-01-01 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (33, 'KH1608171551613', '阿里', '123', '1123', '大客户', NULL, '123', '123', '888888', '15687552486', '123', '123', NULL, '李四', '123', NULL, '123', '123', '123', '123', 1, 1, '2020-01-14 11:58:22', '2021-02-14 11:58:22');
INSERT INTO `t_customer` VALUES (34, 'KH1613570892063', '网易科技', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13326502369', NULL, NULL, NULL, 'abc', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-02-17 22:08:12', '2021-02-17 22:08:12');
INSERT INTO `t_customer` VALUES (35, 'KH1613571158493', '网易', '', '', '大客户', NULL, '', '', '524500', '13060605970', '', '', NULL, 'cde', '', NULL, '', '', '', '', 0, 1, '2021-02-17 22:12:38', '2021-02-17 22:36:13');
INSERT INTO `t_customer` VALUES (36, 'KH1613840097148', 'test1', '', '', '战略合作伙伴', NULL, '', '', '', '13060605975', '', '', NULL, 'aaa', '', NULL, '', '', '', '', 0, 1, '2021-02-21 00:54:57', '2021-02-21 00:55:08');
INSERT INTO `t_customer` VALUES (37, 'KH1613840129754', 'test2', '', '', '战略合作伙伴', NULL, '', '', '', '13060605977', '', '', NULL, 'aer', '', NULL, '', '', '', '', 0, 1, '2021-02-21 00:55:30', '2021-02-21 00:55:30');
INSERT INTO `t_customer` VALUES (38, 'KH1613840154987', 'test3', '', '', '重点开发客户', NULL, '', '', '', '13060605977', '', '', NULL, 'dfd', '', NULL, '', '', '', '', 0, 1, '2021-02-21 00:55:55', '2021-02-21 00:55:55');
INSERT INTO `t_customer` VALUES (39, 'KH1613842750764', 'test4', '', '', '战略合作伙伴', NULL, '', '', '', '13060605977', '', '', NULL, 'trt', '', NULL, '', '', '', '', 0, 1, '2021-02-21 01:39:11', '2021-02-21 01:39:11');
INSERT INTO `t_customer` VALUES (40, 'KH1613842767533', 'test6', '', '', '战略合作伙伴', NULL, '', '', '', '13060605977', '', '', NULL, 'cvc', '', NULL, '', '', '', '', 0, 1, '2021-02-21 01:39:28', '2021-02-21 01:39:28');

-- ----------------------------
-- Table structure for t_customer_contact
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_contact`;
CREATE TABLE `t_customer_contact`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cus_id` int(0) NULL DEFAULT NULL,
  `contact_time` datetime(0) NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `overview` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_contact
-- ----------------------------
INSERT INTO `t_customer_contact` VALUES (1, 1, '2021-02-14 12:07:21', '1', '2', '2021-02-14 11:58:40', '2021-02-14 11:58:40', 1);
INSERT INTO `t_customer_contact` VALUES (2, 1, '2021-02-14 12:07:21', '12', '22', '2021-02-14 11:58:40', '2021-02-14 11:58:40', 1);
INSERT INTO `t_customer_contact` VALUES (3, 1, '2021-02-14 12:07:21', '珠江路2', '吃饭2', '2021-02-14 11:58:40', '2021-02-14 11:58:40', 1);
INSERT INTO `t_customer_contact` VALUES (4, 1, '2021-02-14 12:07:21', '112', '233', '2021-02-14 11:58:40', '2021-02-14 11:58:40', 0);
INSERT INTO `t_customer_contact` VALUES (5, 1, '2021-02-14 12:07:21', '师德师风', '阿德的', '2021-02-14 11:58:40', '2021-02-14 11:58:40', 1);

-- ----------------------------
-- Table structure for t_customer_linkman
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_linkman`;
CREATE TABLE `t_customer_linkman`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cus_id` int(0) NULL DEFAULT NULL,
  `link_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhiwei` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `office_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `ceate_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_linkman
-- ----------------------------

-- ----------------------------
-- Table structure for t_customer_loss
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_loss`;
CREATE TABLE `t_customer_loss`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cus_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_order_time` date NULL DEFAULT NULL,
  `confirm_loss_time` date NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `loss_reason` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 419 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_loss
-- ----------------------------
INSERT INTO `t_customer_loss` VALUES (413, 'KH21321321', '北京大牛科技', 'test', NULL, NULL, 0, '公司转型', 1, '2021-02-18 20:26:06', '2021-02-18 20:26:06');
INSERT INTO `t_customer_loss` VALUES (414, 'KH20150526073022', '风驰科技', 'test', NULL, '2021-02-18', 1, '公司理念 不符', 1, '2021-02-18 20:26:06', '2021-02-18 23:55:10');
INSERT INTO `t_customer_loss` VALUES (415, 'KH201709181112739', '阿里巴巴', 'test01', NULL, NULL, 0, NULL, 1, '2021-02-18 20:26:06', '2021-02-18 20:26:06');
INSERT INTO `t_customer_loss` VALUES (416, 'KH20171021105508617', '中国工商银行', 'test', NULL, NULL, 0, NULL, 1, '2021-02-18 20:26:06', '2021-02-18 20:26:06');
INSERT INTO `t_customer_loss` VALUES (417, 'KH20180115104723756', '百度', 'test', NULL, '2021-02-18', 1, '倒闭', 1, '2021-02-18 20:26:06', '2021-02-18 23:56:13');
INSERT INTO `t_customer_loss` VALUES (418, 'KH1608171551613', '阿里', '1123', NULL, NULL, 0, NULL, 1, '2021-02-18 20:26:06', '2021-02-18 20:26:06');

-- ----------------------------
-- Table structure for t_customer_order
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_order`;
CREATE TABLE `t_customer_order`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cus_id` int(0) NULL DEFAULT NULL,
  `order_no` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_date` datetime(0) NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_order
-- ----------------------------
INSERT INTO `t_customer_order` VALUES (5, 20, '201910021001', '2021-01-23 14:56:10', '上海松江区', 1, '2021-02-14 11:59:25', '2021-02-14 11:59:25', 1);
INSERT INTO `t_customer_order` VALUES (6, 20, '202001022534', '2020-01-16 14:56:26', '杭州市滨江大道', 1, '2021-02-14 11:59:25', '2021-02-14 11:59:25', 1);
INSERT INTO `t_customer_order` VALUES (7, 24, '201911021082', '2021-01-02 17:27:31', '上海浦东', 1, '2021-02-14 11:59:25', '2021-02-14 11:59:25', 1);

-- ----------------------------
-- Table structure for t_customer_reprieve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_reprieve`;
CREATE TABLE `t_customer_reprieve`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `loss_id` int(0) NULL DEFAULT NULL,
  `measure` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_reprieve
-- ----------------------------
INSERT INTO `t_customer_reprieve` VALUES (44, 413, '请客户洗脚', 1, '2021-02-14 11:59:49', '2021-02-18 22:42:14');
INSERT INTO `t_customer_reprieve` VALUES (45, 413, '客户请客', 1, '2021-02-14 11:59:49', '2021-02-14 11:59:49');
INSERT INTO `t_customer_reprieve` VALUES (47, 401, '请马云吃顿饭_河马生鲜', 1, '2021-02-14 11:59:49', '2021-02-14 11:59:49');
INSERT INTO `t_customer_reprieve` VALUES (49, 402, '请老马喝喝茶，聊聊天', 1, '2021-02-14 11:59:49', '2021-02-14 11:59:49');
INSERT INTO `t_customer_reprieve` VALUES (50, 402, '请客吃饭', 1, '2021-02-14 11:59:49', '2021-02-14 11:59:49');
INSERT INTO `t_customer_reprieve` VALUES (67, 417, '吃饭', 1, '2021-02-14 11:59:49', '2021-02-14 11:59:49');
INSERT INTO `t_customer_reprieve` VALUES (68, 413, '请客户吃饭', 1, '2021-02-18 22:39:48', '2021-02-18 22:39:48');
INSERT INTO `t_customer_reprieve` VALUES (69, 413, '请客户吃饭', 1, '2021-02-18 22:46:29', '2021-02-18 22:46:48');

-- ----------------------------
-- Table structure for t_customer_serve
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_serve`;
CREATE TABLE `t_customer_serve`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `serve_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `overview` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_request` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_people` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assigner` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_time` datetime(0) NULL DEFAULT NULL,
  `service_proce` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_proce_people` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_proce_time` datetime(0) NULL DEFAULT NULL,
  `service_proce_result` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `myd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `flag` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_customer_serve
-- ----------------------------
INSERT INTO `t_customer_serve` VALUES (85, '6', '', '腾讯', 'fw_005', '氪金', 'admin', '10', '2021-02-21 15:55:00', '处理成功', 'admin', '2021-02-22 17:32:20', '非常有效率', '☆☆☆☆☆', 1, '2021-02-22 18:29:50', '2021-02-20 15:48:45', 1);
INSERT INTO `t_customer_serve` VALUES (86, '7', '', '腾讯', 'fw_005', '建议test2', 'admin', '11', '2021-02-22 18:37:52', '已收到，尽快处理', '李四', '2021-02-22 18:43:55', '一般般', '☆☆☆', 1, '2021-02-22 18:44:09', '2021-02-20 16:01:52', 1);
INSERT INTO `t_customer_serve` VALUES (87, '6', 'test', '小米科技', 'fw_005', 'test', 'admin', '10', '2021-02-21 17:14:26', '处理成功', 'admin', '2021-02-22 18:36:59', '非常不满意', '☆', 1, '2021-02-22 18:37:15', '2021-02-21 13:54:57', 1);
INSERT INTO `t_customer_serve` VALUES (88, '8', 'test', '网易', 'fw_001', 'test', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-02-21 13:55:22', '2021-02-21 13:55:22', 1);

-- ----------------------------
-- Table structure for t_datadic
-- ----------------------------
DROP TABLE IF EXISTS `t_datadic`;
CREATE TABLE `t_datadic`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `data_dic_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_dic_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` tinyint(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_t_datadic`(`data_dic_value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_datadic
-- ----------------------------
INSERT INTO `t_datadic` VALUES (1, '客户等级', '普通客户', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (2, '客户等级', '重点开发客户', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (3, '客户等级', '大客户', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (4, '客户等级', '合作伙伴', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (5, '客户等级', '战略合作伙伴', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (6, '服务类型', '咨询', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (7, '服务类型', '建议', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');
INSERT INTO `t_datadic` VALUES (8, '服务类型', '投诉', 1, '2021-02-14 12:01:38', '2021-02-14 12:01:38');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `execute_time` int(0) NULL DEFAULT NULL,
  `create_man` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `result` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 449 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (424, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (425, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 119, 'admin', '{\"total\":28,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (426, '营销机会-主页展示', 'index', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (427, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 147, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (428, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 22, 'admin', '{\"total\":29,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (429, '营销管理-添加', 'saveSaleChance', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"chanceSource\":\"官网\",\"customerName\":\"百度\",\"cgjl\":80,\"overview\":\"第一次合作  预祝合作愉快\",\"linkMan\":\"马小云\",\"linkPhone\":\"15710218929\",\"description\":\"\",\"createMan\":\"admin\",\"assignMan\":\"\",\"state\":0,\"devResult\":0,\"isValid\":1,\"createDate\":\"Jan 19, 2020 9:58:45 AM\",\"updateDate\":\"Jan 19, 2020 9:58:45 AM\"}]', '2021-02-14 12:02:09', 23, 'admin', '{\"code\":200,\"msg\":\"机会数据添加成功\"}');
INSERT INTO `t_log` VALUES (430, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 11, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (431, '营销管理-多条件查询', 'querySaleChancesByParams', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 16, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (432, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 1, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (433, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 98, 'admin', '{\"total\":30,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (434, '营销管理-添加', 'ResultInfo com.shsxt.crm.controller.SaleChanceController.saveSaleChance(SaleChance)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"chanceSource\":\"官网\",\"customerName\":\"百度\",\"cgjl\":80,\"overview\":\"第一次合作  预祝合作愉快\",\"linkMan\":\"马小云\",\"linkPhone\":\"15710218929\",\"description\":\"\",\"createMan\":\"admin\",\"assignMan\":\"\",\"state\":0,\"devResult\":0,\"isValid\":1,\"createDate\":\"Jan 19, 2020 10:02:26 AM\",\"updateDate\":\"Jan 19, 2020 10:02:26 AM\"}]', '2021-02-14 12:02:09', 29, 'admin', '{\"code\":200,\"msg\":\"机会数据添加成功\"}');
INSERT INTO `t_log` VALUES (435, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 17, 'admin', '{\"total\":31,\"rows\":[{\"assignMan\":\"admin\",\"assignTime\":1505466691000,\"cgjl\":50,\"chanceSource\":\"360推广\",\"createDate\":1505466310000,\"createMan\":\"shsxt\",\"customerName\":\"风驰科技\",\"description\":\"23432\",\"devResult\":0,\"id\":74,\"isValid\":1,\"linkMan\":\"3423432423\",\"linkPhone\":\"234234324\",\"overview\":\"风驰科技  初创型公司！！！\",\"state\":1,\"updateDate\":1505466691000},{\"assignMan\":\"admin\",\"assignTime\":1505546733000,\"cgjl\":100,\"chanceSource\":\"尚学堂推荐\",\"createDate\":1505546720000,\"createMan\":\",shsxt\",\"customerName\":\"test002\",\"description\":\"324324\",\"devResult\":0,\"id\":75,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2343242\",\"overview\":\"asdasd\",\"state\":1,\"updateDate\":1505546733000},{\"assignMan\":\"admin\",\"assignTime\":1508481153000,\"cgjl\":90,\"chanceSource\":\"百度\",\"createDate\":1508481153000,\"customerName\":\"李彦宏\",\"description\":\"\",\"devResult\":3,\"id\":81,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23213\",\"overview\":\"123213\",\"state\":1,\"updateDate\":1508481153000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"官网\",\"createDate\":1515467933000,\"customerName\":\"百度\",\"id\":82,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123123213\",\"updateDate\":1515468116000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"来自百度\",\"createDate\":1515470053000,\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":83,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"23323\",\"updateDate\":1515470053000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470195000,\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":84,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"2321321\",\"state\":0,\"updateDate\":1515470195000},{\"assignMan\":\"admin\",\"cgjl\":90,\"chanceSource\":\"尚学堂官网\",\"createDate\":1515470357000,\"createMan\":\"admin\",\"customerName\":\"小马\",\"description\":\"\",\"devResult\":0,\"id\":85,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123123213\",\"state\":0,\"updateDate\":1515470357000},{\"assignMan\":\"admin\",\"assignTime\":1515653291000,\"cgjl\":95,\"chanceSource\":\"sxt官网\",\"createDate\":1515653245000,\"createMan\":\"admin\",\"customerName\":\"阿里\",\"description\":\"213213\",\"devResult\":0,\"id\":87,\"isValid\":1,\"linkMan\":\"老裴\",\"linkPhone\":\"123213\",\"state\":1,\"updateDate\":1515653291000},{\"assignMan\":\"admin\",\"cgjl\":70,\"chanceSource\":\"官网\",\"createDate\":1529998302000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":91,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":0,\"updateDate\":1529998302000},{\"assignMan\":\"admin\",\"assignTime\":1529998586000,\"cgjl\":80,\"chanceSource\":\"\",\"createDate\":1529998586000,\"createMan\":\"whsxt\",\"customerName\":\"百度\",\"description\":\"\",\"devResult\":0,\"id\":92,\"isValid\":1,\"linkMan\":\"李彦宏\",\"linkPhone\":\"123456\",\"overview\":\"\",\"state\":1,\"updateDate\":1529998586000}]}');
INSERT INTO `t_log` VALUES (436, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 41, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (437, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 13, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (438, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 16, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (439, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 5, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (440, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 8, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (441, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 0, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (442, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 4, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (443, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 0, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (444, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 6, 'admin', '{\"total\":2,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000},{\"assignMan\":\"10\",\"assignTime\":1866529478000,\"cgjl\":50,\"chanceSource\":\"官网\",\"createDate\":1572923268000,\"createMan\":\"admin\",\"customerName\":\"阿里云\",\"description\":\"测试机会数据\",\"devResult\":2,\"id\":98,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15710218920\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441332000}]}');
INSERT INTO `t_log` VALUES (445, '营销管理-删除', 'ResultInfo com.shsxt.crm.controller.SaleChanceController.deleteSaleChance(Integer[])', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[[98]]', '2021-02-14 12:02:09', 18, 'admin', '{\"code\":200,\"msg\":\"机会数据删除成功\"}');
INSERT INTO `t_log` VALUES (446, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"customerName\":\"\",\"createMan\":\"\",\"state\":\"\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 6, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');
INSERT INTO `t_log` VALUES (447, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"state\":\"1\",\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 22, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');
INSERT INTO `t_log` VALUES (448, '营销机会-主页展示', 'String com.shsxt.crm.controller.SaleChanceController.index()', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[]', '2021-02-14 12:02:09', 2, 'admin', '\"sale_chance\"');
INSERT INTO `t_log` VALUES (449, '营销管理-多条件查询', 'Map com.shsxt.crm.controller.SaleChanceController.querySaleChancesByParams(SaleChanceQuery)', '1', '0:0:0:0:0:0:0:1', '200', '操作成功', '[{\"page\":1,\"rows\":10}]', '2021-02-14 12:02:09', 21, 'admin', '{\"total\":1,\"rows\":[{\"assignMan\":\"10\",\"assignTime\":1866529458000,\"cgjl\":80,\"chanceSource\":\"官网\",\"createDate\":1572920921000,\"createMan\":\"admin\",\"customerName\":\"百度\",\"description\":\"测试机会数据\",\"devResult\":1,\"id\":97,\"isValid\":1,\"linkMan\":\"马小云\",\"linkPhone\":\"15700008929\",\"overview\":\"测试机会数据\",\"state\":1,\"updateDate\":1582441300000}]}');

-- ----------------------------
-- Table structure for t_module
-- ----------------------------
DROP TABLE IF EXISTS `t_module`;
CREATE TABLE `t_module`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `module_style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块样式',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `parent_id` int(0) NULL DEFAULT NULL,
  `parent_opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` int(0) NULL DEFAULT NULL COMMENT '等级',
  `opt_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `orders` int(0) NULL DEFAULT NULL,
  `is_valid` tinyint(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_module
-- ----------------------------
INSERT INTO `t_module` VALUES (1, '营销管理', '', '#', -1, NULL, 0, '10', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (2, '营销机会管理', '', 'saleChance/index', 1, NULL, 1, '1010', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (3, '营销机会管理查询', '', '#', 2, NULL, 2, '101001', 2, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (4, '营销机会管理添加', '', '#', 2, NULL, 2, '101002', 2, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (5, '营销机会管理删除', '', '#', 2, NULL, 2, '101003', 3, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (6, '客户开发计划', '', 'cus_dev_plan/index', 1, NULL, 1, '1020', 2, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (7, '查看详情', '', '#', 6, NULL, 2, '102001', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (8, '客户管理', '', 'customer/index', -1, NULL, 0, '20', 3, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (9, '客户信息管理', '', 'customer/index', 8, NULL, 1, '2010', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (10, '创建', '', '#', 9, NULL, 2, '201001', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (11, '修改', '', '#', 9, NULL, 2, '201002', 2, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (12, '客户流失管理', '', 'customer_loss/index', 8, NULL, 1, '2020', 2, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (13, '暂缓流失', '', 'openCustomerReprieve', 12, NULL, 2, '202001', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (14, '统计报表', '', '#', -1, NULL, 0, '40', 4, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (15, '客户贡献分析', '', 'report/1', 14, NULL, 1, '4010', 1, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (16, '服务管理', '', '#', -1, NULL, 0, '30', 3, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (17, '基础数据管理', '', '#', -1, NULL, 0, '50', 5, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (18, '系统管理', '', '#', -1, NULL, 0, '60', 6, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (19, '删除', '', '#', 9, NULL, 2, '201003', 3, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (26, '用户管理', '', 'user/index', 18, NULL, 1, '6010', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (27, '角色管理', '', 'role/index', 18, NULL, 1, '6020', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (28, '资源管理', '', 'module/index/1', 18, NULL, 1, '6030', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (34, '服务创建', '', NULL, 16, NULL, 1, '3010', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (35, '服务分配', '', NULL, 16, NULL, 1, '3020', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (36, '服务处理', '', NULL, 16, NULL, 1, '3030', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (37, '服务反馈', '', NULL, 16, NULL, 1, '3040', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (38, '服务归档', '', NULL, 16, NULL, 1, '3050', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (39, '客户构成分析', '', NULL, 14, NULL, 1, '4020', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (40, '客户服务分析', '', NULL, 14, NULL, 1, '4030', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (44, '营销机会管理修改', '', NULL, 2, NULL, 2, '101004', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (102, '数据字典管理', '', 'sale_chance/xxx', 17, NULL, 1, '5010', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (103, '产品信息查询', '', '#', 17, NULL, 2, '5020', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (109, '客户类别分析', '', 'report/r01', 14, NULL, 1, '4060', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (126, '流失管理添加', '', NULL, 12, NULL, 2, '123213', 12323, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (130, '用户添加', '', NULL, 26, NULL, 2, '601001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (131, '用户查询', '', NULL, 26, NULL, 2, '601002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (132, '用户修改', '', NULL, 26, NULL, 2, '601003', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (133, '用户删除', '', NULL, 26, NULL, 2, '601004', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (134, '角色添加', '', NULL, 27, NULL, 2, '602001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (135, '角色查询', '', NULL, 27, NULL, 2, '602002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (136, '角色修改', '', NULL, 27, NULL, 2, '602003', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (137, '角色删除', '', NULL, 27, NULL, 2, '602004', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (138, '资源添加', '', NULL, 28, NULL, 2, '603001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (139, '资源查询', '', NULL, 28, NULL, 2, '603002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (140, '资源修改', '', NULL, 28, NULL, 2, '603003', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (141, '资源删除', '', NULL, 28, NULL, 2, '603004', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (142, '字典管理', '', 'data_dic/index', 18, NULL, 1, '6040', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (143, '字典添加', '', NULL, 142, NULL, 2, '604001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (144, '字典查询', '', NULL, 142, NULL, 2, '604002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (145, '字典修改', '', NULL, 142, NULL, 2, '604003', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (146, '字典删除', '', NULL, 142, NULL, 2, '604004', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (147, '服务创建查询', '', NULL, 34, NULL, 2, '301001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (149, '服务分配查询', '', NULL, 35, NULL, 2, '302001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (150, '服务处理查询', '', NULL, 36, NULL, 2, '303001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (151, '服务处理', '', NULL, 36, NULL, 2, '303002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (152, '服务反馈查询', '', NULL, 37, NULL, 2, '304001', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (153, '服务反馈', '', NULL, 37, NULL, 2, '304002', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (154, '客户流失分析', '', '', 14, NULL, 1, '4040', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (155, '角色授权', '', NULL, 27, NULL, 2, '602005', NULL, 1, '2021-02-14 12:02:25', '2021-02-14 12:02:25');
INSERT INTO `t_module` VALUES (177, '财务管理', NULL, NULL, -1, NULL, 0, '70', NULL, 0, '2021-02-16 21:41:27', '2021-02-16 23:44:28');
INSERT INTO `t_module` VALUES (178, '财务管理资料', NULL, 'module/index', 177, NULL, 1, '7010', NULL, 0, '2021-02-16 21:44:17', '2021-02-16 23:44:09');
INSERT INTO `t_module` VALUES (179, '测试管理', NULL, NULL, -1, NULL, 0, '80', NULL, 0, '2021-02-16 22:23:56', '2021-02-16 23:41:50');
INSERT INTO `t_module` VALUES (180, '测试子管理', NULL, 'abc', 177, NULL, 1, '7020', NULL, 0, '2021-02-16 22:32:14', '2021-02-16 23:44:22');
INSERT INTO `t_module` VALUES (181, '测试子管理的子菜单', NULL, NULL, 180, NULL, 2, '801020', NULL, 0, '2021-02-16 22:32:34', '2021-02-16 23:44:18');

-- ----------------------------
-- Table structure for t_order_details
-- ----------------------------
DROP TABLE IF EXISTS `t_order_details`;
CREATE TABLE `t_order_details`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `goods_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_num` int(0) NULL DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  `sum` float NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_details
-- ----------------------------
INSERT INTO `t_order_details` VALUES (1, 5, '联想笔记本', 2, '台', 4900, 9800, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');
INSERT INTO `t_order_details` VALUES (2, 5, '惠普音响', 4, '台', 200, 800, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');
INSERT INTO `t_order_details` VALUES (3, 8, '罗技键盘', 10, '个', 90, 900, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');
INSERT INTO `t_order_details` VALUES (4, 6, '艾利鼠标', 20, '个', 20, 400, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');
INSERT INTO `t_order_details` VALUES (5, 7, '东芝U盘', 5, '个', 105, 525, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');
INSERT INTO `t_order_details` VALUES (6, 7, '充电器', 1, '个', 30, 30, 1, '2021-02-14 12:02:38', '2021-02-14 12:02:38');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色ID',
  `module_id` int(0) NULL DEFAULT NULL COMMENT '模块ID',
  `acl_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6832 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (6753, 1, 1, '10', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6754, 1, 2, '1010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6755, 1, 3, '101001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6756, 1, 4, '101002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6757, 1, 5, '101003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6758, 1, 44, '101004', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6759, 1, 6, '1020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6760, 1, 7, '102001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6761, 1, 8, '20', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6762, 1, 9, '2010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6763, 1, 10, '201001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6764, 1, 11, '201002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6765, 1, 19, '201003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6766, 1, 12, '2020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6767, 1, 13, '202001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6768, 1, 126, '123213', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6769, 1, 14, '40', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6770, 1, 15, '4010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6771, 1, 39, '4020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6772, 1, 40, '4030', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6773, 1, 109, '4060', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6774, 1, 154, '4040', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6775, 1, 16, '30', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6776, 1, 34, '3010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6777, 1, 147, '301001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6778, 1, 35, '3020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6779, 1, 149, '302001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6780, 1, 36, '3030', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6781, 1, 150, '303001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6782, 1, 151, '303002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6783, 1, 37, '3040', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6784, 1, 152, '304001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6785, 1, 153, '304002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6786, 1, 38, '3050', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6787, 1, 17, '50', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6788, 1, 102, '5010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6789, 1, 103, '5020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6790, 1, 18, '60', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6791, 1, 26, '6010', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6792, 1, 130, '601001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6793, 1, 131, '601002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6794, 1, 132, '601003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6795, 1, 133, '601004', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6796, 1, 27, '6020', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6797, 1, 134, '602001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6798, 1, 135, '602002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6799, 1, 136, '602003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6800, 1, 137, '602004', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6801, 1, 155, '602005', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6802, 1, 28, '6030', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6803, 1, 138, '603001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6804, 1, 139, '603002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6805, 1, 140, '603003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6806, 1, 141, '603004', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6807, 1, 142, '6040', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6808, 1, 143, '604001', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6809, 1, 144, '604002', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6810, 1, 145, '604003', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6811, 1, 146, '604004', '2021-02-20 00:38:55', '2021-02-20 00:38:55');
INSERT INTO `t_permission` VALUES (6812, 2, 8, '20', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6813, 2, 9, '2010', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6814, 2, 10, '201001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6815, 2, 11, '201002', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6816, 2, 19, '201003', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6817, 2, 12, '2020', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6818, 2, 13, '202001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6819, 2, 126, '123213', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6820, 2, 16, '30', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6821, 2, 34, '3010', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6822, 2, 147, '301001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6823, 2, 35, '3020', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6824, 2, 149, '302001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6825, 2, 36, '3030', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6826, 2, 150, '303001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6827, 2, 151, '303002', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6828, 2, 37, '3040', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6829, 2, 152, '304001', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6830, 2, 153, '304002', '2021-02-22 18:42:28', '2021-02-22 18:42:28');
INSERT INTO `t_permission` VALUES (6831, 2, 38, '3050', '2021-02-22 18:42:28', '2021-02-22 18:42:28');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '系统管理员', '系统管理员', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (2, '销售', '销售', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (3, '客户经理', '客户经理', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (4, '技术经理', '研发', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (5, '人事', '人事', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (6, '普通员工', '普通员工', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (14, '开发', '开发人员', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (23, '测试经理', '测试经理', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 1);
INSERT INTO `t_role` VALUES (24, '测试', '测试人员', '2021-02-14 12:03:11', '2021-02-14 12:03:11', 0);

-- ----------------------------
-- Table structure for t_sale_chance
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_chance`;
CREATE TABLE `t_sale_chance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `chance_source` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机会来源',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cgjl` int(0) NULL DEFAULT NULL,
  `overview` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_man` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `assign_time` datetime(0) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `dev_result` int(0) NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 137 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_sale_chance
-- ----------------------------
INSERT INTO `t_sale_chance` VALUES (97, '官网', '腾讯', 80, '测试机会数据', '小马', '13659733199', '测试机会数据', 'admin', '10', '2021-02-14 12:04:12', 1, 1, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (98, '官网', '阿里云', 60, '测试机会数据', '马小云', '15710218920', '测试机会数据', 'admin', '10', '2021-02-21 17:09:54', 1, 3, 1, '2021-02-14 12:04:12', '2021-02-21 17:09:54');
INSERT INTO `t_sale_chance` VALUES (128, '广告', '腾讯', 60, '游戏开发', '麻花腾', '15687554682', '', 'admin', '11', '2021-02-14 12:04:12', 1, 3, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (129, '官网', '腾讯', 10, '游戏开发', '麻花腾', '15687554682', '无', 'admin', '', '2021-02-14 12:04:12', 0, 0, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (130, '官网', '腾讯', 20, '游戏开发', '麻花腾', '15687554682', '无', 'admin', '11', '2021-02-14 12:04:12', 1, 2, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (131, NULL, '字节跳动', NULL, NULL, '李明', '12312313131', NULL, NULL, NULL, '2021-02-14 12:04:12', 0, 0, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (132, '广告', '腾讯', 80, '', '李强', '13060605970', 'test', '李四', '', '2021-02-14 12:04:12', 0, 0, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (133, '广告', '腾讯', 50, 'test', '马晓云', '13659711999', '', '李四', '87', '2021-02-14 12:04:12', 1, 2, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (134, '官网', '腾讯', 50, 'test', '马铃薯', '13659711999', '', '李四', '87', '2021-02-14 12:04:12', 1, 3, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (135, '广告', '百度', 50, 'test', '麻蛋', '13060605954', '', '李四', '11', '2021-02-14 12:04:12', 1, 1, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');
INSERT INTO `t_sale_chance` VALUES (136, '广告', '美团', 50, 'test', '小明', '13060605984', '', '李四', '', '2021-02-14 12:04:12', 0, 0, 1, '2021-02-14 12:04:12', '2021-02-14 12:04:12');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `true_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_valid` int(0) NULL DEFAULT 1,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (10, 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', 'admin', '126@126.com', '13327792157', 1, '2021-02-14 11:54:13', '2021-02-21 14:47:47');
INSERT INTO `t_user` VALUES (11, '李四', 'z3muat26YK0Bg0c1m9FE0g==', '李四', 'abc@qq.com', '132415321321', 1, '2021-02-14 11:54:18', '2021-02-14 11:55:16');
INSERT INTO `t_user` VALUES (42, 'scott', '4QrcOUm6Wau+VuBX8g+IPg==', 'scott', '234@126.com', '13327792157', 1, '2021-02-14 11:54:27', '2021-02-14 11:55:18');
INSERT INTO `t_user` VALUES (86, 'wuhunyu', '4QrcOUm6Wau+VuBX8g+IPg==', 'wuhunyu', '1235435223@qq.com', '15687552486', 1, '2021-02-14 11:54:29', '2021-02-14 11:55:20');
INSERT INTO `t_user` VALUES (87, '张三', '4QrcOUm6Wau+VuBX8g+IPg==', '张三', '1235435223@qq.com', '15687552486', 1, '2021-02-14 11:54:31', '2021-02-14 11:55:22');
INSERT INTO `t_user` VALUES (88, 'abc', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, '123@qq.com', '13659733199', 0, '2021-02-14 11:54:34', '2021-02-14 11:55:24');
INSERT INTO `t_user` VALUES (89, 'wangwu', '4QrcOUm6Wau+VuBX8g+IPg==', '王五', 'wangwu@qq.com', '13726972568', 0, '2021-02-14 11:54:36', '2021-02-14 11:55:27');
INSERT INTO `t_user` VALUES (90, 'xiaohong', '4QrcOUm6Wau+VuBX8g+IPg==', '小红', '123@qq.com', '13659733199', 1, '2021-02-14 11:54:38', '2021-02-14 11:55:29');
INSERT INTO `t_user` VALUES (91, 'zaholiu', '4QrcOUm6Wau+VuBX8g+IPg==', '赵柳', 'zhaoliu@qq.com', '13326503269', 1, '2021-02-14 11:54:40', '2021-02-14 11:55:31');
INSERT INTO `t_user` VALUES (92, 'huashengemo', '4QrcOUm6Wau+VuBX8g+IPg==', '恶魔', 'emo@qq.com', '13326598745', 0, '2021-02-14 11:54:42', '2021-02-14 11:55:35');
INSERT INTO `t_user` VALUES (94, 'test01', '4QrcOUm6Wau+VuBX8g+IPg==', 'test01', 'aa@qq.com', '13060605895', 0, '2021-02-14 11:54:44', '2021-02-14 11:55:38');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_id` int(0) NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (3, 42, 4, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (210, 86, 4, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (214, 87, 2, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (215, 87, 4, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (217, 11, 2, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (218, 94, 2, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (219, 94, 3, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (223, 90, 6, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (224, 91, 6, '2021-02-14 12:04:43', '2021-02-14 12:04:43');
INSERT INTO `t_user_role` VALUES (226, 10, 1, '2021-02-21 14:47:47', '2021-02-21 14:47:47');
INSERT INTO `t_user_role` VALUES (227, 10, 2, '2021-02-21 14:47:47', '2021-02-21 14:47:47');

SET FOREIGN_KEY_CHECKS = 1;
