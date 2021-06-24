/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 24/06/2021 18:52:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for certificate_flow
-- ----------------------------
DROP TABLE IF EXISTS `certificate_flow`;
CREATE TABLE `certificate_flow` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int DEFAULT NULL,
  `pre_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apply_date` datetime DEFAULT NULL,
  `cert_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_date` datetime DEFAULT NULL,
  `approver_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_result` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of certificate_flow
-- ----------------------------
BEGIN;
INSERT INTO `certificate_flow` VALUES ('0e70da1fc9d811ea9fa9000c29ee2ecd', 0, NULL, 'admin', '2020-07-19 15:53:28', '123', '234', '2020-07-18 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('119fc0e3ca9911ea9fa9000c29ee2ecd', 1, 'f1bf05cfca9811ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:55:06', 'hseconomy-1234', '高级经济师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('22977bdfc9d811ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-19 15:54:02', '1234', '高级工程师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('27fe13c6ca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:55:43', 'hiengineer-12345678', '高级工程师', '2020-07-19 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('4ea8a025ca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:56:48', 'hskuaiji', '高级会计师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('5a9b790aca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:57:08', 'hskuaiji-1234', '高级会计师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('5ca47296ccb411eb8a74943e7698962a', 1, 'c47133e2cc1311eb8a74943e7698962a', 'admin', '2021-06-14 02:00:58', 'EX-123', '优秀员工', '2021-06-01 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('99e8ee34ccb411eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-14 02:02:41', '111', '额外', '2021-05-31 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('ab8f2c12cc1311eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-13 06:50:41', '123', '继续', '2021-06-06 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('c2e5b354cc1311eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-13 06:51:21', '123', 'ewq ', '2021-06-01 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('da13286ccc2811eb8a74943e7698962a', 1, '389447f8c9a711ea9fa9000c29ee2ecd', 'admin', '2021-06-13 09:22:19', 'hsengineer-1234', '高级', '2020-07-18 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('ddd25a66cdc911eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-15 11:07:25', '12345', '好的', '2021-06-14 16:00:00', 'admin', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for employee_certificate
-- ----------------------------
DROP TABLE IF EXISTS `employee_certificate`;
CREATE TABLE `employee_certificate` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cert_date` datetime DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employee_certificate
-- ----------------------------
BEGIN;
INSERT INTO `employee_certificate` VALUES ('389447f8c9a711ea9fa9000c29ee2ecd', 'admin', 'hsengineer-1234', '高级工程师', '2020-07-18 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('c47133e2cc1311eb8a74943e7698962a', 'admin', 'EX-123', '优秀员工', '2021-06-01 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('f1bf05cfca9811ea9fa9000c29ee2ecd', 'admin', 'hseconomy-1234', '高级经济师', '2020-07-19 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', 'hskuaiji-1234', '高级会计师', '2020-07-19 16:00:00', NULL);
COMMIT;

-- ----------------------------
-- Table structure for holiday
-- ----------------------------
DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `edate` datetime DEFAULT NULL,
  `apply_date` datetime DEFAULT NULL,
  `date_num` int DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for holiday_flow
-- ----------------------------
DROP TABLE IF EXISTS `holiday_flow`;
CREATE TABLE `holiday_flow` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pre_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` int DEFAULT NULL,
  `apply_date` datetime DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `edate` datetime DEFAULT NULL,
  `date_num` int DEFAULT NULL,
  `approver_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `approve_result` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `levels` int DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `rights` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
BEGIN;
INSERT INTO `menu` VALUES ('0a52a854c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '个人假期查询', 'el-icon-burger', '/user_hoiday_info', 501, '/user');
INSERT INTO `menu` VALUES ('0a543b11c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '个人请假明细', 'el-icon-dessert', '/holiday_apply', 502, '/user');
INSERT INTO `menu` VALUES ('0a561643c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '全行假期查询', 'el-icon-ice-cream', '/alluser_holiday_info', 503, '/admin');
INSERT INTO `menu` VALUES ('0a576439c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '请假待审批流程', 'el-icon-grape', '/pending_holiday_flow', 505, '/admin');
INSERT INTO `menu` VALUES ('29689382c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '薪酬级别设置', 'el-icon-watermelon', '/salary_set', 301, '/admin');
INSERT INTO `menu` VALUES ('29695363c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '员工薪酬管理', 'el-icon-cherry', '/user_salary_mng', 302, '/admin');
INSERT INTO `menu` VALUES ('29698af5c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '个人薪酬查询', 'el-icon-apple', '/user_salary_info', 303, '/user');
INSERT INTO `menu` VALUES ('2ba0a77fc6a511eaab09000c29ee2ecd', '7430461cc5e211eaab09000c29ee2ecd', 2, '全行绩效', 'el-icon-refrigerator', '/all_performance', 602, '/admin');
INSERT INTO `menu` VALUES ('3a42597dc4b711eaab09000c29ee2ecd', 'a236f8a1c4b011eaab09000c29ee2ecd', 2, '修改密码', 'el-icon-pear', '/change_password', 702, '/user');
INSERT INTO `menu` VALUES ('3d902f7dc4b111eaab09000c29ee2ecd', '8f975e11c4b011eaab09000c29ee2ecd', 2, '机构管理', 'el-icon-orange', '/unit_mng', 102, '/admin');
INSERT INTO `menu` VALUES ('6e18ff03c5e211eaab09000c29ee2ecd', '7430461cc5e211eaab09000c29ee2ecd', 2, '个人绩效', 'el-icon-food', '/performance', 601, '/user');
INSERT INTO `menu` VALUES ('7430461cc5e211eaab09000c29ee2ecd', NULL, 1, '绩效管理', 'el-icon-sugar', '', 6, NULL);
INSERT INTO `menu` VALUES ('8f975e11c4b011eaab09000c29ee2ecd', NULL, 1, '用户管理', 'el-icon-coffee', NULL, 1, NULL);
INSERT INTO `menu` VALUES ('a232f9ddc4b011eaab09000c29ee2ecd', NULL, 1, '岗位管理', 'el-icon-potato-strips', NULL, 2, NULL);
INSERT INTO `menu` VALUES ('a23474bbc4b011eaab09000c29ee2ecd', NULL, 1, '薪酬管理', 'el-icon-lollipop', NULL, 3, NULL);
INSERT INTO `menu` VALUES ('a2360c0bc4b011eaab09000c29ee2ecd', NULL, 1, '证书管理', 'el-icon-ice-cream-round', NULL, 4, NULL);
INSERT INTO `menu` VALUES ('a23662b7c4b011eaab09000c29ee2ecd', NULL, 1, '请休假管理', 'el-icon-cold-drink', NULL, 5, NULL);
INSERT INTO `menu` VALUES ('a236f8a1c4b011eaab09000c29ee2ecd', NULL, 1, '设置中心', 'el-icon-ice-tea', NULL, 7, NULL);
INSERT INTO `menu` VALUES ('b61273acc4b711eaab09000c29ee2ecd', 'a236f8a1c4b011eaab09000c29ee2ecd', 2, '个人基本信息', 'el-icon-ice-drink', '/user_info', 701, '/user');
INSERT INTO `menu` VALUES ('cbeaf4cfc4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '个人证书管理', 'el-icon-milk-tea', '/user_cert_mng', 401, '/user');
INSERT INTO `menu` VALUES ('cbebbc38c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '全行证书管理', 'el-icon-ice-cream-square', '/alluser_cert_mng', 402, '/admin');
INSERT INTO `menu` VALUES ('cbec48c3c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '已发送的证书申请', 'el-icon-coffee-cup', '/applied_cert_flow', 403, '/user');
INSERT INTO `menu` VALUES ('cbecf3b3c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '证书待审批流程', 'el-icon-goblet-square-full', '/pending_cert_flow', 404, '/admin');
INSERT INTO `menu` VALUES ('e6108b01c4b311eaab09000c29ee2ecd', 'a232f9ddc4b011eaab09000c29ee2ecd', 2, '岗位设置', 'el-icon-hot-water', '/post_set', 201, '/admin');
INSERT INTO `menu` VALUES ('fef29da6c4b011eaab09000c29ee2ecd', '8f975e11c4b011eaab09000c29ee2ecd', 2, '员工基本信息管理', 'el-icon-tableware', '/user_mng', 101, '/admin');
COMMIT;

-- ----------------------------
-- Table structure for org_post
-- ----------------------------
DROP TABLE IF EXISTS `org_post`;
CREATE TABLE `org_post` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `notes` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of org_post
-- ----------------------------
BEGIN;
INSERT INTO `org_post` VALUES ('1d5b2929c7eb11ea9fa9000c29ee2ecd', '副总经理', '这是副总经理');
INSERT INTO `org_post` VALUES ('2ac64828c7eb11ea9fa9000c29ee2ecd', '总经理助理', '总经理助理');
INSERT INTO `org_post` VALUES ('9b47b94dc7e711ea9fa9000c29ee2ecd', '总经理', '这是总经理');
INSERT INTO `org_post` VALUES ('a167d3bac65711eaab09000c29ee2ecd', '办事员', '这是办事员');
COMMIT;

-- ----------------------------
-- Table structure for org_unit
-- ----------------------------
DROP TABLE IF EXISTS `org_unit`;
CREATE TABLE `org_unit` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `manager` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of org_unit
-- ----------------------------
BEGIN;
INSERT INTO `org_unit` VALUES ('25cebf82c6ab11eaab09000c29ee2ecd', '合规与法律事务部', '北京路30号', '666', 'admin');
INSERT INTO `org_unit` VALUES ('2ba0a77fc6a511eaab09000c29ee2ecd', '零售业务部', '中科创新广场', '3623215', 'admin');
INSERT INTO `org_unit` VALUES ('438b7592c5e011eaab09000c29ee2ecd', '信息科技部', '北京路30号', '6326972', 'user');
INSERT INTO `org_unit` VALUES ('4ad2ff2dc78711ea9fa9000c29ee2ecd', '稽核审计部', '北京路', '1234', 'admin');
INSERT INTO `org_unit` VALUES ('5c08a57fc6ad11eaab09000c29ee2ecd', '公司业务部', '北京路uu', '337722', 'admin');
INSERT INTO `org_unit` VALUES ('6e18ff03c5e211eaab09000c29ee2ecd', '网络金融部', '北京路30号', '6326972', 'xiaokang');
INSERT INTO `org_unit` VALUES ('7430461cc5e211eaab09000c29ee2ecd', '人力资源部', '北京路30号', '6326972', 'xiaokang');
COMMIT;

-- ----------------------------
-- Table structure for performance
-- ----------------------------
DROP TABLE IF EXISTS `performance`;
CREATE TABLE `performance` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `total_time` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `day` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of performance
-- ----------------------------
BEGIN;
INSERT INTO `performance` VALUES ('f59f693ad34c11ebaff8eb80be38dca8', 'admin', 1, 6, 22, 2021);
COMMIT;

-- ----------------------------
-- Table structure for performance_flow
-- ----------------------------
DROP TABLE IF EXISTS `performance_flow`;
CREATE TABLE `performance_flow` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `btime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `daily_time` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `state` int DEFAULT NULL,
  `if_overtime` varchar(32) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of performance_flow
-- ----------------------------
BEGIN;
INSERT INTO `performance_flow` VALUES ('f388e360d34c11ebaff8eb80be38dca8', 'admin', '2021-06-22 19:28:22', '2021-06-22 19:28:26', 1, 1, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('f410de25c38d11eaab09000c29ee2ecd', 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES ('f412c01ac38d11eaab09000c29ee2ecd', 'ROLE_user', '用户');
COMMIT;

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `notes` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of salary
-- ----------------------------
BEGIN;
INSERT INTO `salary` VALUES ('0dfc2c70c90811ea9fa9000c29ee2ecd', 123456.00, '总经理工资');
INSERT INTO `salary` VALUES ('588b8a17c90f11ea9fa9000c29ee2ecd', 12345.00, '副总经理工资');
INSERT INTO `salary` VALUES ('622ebd21c90f11ea9fa9000c29ee2ecd', 4321.00, '总经理助理工资');
INSERT INTO `salary` VALUES ('9cc4161cc8a811ea9fa9000c29ee2ecd', 2345.00, '办事员工资');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enabled` tinyint DEFAULT NULL,
  `locked` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('9b3d0648c38d11eaab09000c29ee2ecd', 'admin', '$2a$10$/zMDHw7cKoZpDS9vfE9BRO4x0C0cinbBoQ9NGn/q54EyoTaOJdvoS', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `unit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `salary` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO `user_info` VALUES ('admin', '123', '北京路30号', 'admin@qq.com', '438b7592c5e011eaab09000c29ee2ecd', NULL, '9b47b94dc7e711ea9fa9000c29ee2ecd', '0dfc2c70c90811ea9fa9000c29ee2ecd', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` VALUES ('02101196d1cd11ebaff8eb80be38dca8', '020eaa72d1cd11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('02360142d1c511ebaff8eb80be38dca8', '02348326d1c511ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('04fe22e8d1bf11eb9006ce2b6c9ccb23', '04fcf7ecd1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('05b24152d1cd11ebaff8eb80be38dca8', '05b01968d1cd11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('0ea281f0d1be11eb9006ce2b6c9ccb23', '0ea0e6c4d1be11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('13480fbcd1d311ebaff8eb80be38dca8', '1343c72cd1d311ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('178214b0d1c411ebaff8eb80be38dca8', '177f3812d1c411ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('1dfd15d7c5c911eaab09000c29ee2ecd', '1dfbca02c5c911eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('1e69f536d34f11ebaff8eb80be38dca8', '1e6835e8d34f11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('21571baad1c611ebaff8eb80be38dca8', '2154f186d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('21af64f6d1bf11eb9006ce2b6c9ccb23', '21ae6d8ad1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('25c45010d1bf11eb9006ce2b6c9ccb23', '25c3570ad1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('28cceb28d1bf11eb9006ce2b6c9ccb23', '28cbea48d1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('2931a63cd1c211eb9006ce2b6c9ccb23', '29303446d1c211eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('34613504c38e11eaab09000c29ee2ecd', '9b3d0648c38d11eaab09000c29ee2ecd', 'f410de25c38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('367c59e8d1bf11eb9006ce2b6c9ccb23', '367a71dcd1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('464863ecc77a11ea9fa9000c29ee2ecd', '4646eab6c77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('49911376c38e11eaab09000c29ee2ecd', 'c863dde2c38d11eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('52906a14d1c611ebaff8eb80be38dca8', '528e79c0d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('555c3f02d1c611ebaff8eb80be38dca8', '5559b840d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('592c825ad1cf11ebaff8eb80be38dca8', '592aa84ad1cf11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('6061486ad1d111ebaff8eb80be38dca8', '605ff456d1d111ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('63065812d1d111ebaff8eb80be38dca8', '63051920d1d111ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('65cb9d7cd1be11eb9006ce2b6c9ccb23', '65ca3766d1be11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('759df5aad1c911ebaff8eb80be38dca8', '759c18c0d1c911ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('7c426e14d1be11eb9006ce2b6c9ccb23', '7c413c42d1be11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('7ea7d416d1cb11ebaff8eb80be38dca8', '7ea5f74ad1cb11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('81b57a5ad1cb11ebaff8eb80be38dca8', '81b409c2d1cb11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('a2c66a48d1ca11ebaff8eb80be38dca8', 'a2c49844d1ca11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('ad2411dad1bf11eb9006ce2b6c9ccb23', 'ad22958ad1bf11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('aea2ef93c5c811eaab09000c29ee2ecd', 'aea16d0dc5c811eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('ba72c1c2d1c611ebaff8eb80be38dca8', 'ba708830d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('bb9c2169c77a11ea9fa9000c29ee2ecd', 'bb9a542fc77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('bcfc02d8d1cf11ebaff8eb80be38dca8', 'bcfad8ccd1cf11ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('bd8f43a8d1c611ebaff8eb80be38dca8', 'bd8dfcf0d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('befa8284c38e11eaab09000c29ee2ecd', '9b3d0648c38d11eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('c05fb806d1c611ebaff8eb80be38dca8', 'c05e9994d1c611ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('ccc4076cd1be11eb9006ce2b6c9ccb23', 'ccc20a70d1be11eb9006ce2b6c9ccb23', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('dbde568cd1d011ebaff8eb80be38dca8', 'dbdd02a0d1d011ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('de8ae396d1d011ebaff8eb80be38dca8', 'de895710d1d011ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('ee4d127dc77a11ea9fa9000c29ee2ecd', 'ee4bd67ac77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('f2c8b270c5c811eaab09000c29ee2ecd', 'f2c733b0c5c811eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('f974c71ed1c411ebaff8eb80be38dca8', 'f9730c26d1c411ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('fe6cc7b2d1c411ebaff8eb80be38dca8', 'fe6b2286d1c411ebaff8eb80be38dca8', 'f412c01ac38d11eaab09000c29ee2ecd');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
