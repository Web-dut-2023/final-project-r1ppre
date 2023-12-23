/*
Navicat MySQL Data Transfer

Source Server         : 本机Mysql
Source Server Version : 80017
Source Host           : 127.0.0.1:3306
Source Database       : booking

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2023-12-05 17:33:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app01_department
-- ----------------------------
DROP TABLE IF EXISTS `app01_department`;
CREATE TABLE `app01_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_department
-- ----------------------------
INSERT INTO `app01_department` VALUES ('1', '舞蹈房');
INSERT INTO `app01_department` VALUES ('2', '瑜伽室');
INSERT INTO `app01_department` VALUES ('3', '体测室');
INSERT INTO `app01_department` VALUES ('4', '健身房');
INSERT INTO `app01_department` VALUES ('5', '篮球馆');
INSERT INTO `app01_department` VALUES ('6', '羽毛球馆1');
INSERT INTO `app01_department` VALUES ('7', '羽毛球馆2');
INSERT INTO `app01_department` VALUES ('8', '羽毛球馆3');
INSERT INTO `app01_department` VALUES ('9', '羽毛球馆4');
INSERT INTO `app01_department` VALUES ('10', '羽毛球馆5');
INSERT INTO `app01_department` VALUES ('11', '羽毛球馆6');
INSERT INTO `app01_department` VALUES ('12', '羽毛球馆7');
INSERT INTO `app01_department` VALUES ('13', '羽毛球馆8');
INSERT INTO `app01_department` VALUES ('14', '乒乓球馆1');
INSERT INTO `app01_department` VALUES ('15', '乒乓球馆2');
INSERT INTO `app01_department` VALUES ('16', '乒乓球馆3');
INSERT INTO `app01_department` VALUES ('17', '乒乓球馆4');
INSERT INTO `app01_department` VALUES ('18', '乒乓球馆5');
INSERT INTO `app01_department` VALUES ('19', '乒乓球馆6');
INSERT INTO `app01_department` VALUES ('20', '乒乓球馆7');
INSERT INTO `app01_department` VALUES ('21', '乒乓球馆8');
INSERT INTO `app01_department` VALUES ('22', '乒乓球馆9');
INSERT INTO `app01_department` VALUES ('23', '乒乓球馆10');
INSERT INTO `app01_department` VALUES ('24', '乒乓球馆11');
INSERT INTO `app01_department` VALUES ('25', '乒乓球馆12');
INSERT INTO `app01_department` VALUES ('26', '乒乓球馆13');
INSERT INTO `app01_department` VALUES ('27', '乒乓球馆14');
INSERT INTO `app01_department` VALUES ('28', '乒乓球馆15');
INSERT INTO `app01_department` VALUES ('29', '乒乓球馆16');
INSERT INTO `app01_department` VALUES ('30', '乒乓球馆17');
INSERT INTO `app01_department` VALUES ('31', '乒乓球馆18');
INSERT INTO `app01_department` VALUES ('32', '乒乓球馆19');

-- ----------------------------
-- Table structure for app01_departmentpanhe
-- ----------------------------
DROP TABLE IF EXISTS `app01_departmentpanhe`;
CREATE TABLE `app01_departmentpanhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_departmentpanhe
-- ----------------------------
INSERT INTO `app01_departmentpanhe` VALUES ('1', '康复室');
INSERT INTO `app01_departmentpanhe` VALUES ('2', '健身房');
INSERT INTO `app01_departmentpanhe` VALUES ('3', '篮球馆');
INSERT INTO `app01_departmentpanhe` VALUES ('4', '羽毛球馆1');
INSERT INTO `app01_departmentpanhe` VALUES ('5', '羽毛球馆2');
INSERT INTO `app01_departmentpanhe` VALUES ('6', '羽毛球馆3');
INSERT INTO `app01_departmentpanhe` VALUES ('7', '羽毛球馆4');
INSERT INTO `app01_departmentpanhe` VALUES ('8', '乒乓球馆1');
INSERT INTO `app01_departmentpanhe` VALUES ('9', '乒乓球馆2');
INSERT INTO `app01_departmentpanhe` VALUES ('10', '乒乓球馆3');
INSERT INTO `app01_departmentpanhe` VALUES ('11', '乒乓球馆4');
INSERT INTO `app01_departmentpanhe` VALUES ('12', '乒乓球馆5');
INSERT INTO `app01_departmentpanhe` VALUES ('13', '乒乓球馆6');
INSERT INTO `app01_departmentpanhe` VALUES ('14', '乒乓球馆7');
INSERT INTO `app01_departmentpanhe` VALUES ('15', '乒乓球馆8');
INSERT INTO `app01_departmentpanhe` VALUES ('16', '乒乓球馆9');
INSERT INTO `app01_departmentpanhe` VALUES ('17', '乒乓球馆10');
INSERT INTO `app01_departmentpanhe` VALUES ('18', '乒乓球馆11');
INSERT INTO `app01_departmentpanhe` VALUES ('19', '乒乓球馆12');
INSERT INTO `app01_departmentpanhe` VALUES ('20', '乒乓球馆13');
INSERT INTO `app01_departmentpanhe` VALUES ('21', '乒乓球馆14');
INSERT INTO `app01_departmentpanhe` VALUES ('22', '乒乓球馆15');
INSERT INTO `app01_departmentpanhe` VALUES ('23', '乒乓球馆16');
INSERT INTO `app01_departmentpanhe` VALUES ('24', '乒乓球馆17');
INSERT INTO `app01_departmentpanhe` VALUES ('25', '乒乓球馆18');
INSERT INTO `app01_departmentpanhe` VALUES ('26', '乒乓球馆19');
INSERT INTO `app01_departmentpanhe` VALUES ('27', '乒乓球馆20');
INSERT INTO `app01_departmentpanhe` VALUES ('28', '乒乓球馆21');
INSERT INTO `app01_departmentpanhe` VALUES ('29', '乒乓球馆22');

-- ----------------------------
-- Table structure for app01_dmin
-- ----------------------------
DROP TABLE IF EXISTS `app01_dmin`;
CREATE TABLE `app01_dmin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_dmin
-- ----------------------------
INSERT INTO `app01_dmin` VALUES ('1', 'test', '123456');
INSERT INTO `app01_dmin` VALUES ('2', 'test1', '123456');

-- ----------------------------
-- Table structure for app01_order
-- ----------------------------
DROP TABLE IF EXISTS `app01_order`;
CREATE TABLE `app01_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` datetime NOT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `app01_order_admin_id_06590413_fk_app01_dmin_id` (`admin_id`) USING BTREE,
  CONSTRAINT `app01_order_admin_id_06590413_fk_app01_dmin_id` FOREIGN KEY (`admin_id`) REFERENCES `app01_dmin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_order
-- ----------------------------
INSERT INTO `app01_order` VALUES ('115', '202312051714203129', '羽毛球馆5', '2023-12-06 10:00:00', '2023-12-06 12:00:00', '1', '1');

-- ----------------------------
-- Table structure for app01_orderpanhe
-- ----------------------------
DROP TABLE IF EXISTS `app01_orderpanhe`;
CREATE TABLE `app01_orderpanhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` datetime NOT NULL,
  `endtime` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `app01_order_admin_id_06590413_fk_app01_dmin_id` (`admin_id`) USING BTREE,
  CONSTRAINT `app01_orderpanhe_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `app01_dmin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_orderpanhe
-- ----------------------------

-- ----------------------------
-- Table structure for app01_prettynum
-- ----------------------------
DROP TABLE IF EXISTS `app01_prettynum`;
CREATE TABLE `app01_prettynum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(11) NOT NULL,
  `level` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_prettynum
-- ----------------------------

-- ----------------------------
-- Table structure for app01_task
-- ----------------------------
DROP TABLE IF EXISTS `app01_task`;
CREATE TABLE `app01_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` smallint(6) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `app01_task_user_id_93daa16a_fk_app01_dmin_id` (`user_id`) USING BTREE,
  CONSTRAINT `app01_task_user_id_93daa16a_fk_app01_dmin_id` FOREIGN KEY (`user_id`) REFERENCES `app01_dmin` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_task
-- ----------------------------

-- ----------------------------
-- Table structure for app01_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `app01_userinfo`;
CREATE TABLE `app01_userinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `account` decimal(10,2) NOT NULL,
  `create_time` date NOT NULL,
  `gender` smallint(6) NOT NULL,
  `depart_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` (`depart_id`) USING BTREE,
  CONSTRAINT `app01_userinfo_depart_id_e22e0907_fk_app01_department_id` FOREIGN KEY (`depart_id`) REFERENCES `app01_department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of app01_userinfo
-- ----------------------------
INSERT INTO `app01_userinfo` VALUES ('1', 'admin', '123456', '1', '1.00', '2023-12-05', '1', '1');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add department', '7', 'add_department');
INSERT INTO `auth_permission` VALUES ('26', 'Can change department', '7', 'change_department');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete department', '7', 'delete_department');
INSERT INTO `auth_permission` VALUES ('28', 'Can view department', '7', 'view_department');
INSERT INTO `auth_permission` VALUES ('29', 'Can add dmin', '8', 'add_dmin');
INSERT INTO `auth_permission` VALUES ('30', 'Can change dmin', '8', 'change_dmin');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete dmin', '8', 'delete_dmin');
INSERT INTO `auth_permission` VALUES ('32', 'Can view dmin', '8', 'view_dmin');
INSERT INTO `auth_permission` VALUES ('33', 'Can add pretty num', '9', 'add_prettynum');
INSERT INTO `auth_permission` VALUES ('34', 'Can change pretty num', '9', 'change_prettynum');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete pretty num', '9', 'delete_prettynum');
INSERT INTO `auth_permission` VALUES ('36', 'Can view pretty num', '9', 'view_prettynum');
INSERT INTO `auth_permission` VALUES ('37', 'Can add user info', '10', 'add_userinfo');
INSERT INTO `auth_permission` VALUES ('38', 'Can change user info', '10', 'change_userinfo');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete user info', '10', 'delete_userinfo');
INSERT INTO `auth_permission` VALUES ('40', 'Can view user info', '10', 'view_userinfo');
INSERT INTO `auth_permission` VALUES ('41', 'Can add task', '11', 'add_task');
INSERT INTO `auth_permission` VALUES ('42', 'Can change task', '11', 'change_task');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete task', '11', 'delete_task');
INSERT INTO `auth_permission` VALUES ('44', 'Can view task', '11', 'view_task');
INSERT INTO `auth_permission` VALUES ('45', 'Can add order', '12', 'add_order');
INSERT INTO `auth_permission` VALUES ('46', 'Can change order', '12', 'change_order');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete order', '12', 'delete_order');
INSERT INTO `auth_permission` VALUES ('48', 'Can view order', '12', 'view_order');
INSERT INTO `auth_permission` VALUES ('49', 'Can add orderpanhe', '13', 'add_orderpanhe');
INSERT INTO `auth_permission` VALUES ('50', 'Can change orderpanhe', '13', 'change_orderpanhe');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete orderpanhe', '13', 'delete_orderpanhe');
INSERT INTO `auth_permission` VALUES ('52', 'Can view orderpanhe', '13', 'view_orderpanhe');
INSERT INTO `auth_permission` VALUES ('53', 'Can add departmentpanhe', '14', 'add_departmentpanhe');
INSERT INTO `auth_permission` VALUES ('54', 'Can change departmentpanhe', '14', 'change_departmentpanhe');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete departmentpanhe', '14', 'delete_departmentpanhe');
INSERT INTO `auth_permission` VALUES ('56', 'Can view departmentpanhe', '14', 'view_departmentpanhe');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$390000$8GO5FdPpsztJXOxK561cVn$SiripFywPRx7ZGEWLEluja9TFuQaukW0gokEVyKYQys=', '2023-12-05 09:19:45.727236', '1', 'admin', '1234@1234', '', '1234567@qq.com', '1', '1', '2023-12-05 08:21:55.492675');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`) USING BTREE,
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`) USING BTREE,
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('3', '2023-12-05 08:24:18.341095', '1', 'gxr', '3', '', '4', '2');
INSERT INTO `django_admin_log` VALUES ('4', '2023-12-05 08:25:45.617118', '15', 'Orderpanhe object (15)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('5', '2023-12-05 08:25:45.622040', '13', 'Orderpanhe object (13)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('6', '2023-12-05 08:25:45.627763', '12', 'Orderpanhe object (12)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('7', '2023-12-05 08:25:45.631252', '11', 'Orderpanhe object (11)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('8', '2023-12-05 08:25:45.635140', '10', 'Orderpanhe object (10)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('9', '2023-12-05 08:25:45.638974', '9', 'Orderpanhe object (9)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('10', '2023-12-05 08:25:45.643669', '7', 'Orderpanhe object (7)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('11', '2023-12-05 08:25:45.647304', '6', 'Orderpanhe object (6)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('12', '2023-12-05 08:25:45.651118', '5', 'Orderpanhe object (5)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('13', '2023-12-05 08:25:45.655171', '4', 'Orderpanhe object (4)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('14', '2023-12-05 08:25:45.659566', '3', 'Orderpanhe object (3)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('15', '2023-12-05 08:25:45.663732', '1', 'Orderpanhe object (1)', '3', '', '13', '2');
INSERT INTO `django_admin_log` VALUES ('16', '2023-12-05 08:42:16.272560', '111', 'Order object (111)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('17', '2023-12-05 08:42:16.276380', '110', 'Order object (110)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('18', '2023-12-05 08:42:16.280325', '109', 'Order object (109)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('19', '2023-12-05 08:42:16.284726', '105', 'Order object (105)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('20', '2023-12-05 08:42:16.289610', '104', 'Order object (104)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2023-12-05 08:42:16.293715', '103', 'Order object (103)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2023-12-05 08:42:16.297859', '102', 'Order object (102)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2023-12-05 08:42:16.321759', '101', 'Order object (101)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2023-12-05 08:42:16.324786', '100', 'Order object (100)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('25', '2023-12-05 08:42:16.328008', '99', 'Order object (99)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('26', '2023-12-05 08:42:16.331250', '98', 'Order object (98)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('27', '2023-12-05 08:42:16.334862', '97', 'Order object (97)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('28', '2023-12-05 08:42:16.337985', '96', 'Order object (96)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('29', '2023-12-05 08:42:16.341516', '95', 'Order object (95)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('30', '2023-12-05 08:42:16.344642', '82', 'Order object (82)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('31', '2023-12-05 08:42:16.348113', '30', 'Order object (30)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('32', '2023-12-05 08:42:16.352114', '29', 'Order object (29)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('33', '2023-12-05 08:42:16.355285', '28', 'Order object (28)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('34', '2023-12-05 08:42:16.357951', '27', 'Order object (27)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('35', '2023-12-05 08:42:16.361938', '26', 'Order object (26)', '3', '', '12', '2');
INSERT INTO `django_admin_log` VALUES ('36', '2023-12-05 09:19:56.781240', '34', '游泳池', '3', '', '7', '2');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('7', 'app01', 'department');
INSERT INTO `django_content_type` VALUES ('14', 'app01', 'departmentpanhe');
INSERT INTO `django_content_type` VALUES ('8', 'app01', 'dmin');
INSERT INTO `django_content_type` VALUES ('12', 'app01', 'order');
INSERT INTO `django_content_type` VALUES ('13', 'app01', 'orderpanhe');
INSERT INTO `django_content_type` VALUES ('9', 'app01', 'prettynum');
INSERT INTO `django_content_type` VALUES ('11', 'app01', 'task');
INSERT INTO `django_content_type` VALUES ('10', 'app01', 'userinfo');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('13qdehk94ueqkmq48bdxlnexjkz1icye', '.eJzVVtuK2zAQ_ZWg51xsS7bkPPby0IdCWCgt1EvQZZy4jS9INrSE_Hsle1sS17s2S9LuPo2lOZqjM8cDOqIs5zvYylIBWqO37zZfPqM52howJiuLLfyoMv0TrSOPMM-bo6xIS7Q-okyhtT9HBc_dsRpMjU72GG_q_bYxoLcOgAJ0sSe4_A6FS6hvvNiVS1kWtc7E0kGWD1mz_GjvcnjzgL0osOdmb0_7mAVCYVAkhoAxkVImKJYhBiBMcZ9IzMKQRSGhlHGIo9RTAZW-FCwGTCNXNIeiMbbW12PSqkjQepaguw-bzd37JGlCirkNccwiFxgjNlDgbkUF910gnluFxAMXcOolaG5rZFZVVy3lepbyhcy0PECXzJ0249KXxLYCASxsiFjgt_XaC1ze45x5nKvRhy634irPihWvKs9fKai4rq38etXBuFKfxpAW84AWGriSusnFgIqbtu80n920Zad7l4ZMuazvecFUwkt5TAjP5dIwfLZHpVagx-zpQK_Jmec2qu8MHiAMgyj9p9NT8WIP00eog79Qt67avL5bZCrhjeZoklFnyNfk0bUmKhwgpBEVv6vZVRgwRx9geq1Rcp9j89N-vkxDrtOfvhNRf8MfoGaCkzbI9l8gTDpqzNobUIL_5jSO0-wzOKgFP9Sjj5FzOcMC3IPsEXvte23l0k-4-wcy0dzriB5ycaLQvi1sqBZI8sgtXBGzkOXuiZbtdNlUIz3rMP-9aZOE9lsW9zfo6R6dfgFPv92M:1rARaj:Mm5WuqV_0n_N3Usv5aUwDHkCEwODozpHKm4SgVg4LkA', '2023-12-12 09:19:45.836881');
INSERT INTO `django_session` VALUES ('vwo1z3phq628g9kmvsetlq9elzs302j6', 'eyJpbWFnZV9jb2RlIjoiTElBTFMiLCJfc2Vzc2lvbl9leHBpcnkiOjYwfQ:1rAR9s:VGVE7Yf9dhyD8cZW0C6j24qGh7NO1zeZ8g5ZFBy71z0', '2023-12-05 08:53:00.823168');
