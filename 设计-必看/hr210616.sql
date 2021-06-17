/*
 Navicat Premium Data Transfer

 Source Server         : learnSpace
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : hr

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 16/06/2021 14:40:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for certificate_flow
-- ----------------------------
DROP TABLE IF EXISTS `certificate_flow`;
CREATE TABLE `certificate_flow`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `pre_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply_date` datetime(0) NULL DEFAULT NULL,
  `cert_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_date` datetime(0) NULL DEFAULT NULL,
  `approver_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approve_date` datetime(0) NULL DEFAULT NULL,
  `approve_result` int(11) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of certificate_flow
-- ----------------------------
INSERT INTO `certificate_flow` VALUES ('0e70da1fc9d811ea9fa9000c29ee2ecd', 0, NULL, 'admin', '2020-07-19 15:53:28', '123', '234', '2020-07-18 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('119fc0e3ca9911ea9fa9000c29ee2ecd', 1, 'f1bf05cfca9811ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:55:06', 'hseconomy-1234', '高级经济师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('22977bdfc9d811ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-19 15:54:02', '1234', '高级工程师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('27fe13c6ca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:55:43', 'hiengineer-12345678', '高级工程师', '2020-07-19 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('2fd6e19eca4011ea9fa9000c29ee2ecd', 0, NULL, 'user', '2020-07-20 04:18:52', 'user-cert-no', 'user-cert-name', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('3ad64f86ccaa11eb8a74943e7698962a', 1, 'f44d0cc6ca9811ea9fa9000c29ee2ecd', 'user', '2021-06-14 00:48:26', 'engineer-8888', '中级工程师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('4ea8a025ca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:56:48', 'hskuaiji', '高级会计师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('4fbb5b08ccaa11eb8a74943e7698962a', 0, NULL, 'user', '2021-06-14 00:49:01', 'msn-123', '社会杰出贡献', '2021-06-21 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('5a9b790aca9911ea9fa9000c29ee2ecd', 1, 'ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', '2020-07-20 14:57:08', 'hskuaiji-1234', '高级会计师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('5bd616a8ca9811eb8a74943e7698962a', 1, 'f44d0cc6ca9811ea9fa9000c29ee2ecd', 'user', '2021-06-11 09:35:28', 'msengineer-5678', '中级工程师', '2020-07-19 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('5ca47296ccb411eb8a74943e7698962a', 1, 'c47133e2cc1311eb8a74943e7698962a', 'admin', '2021-06-14 02:00:58', 'EX-123', '优秀员工', '2021-06-01 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('6f553ce8ce4c11ebb88ac0b6f95d82d3', 0, NULL, 'admin', '2021-06-16 02:42:03', '123', 'DDSA', '2021-06-14 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('715ef51eca9911ea9fa9000c29ee2ecd', 1, 'f44d0cc6ca9811ea9fa9000c29ee2ecd', 'user', '2020-07-20 14:57:46', 'msengineer-1234', '中级工程师', '2020-07-19 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('7aff4626ce4c11ebb88ac0b6f95d82d3', 0, NULL, 'admin', '2021-06-16 02:42:23', '231', 'DADA', '2021-06-16 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('7d24a036ca9911ea9fa9000c29ee2ecd', 0, NULL, 'user', '2020-07-20 14:58:06', 'mieconmy-12345', '中级经济师', '2020-07-19 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('99e8ee34ccb411eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-14 02:02:41', '111', '额外', '2021-05-31 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('9babf8f2ce4c11ebb88ac0b6f95d82d3', 1, '7db01652ce4c11ebb88ac0b6f95d82d3', 'admin', '2021-06-16 02:43:17', '123', 'MSA', '2021-06-16 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('a88e2b04ce4c11ebb88ac0b6f95d82d3', 1, '7db01652ce4c11ebb88ac0b6f95d82d3', 'admin', '2021-06-16 02:43:39', '123', 'MSA-123', '2021-06-16 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('ab8f2c12cc1311eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-13 06:50:41', '123', '继续', '2021-06-06 16:00:00', 'admin', NULL, 1, 1);
INSERT INTO `certificate_flow` VALUES ('c2e5b354cc1311eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-13 06:51:21', '123', 'ewq ', '2021-06-01 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('da13286ccc2811eb8a74943e7698962a', 1, '389447f8c9a711ea9fa9000c29ee2ecd', 'admin', '2021-06-13 09:22:19', 'hsengineer-1234', '高级', '2020-07-18 16:00:00', 'admin', NULL, 0, 1);
INSERT INTO `certificate_flow` VALUES ('ddd25a66cdc911eb8a74943e7698962a', 0, NULL, 'admin', '2021-06-15 11:07:25', '12345', '好的', '2021-06-14 16:00:00', 'admin', NULL, 1, 1);

-- ----------------------------
-- Table structure for employee_certificate
-- ----------------------------
DROP TABLE IF EXISTS `employee_certificate`;
CREATE TABLE `employee_certificate`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_date` datetime(0) NULL DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_certificate
-- ----------------------------
INSERT INTO `employee_certificate` VALUES ('389447f8c9a711ea9fa9000c29ee2ecd', 'admin', 'hsengineer-1234', '高级工程师', '2020-07-18 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('631e6e1accaa11eb8a74943e7698962a', 'user', 'msn-123', '社会杰出贡献', '2021-06-21 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('7db01652ce4c11ebb88ac0b6f95d82d3', 'admin', '123', 'MSA-a', '2021-06-16 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('c47133e2cc1311eb8a74943e7698962a', 'admin', 'EX-123', '优秀员工', '2021-06-01 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('f1bf05cfca9811ea9fa9000c29ee2ecd', 'admin', 'hseconomy-1234', '高级经济师', '2020-07-19 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('f44d0cc6ca9811ea9fa9000c29ee2ecd', 'user', 'engineer-8888', '中级工程师', '2020-07-19 16:00:00', NULL);
INSERT INTO `employee_certificate` VALUES ('ffbed786c96b11ea9fa9000c29ee2ecd', 'admin', 'hskuaiji-1234', '高级会计师', '2020-07-19 16:00:00', NULL);

-- ----------------------------
-- Table structure for holiday
-- ----------------------------
DROP TABLE IF EXISTS `holiday`;
CREATE TABLE `holiday`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bdate` datetime(0) NULL DEFAULT NULL,
  `edate` datetime(0) NULL DEFAULT NULL,
  `apply_date` datetime(0) NULL DEFAULT NULL,
  `date_num` int(11) NULL DEFAULT NULL,
  `notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday
-- ----------------------------
INSERT INTO `holiday` VALUES ('4fdbe210cddb11eb8a74943e7698962a', 'admin', '2021-06-15 16:00:00', '2021-06-23 16:00:00', '2021-06-15 13:12:11', 8, NULL);
INSERT INTO `holiday` VALUES ('f9eb13a6cddc11eb8a74943e7698962a', 'user', '2021-05-31 16:00:00', '2021-06-02 16:00:00', '2021-06-15 13:24:02', 2, NULL);

-- ----------------------------
-- Table structure for holiday_flow
-- ----------------------------
DROP TABLE IF EXISTS `holiday_flow`;
CREATE TABLE `holiday_flow`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pre_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `apply_date` datetime(0) NULL DEFAULT NULL,
  `bdate` datetime(0) NULL DEFAULT NULL,
  `edate` datetime(0) NULL DEFAULT NULL,
  `date_num` int(11) NULL DEFAULT NULL,
  `approver_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approve_date` datetime(0) NULL DEFAULT NULL,
  `approve_result` int(11) NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of holiday_flow
-- ----------------------------
INSERT INTO `holiday_flow` VALUES ('4b6f615ccddb11eb8a74943e7698962a', 'admin', NULL, 0, '2021-06-15 13:12:11', '2021-05-31 16:00:00', '2021-06-01 16:00:00', 1, 'admin', NULL, 0, 1);
INSERT INTO `holiday_flow` VALUES ('7756e484cddb11eb8a74943e7698962a', 'admin', '4fdbe210cddb11eb8a74943e7698962a', 1, '2021-06-15 13:13:24', '2021-06-15 16:00:00', '2021-06-16 16:00:00', 1, 'admin', NULL, 0, 1);
INSERT INTO `holiday_flow` VALUES ('bf80ba5ece4c11ebb88ac0b6f95d82d3', 'admin', NULL, 0, '2021-06-16 02:44:17', '2021-06-14 16:00:00', '2021-06-17 16:00:00', 3, 'admin', NULL, 1, 1);
INSERT INTO `holiday_flow` VALUES ('c755efddce4c11ebb88ac0b6f95d82d3', 'admin', '4fdbe210cddb11eb8a74943e7698962a', 1, '2021-06-16 02:44:31', '2021-06-15 16:00:00', '2021-06-23 16:00:00', 8, 'admin', NULL, 0, 1);
INSERT INTO `holiday_flow` VALUES ('f34f6dbccddc11eb8a74943e7698962a', 'user', NULL, 0, '2021-06-15 13:24:02', '2021-05-31 16:00:00', '2021-06-02 16:00:00', 2, 'admin', NULL, 0, 1);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sup_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `levels` int(11) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `rights` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0a52a854c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '个人假期查询', 'el-icon-basketball', '/user_hoiday_info', 501, '/user');
INSERT INTO `menu` VALUES ('0a543b11c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '个人请假明细', 'el-icon-document-add', '/holiday_apply', 502, '/user');
INSERT INTO `menu` VALUES ('0a561643c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '全行假期查询', 'el-icon-s-grid', '/alluser_holiday_info', 503, '/admin');
INSERT INTO `menu` VALUES ('0a576439c4b711eaab09000c29ee2ecd', 'a23662b7c4b011eaab09000c29ee2ecd', 2, '请假待审批流程', 'el-icon-document-add', '/pending_holiday_flow', 505, '/admin');
INSERT INTO `menu` VALUES ('29689382c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '薪酬级别设置', 'el-icon-s-operation', '/salary_set', 301, '/admin');
INSERT INTO `menu` VALUES ('29695363c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '员工薪酬管理', 'el-icon-s-help', '/user_salary_mng', 302, '/admin');
INSERT INTO `menu` VALUES ('29698af5c4b411eaab09000c29ee2ecd', 'a23474bbc4b011eaab09000c29ee2ecd', 2, '个人薪酬查询', 'el-icon-help', '/user_salary_info', 303, '/user');
INSERT INTO `menu` VALUES ('3a42597dc4b711eaab09000c29ee2ecd', 'a236f8a1c4b011eaab09000c29ee2ecd', 2, '修改密码', 'el-icon-more-outline', '/change_password', 602, '/user');
INSERT INTO `menu` VALUES ('3d902f7dc4b111eaab09000c29ee2ecd', '8f975e11c4b011eaab09000c29ee2ecd', 2, '机构管理', 'el-icon-s-home', '/unit_mng', 102, '/admin');
INSERT INTO `menu` VALUES ('8f975e11c4b011eaab09000c29ee2ecd', NULL, 1, '用户管理', 'el-icon-user-solid', NULL, 1, NULL);
INSERT INTO `menu` VALUES ('a232f9ddc4b011eaab09000c29ee2ecd', NULL, 1, '岗位管理', 'el-icon-s-fold', NULL, 2, NULL);
INSERT INTO `menu` VALUES ('a23474bbc4b011eaab09000c29ee2ecd', NULL, 1, '薪酬管理', 'el-icon-s-help', NULL, 3, NULL);
INSERT INTO `menu` VALUES ('a2360c0bc4b011eaab09000c29ee2ecd', NULL, 1, '证书管理', 'el-icon-tickets', NULL, 4, NULL);
INSERT INTO `menu` VALUES ('a23662b7c4b011eaab09000c29ee2ecd', NULL, 1, '请休假管理', 'el-icon-document-add', NULL, 5, NULL);
INSERT INTO `menu` VALUES ('a236f8a1c4b011eaab09000c29ee2ecd', NULL, 1, '设置中心', 'el-icon-s-tools', NULL, 6, NULL);
INSERT INTO `menu` VALUES ('b61273acc4b711eaab09000c29ee2ecd', 'a236f8a1c4b011eaab09000c29ee2ecd', 2, '个人基本信息', 'el-icon-s-tools', '/user_info', 601, '/user');
INSERT INTO `menu` VALUES ('cbeaf4cfc4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '个人证书管理', 'el-icon-tickets', '/user_cert_mng', 401, '/user');
INSERT INTO `menu` VALUES ('cbebbc38c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '全行证书管理', 'el-icon-document-copy', '/alluser_cert_mng', 402, '/admin');
INSERT INTO `menu` VALUES ('cbec48c3c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '已发送的证书申请', 'el-icon-football', '/applied_cert_flow', 403, '/user');
INSERT INTO `menu` VALUES ('cbecf3b3c4b411eaab09000c29ee2ecd', 'a2360c0bc4b011eaab09000c29ee2ecd', 2, '证书待审批流程', 'el-icon-coordinate', '/pending_cert_flow', 404, '/admin');
INSERT INTO `menu` VALUES ('e6108b01c4b311eaab09000c29ee2ecd', 'a232f9ddc4b011eaab09000c29ee2ecd', 2, '岗位设置', 'el-icon-s-fold', '/post_set', 201, '/admin');
INSERT INTO `menu` VALUES ('fef29da6c4b011eaab09000c29ee2ecd', '8f975e11c4b011eaab09000c29ee2ecd', 2, '员工基本信息管理', 'el-icon-user-solid', '/user_mng', 101, '/admin');

-- ----------------------------
-- Table structure for org_post
-- ----------------------------
DROP TABLE IF EXISTS `org_post`;
CREATE TABLE `org_post`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notes` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_post
-- ----------------------------
INSERT INTO `org_post` VALUES ('1d5b2929c7eb11ea9fa9000c29ee2ecd', '副总经理', '这是副总经理');
INSERT INTO `org_post` VALUES ('2ac64828c7eb11ea9fa9000c29ee2ecd', '总经理助理', '总经理助理');
INSERT INTO `org_post` VALUES ('9b47b94dc7e711ea9fa9000c29ee2ecd', '总经理', '这是总经理');
INSERT INTO `org_post` VALUES ('a167d3bac65711eaab09000c29ee2ecd', '办事员', '这是办事员');

-- ----------------------------
-- Table structure for org_unit
-- ----------------------------
DROP TABLE IF EXISTS `org_unit`;
CREATE TABLE `org_unit`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of org_unit
-- ----------------------------
INSERT INTO `org_unit` VALUES ('25cebf82c6ab11eaab09000c29ee2ecd', '合规与法律事务部', '北京路30号', '666', 'admin');
INSERT INTO `org_unit` VALUES ('2ba0a77fc6a511eaab09000c29ee2ecd', '零售业务部', '中科创新广场', '3623215', 'admin');
INSERT INTO `org_unit` VALUES ('438b7592c5e011eaab09000c29ee2ecd', '信息科技部', '北京路30号', '6326972', 'user');
INSERT INTO `org_unit` VALUES ('4ad2ff2dc78711ea9fa9000c29ee2ecd', '稽核审计部', '北京路', '1234', 'admin');
INSERT INTO `org_unit` VALUES ('5c08a57fc6ad11eaab09000c29ee2ecd', '公司业务部', '北京路uu', '337722', 'admin');
INSERT INTO `org_unit` VALUES ('6e18ff03c5e211eaab09000c29ee2ecd', '网络金融部', '北京路30号', '6326972', 'xiaokang');
INSERT INTO `org_unit` VALUES ('7430461cc5e211eaab09000c29ee2ecd', '人力资源部', '北京路30号', '6326972', 'xiaokang');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('f410de25c38d11eaab09000c29ee2ecd', 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES ('f412c01ac38d11eaab09000c29ee2ecd', 'ROLE_user', '用户');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `notes` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('0dfc2c70c90811ea9fa9000c29ee2ecd', 123456.00, '总经理工资');
INSERT INTO `salary` VALUES ('588b8a17c90f11ea9fa9000c29ee2ecd', 12345.00, '副总经理工资');
INSERT INTO `salary` VALUES ('622ebd21c90f11ea9fa9000c29ee2ecd', 4321.00, '总经理助理工资');
INSERT INTO `salary` VALUES ('9cc4161cc8a811ea9fa9000c29ee2ecd', 2345.00, '办事员工资');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` tinyint(4) NULL DEFAULT NULL,
  `locked` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1dfbca02c5c911eaab09000c29ee2ecd', 'test', '$2a$10$WotpVWHe68MoR9nKafgLLO.xF89OeUvyow0g7sETuuwFsV/NoRwNe', 1, 0);
INSERT INTO `user` VALUES ('9b3d0648c38d11eaab09000c29ee2ecd', 'admin', '$2a$10$xcC5dtf2FYsx0Xa6nKnLG.vx3ShsmlbswS6U4Cm7xvA29yL9KbE.W', 1, 0);
INSERT INTO `user` VALUES ('c863dde2c38d11eaab09000c29ee2ecd', 'user', '$2a$10$xbheuUbXzfpU5CWwWek2Je6N8MAuwKiElm315Fgi9d5NmLaVobyOu', 1, 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('admin', '123456', '北京路30号', 'admin@qq.com', '438b7592c5e011eaab09000c29ee2ecd', NULL, '9b47b94dc7e711ea9fa9000c29ee2ecd', '0dfc2c70c90811ea9fa9000c29ee2ecd', NULL);
INSERT INTO `user_info` VALUES ('user', '12342314', '江门', '345@qq.com', '25cebf82c6ab11eaab09000c29ee2ecd', NULL, 'a167d3bac65711eaab09000c29ee2ecd', '622ebd21c90f11ea9fa9000c29ee2ecd', NULL);
INSERT INTO `user_info` VALUES ('xiaokang', '123', '地球', '123@qq.com', '438b7592c5e011eaab09000c29ee2ecd', NULL, 'a167d3bac65711eaab09000c29ee2ecd', '9cc4161cc8a811ea9fa9000c29ee2ecd', NULL);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1dfd15d7c5c911eaab09000c29ee2ecd', '1dfbca02c5c911eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('34613504c38e11eaab09000c29ee2ecd', '9b3d0648c38d11eaab09000c29ee2ecd', 'f410de25c38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('464863ecc77a11ea9fa9000c29ee2ecd', '4646eab6c77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('49911376c38e11eaab09000c29ee2ecd', 'c863dde2c38d11eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('963f4513ce4b11ebb88ac0b6f95d82d3', '963462bcce4b11ebb88ac0b6f95d82d3', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('aea2ef93c5c811eaab09000c29ee2ecd', 'aea16d0dc5c811eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('bb9c2169c77a11ea9fa9000c29ee2ecd', 'bb9a542fc77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('befa8284c38e11eaab09000c29ee2ecd', '9b3d0648c38d11eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('ee4d127dc77a11ea9fa9000c29ee2ecd', 'ee4bd67ac77a11ea9fa9000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');
INSERT INTO `user_role` VALUES ('f2c8b270c5c811eaab09000c29ee2ecd', 'f2c733b0c5c811eaab09000c29ee2ecd', 'f412c01ac38d11eaab09000c29ee2ecd');

SET FOREIGN_KEY_CHECKS = 1;
