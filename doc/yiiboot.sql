/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : yiiboot

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-04 13:19:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `controller_id` varchar(20) DEFAULT NULL COMMENT '控制器ID',
  `action_id` varchar(20) DEFAULT NULL COMMENT '方法ID',
  `url` varchar(200) DEFAULT NULL COMMENT '访问地址',
  `module_name` varchar(50) DEFAULT NULL COMMENT '模块',
  `func_name` varchar(50) DEFAULT NULL COMMENT '功能',
  `right_name` varchar(50) DEFAULT NULL COMMENT '方法',
  `client_ip` varchar(15) DEFAULT NULL COMMENT '客户端IP',
  `create_user` varchar(50) DEFAULT NULL COMMENT '用户',
  `create_date` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `index_create_date` (`create_date`),
  KEY `index_create_index` (`create_user`),
  KEY `index_url` (`url`)
) ENGINE=InnoDB AUTO_INCREMENT=2685 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 02:43:01');
INSERT INTO `admin_log` VALUES ('2', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 02:43:20');
INSERT INTO `admin_log` VALUES ('3', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 02:46:28');
INSERT INTO `admin_log` VALUES ('4', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 02:46:29');
INSERT INTO `admin_log` VALUES ('5', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 02:46:50');
INSERT INTO `admin_log` VALUES ('6', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 02:48:24');
INSERT INTO `admin_log` VALUES ('7', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 02:48:25');
INSERT INTO `admin_log` VALUES ('8', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:48:35');
INSERT INTO `admin_log` VALUES ('9', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:48:44');
INSERT INTO `admin_log` VALUES ('10', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 02:49:45');
INSERT INTO `admin_log` VALUES ('11', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:49:46');
INSERT INTO `admin_log` VALUES ('12', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:49:48');
INSERT INTO `admin_log` VALUES ('13', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:50:22');
INSERT INTO `admin_log` VALUES ('14', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 02:50:55');
INSERT INTO `admin_log` VALUES ('15', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 02:50:57');
INSERT INTO `admin_log` VALUES ('16', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:51:12');
INSERT INTO `admin_log` VALUES ('17', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:51:17');
INSERT INTO `admin_log` VALUES ('18', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:51:28');
INSERT INTO `admin_log` VALUES ('19', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:51:43');
INSERT INTO `admin_log` VALUES ('20', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:53:39');
INSERT INTO `admin_log` VALUES ('21', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:53:43');
INSERT INTO `admin_log` VALUES ('22', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:53:48');
INSERT INTO `admin_log` VALUES ('23', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:53:52');
INSERT INTO `admin_log` VALUES ('24', 'front-category', 'delete', 'front-category/delete', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:54:43');
INSERT INTO `admin_log` VALUES ('25', 'front-category', 'delete', 'front-category/delete', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:54:44');
INSERT INTO `admin_log` VALUES ('26', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:54:45');
INSERT INTO `admin_log` VALUES ('27', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:54:46');
INSERT INTO `admin_log` VALUES ('28', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:54:51');
INSERT INTO `admin_log` VALUES ('29', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:54:58');
INSERT INTO `admin_log` VALUES ('30', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:55:20');
INSERT INTO `admin_log` VALUES ('31', 'admin-role', 'view', 'admin-role/view', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:55:26');
INSERT INTO `admin_log` VALUES ('32', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 02:55:42');
INSERT INTO `admin_log` VALUES ('33', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 02:57:30');
INSERT INTO `admin_log` VALUES ('34', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:09:01');
INSERT INTO `admin_log` VALUES ('35', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:09:04');
INSERT INTO `admin_log` VALUES ('36', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 03:10:22');
INSERT INTO `admin_log` VALUES ('37', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:10:24');
INSERT INTO `admin_log` VALUES ('38', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:10:31');
INSERT INTO `admin_log` VALUES ('39', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:10:34');
INSERT INTO `admin_log` VALUES ('40', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 03:10:52');
INSERT INTO `admin_log` VALUES ('41', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:10:53');
INSERT INTO `admin_log` VALUES ('42', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2017-03-16 03:10:55');
INSERT INTO `admin_log` VALUES ('43', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2017-03-16 03:10:57');
INSERT INTO `admin_log` VALUES ('44', 'admin-user', 'view', 'admin-user/view', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2017-03-16 03:11:02');
INSERT INTO `admin_log` VALUES ('45', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:11:07');
INSERT INTO `admin_log` VALUES ('46', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2017-03-16 03:11:10');
INSERT INTO `admin_log` VALUES ('47', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:11:20');
INSERT INTO `admin_log` VALUES ('48', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:11:23');
INSERT INTO `admin_log` VALUES ('49', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:11:28');
INSERT INTO `admin_log` VALUES ('50', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 03:11:42');
INSERT INTO `admin_log` VALUES ('51', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-16 03:24:12');
INSERT INTO `admin_log` VALUES ('52', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:24:17');
INSERT INTO `admin_log` VALUES ('53', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:25:07');
INSERT INTO `admin_log` VALUES ('54', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:28:28');
INSERT INTO `admin_log` VALUES ('55', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-16 03:29:38');
INSERT INTO `admin_log` VALUES ('56', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:29:41');
INSERT INTO `admin_log` VALUES ('57', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2017-03-16 03:30:14');
INSERT INTO `admin_log` VALUES ('58', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:30:18');
INSERT INTO `admin_log` VALUES ('59', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', 'Unknown', 'admin', '2017-03-16 03:30:20');
INSERT INTO `admin_log` VALUES ('60', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:30:25');
INSERT INTO `admin_log` VALUES ('61', 'front-category', 'create', 'front-category/create', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:32:17');
INSERT INTO `admin_log` VALUES ('62', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:32:18');
INSERT INTO `admin_log` VALUES ('63', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:37:22');
INSERT INTO `admin_log` VALUES ('64', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:37:28');
INSERT INTO `admin_log` VALUES ('65', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:37:32');
INSERT INTO `admin_log` VALUES ('66', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:37:35');
INSERT INTO `admin_log` VALUES ('67', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:37:39');
INSERT INTO `admin_log` VALUES ('68', 'admin-menu', 'update', 'admin-menu/update', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 03:38:09');
INSERT INTO `admin_log` VALUES ('69', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:38:10');
INSERT INTO `admin_log` VALUES ('70', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-16 03:38:14');
INSERT INTO `admin_log` VALUES ('71', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-16 03:38:25');
INSERT INTO `admin_log` VALUES ('72', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:38:32');
INSERT INTO `admin_log` VALUES ('73', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:38:35');
INSERT INTO `admin_log` VALUES ('74', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:38:38');
INSERT INTO `admin_log` VALUES ('75', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2017-03-16 03:38:55');
INSERT INTO `admin_log` VALUES ('76', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:38:56');
INSERT INTO `admin_log` VALUES ('77', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 03:39:18');
INSERT INTO `admin_log` VALUES ('78', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:39:19');
INSERT INTO `admin_log` VALUES ('79', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:39:23');
INSERT INTO `admin_log` VALUES ('80', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:39:26');
INSERT INTO `admin_log` VALUES ('81', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_log` VALUES ('82', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 03:39:42');
INSERT INTO `admin_log` VALUES ('83', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:39:47');
INSERT INTO `admin_log` VALUES ('84', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2017-03-16 03:39:49');
INSERT INTO `admin_log` VALUES ('85', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:39:57');
INSERT INTO `admin_log` VALUES ('86', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:40:00');
INSERT INTO `admin_log` VALUES ('87', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 03:40:04');
INSERT INTO `admin_log` VALUES ('88', 'penngo-word', 'index', 'penngo-word/index', '789速贷', '敏感词', '操作', 'Unknown', 'admin', '2017-03-16 03:40:16');
INSERT INTO `admin_log` VALUES ('89', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:40:35');
INSERT INTO `admin_log` VALUES ('90', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:43:25');
INSERT INTO `admin_log` VALUES ('91', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:43:48');
INSERT INTO `admin_log` VALUES ('92', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:43:57');
INSERT INTO `admin_log` VALUES ('93', 'front-category', 'delete', 'front-category/delete', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:02');
INSERT INTO `admin_log` VALUES ('94', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:03');
INSERT INTO `admin_log` VALUES ('95', 'front-category', 'create', 'front-category/create', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:24');
INSERT INTO `admin_log` VALUES ('96', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:26');
INSERT INTO `admin_log` VALUES ('97', 'front-category', 'create', 'front-category/create', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:42');
INSERT INTO `admin_log` VALUES ('98', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:44:43');
INSERT INTO `admin_log` VALUES ('99', 'front-category', 'create', 'front-category/create', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:01');
INSERT INTO `admin_log` VALUES ('100', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:03');
INSERT INTO `admin_log` VALUES ('101', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:07');
INSERT INTO `admin_log` VALUES ('102', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:11');
INSERT INTO `admin_log` VALUES ('103', 'penngo-word', 'index', 'penngo-word/index', '789速贷', '敏感词', '操作', 'Unknown', 'admin', '2017-03-16 03:45:23');
INSERT INTO `admin_log` VALUES ('104', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:29');
INSERT INTO `admin_log` VALUES ('105', 'front-category', 'view', 'front-category/view', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:45:44');
INSERT INTO `admin_log` VALUES ('106', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 03:46:10');
INSERT INTO `admin_log` VALUES ('107', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:46:14');
INSERT INTO `admin_log` VALUES ('108', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:46:17');
INSERT INTO `admin_log` VALUES ('109', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:46:21');
INSERT INTO `admin_log` VALUES ('110', 'admin-menu', 'update', 'admin-menu/update', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 03:46:28');
INSERT INTO `admin_log` VALUES ('111', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 03:46:29');
INSERT INTO `admin_log` VALUES ('112', 'front-category', 'index', 'front-category/index', '789速贷', '类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:46:33');
INSERT INTO `admin_log` VALUES ('113', 'front-category', 'index', 'front-category/index', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 03:46:45');
INSERT INTO `admin_log` VALUES ('114', 'front-category', 'view', 'front-category/view', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:35:43');
INSERT INTO `admin_log` VALUES ('115', 'front-category', 'view', 'front-category/view', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:35:46');
INSERT INTO `admin_log` VALUES ('116', 'front-category', 'index', 'front-category/index', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:38:03');
INSERT INTO `admin_log` VALUES ('117', 'front-category', 'view', 'front-category/view', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:38:18');
INSERT INTO `admin_log` VALUES ('118', 'front-category', 'index', 'front-category/index', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:40:11');
INSERT INTO `admin_log` VALUES ('119', 'front-category', 'view', 'front-category/view', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:40:16');
INSERT INTO `admin_log` VALUES ('120', 'front-category', 'view', 'front-category/view', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:40:57');
INSERT INTO `admin_log` VALUES ('121', 'penngo-word', 'index', 'penngo-word/index', '789速贷', '敏感词', '操作', 'Unknown', 'admin', '2017-03-16 04:43:38');
INSERT INTO `admin_log` VALUES ('122', 'front-category', 'index', 'front-category/index', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:43:44');
INSERT INTO `admin_log` VALUES ('123', 'front-category', 'index', 'front-category/index', '789速贷', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 04:44:09');
INSERT INTO `admin_log` VALUES ('124', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 04:49:22');
INSERT INTO `admin_log` VALUES ('125', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 04:49:26');
INSERT INTO `admin_log` VALUES ('126', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 04:51:20');
INSERT INTO `admin_log` VALUES ('127', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 04:51:22');
INSERT INTO `admin_log` VALUES ('128', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 04:51:25');
INSERT INTO `admin_log` VALUES ('129', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 04:51:28');
INSERT INTO `admin_log` VALUES ('130', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_log` VALUES ('131', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 04:51:43');
INSERT INTO `admin_log` VALUES ('132', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 04:51:47');
INSERT INTO `admin_log` VALUES ('133', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 04:51:51');
INSERT INTO `admin_log` VALUES ('134', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 04:51:55');
INSERT INTO `admin_log` VALUES ('135', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:52:19');
INSERT INTO `admin_log` VALUES ('136', 'front-identity', 'create', 'front-identity/create', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:52:40');
INSERT INTO `admin_log` VALUES ('137', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:52:42');
INSERT INTO `admin_log` VALUES ('138', 'front-identity', 'create', 'front-identity/create', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:52:54');
INSERT INTO `admin_log` VALUES ('139', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:52:56');
INSERT INTO `admin_log` VALUES ('140', 'front-identity', 'create', 'front-identity/create', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:53:14');
INSERT INTO `admin_log` VALUES ('141', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:53:15');
INSERT INTO `admin_log` VALUES ('142', 'front-identity', 'create', 'front-identity/create', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:53:28');
INSERT INTO `admin_log` VALUES ('143', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:53:29');
INSERT INTO `admin_log` VALUES ('144', 'front-identity', 'view', 'front-identity/view', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:19');
INSERT INTO `admin_log` VALUES ('145', 'front-identity', 'view', 'front-identity/view', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:27');
INSERT INTO `admin_log` VALUES ('146', 'front-identity', 'update', 'front-identity/update', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:33');
INSERT INTO `admin_log` VALUES ('147', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:34');
INSERT INTO `admin_log` VALUES ('148', 'front-identity', 'view', 'front-identity/view', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:36');
INSERT INTO `admin_log` VALUES ('149', 'front-identity', 'view', 'front-identity/view', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:43');
INSERT INTO `admin_log` VALUES ('150', 'front-identity', 'update', 'front-identity/update', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:48');
INSERT INTO `admin_log` VALUES ('151', 'front-identity', 'index', 'front-identity/index', '789速贷', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 04:54:49');
INSERT INTO `admin_log` VALUES ('152', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:39:07');
INSERT INTO `admin_log` VALUES ('153', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:39:17');
INSERT INTO `admin_log` VALUES ('154', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:40:05');
INSERT INTO `admin_log` VALUES ('155', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:40:07');
INSERT INTO `admin_log` VALUES ('156', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:41:10');
INSERT INTO `admin_log` VALUES ('157', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:41:11');
INSERT INTO `admin_log` VALUES ('158', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:41:30');
INSERT INTO `admin_log` VALUES ('159', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:41:32');
INSERT INTO `admin_log` VALUES ('160', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:42:20');
INSERT INTO `admin_log` VALUES ('161', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:42:33');
INSERT INTO `admin_log` VALUES ('162', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:42:45');
INSERT INTO `admin_log` VALUES ('163', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:42:46');
INSERT INTO `admin_log` VALUES ('164', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:42:47');
INSERT INTO `admin_log` VALUES ('165', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:42:52');
INSERT INTO `admin_log` VALUES ('166', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:42:54');
INSERT INTO `admin_log` VALUES ('167', 'admin-module', 'create', 'admin-module/create', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:43:17');
INSERT INTO `admin_log` VALUES ('168', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:43:18');
INSERT INTO `admin_log` VALUES ('169', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:43:28');
INSERT INTO `admin_log` VALUES ('170', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:43:33');
INSERT INTO `admin_log` VALUES ('171', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:43:35');
INSERT INTO `admin_log` VALUES ('172', 'admin-module', 'view', 'admin-module/view', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:43:36');
INSERT INTO `admin_log` VALUES ('173', 'admin-module', 'update', 'admin-module/update', '菜单用户权限', '菜单管理', '一级菜单添加', 'Unknown', 'admin', '2017-03-16 05:43:45');
INSERT INTO `admin_log` VALUES ('174', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 05:43:46');
INSERT INTO `admin_log` VALUES ('175', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 05:52:38');
INSERT INTO `admin_log` VALUES ('176', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 05:52:42');
INSERT INTO `admin_log` VALUES ('177', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', 'Unknown', 'admin', '2017-03-16 05:52:46');
INSERT INTO `admin_log` VALUES ('178', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 05:52:50');
INSERT INTO `admin_log` VALUES ('179', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 05:52:51');
INSERT INTO `admin_log` VALUES ('180', 'penngo-word', 'index', 'penngo-word/index', '分类管理', '敏感词', '操作', 'Unknown', 'admin', '2017-03-16 05:52:54');
INSERT INTO `admin_log` VALUES ('181', 'penngo-word', 'index', 'penngo-word/index', '分类管理', '敏感词', '操作', 'Unknown', 'admin', '2017-03-16 05:52:55');
INSERT INTO `admin_log` VALUES ('182', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-16 05:53:06');
INSERT INTO `admin_log` VALUES ('183', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-16 06:11:02');
INSERT INTO `admin_log` VALUES ('184', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 06:11:08');
INSERT INTO `admin_log` VALUES ('185', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-16 06:11:47');
INSERT INTO `admin_log` VALUES ('186', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-16 06:11:48');
INSERT INTO `admin_log` VALUES ('187', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 06:11:52');
INSERT INTO `admin_log` VALUES ('188', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 06:11:54');
INSERT INTO `admin_log` VALUES ('189', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_log` VALUES ('190', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-16 06:12:10');
INSERT INTO `admin_log` VALUES ('191', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 06:12:14');
INSERT INTO `admin_log` VALUES ('192', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 06:12:17');
INSERT INTO `admin_log` VALUES ('193', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-16 06:12:39');
INSERT INTO `admin_log` VALUES ('194', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:12:57');
INSERT INTO `admin_log` VALUES ('195', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:25:34');
INSERT INTO `admin_log` VALUES ('196', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:25:37');
INSERT INTO `admin_log` VALUES ('197', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:25:40');
INSERT INTO `admin_log` VALUES ('198', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:26:28');
INSERT INTO `admin_log` VALUES ('199', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:26:30');
INSERT INTO `admin_log` VALUES ('200', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:29:48');
INSERT INTO `admin_log` VALUES ('201', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:30:12');
INSERT INTO `admin_log` VALUES ('202', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:30:23');
INSERT INTO `admin_log` VALUES ('203', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:30:35');
INSERT INTO `admin_log` VALUES ('204', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:30:53');
INSERT INTO `admin_log` VALUES ('205', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:31:05');
INSERT INTO `admin_log` VALUES ('206', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:31:26');
INSERT INTO `admin_log` VALUES ('207', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:31:27');
INSERT INTO `admin_log` VALUES ('208', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:36:07');
INSERT INTO `admin_log` VALUES ('209', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:41:03');
INSERT INTO `admin_log` VALUES ('210', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:41:41');
INSERT INTO `admin_log` VALUES ('211', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:45:10');
INSERT INTO `admin_log` VALUES ('212', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:46:15');
INSERT INTO `admin_log` VALUES ('213', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:49:13');
INSERT INTO `admin_log` VALUES ('214', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:54:36');
INSERT INTO `admin_log` VALUES ('215', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:55:32');
INSERT INTO `admin_log` VALUES ('216', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:56:06');
INSERT INTO `admin_log` VALUES ('217', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:57:09');
INSERT INTO `admin_log` VALUES ('218', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:57:34');
INSERT INTO `admin_log` VALUES ('219', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:57:53');
INSERT INTO `admin_log` VALUES ('220', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:57:54');
INSERT INTO `admin_log` VALUES ('221', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 06:57:59');
INSERT INTO `admin_log` VALUES ('222', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:05:54');
INSERT INTO `admin_log` VALUES ('223', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:06:51');
INSERT INTO `admin_log` VALUES ('224', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:07:27');
INSERT INTO `admin_log` VALUES ('225', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:07:36');
INSERT INTO `admin_log` VALUES ('226', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:10:41');
INSERT INTO `admin_log` VALUES ('227', 'front-product', 'delete', 'front-product/delete', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:10:51');
INSERT INTO `admin_log` VALUES ('228', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:10:52');
INSERT INTO `admin_log` VALUES ('229', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:19:28');
INSERT INTO `admin_log` VALUES ('230', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:21:08');
INSERT INTO `admin_log` VALUES ('231', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:21:09');
INSERT INTO `admin_log` VALUES ('232', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:21:31');
INSERT INTO `admin_log` VALUES ('233', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:22:36');
INSERT INTO `admin_log` VALUES ('234', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:23:44');
INSERT INTO `admin_log` VALUES ('235', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:24:20');
INSERT INTO `admin_log` VALUES ('236', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:24:23');
INSERT INTO `admin_log` VALUES ('237', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:25:03');
INSERT INTO `admin_log` VALUES ('238', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:25:51');
INSERT INTO `admin_log` VALUES ('239', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:27:49');
INSERT INTO `admin_log` VALUES ('240', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:29:26');
INSERT INTO `admin_log` VALUES ('241', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:30:08');
INSERT INTO `admin_log` VALUES ('242', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:31:25');
INSERT INTO `admin_log` VALUES ('243', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:33:02');
INSERT INTO `admin_log` VALUES ('244', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:33:47');
INSERT INTO `admin_log` VALUES ('245', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:33:48');
INSERT INTO `admin_log` VALUES ('246', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:33:51');
INSERT INTO `admin_log` VALUES ('247', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:34:02');
INSERT INTO `admin_log` VALUES ('248', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:38:17');
INSERT INTO `admin_log` VALUES ('249', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:39:25');
INSERT INTO `admin_log` VALUES ('250', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:39:49');
INSERT INTO `admin_log` VALUES ('251', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:39:50');
INSERT INTO `admin_log` VALUES ('252', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:40:14');
INSERT INTO `admin_log` VALUES ('253', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:40:16');
INSERT INTO `admin_log` VALUES ('254', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:43:13');
INSERT INTO `admin_log` VALUES ('255', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:44:45');
INSERT INTO `admin_log` VALUES ('256', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:05');
INSERT INTO `admin_log` VALUES ('257', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:07');
INSERT INTO `admin_log` VALUES ('258', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:08');
INSERT INTO `admin_log` VALUES ('259', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:18');
INSERT INTO `admin_log` VALUES ('260', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:35');
INSERT INTO `admin_log` VALUES ('261', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:45:47');
INSERT INTO `admin_log` VALUES ('262', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 07:54:30');
INSERT INTO `admin_log` VALUES ('263', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:22:24');
INSERT INTO `admin_log` VALUES ('264', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:23:53');
INSERT INTO `admin_log` VALUES ('265', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:25:02');
INSERT INTO `admin_log` VALUES ('266', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:25:03');
INSERT INTO `admin_log` VALUES ('267', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:25:59');
INSERT INTO `admin_log` VALUES ('268', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:27:01');
INSERT INTO `admin_log` VALUES ('269', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:32:03');
INSERT INTO `admin_log` VALUES ('270', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:32:56');
INSERT INTO `admin_log` VALUES ('271', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:47:30');
INSERT INTO `admin_log` VALUES ('272', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:48:58');
INSERT INTO `admin_log` VALUES ('273', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:48:59');
INSERT INTO `admin_log` VALUES ('274', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:49:03');
INSERT INTO `admin_log` VALUES ('275', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-16 09:51:21');
INSERT INTO `admin_log` VALUES ('276', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:28:53');
INSERT INTO `admin_log` VALUES ('277', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:32:35');
INSERT INTO `admin_log` VALUES ('278', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:33:24');
INSERT INTO `admin_log` VALUES ('279', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:33:44');
INSERT INTO `admin_log` VALUES ('280', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:34:10');
INSERT INTO `admin_log` VALUES ('281', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:34:48');
INSERT INTO `admin_log` VALUES ('282', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:35:45');
INSERT INTO `admin_log` VALUES ('283', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:38:13');
INSERT INTO `admin_log` VALUES ('284', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:38:51');
INSERT INTO `admin_log` VALUES ('285', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 02:38:58');
INSERT INTO `admin_log` VALUES ('286', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:21:28');
INSERT INTO `admin_log` VALUES ('287', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:21:58');
INSERT INTO `admin_log` VALUES ('288', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:25:54');
INSERT INTO `admin_log` VALUES ('289', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:26:19');
INSERT INTO `admin_log` VALUES ('290', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:27:24');
INSERT INTO `admin_log` VALUES ('291', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:29:49');
INSERT INTO `admin_log` VALUES ('292', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:30:11');
INSERT INTO `admin_log` VALUES ('293', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:30:12');
INSERT INTO `admin_log` VALUES ('294', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:30:16');
INSERT INTO `admin_log` VALUES ('295', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:32:11');
INSERT INTO `admin_log` VALUES ('296', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:32:13');
INSERT INTO `admin_log` VALUES ('297', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:33:55');
INSERT INTO `admin_log` VALUES ('298', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:44:49');
INSERT INTO `admin_log` VALUES ('299', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:45:10');
INSERT INTO `admin_log` VALUES ('300', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:45:37');
INSERT INTO `admin_log` VALUES ('301', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:46:04');
INSERT INTO `admin_log` VALUES ('302', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:46:43');
INSERT INTO `admin_log` VALUES ('303', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:47:27');
INSERT INTO `admin_log` VALUES ('304', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:48:41');
INSERT INTO `admin_log` VALUES ('305', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:48:48');
INSERT INTO `admin_log` VALUES ('306', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:48:55');
INSERT INTO `admin_log` VALUES ('307', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:49:06');
INSERT INTO `admin_log` VALUES ('308', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:49:23');
INSERT INTO `admin_log` VALUES ('309', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:51:25');
INSERT INTO `admin_log` VALUES ('310', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:53:48');
INSERT INTO `admin_log` VALUES ('311', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:53:50');
INSERT INTO `admin_log` VALUES ('312', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:56:25');
INSERT INTO `admin_log` VALUES ('313', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:56:53');
INSERT INTO `admin_log` VALUES ('314', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:59:23');
INSERT INTO `admin_log` VALUES ('315', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:59:52');
INSERT INTO `admin_log` VALUES ('316', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 03:59:53');
INSERT INTO `admin_log` VALUES ('317', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:00:43');
INSERT INTO `admin_log` VALUES ('318', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:01:11');
INSERT INTO `admin_log` VALUES ('319', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:01:12');
INSERT INTO `admin_log` VALUES ('320', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:03:49');
INSERT INTO `admin_log` VALUES ('321', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:04:15');
INSERT INTO `admin_log` VALUES ('322', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:04:21');
INSERT INTO `admin_log` VALUES ('323', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:06:02');
INSERT INTO `admin_log` VALUES ('324', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:06:28');
INSERT INTO `admin_log` VALUES ('325', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:07:14');
INSERT INTO `admin_log` VALUES ('326', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:07:17');
INSERT INTO `admin_log` VALUES ('327', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:07:48');
INSERT INTO `admin_log` VALUES ('328', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:08:39');
INSERT INTO `admin_log` VALUES ('329', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:09:03');
INSERT INTO `admin_log` VALUES ('330', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:09:34');
INSERT INTO `admin_log` VALUES ('331', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:09:46');
INSERT INTO `admin_log` VALUES ('332', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:11:22');
INSERT INTO `admin_log` VALUES ('333', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:11:56');
INSERT INTO `admin_log` VALUES ('334', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:12:05');
INSERT INTO `admin_log` VALUES ('335', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:13:43');
INSERT INTO `admin_log` VALUES ('336', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:13:45');
INSERT INTO `admin_log` VALUES ('337', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:14:14');
INSERT INTO `admin_log` VALUES ('338', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:14:15');
INSERT INTO `admin_log` VALUES ('339', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:17:48');
INSERT INTO `admin_log` VALUES ('340', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:18:16');
INSERT INTO `admin_log` VALUES ('341', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 04:18:17');
INSERT INTO `admin_log` VALUES ('342', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:00:22');
INSERT INTO `admin_log` VALUES ('343', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:02:47');
INSERT INTO `admin_log` VALUES ('344', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:03:15');
INSERT INTO `admin_log` VALUES ('345', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:03:16');
INSERT INTO `admin_log` VALUES ('346', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:15:18');
INSERT INTO `admin_log` VALUES ('347', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:17:05');
INSERT INTO `admin_log` VALUES ('348', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:21:34');
INSERT INTO `admin_log` VALUES ('349', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:21:46');
INSERT INTO `admin_log` VALUES ('350', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:22:16');
INSERT INTO `admin_log` VALUES ('351', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:25:56');
INSERT INTO `admin_log` VALUES ('352', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:25:59');
INSERT INTO `admin_log` VALUES ('353', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:26:46');
INSERT INTO `admin_log` VALUES ('354', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:29:39');
INSERT INTO `admin_log` VALUES ('355', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:33:45');
INSERT INTO `admin_log` VALUES ('356', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:33:49');
INSERT INTO `admin_log` VALUES ('357', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:35:21');
INSERT INTO `admin_log` VALUES ('358', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:35:26');
INSERT INTO `admin_log` VALUES ('359', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:35:36');
INSERT INTO `admin_log` VALUES ('360', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:36:23');
INSERT INTO `admin_log` VALUES ('361', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:36:27');
INSERT INTO `admin_log` VALUES ('362', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:37:10');
INSERT INTO `admin_log` VALUES ('363', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:37:14');
INSERT INTO `admin_log` VALUES ('364', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:37:18');
INSERT INTO `admin_log` VALUES ('365', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:37:41');
INSERT INTO `admin_log` VALUES ('366', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:42:37');
INSERT INTO `admin_log` VALUES ('367', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:43:05');
INSERT INTO `admin_log` VALUES ('368', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:43:52');
INSERT INTO `admin_log` VALUES ('369', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:44:23');
INSERT INTO `admin_log` VALUES ('370', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:45:06');
INSERT INTO `admin_log` VALUES ('371', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:45:23');
INSERT INTO `admin_log` VALUES ('372', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:47:17');
INSERT INTO `admin_log` VALUES ('373', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:48:04');
INSERT INTO `admin_log` VALUES ('374', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:48:55');
INSERT INTO `admin_log` VALUES ('375', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:49:41');
INSERT INTO `admin_log` VALUES ('376', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:56:52');
INSERT INTO `admin_log` VALUES ('377', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:56:54');
INSERT INTO `admin_log` VALUES ('378', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:20');
INSERT INTO `admin_log` VALUES ('379', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:25');
INSERT INTO `admin_log` VALUES ('380', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:31');
INSERT INTO `admin_log` VALUES ('381', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:35');
INSERT INTO `admin_log` VALUES ('382', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:39');
INSERT INTO `admin_log` VALUES ('383', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:44');
INSERT INTO `admin_log` VALUES ('384', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:46');
INSERT INTO `admin_log` VALUES ('385', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:50');
INSERT INTO `admin_log` VALUES ('386', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 05:57:54');
INSERT INTO `admin_log` VALUES ('387', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:11:18');
INSERT INTO `admin_log` VALUES ('388', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:11:21');
INSERT INTO `admin_log` VALUES ('389', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:11:24');
INSERT INTO `admin_log` VALUES ('390', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:00');
INSERT INTO `admin_log` VALUES ('391', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:02');
INSERT INTO `admin_log` VALUES ('392', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:10');
INSERT INTO `admin_log` VALUES ('393', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:14');
INSERT INTO `admin_log` VALUES ('394', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:17');
INSERT INTO `admin_log` VALUES ('395', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:13:53');
INSERT INTO `admin_log` VALUES ('396', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:14:01');
INSERT INTO `admin_log` VALUES ('397', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:14:51');
INSERT INTO `admin_log` VALUES ('398', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:14:54');
INSERT INTO `admin_log` VALUES ('399', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:15:44');
INSERT INTO `admin_log` VALUES ('400', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:15:47');
INSERT INTO `admin_log` VALUES ('401', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:00');
INSERT INTO `admin_log` VALUES ('402', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:15');
INSERT INTO `admin_log` VALUES ('403', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:26');
INSERT INTO `admin_log` VALUES ('404', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:31');
INSERT INTO `admin_log` VALUES ('405', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:36');
INSERT INTO `admin_log` VALUES ('406', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:40');
INSERT INTO `admin_log` VALUES ('407', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:46');
INSERT INTO `admin_log` VALUES ('408', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:47');
INSERT INTO `admin_log` VALUES ('409', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:16:53');
INSERT INTO `admin_log` VALUES ('410', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:30');
INSERT INTO `admin_log` VALUES ('411', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:34');
INSERT INTO `admin_log` VALUES ('412', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:38');
INSERT INTO `admin_log` VALUES ('413', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:42');
INSERT INTO `admin_log` VALUES ('414', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:47');
INSERT INTO `admin_log` VALUES ('415', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:51');
INSERT INTO `admin_log` VALUES ('416', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:55');
INSERT INTO `admin_log` VALUES ('417', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:17:59');
INSERT INTO `admin_log` VALUES ('418', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:04');
INSERT INTO `admin_log` VALUES ('419', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:32');
INSERT INTO `admin_log` VALUES ('420', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:35');
INSERT INTO `admin_log` VALUES ('421', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:40');
INSERT INTO `admin_log` VALUES ('422', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:52');
INSERT INTO `admin_log` VALUES ('423', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:18:58');
INSERT INTO `admin_log` VALUES ('424', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:19:02');
INSERT INTO `admin_log` VALUES ('425', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:20:02');
INSERT INTO `admin_log` VALUES ('426', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:20:06');
INSERT INTO `admin_log` VALUES ('427', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 06:20:13');
INSERT INTO `admin_log` VALUES ('428', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:45:54');
INSERT INTO `admin_log` VALUES ('429', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:46:02');
INSERT INTO `admin_log` VALUES ('430', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:46:08');
INSERT INTO `admin_log` VALUES ('431', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:46:27');
INSERT INTO `admin_log` VALUES ('432', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:47:37');
INSERT INTO `admin_log` VALUES ('433', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:47:44');
INSERT INTO `admin_log` VALUES ('434', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:47:48');
INSERT INTO `admin_log` VALUES ('435', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:48:00');
INSERT INTO `admin_log` VALUES ('436', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:48:12');
INSERT INTO `admin_log` VALUES ('437', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:48:22');
INSERT INTO `admin_log` VALUES ('438', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:48:25');
INSERT INTO `admin_log` VALUES ('439', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:48:32');
INSERT INTO `admin_log` VALUES ('440', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:49:45');
INSERT INTO `admin_log` VALUES ('441', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:49:50');
INSERT INTO `admin_log` VALUES ('442', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:49:54');
INSERT INTO `admin_log` VALUES ('443', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:49:57');
INSERT INTO `admin_log` VALUES ('444', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:50:02');
INSERT INTO `admin_log` VALUES ('445', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:50:04');
INSERT INTO `admin_log` VALUES ('446', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:50:09');
INSERT INTO `admin_log` VALUES ('447', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:51:09');
INSERT INTO `admin_log` VALUES ('448', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:51:12');
INSERT INTO `admin_log` VALUES ('449', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:51:16');
INSERT INTO `admin_log` VALUES ('450', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:51:29');
INSERT INTO `admin_log` VALUES ('451', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:04');
INSERT INTO `admin_log` VALUES ('452', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:31');
INSERT INTO `admin_log` VALUES ('453', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:34');
INSERT INTO `admin_log` VALUES ('454', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:46');
INSERT INTO `admin_log` VALUES ('455', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:51');
INSERT INTO `admin_log` VALUES ('456', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:52:56');
INSERT INTO `admin_log` VALUES ('457', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:53:00');
INSERT INTO `admin_log` VALUES ('458', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:53:10');
INSERT INTO `admin_log` VALUES ('459', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:53:17');
INSERT INTO `admin_log` VALUES ('460', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:53:25');
INSERT INTO `admin_log` VALUES ('461', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:53:29');
INSERT INTO `admin_log` VALUES ('462', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:54:40');
INSERT INTO `admin_log` VALUES ('463', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:54:43');
INSERT INTO `admin_log` VALUES ('464', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:54:55');
INSERT INTO `admin_log` VALUES ('465', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:55:04');
INSERT INTO `admin_log` VALUES ('466', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:56:23');
INSERT INTO `admin_log` VALUES ('467', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:56:25');
INSERT INTO `admin_log` VALUES ('468', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:56:30');
INSERT INTO `admin_log` VALUES ('469', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:56:58');
INSERT INTO `admin_log` VALUES ('470', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:57:01');
INSERT INTO `admin_log` VALUES ('471', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:57:43');
INSERT INTO `admin_log` VALUES ('472', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:57:46');
INSERT INTO `admin_log` VALUES ('473', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:57:50');
INSERT INTO `admin_log` VALUES ('474', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:59:34');
INSERT INTO `admin_log` VALUES ('475', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:59:37');
INSERT INTO `admin_log` VALUES ('476', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 09:59:40');
INSERT INTO `admin_log` VALUES ('477', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:00:16');
INSERT INTO `admin_log` VALUES ('478', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:00:20');
INSERT INTO `admin_log` VALUES ('479', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:00:24');
INSERT INTO `admin_log` VALUES ('480', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:00:27');
INSERT INTO `admin_log` VALUES ('481', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:29');
INSERT INTO `admin_log` VALUES ('482', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:32');
INSERT INTO `admin_log` VALUES ('483', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:36');
INSERT INTO `admin_log` VALUES ('484', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:45');
INSERT INTO `admin_log` VALUES ('485', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:49');
INSERT INTO `admin_log` VALUES ('486', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:53');
INSERT INTO `admin_log` VALUES ('487', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:01:59');
INSERT INTO `admin_log` VALUES ('488', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:06');
INSERT INTO `admin_log` VALUES ('489', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:10');
INSERT INTO `admin_log` VALUES ('490', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:13');
INSERT INTO `admin_log` VALUES ('491', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:17');
INSERT INTO `admin_log` VALUES ('492', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:23');
INSERT INTO `admin_log` VALUES ('493', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:27');
INSERT INTO `admin_log` VALUES ('494', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:30');
INSERT INTO `admin_log` VALUES ('495', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:03:34');
INSERT INTO `admin_log` VALUES ('496', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:05:30');
INSERT INTO `admin_log` VALUES ('497', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:05:35');
INSERT INTO `admin_log` VALUES ('498', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:06:29');
INSERT INTO `admin_log` VALUES ('499', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:06:32');
INSERT INTO `admin_log` VALUES ('500', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:06:34');
INSERT INTO `admin_log` VALUES ('501', 'front-product', 'delete', 'front-product/delete', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:06:48');
INSERT INTO `admin_log` VALUES ('502', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:06:49');
INSERT INTO `admin_log` VALUES ('503', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:08:57');
INSERT INTO `admin_log` VALUES ('504', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:09:16');
INSERT INTO `admin_log` VALUES ('505', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:09:17');
INSERT INTO `admin_log` VALUES ('506', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:09:20');
INSERT INTO `admin_log` VALUES ('507', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:13:55');
INSERT INTO `admin_log` VALUES ('508', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:14:02');
INSERT INTO `admin_log` VALUES ('509', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:15:39');
INSERT INTO `admin_log` VALUES ('510', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:15:41');
INSERT INTO `admin_log` VALUES ('511', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:17:44');
INSERT INTO `admin_log` VALUES ('512', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:17:52');
INSERT INTO `admin_log` VALUES ('513', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:18:39');
INSERT INTO `admin_log` VALUES ('514', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:21');
INSERT INTO `admin_log` VALUES ('515', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:22');
INSERT INTO `admin_log` VALUES ('516', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:24');
INSERT INTO `admin_log` VALUES ('517', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:25');
INSERT INTO `admin_log` VALUES ('518', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:27');
INSERT INTO `admin_log` VALUES ('519', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:28');
INSERT INTO `admin_log` VALUES ('520', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:29');
INSERT INTO `admin_log` VALUES ('521', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:30');
INSERT INTO `admin_log` VALUES ('522', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:31');
INSERT INTO `admin_log` VALUES ('523', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:32');
INSERT INTO `admin_log` VALUES ('524', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:34');
INSERT INTO `admin_log` VALUES ('525', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:35');
INSERT INTO `admin_log` VALUES ('526', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:36');
INSERT INTO `admin_log` VALUES ('527', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:37');
INSERT INTO `admin_log` VALUES ('528', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:38');
INSERT INTO `admin_log` VALUES ('529', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:39');
INSERT INTO `admin_log` VALUES ('530', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:40');
INSERT INTO `admin_log` VALUES ('531', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:42');
INSERT INTO `admin_log` VALUES ('532', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:43');
INSERT INTO `admin_log` VALUES ('533', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:44');
INSERT INTO `admin_log` VALUES ('534', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:19:59');
INSERT INTO `admin_log` VALUES ('535', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:28:34');
INSERT INTO `admin_log` VALUES ('536', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:28:53');
INSERT INTO `admin_log` VALUES ('537', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:28:55');
INSERT INTO `admin_log` VALUES ('538', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:38:48');
INSERT INTO `admin_log` VALUES ('539', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:38:51');
INSERT INTO `admin_log` VALUES ('540', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:40:54');
INSERT INTO `admin_log` VALUES ('541', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:40:56');
INSERT INTO `admin_log` VALUES ('542', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:43:58');
INSERT INTO `admin_log` VALUES ('543', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:43:59');
INSERT INTO `admin_log` VALUES ('544', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:44:01');
INSERT INTO `admin_log` VALUES ('545', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:45:00');
INSERT INTO `admin_log` VALUES ('546', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:45:12');
INSERT INTO `admin_log` VALUES ('547', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:47:15');
INSERT INTO `admin_log` VALUES ('548', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:47:35');
INSERT INTO `admin_log` VALUES ('549', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:47:38');
INSERT INTO `admin_log` VALUES ('550', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:47:56');
INSERT INTO `admin_log` VALUES ('551', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:48:00');
INSERT INTO `admin_log` VALUES ('552', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:18');
INSERT INTO `admin_log` VALUES ('553', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:21');
INSERT INTO `admin_log` VALUES ('554', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:35');
INSERT INTO `admin_log` VALUES ('555', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:37');
INSERT INTO `admin_log` VALUES ('556', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:52');
INSERT INTO `admin_log` VALUES ('557', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:55:56');
INSERT INTO `admin_log` VALUES ('558', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 10:57:02');
INSERT INTO `admin_log` VALUES ('559', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:01:09');
INSERT INTO `admin_log` VALUES ('560', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:01:10');
INSERT INTO `admin_log` VALUES ('561', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:01:13');
INSERT INTO `admin_log` VALUES ('562', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:01:18');
INSERT INTO `admin_log` VALUES ('563', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:02:56');
INSERT INTO `admin_log` VALUES ('564', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:03:12');
INSERT INTO `admin_log` VALUES ('565', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:03:15');
INSERT INTO `admin_log` VALUES ('566', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:04:17');
INSERT INTO `admin_log` VALUES ('567', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:04:21');
INSERT INTO `admin_log` VALUES ('568', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-17 11:05:24');
INSERT INTO `admin_log` VALUES ('569', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:22:30');
INSERT INTO `admin_log` VALUES ('570', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:22:39');
INSERT INTO `admin_log` VALUES ('571', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:22:44');
INSERT INTO `admin_log` VALUES ('572', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:23:04');
INSERT INTO `admin_log` VALUES ('573', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:23:32');
INSERT INTO `admin_log` VALUES ('574', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:23:45');
INSERT INTO `admin_log` VALUES ('575', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:02');
INSERT INTO `admin_log` VALUES ('576', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:09');
INSERT INTO `admin_log` VALUES ('577', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:25');
INSERT INTO `admin_log` VALUES ('578', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:38');
INSERT INTO `admin_log` VALUES ('579', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:39');
INSERT INTO `admin_log` VALUES ('580', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:24:42');
INSERT INTO `admin_log` VALUES ('581', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:26:08');
INSERT INTO `admin_log` VALUES ('582', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:26:12');
INSERT INTO `admin_log` VALUES ('583', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:28:48');
INSERT INTO `admin_log` VALUES ('584', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:28:50');
INSERT INTO `admin_log` VALUES ('585', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:28:59');
INSERT INTO `admin_log` VALUES ('586', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:29:01');
INSERT INTO `admin_log` VALUES ('587', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:29:12');
INSERT INTO `admin_log` VALUES ('588', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:29:18');
INSERT INTO `admin_log` VALUES ('589', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:29:19');
INSERT INTO `admin_log` VALUES ('590', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:31:53');
INSERT INTO `admin_log` VALUES ('591', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:31:59');
INSERT INTO `admin_log` VALUES ('592', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:32:00');
INSERT INTO `admin_log` VALUES ('593', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:35:36');
INSERT INTO `admin_log` VALUES ('594', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:36:10');
INSERT INTO `admin_log` VALUES ('595', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:36:13');
INSERT INTO `admin_log` VALUES ('596', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:36:19');
INSERT INTO `admin_log` VALUES ('597', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:36:20');
INSERT INTO `admin_log` VALUES ('598', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:36:23');
INSERT INTO `admin_log` VALUES ('599', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:03');
INSERT INTO `admin_log` VALUES ('600', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:04');
INSERT INTO `admin_log` VALUES ('601', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:07');
INSERT INTO `admin_log` VALUES ('602', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:18');
INSERT INTO `admin_log` VALUES ('603', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:19');
INSERT INTO `admin_log` VALUES ('604', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:21');
INSERT INTO `admin_log` VALUES ('605', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:28');
INSERT INTO `admin_log` VALUES ('606', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:30');
INSERT INTO `admin_log` VALUES ('607', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:32');
INSERT INTO `admin_log` VALUES ('608', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:44');
INSERT INTO `admin_log` VALUES ('609', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:37:45');
INSERT INTO `admin_log` VALUES ('610', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:40:48');
INSERT INTO `admin_log` VALUES ('611', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:40:59');
INSERT INTO `admin_log` VALUES ('612', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:41:05');
INSERT INTO `admin_log` VALUES ('613', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:47:22');
INSERT INTO `admin_log` VALUES ('614', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:47:34');
INSERT INTO `admin_log` VALUES ('615', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:47:49');
INSERT INTO `admin_log` VALUES ('616', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:47:50');
INSERT INTO `admin_log` VALUES ('617', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:48:06');
INSERT INTO `admin_log` VALUES ('618', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:49:18');
INSERT INTO `admin_log` VALUES ('619', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:49:21');
INSERT INTO `admin_log` VALUES ('620', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:49:24');
INSERT INTO `admin_log` VALUES ('621', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:49:51');
INSERT INTO `admin_log` VALUES ('622', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:49:54');
INSERT INTO `admin_log` VALUES ('623', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:51:08');
INSERT INTO `admin_log` VALUES ('624', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:54:48');
INSERT INTO `admin_log` VALUES ('625', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:55:02');
INSERT INTO `admin_log` VALUES ('626', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:58:22');
INSERT INTO `admin_log` VALUES ('627', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 02:58:25');
INSERT INTO `admin_log` VALUES ('628', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:00:26');
INSERT INTO `admin_log` VALUES ('629', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:00:29');
INSERT INTO `admin_log` VALUES ('630', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:00:47');
INSERT INTO `admin_log` VALUES ('631', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:02:15');
INSERT INTO `admin_log` VALUES ('632', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:02:18');
INSERT INTO `admin_log` VALUES ('633', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:02:23');
INSERT INTO `admin_log` VALUES ('634', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:04:07');
INSERT INTO `admin_log` VALUES ('635', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:04:10');
INSERT INTO `admin_log` VALUES ('636', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:04:14');
INSERT INTO `admin_log` VALUES ('637', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:04:20');
INSERT INTO `admin_log` VALUES ('638', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-18 03:04:24');
INSERT INTO `admin_log` VALUES ('639', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 02:54:13');
INSERT INTO `admin_log` VALUES ('640', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:15:10');
INSERT INTO `admin_log` VALUES ('641', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:15:20');
INSERT INTO `admin_log` VALUES ('642', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:15:44');
INSERT INTO `admin_log` VALUES ('643', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:16:06');
INSERT INTO `admin_log` VALUES ('644', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:16:40');
INSERT INTO `admin_log` VALUES ('645', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:30:47');
INSERT INTO `admin_log` VALUES ('646', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:30:49');
INSERT INTO `admin_log` VALUES ('647', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:32:35');
INSERT INTO `admin_log` VALUES ('648', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:32:37');
INSERT INTO `admin_log` VALUES ('649', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:32:49');
INSERT INTO `admin_log` VALUES ('650', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:35:09');
INSERT INTO `admin_log` VALUES ('651', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:35:13');
INSERT INTO `admin_log` VALUES ('652', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:35:16');
INSERT INTO `admin_log` VALUES ('653', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:36:10');
INSERT INTO `admin_log` VALUES ('654', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:36:12');
INSERT INTO `admin_log` VALUES ('655', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:36:13');
INSERT INTO `admin_log` VALUES ('656', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:37:39');
INSERT INTO `admin_log` VALUES ('657', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:37:42');
INSERT INTO `admin_log` VALUES ('658', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:40:42');
INSERT INTO `admin_log` VALUES ('659', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:40:44');
INSERT INTO `admin_log` VALUES ('660', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:41:42');
INSERT INTO `admin_log` VALUES ('661', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:41:45');
INSERT INTO `admin_log` VALUES ('662', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:42:04');
INSERT INTO `admin_log` VALUES ('663', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:42:06');
INSERT INTO `admin_log` VALUES ('664', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:42:36');
INSERT INTO `admin_log` VALUES ('665', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:42:37');
INSERT INTO `admin_log` VALUES ('666', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:42:39');
INSERT INTO `admin_log` VALUES ('667', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:49:38');
INSERT INTO `admin_log` VALUES ('668', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:50:05');
INSERT INTO `admin_log` VALUES ('669', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:56:29');
INSERT INTO `admin_log` VALUES ('670', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:56:32');
INSERT INTO `admin_log` VALUES ('671', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 03:56:36');
INSERT INTO `admin_log` VALUES ('672', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:30:00');
INSERT INTO `admin_log` VALUES ('673', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:30:03');
INSERT INTO `admin_log` VALUES ('674', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:36:09');
INSERT INTO `admin_log` VALUES ('675', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:38:24');
INSERT INTO `admin_log` VALUES ('676', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:39:10');
INSERT INTO `admin_log` VALUES ('677', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:39:12');
INSERT INTO `admin_log` VALUES ('678', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:39:39');
INSERT INTO `admin_log` VALUES ('679', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:39:41');
INSERT INTO `admin_log` VALUES ('680', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:40:01');
INSERT INTO `admin_log` VALUES ('681', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:40:03');
INSERT INTO `admin_log` VALUES ('682', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:48:48');
INSERT INTO `admin_log` VALUES ('683', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:49:45');
INSERT INTO `admin_log` VALUES ('684', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:49:46');
INSERT INTO `admin_log` VALUES ('685', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:50:09');
INSERT INTO `admin_log` VALUES ('686', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 04:50:14');
INSERT INTO `admin_log` VALUES ('687', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:02:41');
INSERT INTO `admin_log` VALUES ('688', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:02:43');
INSERT INTO `admin_log` VALUES ('689', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:05:46');
INSERT INTO `admin_log` VALUES ('690', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:05:48');
INSERT INTO `admin_log` VALUES ('691', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:05:55');
INSERT INTO `admin_log` VALUES ('692', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:06:42');
INSERT INTO `admin_log` VALUES ('693', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:06:43');
INSERT INTO `admin_log` VALUES ('694', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:08:07');
INSERT INTO `admin_log` VALUES ('695', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:15:15');
INSERT INTO `admin_log` VALUES ('696', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:15:17');
INSERT INTO `admin_log` VALUES ('697', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:16:50');
INSERT INTO `admin_log` VALUES ('698', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:16:52');
INSERT INTO `admin_log` VALUES ('699', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:17:27');
INSERT INTO `admin_log` VALUES ('700', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:17:36');
INSERT INTO `admin_log` VALUES ('701', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:17:38');
INSERT INTO `admin_log` VALUES ('702', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:18:41');
INSERT INTO `admin_log` VALUES ('703', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:18:44');
INSERT INTO `admin_log` VALUES ('704', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:19:31');
INSERT INTO `admin_log` VALUES ('705', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:19:33');
INSERT INTO `admin_log` VALUES ('706', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:04');
INSERT INTO `admin_log` VALUES ('707', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:05');
INSERT INTO `admin_log` VALUES ('708', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:08');
INSERT INTO `admin_log` VALUES ('709', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:20');
INSERT INTO `admin_log` VALUES ('710', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:25');
INSERT INTO `admin_log` VALUES ('711', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:29');
INSERT INTO `admin_log` VALUES ('712', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:33');
INSERT INTO `admin_log` VALUES ('713', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:21:39');
INSERT INTO `admin_log` VALUES ('714', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:22:09');
INSERT INTO `admin_log` VALUES ('715', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:22:19');
INSERT INTO `admin_log` VALUES ('716', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:22:23');
INSERT INTO `admin_log` VALUES ('717', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:22:28');
INSERT INTO `admin_log` VALUES ('718', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:23:39');
INSERT INTO `admin_log` VALUES ('719', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:23:41');
INSERT INTO `admin_log` VALUES ('720', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:23:49');
INSERT INTO `admin_log` VALUES ('721', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:23:53');
INSERT INTO `admin_log` VALUES ('722', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:23:56');
INSERT INTO `admin_log` VALUES ('723', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:02');
INSERT INTO `admin_log` VALUES ('724', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:09');
INSERT INTO `admin_log` VALUES ('725', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:31');
INSERT INTO `admin_log` VALUES ('726', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:37');
INSERT INTO `admin_log` VALUES ('727', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:41');
INSERT INTO `admin_log` VALUES ('728', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:54');
INSERT INTO `admin_log` VALUES ('729', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:24:58');
INSERT INTO `admin_log` VALUES ('730', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:25:02');
INSERT INTO `admin_log` VALUES ('731', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:25:04');
INSERT INTO `admin_log` VALUES ('732', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:25:57');
INSERT INTO `admin_log` VALUES ('733', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:02');
INSERT INTO `admin_log` VALUES ('734', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:06');
INSERT INTO `admin_log` VALUES ('735', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:10');
INSERT INTO `admin_log` VALUES ('736', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:14');
INSERT INTO `admin_log` VALUES ('737', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:19');
INSERT INTO `admin_log` VALUES ('738', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:25');
INSERT INTO `admin_log` VALUES ('739', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:31');
INSERT INTO `admin_log` VALUES ('740', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:37');
INSERT INTO `admin_log` VALUES ('741', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:44');
INSERT INTO `admin_log` VALUES ('742', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:48');
INSERT INTO `admin_log` VALUES ('743', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:53');
INSERT INTO `admin_log` VALUES ('744', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:26:57');
INSERT INTO `admin_log` VALUES ('745', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:01');
INSERT INTO `admin_log` VALUES ('746', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:03');
INSERT INTO `admin_log` VALUES ('747', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:07');
INSERT INTO `admin_log` VALUES ('748', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:11');
INSERT INTO `admin_log` VALUES ('749', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:16');
INSERT INTO `admin_log` VALUES ('750', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:20');
INSERT INTO `admin_log` VALUES ('751', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:51');
INSERT INTO `admin_log` VALUES ('752', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:54');
INSERT INTO `admin_log` VALUES ('753', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:27:58');
INSERT INTO `admin_log` VALUES ('754', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:28:02');
INSERT INTO `admin_log` VALUES ('755', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:28:08');
INSERT INTO `admin_log` VALUES ('756', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:30:05');
INSERT INTO `admin_log` VALUES ('757', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:30:08');
INSERT INTO `admin_log` VALUES ('758', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:30:13');
INSERT INTO `admin_log` VALUES ('759', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:30:17');
INSERT INTO `admin_log` VALUES ('760', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:30:21');
INSERT INTO `admin_log` VALUES ('761', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:31:40');
INSERT INTO `admin_log` VALUES ('762', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:31:42');
INSERT INTO `admin_log` VALUES ('763', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:31:47');
INSERT INTO `admin_log` VALUES ('764', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:31:51');
INSERT INTO `admin_log` VALUES ('765', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:31:55');
INSERT INTO `admin_log` VALUES ('766', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:32:53');
INSERT INTO `admin_log` VALUES ('767', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:32:59');
INSERT INTO `admin_log` VALUES ('768', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:33:04');
INSERT INTO `admin_log` VALUES ('769', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:33:06');
INSERT INTO `admin_log` VALUES ('770', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:33:30');
INSERT INTO `admin_log` VALUES ('771', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:33:36');
INSERT INTO `admin_log` VALUES ('772', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:33:45');
INSERT INTO `admin_log` VALUES ('773', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:34:17');
INSERT INTO `admin_log` VALUES ('774', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:36');
INSERT INTO `admin_log` VALUES ('775', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:38');
INSERT INTO `admin_log` VALUES ('776', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:44');
INSERT INTO `admin_log` VALUES ('777', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:49');
INSERT INTO `admin_log` VALUES ('778', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:52');
INSERT INTO `admin_log` VALUES ('779', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:35:56');
INSERT INTO `admin_log` VALUES ('780', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:01');
INSERT INTO `admin_log` VALUES ('781', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:04');
INSERT INTO `admin_log` VALUES ('782', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:07');
INSERT INTO `admin_log` VALUES ('783', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:11');
INSERT INTO `admin_log` VALUES ('784', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:15');
INSERT INTO `admin_log` VALUES ('785', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:16');
INSERT INTO `admin_log` VALUES ('786', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:18');
INSERT INTO `admin_log` VALUES ('787', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:36:21');
INSERT INTO `admin_log` VALUES ('788', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:04');
INSERT INTO `admin_log` VALUES ('789', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:25');
INSERT INTO `admin_log` VALUES ('790', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:27');
INSERT INTO `admin_log` VALUES ('791', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:32');
INSERT INTO `admin_log` VALUES ('792', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:36');
INSERT INTO `admin_log` VALUES ('793', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:40');
INSERT INTO `admin_log` VALUES ('794', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:46');
INSERT INTO `admin_log` VALUES ('795', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:38:48');
INSERT INTO `admin_log` VALUES ('796', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:05');
INSERT INTO `admin_log` VALUES ('797', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:07');
INSERT INTO `admin_log` VALUES ('798', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:11');
INSERT INTO `admin_log` VALUES ('799', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:37');
INSERT INTO `admin_log` VALUES ('800', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:39');
INSERT INTO `admin_log` VALUES ('801', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:39:43');
INSERT INTO `admin_log` VALUES ('802', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:40:15');
INSERT INTO `admin_log` VALUES ('803', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:40:17');
INSERT INTO `admin_log` VALUES ('804', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:40:20');
INSERT INTO `admin_log` VALUES ('805', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:41:52');
INSERT INTO `admin_log` VALUES ('806', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:41:54');
INSERT INTO `admin_log` VALUES ('807', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:42:03');
INSERT INTO `admin_log` VALUES ('808', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:42:31');
INSERT INTO `admin_log` VALUES ('809', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:42:34');
INSERT INTO `admin_log` VALUES ('810', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:42:41');
INSERT INTO `admin_log` VALUES ('811', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:01');
INSERT INTO `admin_log` VALUES ('812', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:03');
INSERT INTO `admin_log` VALUES ('813', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:32');
INSERT INTO `admin_log` VALUES ('814', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:38');
INSERT INTO `admin_log` VALUES ('815', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:42');
INSERT INTO `admin_log` VALUES ('816', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:43:45');
INSERT INTO `admin_log` VALUES ('817', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:44:01');
INSERT INTO `admin_log` VALUES ('818', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:44:03');
INSERT INTO `admin_log` VALUES ('819', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:52:23');
INSERT INTO `admin_log` VALUES ('820', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:52:27');
INSERT INTO `admin_log` VALUES ('821', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:53:12');
INSERT INTO `admin_log` VALUES ('822', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:53:22');
INSERT INTO `admin_log` VALUES ('823', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:54:55');
INSERT INTO `admin_log` VALUES ('824', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:56:01');
INSERT INTO `admin_log` VALUES ('825', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:56:02');
INSERT INTO `admin_log` VALUES ('826', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:56:05');
INSERT INTO `admin_log` VALUES ('827', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:56:09');
INSERT INTO `admin_log` VALUES ('828', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:57:26');
INSERT INTO `admin_log` VALUES ('829', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:57:28');
INSERT INTO `admin_log` VALUES ('830', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:57:56');
INSERT INTO `admin_log` VALUES ('831', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:57:58');
INSERT INTO `admin_log` VALUES ('832', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:58:17');
INSERT INTO `admin_log` VALUES ('833', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:58:20');
INSERT INTO `admin_log` VALUES ('834', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:25');
INSERT INTO `admin_log` VALUES ('835', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:28');
INSERT INTO `admin_log` VALUES ('836', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:33');
INSERT INTO `admin_log` VALUES ('837', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 05:59:33');
INSERT INTO `admin_log` VALUES ('838', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:34');
INSERT INTO `admin_log` VALUES ('839', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 05:59:34');
INSERT INTO `admin_log` VALUES ('840', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:35');
INSERT INTO `admin_log` VALUES ('841', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 05:59:36');
INSERT INTO `admin_log` VALUES ('842', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 05:59:38');
INSERT INTO `admin_log` VALUES ('843', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 05:59:38');
INSERT INTO `admin_log` VALUES ('844', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:00:34');
INSERT INTO `admin_log` VALUES ('845', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:00:37');
INSERT INTO `admin_log` VALUES ('846', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:00:39');
INSERT INTO `admin_log` VALUES ('847', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:00:52');
INSERT INTO `admin_log` VALUES ('848', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:04');
INSERT INTO `admin_log` VALUES ('849', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:05');
INSERT INTO `admin_log` VALUES ('850', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:08');
INSERT INTO `admin_log` VALUES ('851', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:21');
INSERT INTO `admin_log` VALUES ('852', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:42');
INSERT INTO `admin_log` VALUES ('853', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:01:48');
INSERT INTO `admin_log` VALUES ('854', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:02:46');
INSERT INTO `admin_log` VALUES ('855', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:02:49');
INSERT INTO `admin_log` VALUES ('856', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:02:57');
INSERT INTO `admin_log` VALUES ('857', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:03:01');
INSERT INTO `admin_log` VALUES ('858', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:03:56');
INSERT INTO `admin_log` VALUES ('859', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:03:58');
INSERT INTO `admin_log` VALUES ('860', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:02');
INSERT INTO `admin_log` VALUES ('861', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:13');
INSERT INTO `admin_log` VALUES ('862', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:22');
INSERT INTO `admin_log` VALUES ('863', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:23');
INSERT INTO `admin_log` VALUES ('864', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:46');
INSERT INTO `admin_log` VALUES ('865', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-20 06:04:50');
INSERT INTO `admin_log` VALUES ('866', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', 'Unknown', 'admin', '2017-03-20 06:04:53');
INSERT INTO `admin_log` VALUES ('867', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:04:59');
INSERT INTO `admin_log` VALUES ('868', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:05:18');
INSERT INTO `admin_log` VALUES ('869', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:06:20');
INSERT INTO `admin_log` VALUES ('870', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 06:06:32');
INSERT INTO `admin_log` VALUES ('871', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 06:06:40');
INSERT INTO `admin_log` VALUES ('872', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:08:43');
INSERT INTO `admin_log` VALUES ('873', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-20 06:08:45');
INSERT INTO `admin_log` VALUES ('874', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 06:26:58');
INSERT INTO `admin_log` VALUES ('875', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 06:27:11');
INSERT INTO `admin_log` VALUES ('876', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-20 06:28:06');
INSERT INTO `admin_log` VALUES ('877', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 06:28:08');
INSERT INTO `admin_log` VALUES ('878', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:28:10');
INSERT INTO `admin_log` VALUES ('879', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:28:13');
INSERT INTO `admin_log` VALUES ('880', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-20 06:29:27');
INSERT INTO `admin_log` VALUES ('881', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:29:28');
INSERT INTO `admin_log` VALUES ('882', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:29:34');
INSERT INTO `admin_log` VALUES ('883', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:29:41');
INSERT INTO `admin_log` VALUES ('884', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:29:48');
INSERT INTO `admin_log` VALUES ('885', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:30:00');
INSERT INTO `admin_log` VALUES ('886', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:32:18');
INSERT INTO `admin_log` VALUES ('887', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:33:48');
INSERT INTO `admin_log` VALUES ('888', 'front-user', 'view', 'front-user/view', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:33:53');
INSERT INTO `admin_log` VALUES ('889', 'front-user', 'view', 'front-user/view', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:34:19');
INSERT INTO `admin_log` VALUES ('890', 'front-user', 'view', 'front-user/view', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:34:59');
INSERT INTO `admin_log` VALUES ('891', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:35:53');
INSERT INTO `admin_log` VALUES ('892', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 06:40:07');
INSERT INTO `admin_log` VALUES ('893', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:47:47');
INSERT INTO `admin_log` VALUES ('894', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 06:47:54');
INSERT INTO `admin_log` VALUES ('895', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 06:48:03');
INSERT INTO `admin_log` VALUES ('896', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-20 06:48:43');
INSERT INTO `admin_log` VALUES ('897', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 06:48:45');
INSERT INTO `admin_log` VALUES ('898', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:48:47');
INSERT INTO `admin_log` VALUES ('899', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:48:50');
INSERT INTO `admin_log` VALUES ('900', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_log` VALUES ('901', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 06:49:39');
INSERT INTO `admin_log` VALUES ('902', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 06:49:45');
INSERT INTO `admin_log` VALUES ('903', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:49:46');
INSERT INTO `admin_log` VALUES ('904', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:49:50');
INSERT INTO `admin_log` VALUES ('905', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 06:49:55');
INSERT INTO `admin_log` VALUES ('906', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:50:15');
INSERT INTO `admin_log` VALUES ('907', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 06:50:16');
INSERT INTO `admin_log` VALUES ('908', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 06:51:23');
INSERT INTO `admin_log` VALUES ('909', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 06:51:24');
INSERT INTO `admin_log` VALUES ('910', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:07:46');
INSERT INTO `admin_log` VALUES ('911', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:08:03');
INSERT INTO `admin_log` VALUES ('912', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:08:11');
INSERT INTO `admin_log` VALUES ('913', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:08:24');
INSERT INTO `admin_log` VALUES ('914', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:10:16');
INSERT INTO `admin_log` VALUES ('915', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:10:38');
INSERT INTO `admin_log` VALUES ('916', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:12:23');
INSERT INTO `admin_log` VALUES ('917', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:12:51');
INSERT INTO `admin_log` VALUES ('918', 'front-essence', 'view', 'front-essence/view', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:13:49');
INSERT INTO `admin_log` VALUES ('919', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:14:11');
INSERT INTO `admin_log` VALUES ('920', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:14:49');
INSERT INTO `admin_log` VALUES ('921', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:15:26');
INSERT INTO `admin_log` VALUES ('922', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:15:47');
INSERT INTO `admin_log` VALUES ('923', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:18:10');
INSERT INTO `admin_log` VALUES ('924', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:20:23');
INSERT INTO `admin_log` VALUES ('925', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:20:30');
INSERT INTO `admin_log` VALUES ('926', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:26:01');
INSERT INTO `admin_log` VALUES ('927', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:26:35');
INSERT INTO `admin_log` VALUES ('928', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:26:40');
INSERT INTO `admin_log` VALUES ('929', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:26:58');
INSERT INTO `admin_log` VALUES ('930', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:27:35');
INSERT INTO `admin_log` VALUES ('931', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:27:41');
INSERT INTO `admin_log` VALUES ('932', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:27:54');
INSERT INTO `admin_log` VALUES ('933', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 07:27:57');
INSERT INTO `admin_log` VALUES ('934', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 07:29:34');
INSERT INTO `admin_log` VALUES ('935', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 07:29:44');
INSERT INTO `admin_log` VALUES ('936', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 07:33:34');
INSERT INTO `admin_log` VALUES ('937', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 07:33:38');
INSERT INTO `admin_log` VALUES ('938', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 07:34:05');
INSERT INTO `admin_log` VALUES ('939', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 07:34:11');
INSERT INTO `admin_log` VALUES ('940', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 07:37:31');
INSERT INTO `admin_log` VALUES ('941', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 07:37:35');
INSERT INTO `admin_log` VALUES ('942', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-20 07:38:21');
INSERT INTO `admin_log` VALUES ('943', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 07:38:22');
INSERT INTO `admin_log` VALUES ('944', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 07:38:27');
INSERT INTO `admin_log` VALUES ('945', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 07:38:30');
INSERT INTO `admin_log` VALUES ('946', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-20 07:39:04');
INSERT INTO `admin_log` VALUES ('947', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 07:39:05');
INSERT INTO `admin_log` VALUES ('948', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 07:39:09');
INSERT INTO `admin_log` VALUES ('949', 'admin-user-role', 'index', 'admin-user-role/index', '菜单用户权限', '角色管理', '分配用户', 'Unknown', 'admin', '2017-03-20 07:39:11');
INSERT INTO `admin_log` VALUES ('950', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 07:39:14');
INSERT INTO `admin_log` VALUES ('951', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 07:39:16');
INSERT INTO `admin_log` VALUES ('952', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-20 07:39:23');
INSERT INTO `admin_log` VALUES ('953', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:39:36');
INSERT INTO `admin_log` VALUES ('954', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:40:07');
INSERT INTO `admin_log` VALUES ('955', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:40:09');
INSERT INTO `admin_log` VALUES ('956', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:40:37');
INSERT INTO `admin_log` VALUES ('957', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:40:39');
INSERT INTO `admin_log` VALUES ('958', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:42:59');
INSERT INTO `admin_log` VALUES ('959', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-20 07:43:02');
INSERT INTO `admin_log` VALUES ('960', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:43:26');
INSERT INTO `admin_log` VALUES ('961', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:45:15');
INSERT INTO `admin_log` VALUES ('962', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:45:50');
INSERT INTO `admin_log` VALUES ('963', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:47:08');
INSERT INTO `admin_log` VALUES ('964', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:49:28');
INSERT INTO `admin_log` VALUES ('965', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:49:29');
INSERT INTO `admin_log` VALUES ('966', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:50:06');
INSERT INTO `admin_log` VALUES ('967', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:50:07');
INSERT INTO `admin_log` VALUES ('968', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:57:02');
INSERT INTO `admin_log` VALUES ('969', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 07:58:06');
INSERT INTO `admin_log` VALUES ('970', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:02:03');
INSERT INTO `admin_log` VALUES ('971', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:03:40');
INSERT INTO `admin_log` VALUES ('972', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:03:58');
INSERT INTO `admin_log` VALUES ('973', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:04:26');
INSERT INTO `admin_log` VALUES ('974', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:05:16');
INSERT INTO `admin_log` VALUES ('975', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:07:06');
INSERT INTO `admin_log` VALUES ('976', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:08:38');
INSERT INTO `admin_log` VALUES ('977', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 08:08:43');
INSERT INTO `admin_log` VALUES ('978', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:08:46');
INSERT INTO `admin_log` VALUES ('979', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:09:15');
INSERT INTO `admin_log` VALUES ('980', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:09:25');
INSERT INTO `admin_log` VALUES ('981', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:10:19');
INSERT INTO `admin_log` VALUES ('982', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:15:15');
INSERT INTO `admin_log` VALUES ('983', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:17:20');
INSERT INTO `admin_log` VALUES ('984', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:17:24');
INSERT INTO `admin_log` VALUES ('985', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:17:42');
INSERT INTO `admin_log` VALUES ('986', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:17:57');
INSERT INTO `admin_log` VALUES ('987', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:18:13');
INSERT INTO `admin_log` VALUES ('988', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:18:18');
INSERT INTO `admin_log` VALUES ('989', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:18:57');
INSERT INTO `admin_log` VALUES ('990', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-20 08:21:43');
INSERT INTO `admin_log` VALUES ('991', 'front-category', 'create', 'front-category/create', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-20 08:24:14');
INSERT INTO `admin_log` VALUES ('992', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-20 08:24:16');
INSERT INTO `admin_log` VALUES ('993', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:24:50');
INSERT INTO `admin_log` VALUES ('994', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-20 08:24:55');
INSERT INTO `admin_log` VALUES ('995', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:28:52');
INSERT INTO `admin_log` VALUES ('996', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:31:06');
INSERT INTO `admin_log` VALUES ('997', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:31:12');
INSERT INTO `admin_log` VALUES ('998', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:31:31');
INSERT INTO `admin_log` VALUES ('999', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:31:35');
INSERT INTO `admin_log` VALUES ('1000', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:35:12');
INSERT INTO `admin_log` VALUES ('1001', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:35:13');
INSERT INTO `admin_log` VALUES ('1002', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:35:18');
INSERT INTO `admin_log` VALUES ('1003', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:35:37');
INSERT INTO `admin_log` VALUES ('1004', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:35:39');
INSERT INTO `admin_log` VALUES ('1005', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:35:44');
INSERT INTO `admin_log` VALUES ('1006', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:36:02');
INSERT INTO `admin_log` VALUES ('1007', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:36:06');
INSERT INTO `admin_log` VALUES ('1008', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:37:19');
INSERT INTO `admin_log` VALUES ('1009', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:37:23');
INSERT INTO `admin_log` VALUES ('1010', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:38:01');
INSERT INTO `admin_log` VALUES ('1011', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:38:05');
INSERT INTO `admin_log` VALUES ('1012', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:39:04');
INSERT INTO `admin_log` VALUES ('1013', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:39:08');
INSERT INTO `admin_log` VALUES ('1014', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:39:55');
INSERT INTO `admin_log` VALUES ('1015', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:39:59');
INSERT INTO `admin_log` VALUES ('1016', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:40:20');
INSERT INTO `admin_log` VALUES ('1017', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:40:25');
INSERT INTO `admin_log` VALUES ('1018', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:42:23');
INSERT INTO `admin_log` VALUES ('1019', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:43:29');
INSERT INTO `admin_log` VALUES ('1020', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:43:33');
INSERT INTO `admin_log` VALUES ('1021', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:44:22');
INSERT INTO `admin_log` VALUES ('1022', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:46:06');
INSERT INTO `admin_log` VALUES ('1023', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:46:42');
INSERT INTO `admin_log` VALUES ('1024', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:46:44');
INSERT INTO `admin_log` VALUES ('1025', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:48:01');
INSERT INTO `admin_log` VALUES ('1026', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:49:30');
INSERT INTO `admin_log` VALUES ('1027', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:49:43');
INSERT INTO `admin_log` VALUES ('1028', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:52:29');
INSERT INTO `admin_log` VALUES ('1029', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:52:34');
INSERT INTO `admin_log` VALUES ('1030', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:56:42');
INSERT INTO `admin_log` VALUES ('1031', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-20 08:56:48');
INSERT INTO `admin_log` VALUES ('1032', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:56:58');
INSERT INTO `admin_log` VALUES ('1033', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:57:02');
INSERT INTO `admin_log` VALUES ('1034', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:58:39');
INSERT INTO `admin_log` VALUES ('1035', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:58:44');
INSERT INTO `admin_log` VALUES ('1036', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:59:29');
INSERT INTO `admin_log` VALUES ('1037', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 08:59:35');
INSERT INTO `admin_log` VALUES ('1038', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:00:57');
INSERT INTO `admin_log` VALUES ('1039', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:02:13');
INSERT INTO `admin_log` VALUES ('1040', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-20 09:07:03');
INSERT INTO `admin_log` VALUES ('1041', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-20 09:07:08');
INSERT INTO `admin_log` VALUES ('1042', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 09:07:11');
INSERT INTO `admin_log` VALUES ('1043', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 09:07:14');
INSERT INTO `admin_log` VALUES ('1044', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-20 09:07:24');
INSERT INTO `admin_log` VALUES ('1045', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-20 09:07:25');
INSERT INTO `admin_log` VALUES ('1046', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:07:30');
INSERT INTO `admin_log` VALUES ('1047', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:08:03');
INSERT INTO `admin_log` VALUES ('1048', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:08:23');
INSERT INTO `admin_log` VALUES ('1049', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:08:28');
INSERT INTO `admin_log` VALUES ('1050', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:08:30');
INSERT INTO `admin_log` VALUES ('1051', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:12:30');
INSERT INTO `admin_log` VALUES ('1052', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:12:31');
INSERT INTO `admin_log` VALUES ('1053', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:12:35');
INSERT INTO `admin_log` VALUES ('1054', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:13:22');
INSERT INTO `admin_log` VALUES ('1055', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:13:26');
INSERT INTO `admin_log` VALUES ('1056', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:13:49');
INSERT INTO `admin_log` VALUES ('1057', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:14:11');
INSERT INTO `admin_log` VALUES ('1058', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:14:16');
INSERT INTO `admin_log` VALUES ('1059', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:15:50');
INSERT INTO `admin_log` VALUES ('1060', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:15:54');
INSERT INTO `admin_log` VALUES ('1061', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:16:25');
INSERT INTO `admin_log` VALUES ('1062', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:16:29');
INSERT INTO `admin_log` VALUES ('1063', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:18:01');
INSERT INTO `admin_log` VALUES ('1064', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:18:05');
INSERT INTO `admin_log` VALUES ('1065', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:19:18');
INSERT INTO `admin_log` VALUES ('1066', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:19:22');
INSERT INTO `admin_log` VALUES ('1067', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:19:23');
INSERT INTO `admin_log` VALUES ('1068', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:20:16');
INSERT INTO `admin_log` VALUES ('1069', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:20:18');
INSERT INTO `admin_log` VALUES ('1070', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:21:57');
INSERT INTO `admin_log` VALUES ('1071', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:23:38');
INSERT INTO `admin_log` VALUES ('1072', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:23:52');
INSERT INTO `admin_log` VALUES ('1073', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:23:58');
INSERT INTO `admin_log` VALUES ('1074', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:28:32');
INSERT INTO `admin_log` VALUES ('1075', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:29:47');
INSERT INTO `admin_log` VALUES ('1076', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:31:47');
INSERT INTO `admin_log` VALUES ('1077', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:32:17');
INSERT INTO `admin_log` VALUES ('1078', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:32:18');
INSERT INTO `admin_log` VALUES ('1079', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:32:19');
INSERT INTO `admin_log` VALUES ('1080', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:32:24');
INSERT INTO `admin_log` VALUES ('1081', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:35:10');
INSERT INTO `admin_log` VALUES ('1082', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:35:15');
INSERT INTO `admin_log` VALUES ('1083', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:35:59');
INSERT INTO `admin_log` VALUES ('1084', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:36:24');
INSERT INTO `admin_log` VALUES ('1085', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:36:26');
INSERT INTO `admin_log` VALUES ('1086', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:36:33');
INSERT INTO `admin_log` VALUES ('1087', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:39:50');
INSERT INTO `admin_log` VALUES ('1088', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:39:54');
INSERT INTO `admin_log` VALUES ('1089', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:40:19');
INSERT INTO `admin_log` VALUES ('1090', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:40:22');
INSERT INTO `admin_log` VALUES ('1091', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:40:30');
INSERT INTO `admin_log` VALUES ('1092', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:40:33');
INSERT INTO `admin_log` VALUES ('1093', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:40:50');
INSERT INTO `admin_log` VALUES ('1094', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:40:54');
INSERT INTO `admin_log` VALUES ('1095', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:45:50');
INSERT INTO `admin_log` VALUES ('1096', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:45:53');
INSERT INTO `admin_log` VALUES ('1097', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:47:04');
INSERT INTO `admin_log` VALUES ('1098', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:47:06');
INSERT INTO `admin_log` VALUES ('1099', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:47:09');
INSERT INTO `admin_log` VALUES ('1100', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:47:11');
INSERT INTO `admin_log` VALUES ('1101', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:47:14');
INSERT INTO `admin_log` VALUES ('1102', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:47:39');
INSERT INTO `admin_log` VALUES ('1103', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:47:42');
INSERT INTO `admin_log` VALUES ('1104', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-20 09:47:45');
INSERT INTO `admin_log` VALUES ('1105', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-20 09:47:48');
INSERT INTO `admin_log` VALUES ('1106', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:42:50');
INSERT INTO `admin_log` VALUES ('1107', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-21 02:43:10');
INSERT INTO `admin_log` VALUES ('1108', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 02:43:12');
INSERT INTO `admin_log` VALUES ('1109', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:43:16');
INSERT INTO `admin_log` VALUES ('1110', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:47:04');
INSERT INTO `admin_log` VALUES ('1111', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:55:12');
INSERT INTO `admin_log` VALUES ('1112', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:55:28');
INSERT INTO `admin_log` VALUES ('1113', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 02:55:29');
INSERT INTO `admin_log` VALUES ('1114', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:01:14');
INSERT INTO `admin_log` VALUES ('1115', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:16');
INSERT INTO `admin_log` VALUES ('1116', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:01:23');
INSERT INTO `admin_log` VALUES ('1117', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:26');
INSERT INTO `admin_log` VALUES ('1118', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:34');
INSERT INTO `admin_log` VALUES ('1119', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:01:36');
INSERT INTO `admin_log` VALUES ('1120', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:39');
INSERT INTO `admin_log` VALUES ('1121', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:52');
INSERT INTO `admin_log` VALUES ('1122', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:01:55');
INSERT INTO `admin_log` VALUES ('1123', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:01:59');
INSERT INTO `admin_log` VALUES ('1124', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:02:07');
INSERT INTO `admin_log` VALUES ('1125', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:02:11');
INSERT INTO `admin_log` VALUES ('1126', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:14:42');
INSERT INTO `admin_log` VALUES ('1127', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:14:45');
INSERT INTO `admin_log` VALUES ('1128', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:14:51');
INSERT INTO `admin_log` VALUES ('1129', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:14:55');
INSERT INTO `admin_log` VALUES ('1130', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:15:31');
INSERT INTO `admin_log` VALUES ('1131', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:15:35');
INSERT INTO `admin_log` VALUES ('1132', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:15:38');
INSERT INTO `admin_log` VALUES ('1133', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:15:40');
INSERT INTO `admin_log` VALUES ('1134', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:15:43');
INSERT INTO `admin_log` VALUES ('1135', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:23:54');
INSERT INTO `admin_log` VALUES ('1136', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:23:58');
INSERT INTO `admin_log` VALUES ('1137', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:26:53');
INSERT INTO `admin_log` VALUES ('1138', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:26:55');
INSERT INTO `admin_log` VALUES ('1139', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:27:37');
INSERT INTO `admin_log` VALUES ('1140', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:27:40');
INSERT INTO `admin_log` VALUES ('1141', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:28:51');
INSERT INTO `admin_log` VALUES ('1142', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:28:55');
INSERT INTO `admin_log` VALUES ('1143', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:33:55');
INSERT INTO `admin_log` VALUES ('1144', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:34:01');
INSERT INTO `admin_log` VALUES ('1145', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:35:26');
INSERT INTO `admin_log` VALUES ('1146', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:35:29');
INSERT INTO `admin_log` VALUES ('1147', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:38:18');
INSERT INTO `admin_log` VALUES ('1148', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:38:21');
INSERT INTO `admin_log` VALUES ('1149', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:38:59');
INSERT INTO `admin_log` VALUES ('1150', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:39:02');
INSERT INTO `admin_log` VALUES ('1151', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:39:15');
INSERT INTO `admin_log` VALUES ('1152', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:39:19');
INSERT INTO `admin_log` VALUES ('1153', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:39:22');
INSERT INTO `admin_log` VALUES ('1154', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:39:50');
INSERT INTO `admin_log` VALUES ('1155', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:39:53');
INSERT INTO `admin_log` VALUES ('1156', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:39:55');
INSERT INTO `admin_log` VALUES ('1157', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:41:44');
INSERT INTO `admin_log` VALUES ('1158', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:42:30');
INSERT INTO `admin_log` VALUES ('1159', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:42:32');
INSERT INTO `admin_log` VALUES ('1160', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:45:16');
INSERT INTO `admin_log` VALUES ('1161', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:45:24');
INSERT INTO `admin_log` VALUES ('1162', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:46:50');
INSERT INTO `admin_log` VALUES ('1163', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:46:53');
INSERT INTO `admin_log` VALUES ('1164', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:47:06');
INSERT INTO `admin_log` VALUES ('1165', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:47:10');
INSERT INTO `admin_log` VALUES ('1166', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:47:13');
INSERT INTO `admin_log` VALUES ('1167', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:47:30');
INSERT INTO `admin_log` VALUES ('1168', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:47:33');
INSERT INTO `admin_log` VALUES ('1169', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:52:45');
INSERT INTO `admin_log` VALUES ('1170', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:52:48');
INSERT INTO `admin_log` VALUES ('1171', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:53:24');
INSERT INTO `admin_log` VALUES ('1172', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:53:27');
INSERT INTO `admin_log` VALUES ('1173', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:53:43');
INSERT INTO `admin_log` VALUES ('1174', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:53:47');
INSERT INTO `admin_log` VALUES ('1175', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:53:49');
INSERT INTO `admin_log` VALUES ('1176', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:54:13');
INSERT INTO `admin_log` VALUES ('1177', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:54:16');
INSERT INTO `admin_log` VALUES ('1178', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 03:54:48');
INSERT INTO `admin_log` VALUES ('1179', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 03:54:51');
INSERT INTO `admin_log` VALUES ('1180', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 04:00:05');
INSERT INTO `admin_log` VALUES ('1181', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 04:00:07');
INSERT INTO `admin_log` VALUES ('1182', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 04:00:10');
INSERT INTO `admin_log` VALUES ('1183', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 04:01:22');
INSERT INTO `admin_log` VALUES ('1184', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 04:01:25');
INSERT INTO `admin_log` VALUES ('1185', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 04:01:28');
INSERT INTO `admin_log` VALUES ('1186', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 04:07:28');
INSERT INTO `admin_log` VALUES ('1187', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 04:07:30');
INSERT INTO `admin_log` VALUES ('1188', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 05:58:31');
INSERT INTO `admin_log` VALUES ('1189', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 05:59:56');
INSERT INTO `admin_log` VALUES ('1190', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 05:59:59');
INSERT INTO `admin_log` VALUES ('1191', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:00:51');
INSERT INTO `admin_log` VALUES ('1192', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:00:54');
INSERT INTO `admin_log` VALUES ('1193', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:06:18');
INSERT INTO `admin_log` VALUES ('1194', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:06:21');
INSERT INTO `admin_log` VALUES ('1195', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:06:51');
INSERT INTO `admin_log` VALUES ('1196', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:06:55');
INSERT INTO `admin_log` VALUES ('1197', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:06:58');
INSERT INTO `admin_log` VALUES ('1198', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:07:52');
INSERT INTO `admin_log` VALUES ('1199', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:07:55');
INSERT INTO `admin_log` VALUES ('1200', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:10:42');
INSERT INTO `admin_log` VALUES ('1201', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:10:43');
INSERT INTO `admin_log` VALUES ('1202', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:10:46');
INSERT INTO `admin_log` VALUES ('1203', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:13:00');
INSERT INTO `admin_log` VALUES ('1204', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:13:03');
INSERT INTO `admin_log` VALUES ('1205', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:13:38');
INSERT INTO `admin_log` VALUES ('1206', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:13:39');
INSERT INTO `admin_log` VALUES ('1207', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:13:40');
INSERT INTO `admin_log` VALUES ('1208', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:13:43');
INSERT INTO `admin_log` VALUES ('1209', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:14:07');
INSERT INTO `admin_log` VALUES ('1210', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:14:08');
INSERT INTO `admin_log` VALUES ('1211', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:14:09');
INSERT INTO `admin_log` VALUES ('1212', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:14:11');
INSERT INTO `admin_log` VALUES ('1213', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:14:41');
INSERT INTO `admin_log` VALUES ('1214', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:14:45');
INSERT INTO `admin_log` VALUES ('1215', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:15:02');
INSERT INTO `admin_log` VALUES ('1216', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:15:05');
INSERT INTO `admin_log` VALUES ('1217', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:15:16');
INSERT INTO `admin_log` VALUES ('1218', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:15:46');
INSERT INTO `admin_log` VALUES ('1219', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:15:48');
INSERT INTO `admin_log` VALUES ('1220', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:15:51');
INSERT INTO `admin_log` VALUES ('1221', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:16:16');
INSERT INTO `admin_log` VALUES ('1222', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:16:19');
INSERT INTO `admin_log` VALUES ('1223', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:16:34');
INSERT INTO `admin_log` VALUES ('1224', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:16:37');
INSERT INTO `admin_log` VALUES ('1225', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:20:09');
INSERT INTO `admin_log` VALUES ('1226', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:20:12');
INSERT INTO `admin_log` VALUES ('1227', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:20:44');
INSERT INTO `admin_log` VALUES ('1228', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:20:46');
INSERT INTO `admin_log` VALUES ('1229', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:21:32');
INSERT INTO `admin_log` VALUES ('1230', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:21:35');
INSERT INTO `admin_log` VALUES ('1231', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:21:50');
INSERT INTO `admin_log` VALUES ('1232', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:21:53');
INSERT INTO `admin_log` VALUES ('1233', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:22:10');
INSERT INTO `admin_log` VALUES ('1234', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:22:12');
INSERT INTO `admin_log` VALUES ('1235', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:22:15');
INSERT INTO `admin_log` VALUES ('1236', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:23:36');
INSERT INTO `admin_log` VALUES ('1237', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:23:40');
INSERT INTO `admin_log` VALUES ('1238', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:23:43');
INSERT INTO `admin_log` VALUES ('1239', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:23:46');
INSERT INTO `admin_log` VALUES ('1240', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:23:49');
INSERT INTO `admin_log` VALUES ('1241', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:23:51');
INSERT INTO `admin_log` VALUES ('1242', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:24:18');
INSERT INTO `admin_log` VALUES ('1243', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:30:11');
INSERT INTO `admin_log` VALUES ('1244', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:30:13');
INSERT INTO `admin_log` VALUES ('1245', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:30:18');
INSERT INTO `admin_log` VALUES ('1246', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:30:19');
INSERT INTO `admin_log` VALUES ('1247', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:30:33');
INSERT INTO `admin_log` VALUES ('1248', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:30:35');
INSERT INTO `admin_log` VALUES ('1249', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:32:14');
INSERT INTO `admin_log` VALUES ('1250', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:32:15');
INSERT INTO `admin_log` VALUES ('1251', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:33:22');
INSERT INTO `admin_log` VALUES ('1252', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:33:24');
INSERT INTO `admin_log` VALUES ('1253', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:33:37');
INSERT INTO `admin_log` VALUES ('1254', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:33:47');
INSERT INTO `admin_log` VALUES ('1255', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:34:57');
INSERT INTO `admin_log` VALUES ('1256', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:35:29');
INSERT INTO `admin_log` VALUES ('1257', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:36:04');
INSERT INTO `admin_log` VALUES ('1258', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:37:56');
INSERT INTO `admin_log` VALUES ('1259', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:38:42');
INSERT INTO `admin_log` VALUES ('1260', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:02');
INSERT INTO `admin_log` VALUES ('1261', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:18');
INSERT INTO `admin_log` VALUES ('1262', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:43:27');
INSERT INTO `admin_log` VALUES ('1263', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:30');
INSERT INTO `admin_log` VALUES ('1264', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:33');
INSERT INTO `admin_log` VALUES ('1265', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:35');
INSERT INTO `admin_log` VALUES ('1266', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:40');
INSERT INTO `admin_log` VALUES ('1267', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:41');
INSERT INTO `admin_log` VALUES ('1268', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:47');
INSERT INTO `admin_log` VALUES ('1269', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 06:43:48');
INSERT INTO `admin_log` VALUES ('1270', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:44:10');
INSERT INTO `admin_log` VALUES ('1271', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:54:30');
INSERT INTO `admin_log` VALUES ('1272', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:54:38');
INSERT INTO `admin_log` VALUES ('1273', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 06:54:55');
INSERT INTO `admin_log` VALUES ('1274', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:05:01');
INSERT INTO `admin_log` VALUES ('1275', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:05:43');
INSERT INTO `admin_log` VALUES ('1276', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:06:21');
INSERT INTO `admin_log` VALUES ('1277', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:06:26');
INSERT INTO `admin_log` VALUES ('1278', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:09:58');
INSERT INTO `admin_log` VALUES ('1279', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:11:25');
INSERT INTO `admin_log` VALUES ('1280', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:14:51');
INSERT INTO `admin_log` VALUES ('1281', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:16:32');
INSERT INTO `admin_log` VALUES ('1282', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:17:08');
INSERT INTO `admin_log` VALUES ('1283', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:17:49');
INSERT INTO `admin_log` VALUES ('1284', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:18:07');
INSERT INTO `admin_log` VALUES ('1285', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:19:41');
INSERT INTO `admin_log` VALUES ('1286', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:19:50');
INSERT INTO `admin_log` VALUES ('1287', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:19:58');
INSERT INTO `admin_log` VALUES ('1288', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:21:20');
INSERT INTO `admin_log` VALUES ('1289', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:21:51');
INSERT INTO `admin_log` VALUES ('1290', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:24:07');
INSERT INTO `admin_log` VALUES ('1291', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:26:30');
INSERT INTO `admin_log` VALUES ('1292', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:28:44');
INSERT INTO `admin_log` VALUES ('1293', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:30:34');
INSERT INTO `admin_log` VALUES ('1294', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:30:51');
INSERT INTO `admin_log` VALUES ('1295', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:46:20');
INSERT INTO `admin_log` VALUES ('1296', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:51:42');
INSERT INTO `admin_log` VALUES ('1297', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:56:08');
INSERT INTO `admin_log` VALUES ('1298', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:56:33');
INSERT INTO `admin_log` VALUES ('1299', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:57:55');
INSERT INTO `admin_log` VALUES ('1300', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:59:03');
INSERT INTO `admin_log` VALUES ('1301', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 07:59:42');
INSERT INTO `admin_log` VALUES ('1302', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:00:18');
INSERT INTO `admin_log` VALUES ('1303', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:02:02');
INSERT INTO `admin_log` VALUES ('1304', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:02:35');
INSERT INTO `admin_log` VALUES ('1305', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:08:00');
INSERT INTO `admin_log` VALUES ('1306', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:09:16');
INSERT INTO `admin_log` VALUES ('1307', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:09:17');
INSERT INTO `admin_log` VALUES ('1308', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:09:40');
INSERT INTO `admin_log` VALUES ('1309', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:09:57');
INSERT INTO `admin_log` VALUES ('1310', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:10:07');
INSERT INTO `admin_log` VALUES ('1311', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:10:32');
INSERT INTO `admin_log` VALUES ('1312', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:15:37');
INSERT INTO `admin_log` VALUES ('1313', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:16:40');
INSERT INTO `admin_log` VALUES ('1314', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:17:29');
INSERT INTO `admin_log` VALUES ('1315', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:19:54');
INSERT INTO `admin_log` VALUES ('1316', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:23:02');
INSERT INTO `admin_log` VALUES ('1317', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:23:28');
INSERT INTO `admin_log` VALUES ('1318', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:24:39');
INSERT INTO `admin_log` VALUES ('1319', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:25:27');
INSERT INTO `admin_log` VALUES ('1320', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:25:31');
INSERT INTO `admin_log` VALUES ('1321', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:26:29');
INSERT INTO `admin_log` VALUES ('1322', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:26:43');
INSERT INTO `admin_log` VALUES ('1323', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:27:25');
INSERT INTO `admin_log` VALUES ('1324', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:31:26');
INSERT INTO `admin_log` VALUES ('1325', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:31:27');
INSERT INTO `admin_log` VALUES ('1326', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:31:30');
INSERT INTO `admin_log` VALUES ('1327', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:32:01');
INSERT INTO `admin_log` VALUES ('1328', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:33:29');
INSERT INTO `admin_log` VALUES ('1329', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:33:35');
INSERT INTO `admin_log` VALUES ('1330', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:33:37');
INSERT INTO `admin_log` VALUES ('1331', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:33:40');
INSERT INTO `admin_log` VALUES ('1332', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:33:45');
INSERT INTO `admin_log` VALUES ('1333', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:33:47');
INSERT INTO `admin_log` VALUES ('1334', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:33:50');
INSERT INTO `admin_log` VALUES ('1335', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:33:53');
INSERT INTO `admin_log` VALUES ('1336', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:33:55');
INSERT INTO `admin_log` VALUES ('1337', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:33:58');
INSERT INTO `admin_log` VALUES ('1338', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:34:04');
INSERT INTO `admin_log` VALUES ('1339', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:34:57');
INSERT INTO `admin_log` VALUES ('1340', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:35:01');
INSERT INTO `admin_log` VALUES ('1341', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:35:04');
INSERT INTO `admin_log` VALUES ('1342', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:35:06');
INSERT INTO `admin_log` VALUES ('1343', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:35:09');
INSERT INTO `admin_log` VALUES ('1344', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:35:37');
INSERT INTO `admin_log` VALUES ('1345', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:35:41');
INSERT INTO `admin_log` VALUES ('1346', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:35:45');
INSERT INTO `admin_log` VALUES ('1347', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:35:48');
INSERT INTO `admin_log` VALUES ('1348', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:35:52');
INSERT INTO `admin_log` VALUES ('1349', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:35:55');
INSERT INTO `admin_log` VALUES ('1350', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:36:42');
INSERT INTO `admin_log` VALUES ('1351', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:36:46');
INSERT INTO `admin_log` VALUES ('1352', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:36:51');
INSERT INTO `admin_log` VALUES ('1353', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:36:52');
INSERT INTO `admin_log` VALUES ('1354', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:36:55');
INSERT INTO `admin_log` VALUES ('1355', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:37:01');
INSERT INTO `admin_log` VALUES ('1356', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:39:58');
INSERT INTO `admin_log` VALUES ('1357', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:40:01');
INSERT INTO `admin_log` VALUES ('1358', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:40:06');
INSERT INTO `admin_log` VALUES ('1359', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:40:09');
INSERT INTO `admin_log` VALUES ('1360', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:40:12');
INSERT INTO `admin_log` VALUES ('1361', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:40:15');
INSERT INTO `admin_log` VALUES ('1362', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:40:51');
INSERT INTO `admin_log` VALUES ('1363', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:41:51');
INSERT INTO `admin_log` VALUES ('1364', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:41:54');
INSERT INTO `admin_log` VALUES ('1365', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:41:58');
INSERT INTO `admin_log` VALUES ('1366', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:42:31');
INSERT INTO `admin_log` VALUES ('1367', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:45:59');
INSERT INTO `admin_log` VALUES ('1368', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:46:01');
INSERT INTO `admin_log` VALUES ('1369', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:46:06');
INSERT INTO `admin_log` VALUES ('1370', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:46:09');
INSERT INTO `admin_log` VALUES ('1371', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:46:12');
INSERT INTO `admin_log` VALUES ('1372', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:46:14');
INSERT INTO `admin_log` VALUES ('1373', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:46:17');
INSERT INTO `admin_log` VALUES ('1374', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:49:37');
INSERT INTO `admin_log` VALUES ('1375', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:49:57');
INSERT INTO `admin_log` VALUES ('1376', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:49:58');
INSERT INTO `admin_log` VALUES ('1377', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:50:01');
INSERT INTO `admin_log` VALUES ('1378', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:52:45');
INSERT INTO `admin_log` VALUES ('1379', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:20');
INSERT INTO `admin_log` VALUES ('1380', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:21');
INSERT INTO `admin_log` VALUES ('1381', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:53:24');
INSERT INTO `admin_log` VALUES ('1382', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:27');
INSERT INTO `admin_log` VALUES ('1383', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:53:30');
INSERT INTO `admin_log` VALUES ('1384', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:39');
INSERT INTO `admin_log` VALUES ('1385', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:46');
INSERT INTO `admin_log` VALUES ('1386', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:53:47');
INSERT INTO `admin_log` VALUES ('1387', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:53:50');
INSERT INTO `admin_log` VALUES ('1388', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:54:09');
INSERT INTO `admin_log` VALUES ('1389', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:54:12');
INSERT INTO `admin_log` VALUES ('1390', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:54:47');
INSERT INTO `admin_log` VALUES ('1391', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:54:50');
INSERT INTO `admin_log` VALUES ('1392', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:54:53');
INSERT INTO `admin_log` VALUES ('1393', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:56:43');
INSERT INTO `admin_log` VALUES ('1394', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 08:56:45');
INSERT INTO `admin_log` VALUES ('1395', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:56:47');
INSERT INTO `admin_log` VALUES ('1396', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 08:57:43');
INSERT INTO `admin_log` VALUES ('1397', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:01:14');
INSERT INTO `admin_log` VALUES ('1398', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:01:41');
INSERT INTO `admin_log` VALUES ('1399', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:01:59');
INSERT INTO `admin_log` VALUES ('1400', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:02:17');
INSERT INTO `admin_log` VALUES ('1401', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:02:51');
INSERT INTO `admin_log` VALUES ('1402', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:03:01');
INSERT INTO `admin_log` VALUES ('1403', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:09:09');
INSERT INTO `admin_log` VALUES ('1404', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:09:18');
INSERT INTO `admin_log` VALUES ('1405', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-21 09:09:59');
INSERT INTO `admin_log` VALUES ('1406', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:10:00');
INSERT INTO `admin_log` VALUES ('1407', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:10:04');
INSERT INTO `admin_log` VALUES ('1408', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:10:33');
INSERT INTO `admin_log` VALUES ('1409', 'admin-menu', 'view', 'admin-menu/view', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:10:50');
INSERT INTO `admin_log` VALUES ('1410', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:11:07');
INSERT INTO `admin_log` VALUES ('1411', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:11:09');
INSERT INTO `admin_log` VALUES ('1412', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:11:12');
INSERT INTO `admin_log` VALUES ('1413', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:11:19');
INSERT INTO `admin_log` VALUES ('1414', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:11:22');
INSERT INTO `admin_log` VALUES ('1415', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:11:24');
INSERT INTO `admin_log` VALUES ('1416', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:11:26');
INSERT INTO `admin_log` VALUES ('1417', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:11:38');
INSERT INTO `admin_log` VALUES ('1418', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:11:52');
INSERT INTO `admin_log` VALUES ('1419', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_log` VALUES ('1420', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:12:27');
INSERT INTO `admin_log` VALUES ('1421', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:12:31');
INSERT INTO `admin_log` VALUES ('1422', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:12:34');
INSERT INTO `admin_log` VALUES ('1423', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:12:37');
INSERT INTO `admin_log` VALUES ('1424', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:12:43');
INSERT INTO `admin_log` VALUES ('1425', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:13:44');
INSERT INTO `admin_log` VALUES ('1426', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:13:48');
INSERT INTO `admin_log` VALUES ('1427', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:00');
INSERT INTO `admin_log` VALUES ('1428', 'front-plate', 'create', 'front-plate/create', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:07');
INSERT INTO `admin_log` VALUES ('1429', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:08');
INSERT INTO `admin_log` VALUES ('1430', 'front-plate', 'view', 'front-plate/view', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:31');
INSERT INTO `admin_log` VALUES ('1431', 'front-plate', 'view', 'front-plate/view', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:35');
INSERT INTO `admin_log` VALUES ('1432', 'front-plate', 'view', 'front-plate/view', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:14:39');
INSERT INTO `admin_log` VALUES ('1433', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:25:45');
INSERT INTO `admin_log` VALUES ('1434', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:25:47');
INSERT INTO `admin_log` VALUES ('1435', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:26:07');
INSERT INTO `admin_log` VALUES ('1436', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:26:10');
INSERT INTO `admin_log` VALUES ('1437', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:27:17');
INSERT INTO `admin_log` VALUES ('1438', 'front-plate', 'create', 'front-plate/create', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:27:19');
INSERT INTO `admin_log` VALUES ('1439', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:27:58');
INSERT INTO `admin_log` VALUES ('1440', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:28:02');
INSERT INTO `admin_log` VALUES ('1441', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-21 09:28:41');
INSERT INTO `admin_log` VALUES ('1442', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:28:43');
INSERT INTO `admin_log` VALUES ('1443', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:28:46');
INSERT INTO `admin_log` VALUES ('1444', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:28:50');
INSERT INTO `admin_log` VALUES ('1445', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:28:53');
INSERT INTO `admin_log` VALUES ('1446', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:28:57');
INSERT INTO `admin_log` VALUES ('1447', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:29:09');
INSERT INTO `admin_log` VALUES ('1448', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:29:12');
INSERT INTO `admin_log` VALUES ('1449', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:29:13');
INSERT INTO `admin_log` VALUES ('1450', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-21 09:29:38');
INSERT INTO `admin_log` VALUES ('1451', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:29:40');
INSERT INTO `admin_log` VALUES ('1452', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:29:43');
INSERT INTO `admin_log` VALUES ('1453', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:29:44');
INSERT INTO `admin_log` VALUES ('1454', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:29:46');
INSERT INTO `admin_log` VALUES ('1455', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:29:52');
INSERT INTO `admin_log` VALUES ('1456', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:30:03');
INSERT INTO `admin_log` VALUES ('1457', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:30:31');
INSERT INTO `admin_log` VALUES ('1458', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:33:04');
INSERT INTO `admin_log` VALUES ('1459', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:33:05');
INSERT INTO `admin_log` VALUES ('1460', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-21 09:33:10');
INSERT INTO `admin_log` VALUES ('1461', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:33:18');
INSERT INTO `admin_log` VALUES ('1462', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:33:24');
INSERT INTO `admin_log` VALUES ('1463', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:33:35');
INSERT INTO `admin_log` VALUES ('1464', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:33:38');
INSERT INTO `admin_log` VALUES ('1465', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-21 09:33:41');
INSERT INTO `admin_log` VALUES ('1466', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:33:43');
INSERT INTO `admin_log` VALUES ('1467', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:33:55');
INSERT INTO `admin_log` VALUES ('1468', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-21 09:34:00');
INSERT INTO `admin_log` VALUES ('1469', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:34:23');
INSERT INTO `admin_log` VALUES ('1470', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:34:27');
INSERT INTO `admin_log` VALUES ('1471', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:34:39');
INSERT INTO `admin_log` VALUES ('1472', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-03-21 09:34:44');
INSERT INTO `admin_log` VALUES ('1473', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:35:31');
INSERT INTO `admin_log` VALUES ('1474', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:35:34');
INSERT INTO `admin_log` VALUES ('1475', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:37:04');
INSERT INTO `admin_log` VALUES ('1476', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:39:21');
INSERT INTO `admin_log` VALUES ('1477', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:39:38');
INSERT INTO `admin_log` VALUES ('1478', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:39:44');
INSERT INTO `admin_log` VALUES ('1479', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:19');
INSERT INTO `admin_log` VALUES ('1480', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:25');
INSERT INTO `admin_log` VALUES ('1481', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:26');
INSERT INTO `admin_log` VALUES ('1482', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:29');
INSERT INTO `admin_log` VALUES ('1483', 'front-plate', 'delete', 'front-plate/delete', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:38');
INSERT INTO `admin_log` VALUES ('1484', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:40:40');
INSERT INTO `admin_log` VALUES ('1485', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:42:48');
INSERT INTO `admin_log` VALUES ('1486', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:42:51');
INSERT INTO `admin_log` VALUES ('1487', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:42:54');
INSERT INTO `admin_log` VALUES ('1488', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:44:15');
INSERT INTO `admin_log` VALUES ('1489', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:25');
INSERT INTO `admin_log` VALUES ('1490', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:33');
INSERT INTO `admin_log` VALUES ('1491', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:35');
INSERT INTO `admin_log` VALUES ('1492', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:39');
INSERT INTO `admin_log` VALUES ('1493', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:40');
INSERT INTO `admin_log` VALUES ('1494', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:45:45');
INSERT INTO `admin_log` VALUES ('1495', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:46:14');
INSERT INTO `admin_log` VALUES ('1496', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:46:16');
INSERT INTO `admin_log` VALUES ('1497', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:46:19');
INSERT INTO `admin_log` VALUES ('1498', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:47:55');
INSERT INTO `admin_log` VALUES ('1499', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:48:13');
INSERT INTO `admin_log` VALUES ('1500', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:48:22');
INSERT INTO `admin_log` VALUES ('1501', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:49:24');
INSERT INTO `admin_log` VALUES ('1502', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:49:30');
INSERT INTO `admin_log` VALUES ('1503', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:49:33');
INSERT INTO `admin_log` VALUES ('1504', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:49:36');
INSERT INTO `admin_log` VALUES ('1505', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:49:39');
INSERT INTO `admin_log` VALUES ('1506', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:49:41');
INSERT INTO `admin_log` VALUES ('1507', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:49:44');
INSERT INTO `admin_log` VALUES ('1508', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:50:00');
INSERT INTO `admin_log` VALUES ('1509', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:50:18');
INSERT INTO `admin_log` VALUES ('1510', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-21 09:50:30');
INSERT INTO `admin_log` VALUES ('1511', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:50:34');
INSERT INTO `admin_log` VALUES ('1512', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:50:53');
INSERT INTO `admin_log` VALUES ('1513', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:51:04');
INSERT INTO `admin_log` VALUES ('1514', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:51:07');
INSERT INTO `admin_log` VALUES ('1515', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:52:07');
INSERT INTO `admin_log` VALUES ('1516', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:52:56');
INSERT INTO `admin_log` VALUES ('1517', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:53:01');
INSERT INTO `admin_log` VALUES ('1518', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-21 09:53:02');
INSERT INTO `admin_log` VALUES ('1519', 'front-plate', 'index', 'front-plate/index', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:54:43');
INSERT INTO `admin_log` VALUES ('1520', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:54:52');
INSERT INTO `admin_log` VALUES ('1521', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:54:58');
INSERT INTO `admin_log` VALUES ('1522', 'admin-menu', 'delete', 'admin-menu/delete', '菜单用户权限', '菜单管理', '二级菜单删除', 'Unknown', 'admin', '2017-03-21 09:55:20');
INSERT INTO `admin_log` VALUES ('1523', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:55:21');
INSERT INTO `admin_log` VALUES ('1524', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:55:36');
INSERT INTO `admin_log` VALUES ('1525', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:55:41');
INSERT INTO `admin_log` VALUES ('1526', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:55:43');
INSERT INTO `admin_log` VALUES ('1527', 'front-plate', 'create', 'front-plate/create', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:55:46');
INSERT INTO `admin_log` VALUES ('1528', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-21 09:55:51');
INSERT INTO `admin_log` VALUES ('1529', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:55:53');
INSERT INTO `admin_log` VALUES ('1530', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-21 09:55:58');
INSERT INTO `admin_log` VALUES ('1531', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:56:01');
INSERT INTO `admin_log` VALUES ('1532', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-21 09:56:34');
INSERT INTO `admin_log` VALUES ('1533', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-21 09:56:35');
INSERT INTO `admin_log` VALUES ('1534', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:56:38');
INSERT INTO `admin_log` VALUES ('1535', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:56:41');
INSERT INTO `admin_log` VALUES ('1536', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-21 09:56:59');
INSERT INTO `admin_log` VALUES ('1537', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-21 09:57:00');
INSERT INTO `admin_log` VALUES ('1538', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:57:07');
INSERT INTO `admin_log` VALUES ('1539', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:57:09');
INSERT INTO `admin_log` VALUES ('1540', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-21 09:57:16');
INSERT INTO `admin_log` VALUES ('1541', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:57:28');
INSERT INTO `admin_log` VALUES ('1542', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:57:30');
INSERT INTO `admin_log` VALUES ('1543', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 09:57:33');
INSERT INTO `admin_log` VALUES ('1544', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:57:50');
INSERT INTO `admin_log` VALUES ('1545', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:59:55');
INSERT INTO `admin_log` VALUES ('1546', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 09:59:56');
INSERT INTO `admin_log` VALUES ('1547', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:00');
INSERT INTO `admin_log` VALUES ('1548', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:05');
INSERT INTO `admin_log` VALUES ('1549', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:17');
INSERT INTO `admin_log` VALUES ('1550', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:18');
INSERT INTO `admin_log` VALUES ('1551', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:21');
INSERT INTO `admin_log` VALUES ('1552', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:22');
INSERT INTO `admin_log` VALUES ('1553', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-21 10:00:23');
INSERT INTO `admin_log` VALUES ('1554', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:20:55');
INSERT INTO `admin_log` VALUES ('1555', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:21:18');
INSERT INTO `admin_log` VALUES ('1556', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:21:22');
INSERT INTO `admin_log` VALUES ('1557', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:23:51');
INSERT INTO `admin_log` VALUES ('1558', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:28:50');
INSERT INTO `admin_log` VALUES ('1559', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:33:39');
INSERT INTO `admin_log` VALUES ('1560', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:33:51');
INSERT INTO `admin_log` VALUES ('1561', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:33:52');
INSERT INTO `admin_log` VALUES ('1562', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:33:56');
INSERT INTO `admin_log` VALUES ('1563', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:35:44');
INSERT INTO `admin_log` VALUES ('1564', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:36:30');
INSERT INTO `admin_log` VALUES ('1565', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:36:46');
INSERT INTO `admin_log` VALUES ('1566', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:36:57');
INSERT INTO `admin_log` VALUES ('1567', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:37:05');
INSERT INTO `admin_log` VALUES ('1568', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:36');
INSERT INTO `admin_log` VALUES ('1569', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:40');
INSERT INTO `admin_log` VALUES ('1570', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:49');
INSERT INTO `admin_log` VALUES ('1571', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:50');
INSERT INTO `admin_log` VALUES ('1572', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:55');
INSERT INTO `admin_log` VALUES ('1573', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:39:59');
INSERT INTO `admin_log` VALUES ('1574', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:40:05');
INSERT INTO `admin_log` VALUES ('1575', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:40:10');
INSERT INTO `admin_log` VALUES ('1576', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:40:16');
INSERT INTO `admin_log` VALUES ('1577', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:40:20');
INSERT INTO `admin_log` VALUES ('1578', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:40:24');
INSERT INTO `admin_log` VALUES ('1579', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:23');
INSERT INTO `admin_log` VALUES ('1580', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:27');
INSERT INTO `admin_log` VALUES ('1581', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:37');
INSERT INTO `admin_log` VALUES ('1582', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:38');
INSERT INTO `admin_log` VALUES ('1583', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:42');
INSERT INTO `admin_log` VALUES ('1584', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:45');
INSERT INTO `admin_log` VALUES ('1585', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:50');
INSERT INTO `admin_log` VALUES ('1586', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:53');
INSERT INTO `admin_log` VALUES ('1587', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:41:56');
INSERT INTO `admin_log` VALUES ('1588', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:01');
INSERT INTO `admin_log` VALUES ('1589', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:10');
INSERT INTO `admin_log` VALUES ('1590', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:11');
INSERT INTO `admin_log` VALUES ('1591', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:15');
INSERT INTO `admin_log` VALUES ('1592', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:21');
INSERT INTO `admin_log` VALUES ('1593', 'front-plate', 'update', 'front-plate/update', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:28');
INSERT INTO `admin_log` VALUES ('1594', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:29');
INSERT INTO `admin_log` VALUES ('1595', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:34');
INSERT INTO `admin_log` VALUES ('1596', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:42:37');
INSERT INTO `admin_log` VALUES ('1597', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 07:46:33');
INSERT INTO `admin_log` VALUES ('1598', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-22 07:46:36');
INSERT INTO `admin_log` VALUES ('1599', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-22 07:46:47');
INSERT INTO `admin_log` VALUES ('1600', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-22 07:46:51');
INSERT INTO `admin_log` VALUES ('1601', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-22 07:46:56');
INSERT INTO `admin_log` VALUES ('1602', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-22 07:52:42');
INSERT INTO `admin_log` VALUES ('1603', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-22 07:52:50');
INSERT INTO `admin_log` VALUES ('1604', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-22 07:53:30');
INSERT INTO `admin_log` VALUES ('1605', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-22 07:53:31');
INSERT INTO `admin_log` VALUES ('1606', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 07:53:34');
INSERT INTO `admin_log` VALUES ('1607', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 07:53:37');
INSERT INTO `admin_log` VALUES ('1608', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_log` VALUES ('1609', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 07:53:48');
INSERT INTO `admin_log` VALUES ('1610', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 07:56:35');
INSERT INTO `admin_log` VALUES ('1611', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 07:56:40');
INSERT INTO `admin_log` VALUES ('1612', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 07:56:48');
INSERT INTO `admin_log` VALUES ('1613', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 07:57:02');
INSERT INTO `admin_log` VALUES ('1614', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:02:58');
INSERT INTO `admin_log` VALUES ('1615', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:03:17');
INSERT INTO `admin_log` VALUES ('1616', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:05:33');
INSERT INTO `admin_log` VALUES ('1617', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:05:56');
INSERT INTO `admin_log` VALUES ('1618', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:06:10');
INSERT INTO `admin_log` VALUES ('1619', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:06:19');
INSERT INTO `admin_log` VALUES ('1620', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:08:30');
INSERT INTO `admin_log` VALUES ('1621', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:08:39');
INSERT INTO `admin_log` VALUES ('1622', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:09:31');
INSERT INTO `admin_log` VALUES ('1623', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:09:32');
INSERT INTO `admin_log` VALUES ('1624', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:09:50');
INSERT INTO `admin_log` VALUES ('1625', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:09:51');
INSERT INTO `admin_log` VALUES ('1626', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:10:10');
INSERT INTO `admin_log` VALUES ('1627', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:10:41');
INSERT INTO `admin_log` VALUES ('1628', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:11:05');
INSERT INTO `admin_log` VALUES ('1629', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:11:39');
INSERT INTO `admin_log` VALUES ('1630', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:11:44');
INSERT INTO `admin_log` VALUES ('1631', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:09');
INSERT INTO `admin_log` VALUES ('1632', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:11');
INSERT INTO `admin_log` VALUES ('1633', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:29');
INSERT INTO `admin_log` VALUES ('1634', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:31');
INSERT INTO `admin_log` VALUES ('1635', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:33');
INSERT INTO `admin_log` VALUES ('1636', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:45');
INSERT INTO `admin_log` VALUES ('1637', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:14:52');
INSERT INTO `admin_log` VALUES ('1638', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:15:42');
INSERT INTO `admin_log` VALUES ('1639', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:15:45');
INSERT INTO `admin_log` VALUES ('1640', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:15:49');
INSERT INTO `admin_log` VALUES ('1641', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:15:57');
INSERT INTO `admin_log` VALUES ('1642', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 08:16:03');
INSERT INTO `admin_log` VALUES ('1643', 'front-user', 'view', 'front-user/view', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 08:16:06');
INSERT INTO `admin_log` VALUES ('1644', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 08:16:18');
INSERT INTO `admin_log` VALUES ('1645', 'front-user', 'view', 'front-user/view', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 08:16:23');
INSERT INTO `admin_log` VALUES ('1646', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:16:29');
INSERT INTO `admin_log` VALUES ('1647', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-22 08:16:34');
INSERT INTO `admin_log` VALUES ('1648', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-22 08:16:37');
INSERT INTO `admin_log` VALUES ('1649', 'front-category', 'view', 'front-category/view', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-22 08:16:40');
INSERT INTO `admin_log` VALUES ('1650', 'front-category', 'update', 'front-category/update', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-22 08:16:43');
INSERT INTO `admin_log` VALUES ('1651', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-22 08:16:45');
INSERT INTO `admin_log` VALUES ('1652', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:16:50');
INSERT INTO `admin_log` VALUES ('1653', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:16:52');
INSERT INTO `admin_log` VALUES ('1654', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:16:58');
INSERT INTO `admin_log` VALUES ('1655', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:17:33');
INSERT INTO `admin_log` VALUES ('1656', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:17:35');
INSERT INTO `admin_log` VALUES ('1657', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:17:38');
INSERT INTO `admin_log` VALUES ('1658', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:17:39');
INSERT INTO `admin_log` VALUES ('1659', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:18:44');
INSERT INTO `admin_log` VALUES ('1660', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:19:05');
INSERT INTO `admin_log` VALUES ('1661', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:16');
INSERT INTO `admin_log` VALUES ('1662', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:20');
INSERT INTO `admin_log` VALUES ('1663', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:25');
INSERT INTO `admin_log` VALUES ('1664', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:26');
INSERT INTO `admin_log` VALUES ('1665', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:33');
INSERT INTO `admin_log` VALUES ('1666', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:20:49');
INSERT INTO `admin_log` VALUES ('1667', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:21:02');
INSERT INTO `admin_log` VALUES ('1668', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:21:03');
INSERT INTO `admin_log` VALUES ('1669', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:21:10');
INSERT INTO `admin_log` VALUES ('1670', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-22 08:21:47');
INSERT INTO `admin_log` VALUES ('1671', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-22 10:43:35');
INSERT INTO `admin_log` VALUES ('1672', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-22 10:46:45');
INSERT INTO `admin_log` VALUES ('1673', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-22 10:46:49');
INSERT INTO `admin_log` VALUES ('1674', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-22 10:52:38');
INSERT INTO `admin_log` VALUES ('1675', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-22 10:52:42');
INSERT INTO `admin_log` VALUES ('1676', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-22 10:53:26');
INSERT INTO `admin_log` VALUES ('1677', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-22 10:53:27');
INSERT INTO `admin_log` VALUES ('1678', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 10:53:29');
INSERT INTO `admin_log` VALUES ('1679', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 10:53:32');
INSERT INTO `admin_log` VALUES ('1680', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_log` VALUES ('1681', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-22 10:53:46');
INSERT INTO `admin_log` VALUES ('1682', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 10:53:51');
INSERT INTO `admin_log` VALUES ('1683', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 10:53:53');
INSERT INTO `admin_log` VALUES ('1684', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 10:54:01');
INSERT INTO `admin_log` VALUES ('1685', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-22 10:54:06');
INSERT INTO `admin_log` VALUES ('1686', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 10:54:24');
INSERT INTO `admin_log` VALUES ('1687', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 10:55:23');
INSERT INTO `admin_log` VALUES ('1688', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 10:57:06');
INSERT INTO `admin_log` VALUES ('1689', 'front-ad-count', 'create', 'front-ad-count/create', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 10:57:35');
INSERT INTO `admin_log` VALUES ('1690', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 10:57:36');
INSERT INTO `admin_log` VALUES ('1691', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 11:01:05');
INSERT INTO `admin_log` VALUES ('1692', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 11:02:16');
INSERT INTO `admin_log` VALUES ('1693', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 11:02:22');
INSERT INTO `admin_log` VALUES ('1694', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-22 11:03:37');
INSERT INTO `admin_log` VALUES ('1695', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 07:42:52');
INSERT INTO `admin_log` VALUES ('1696', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 07:54:38');
INSERT INTO `admin_log` VALUES ('1697', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 07:57:48');
INSERT INTO `admin_log` VALUES ('1698', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:05:23');
INSERT INTO `admin_log` VALUES ('1699', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-23 08:05:38');
INSERT INTO `admin_log` VALUES ('1700', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-23 08:06:17');
INSERT INTO `admin_log` VALUES ('1701', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-23 08:06:19');
INSERT INTO `admin_log` VALUES ('1702', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:06:29');
INSERT INTO `admin_log` VALUES ('1703', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:06:47');
INSERT INTO `admin_log` VALUES ('1704', 'front-ad-count', 'create', 'front-ad-count/create', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:07:26');
INSERT INTO `admin_log` VALUES ('1705', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:07:27');
INSERT INTO `admin_log` VALUES ('1706', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:07:33');
INSERT INTO `admin_log` VALUES ('1707', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:07:37');
INSERT INTO `admin_log` VALUES ('1708', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:08:38');
INSERT INTO `admin_log` VALUES ('1709', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:08:40');
INSERT INTO `admin_log` VALUES ('1710', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:08:43');
INSERT INTO `admin_log` VALUES ('1711', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:08:49');
INSERT INTO `admin_log` VALUES ('1712', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:08:53');
INSERT INTO `admin_log` VALUES ('1713', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:12');
INSERT INTO `admin_log` VALUES ('1714', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:20');
INSERT INTO `admin_log` VALUES ('1715', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:23');
INSERT INTO `admin_log` VALUES ('1716', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:32');
INSERT INTO `admin_log` VALUES ('1717', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:36');
INSERT INTO `admin_log` VALUES ('1718', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:09:40');
INSERT INTO `admin_log` VALUES ('1719', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:10:18');
INSERT INTO `admin_log` VALUES ('1720', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:10:29');
INSERT INTO `admin_log` VALUES ('1721', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:10:37');
INSERT INTO `admin_log` VALUES ('1722', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:10:47');
INSERT INTO `admin_log` VALUES ('1723', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:10:51');
INSERT INTO `admin_log` VALUES ('1724', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:13:30');
INSERT INTO `admin_log` VALUES ('1725', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:13:33');
INSERT INTO `admin_log` VALUES ('1726', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:13:39');
INSERT INTO `admin_log` VALUES ('1727', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:13:41');
INSERT INTO `admin_log` VALUES ('1728', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:16:23');
INSERT INTO `admin_log` VALUES ('1729', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:16:34');
INSERT INTO `admin_log` VALUES ('1730', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:16:54');
INSERT INTO `admin_log` VALUES ('1731', 'front-ad-count', 'create', 'front-ad-count/create', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:17:19');
INSERT INTO `admin_log` VALUES ('1732', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:17:20');
INSERT INTO `admin_log` VALUES ('1733', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:17:23');
INSERT INTO `admin_log` VALUES ('1734', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:17:42');
INSERT INTO `admin_log` VALUES ('1735', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:17:57');
INSERT INTO `admin_log` VALUES ('1736', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:18:01');
INSERT INTO `admin_log` VALUES ('1737', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:18:06');
INSERT INTO `admin_log` VALUES ('1738', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:18:12');
INSERT INTO `admin_log` VALUES ('1739', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:19:31');
INSERT INTO `admin_log` VALUES ('1740', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:19:41');
INSERT INTO `admin_log` VALUES ('1741', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:21:07');
INSERT INTO `admin_log` VALUES ('1742', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:21:27');
INSERT INTO `admin_log` VALUES ('1743', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:21:58');
INSERT INTO `admin_log` VALUES ('1744', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:23:18');
INSERT INTO `admin_log` VALUES ('1745', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:23:35');
INSERT INTO `admin_log` VALUES ('1746', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:23:43');
INSERT INTO `admin_log` VALUES ('1747', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:23:49');
INSERT INTO `admin_log` VALUES ('1748', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:24:04');
INSERT INTO `admin_log` VALUES ('1749', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:25:28');
INSERT INTO `admin_log` VALUES ('1750', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:25:40');
INSERT INTO `admin_log` VALUES ('1751', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:26:17');
INSERT INTO `admin_log` VALUES ('1752', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:26:21');
INSERT INTO `admin_log` VALUES ('1753', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:26:33');
INSERT INTO `admin_log` VALUES ('1754', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:26:41');
INSERT INTO `admin_log` VALUES ('1755', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:27:21');
INSERT INTO `admin_log` VALUES ('1756', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:30:00');
INSERT INTO `admin_log` VALUES ('1757', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:30:06');
INSERT INTO `admin_log` VALUES ('1758', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:30:10');
INSERT INTO `admin_log` VALUES ('1759', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:36:15');
INSERT INTO `admin_log` VALUES ('1760', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:39:54');
INSERT INTO `admin_log` VALUES ('1761', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:40:05');
INSERT INTO `admin_log` VALUES ('1762', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:40:11');
INSERT INTO `admin_log` VALUES ('1763', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:41:31');
INSERT INTO `admin_log` VALUES ('1764', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:41:36');
INSERT INTO `admin_log` VALUES ('1765', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:41:54');
INSERT INTO `admin_log` VALUES ('1766', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:41:59');
INSERT INTO `admin_log` VALUES ('1767', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:42:44');
INSERT INTO `admin_log` VALUES ('1768', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:43:09');
INSERT INTO `admin_log` VALUES ('1769', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:43:21');
INSERT INTO `admin_log` VALUES ('1770', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:43:32');
INSERT INTO `admin_log` VALUES ('1771', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:46:27');
INSERT INTO `admin_log` VALUES ('1772', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:46:35');
INSERT INTO `admin_log` VALUES ('1773', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:47:14');
INSERT INTO `admin_log` VALUES ('1774', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:47:20');
INSERT INTO `admin_log` VALUES ('1775', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:49:08');
INSERT INTO `admin_log` VALUES ('1776', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:49:16');
INSERT INTO `admin_log` VALUES ('1777', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:49:20');
INSERT INTO `admin_log` VALUES ('1778', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:49:33');
INSERT INTO `admin_log` VALUES ('1779', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:49:47');
INSERT INTO `admin_log` VALUES ('1780', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:50:06');
INSERT INTO `admin_log` VALUES ('1781', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:58:55');
INSERT INTO `admin_log` VALUES ('1782', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 08:59:01');
INSERT INTO `admin_log` VALUES ('1783', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:01:26');
INSERT INTO `admin_log` VALUES ('1784', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:02:07');
INSERT INTO `admin_log` VALUES ('1785', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:02:18');
INSERT INTO `admin_log` VALUES ('1786', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:02:49');
INSERT INTO `admin_log` VALUES ('1787', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:03:08');
INSERT INTO `admin_log` VALUES ('1788', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:03:58');
INSERT INTO `admin_log` VALUES ('1789', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:04:21');
INSERT INTO `admin_log` VALUES ('1790', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:04:51');
INSERT INTO `admin_log` VALUES ('1791', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:05:00');
INSERT INTO `admin_log` VALUES ('1792', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:05:15');
INSERT INTO `admin_log` VALUES ('1793', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:05:39');
INSERT INTO `admin_log` VALUES ('1794', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:07:14');
INSERT INTO `admin_log` VALUES ('1795', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:07:40');
INSERT INTO `admin_log` VALUES ('1796', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:09:00');
INSERT INTO `admin_log` VALUES ('1797', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:09:23');
INSERT INTO `admin_log` VALUES ('1798', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:09:35');
INSERT INTO `admin_log` VALUES ('1799', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:15:32');
INSERT INTO `admin_log` VALUES ('1800', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:20:30');
INSERT INTO `admin_log` VALUES ('1801', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:20:43');
INSERT INTO `admin_log` VALUES ('1802', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:21:35');
INSERT INTO `admin_log` VALUES ('1803', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:22:02');
INSERT INTO `admin_log` VALUES ('1804', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:23:28');
INSERT INTO `admin_log` VALUES ('1805', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:26:45');
INSERT INTO `admin_log` VALUES ('1806', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:27:18');
INSERT INTO `admin_log` VALUES ('1807', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:27:37');
INSERT INTO `admin_log` VALUES ('1808', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:27:51');
INSERT INTO `admin_log` VALUES ('1809', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:28:29');
INSERT INTO `admin_log` VALUES ('1810', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:28:36');
INSERT INTO `admin_log` VALUES ('1811', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:29:00');
INSERT INTO `admin_log` VALUES ('1812', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:29:26');
INSERT INTO `admin_log` VALUES ('1813', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:29:39');
INSERT INTO `admin_log` VALUES ('1814', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:30:05');
INSERT INTO `admin_log` VALUES ('1815', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:26');
INSERT INTO `admin_log` VALUES ('1816', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:33');
INSERT INTO `admin_log` VALUES ('1817', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:37');
INSERT INTO `admin_log` VALUES ('1818', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:44');
INSERT INTO `admin_log` VALUES ('1819', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:50');
INSERT INTO `admin_log` VALUES ('1820', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:35:56');
INSERT INTO `admin_log` VALUES ('1821', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:36:05');
INSERT INTO `admin_log` VALUES ('1822', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:36:21');
INSERT INTO `admin_log` VALUES ('1823', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:48:00');
INSERT INTO `admin_log` VALUES ('1824', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:48:13');
INSERT INTO `admin_log` VALUES ('1825', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:49:01');
INSERT INTO `admin_log` VALUES ('1826', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:49:22');
INSERT INTO `admin_log` VALUES ('1827', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:50:05');
INSERT INTO `admin_log` VALUES ('1828', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:50:17');
INSERT INTO `admin_log` VALUES ('1829', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:51:42');
INSERT INTO `admin_log` VALUES ('1830', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:51:55');
INSERT INTO `admin_log` VALUES ('1831', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:52:08');
INSERT INTO `admin_log` VALUES ('1832', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:52:20');
INSERT INTO `admin_log` VALUES ('1833', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:52:34');
INSERT INTO `admin_log` VALUES ('1834', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:54:08');
INSERT INTO `admin_log` VALUES ('1835', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 09:54:20');
INSERT INTO `admin_log` VALUES ('1836', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:01:51');
INSERT INTO `admin_log` VALUES ('1837', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:02:29');
INSERT INTO `admin_log` VALUES ('1838', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:03:49');
INSERT INTO `admin_log` VALUES ('1839', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:03:52');
INSERT INTO `admin_log` VALUES ('1840', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:04:16');
INSERT INTO `admin_log` VALUES ('1841', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:04:20');
INSERT INTO `admin_log` VALUES ('1842', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:04:23');
INSERT INTO `admin_log` VALUES ('1843', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:04:44');
INSERT INTO `admin_log` VALUES ('1844', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:05:05');
INSERT INTO `admin_log` VALUES ('1845', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:05:10');
INSERT INTO `admin_log` VALUES ('1846', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-23 10:05:34');
INSERT INTO `admin_log` VALUES ('1847', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:05:37');
INSERT INTO `admin_log` VALUES ('1848', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:06:11');
INSERT INTO `admin_log` VALUES ('1849', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:06:17');
INSERT INTO `admin_log` VALUES ('1850', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:06:42');
INSERT INTO `admin_log` VALUES ('1851', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:07:13');
INSERT INTO `admin_log` VALUES ('1852', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:09:41');
INSERT INTO `admin_log` VALUES ('1853', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:11:44');
INSERT INTO `admin_log` VALUES ('1854', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:11:47');
INSERT INTO `admin_log` VALUES ('1855', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:11:58');
INSERT INTO `admin_log` VALUES ('1856', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:14:14');
INSERT INTO `admin_log` VALUES ('1857', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:26:19');
INSERT INTO `admin_log` VALUES ('1858', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:17');
INSERT INTO `admin_log` VALUES ('1859', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:28');
INSERT INTO `admin_log` VALUES ('1860', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:29');
INSERT INTO `admin_log` VALUES ('1861', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:30');
INSERT INTO `admin_log` VALUES ('1862', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:31');
INSERT INTO `admin_log` VALUES ('1863', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:32');
INSERT INTO `admin_log` VALUES ('1864', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:33');
INSERT INTO `admin_log` VALUES ('1865', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:34');
INSERT INTO `admin_log` VALUES ('1866', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:35');
INSERT INTO `admin_log` VALUES ('1867', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:37');
INSERT INTO `admin_log` VALUES ('1868', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:38');
INSERT INTO `admin_log` VALUES ('1869', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:39');
INSERT INTO `admin_log` VALUES ('1870', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:40');
INSERT INTO `admin_log` VALUES ('1871', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:41');
INSERT INTO `admin_log` VALUES ('1872', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:42');
INSERT INTO `admin_log` VALUES ('1873', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:43');
INSERT INTO `admin_log` VALUES ('1874', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:45');
INSERT INTO `admin_log` VALUES ('1875', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:46');
INSERT INTO `admin_log` VALUES ('1876', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:47');
INSERT INTO `admin_log` VALUES ('1877', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:48');
INSERT INTO `admin_log` VALUES ('1878', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:49');
INSERT INTO `admin_log` VALUES ('1879', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:50');
INSERT INTO `admin_log` VALUES ('1880', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:51');
INSERT INTO `admin_log` VALUES ('1881', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:53');
INSERT INTO `admin_log` VALUES ('1882', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:54');
INSERT INTO `admin_log` VALUES ('1883', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:55');
INSERT INTO `admin_log` VALUES ('1884', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:56');
INSERT INTO `admin_log` VALUES ('1885', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:28:57');
INSERT INTO `admin_log` VALUES ('1886', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:30:31');
INSERT INTO `admin_log` VALUES ('1887', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:30:40');
INSERT INTO `admin_log` VALUES ('1888', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:30:49');
INSERT INTO `admin_log` VALUES ('1889', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:39:13');
INSERT INTO `admin_log` VALUES ('1890', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:39:26');
INSERT INTO `admin_log` VALUES ('1891', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:39:49');
INSERT INTO `admin_log` VALUES ('1892', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:40:10');
INSERT INTO `admin_log` VALUES ('1893', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:41:27');
INSERT INTO `admin_log` VALUES ('1894', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:50:49');
INSERT INTO `admin_log` VALUES ('1895', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 10:53:23');
INSERT INTO `admin_log` VALUES ('1896', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-23 11:08:18');
INSERT INTO `admin_log` VALUES ('1897', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-24 02:57:58');
INSERT INTO `admin_log` VALUES ('1898', 'penngo-word', 'index', 'penngo-word/index', '分类管理', '敏感词', '操作', 'Unknown', 'admin', '2017-03-24 02:58:05');
INSERT INTO `admin_log` VALUES ('1899', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', 'Unknown', 'admin', '2017-03-24 02:58:06');
INSERT INTO `admin_log` VALUES ('1900', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', 'Unknown', 'admin', '2017-03-24 02:58:08');
INSERT INTO `admin_log` VALUES ('1901', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', 'Unknown', 'admin', '2017-03-24 02:58:14');
INSERT INTO `admin_log` VALUES ('1902', 'penngo-word', 'index', 'penngo-word/index', '分类管理', '敏感词', '操作', 'Unknown', 'admin', '2017-03-24 02:58:17');
INSERT INTO `admin_log` VALUES ('1903', 'admin-log', 'index', 'admin-log/index', '日志管理', '操作日志', '操作', 'Unknown', 'admin', '2017-03-24 02:58:21');
INSERT INTO `admin_log` VALUES ('1904', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-24 02:58:26');
INSERT INTO `admin_log` VALUES ('1905', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-03-24 02:58:29');
INSERT INTO `admin_log` VALUES ('1906', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', 'Unknown', 'admin', '2017-03-24 02:58:46');
INSERT INTO `admin_log` VALUES ('1907', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-24 02:58:49');
INSERT INTO `admin_log` VALUES ('1908', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-03-24 02:58:52');
INSERT INTO `admin_log` VALUES ('1909', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-03-24 02:58:58');
INSERT INTO `admin_log` VALUES ('1910', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-03-24 02:59:01');
INSERT INTO `admin_log` VALUES ('1911', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-03-24 02:59:06');
INSERT INTO `admin_log` VALUES ('1912', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 02:59:08');
INSERT INTO `admin_log` VALUES ('1913', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 02:59:15');
INSERT INTO `admin_log` VALUES ('1914', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 02:59:23');
INSERT INTO `admin_log` VALUES ('1915', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 03:01:43');
INSERT INTO `admin_log` VALUES ('1916', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:09:50');
INSERT INTO `admin_log` VALUES ('1917', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:14:30');
INSERT INTO `admin_log` VALUES ('1918', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:18:12');
INSERT INTO `admin_log` VALUES ('1919', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:19:06');
INSERT INTO `admin_log` VALUES ('1920', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:19:46');
INSERT INTO `admin_log` VALUES ('1921', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:25:26');
INSERT INTO `admin_log` VALUES ('1922', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:27:23');
INSERT INTO `admin_log` VALUES ('1923', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:27:28');
INSERT INTO `admin_log` VALUES ('1924', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:27:29');
INSERT INTO `admin_log` VALUES ('1925', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:27:32');
INSERT INTO `admin_log` VALUES ('1926', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:27:36');
INSERT INTO `admin_log` VALUES ('1927', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:28:10');
INSERT INTO `admin_log` VALUES ('1928', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:28:13');
INSERT INTO `admin_log` VALUES ('1929', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:28:17');
INSERT INTO `admin_log` VALUES ('1930', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:13');
INSERT INTO `admin_log` VALUES ('1931', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:20');
INSERT INTO `admin_log` VALUES ('1932', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:23');
INSERT INTO `admin_log` VALUES ('1933', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:26');
INSERT INTO `admin_log` VALUES ('1934', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:28');
INSERT INTO `admin_log` VALUES ('1935', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:31:29');
INSERT INTO `admin_log` VALUES ('1936', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:21');
INSERT INTO `admin_log` VALUES ('1937', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:26');
INSERT INTO `admin_log` VALUES ('1938', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:27');
INSERT INTO `admin_log` VALUES ('1939', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:29');
INSERT INTO `admin_log` VALUES ('1940', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:44');
INSERT INTO `admin_log` VALUES ('1941', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:32:46');
INSERT INTO `admin_log` VALUES ('1942', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:35:34');
INSERT INTO `admin_log` VALUES ('1943', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:35:35');
INSERT INTO `admin_log` VALUES ('1944', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:35:43');
INSERT INTO `admin_log` VALUES ('1945', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:35:46');
INSERT INTO `admin_log` VALUES ('1946', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 03:35:53');
INSERT INTO `admin_log` VALUES ('1947', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 03:38:58');
INSERT INTO `admin_log` VALUES ('1948', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 03:39:02');
INSERT INTO `admin_log` VALUES ('1949', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 03:39:11');
INSERT INTO `admin_log` VALUES ('1950', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 04:52:59');
INSERT INTO `admin_log` VALUES ('1951', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 04:53:21');
INSERT INTO `admin_log` VALUES ('1952', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 04:53:26');
INSERT INTO `admin_log` VALUES ('1953', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 04:53:47');
INSERT INTO `admin_log` VALUES ('1954', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 04:54:41');
INSERT INTO `admin_log` VALUES ('1955', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:12:04');
INSERT INTO `admin_log` VALUES ('1956', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:12:25');
INSERT INTO `admin_log` VALUES ('1957', 'front-ad', 'create', 'front-ad/create', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:12:40');
INSERT INTO `admin_log` VALUES ('1958', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:12:41');
INSERT INTO `admin_log` VALUES ('1959', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:05');
INSERT INTO `admin_log` VALUES ('1960', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:06');
INSERT INTO `admin_log` VALUES ('1961', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:08');
INSERT INTO `admin_log` VALUES ('1962', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:09');
INSERT INTO `admin_log` VALUES ('1963', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:10');
INSERT INTO `admin_log` VALUES ('1964', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:11');
INSERT INTO `admin_log` VALUES ('1965', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:13');
INSERT INTO `admin_log` VALUES ('1966', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:14');
INSERT INTO `admin_log` VALUES ('1967', 'front-ad', 'delete', 'front-ad/delete', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:15');
INSERT INTO `admin_log` VALUES ('1968', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:16');
INSERT INTO `admin_log` VALUES ('1969', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:17');
INSERT INTO `admin_log` VALUES ('1970', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-03-24 06:13:18');
INSERT INTO `admin_log` VALUES ('1971', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:13:22');
INSERT INTO `admin_log` VALUES ('1972', 'front-ad-count', 'delete', 'front-ad-count/delete', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:13:38');
INSERT INTO `admin_log` VALUES ('1973', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:13:40');
INSERT INTO `admin_log` VALUES ('1974', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:13');
INSERT INTO `admin_log` VALUES ('1975', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:23');
INSERT INTO `admin_log` VALUES ('1976', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:28');
INSERT INTO `admin_log` VALUES ('1977', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:34');
INSERT INTO `admin_log` VALUES ('1978', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:51');
INSERT INTO `admin_log` VALUES ('1979', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 06:15:56');
INSERT INTO `admin_log` VALUES ('1980', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 08:32:20');
INSERT INTO `admin_log` VALUES ('1981', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 08:42:20');
INSERT INTO `admin_log` VALUES ('1982', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 09:02:30');
INSERT INTO `admin_log` VALUES ('1983', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 09:04:46');
INSERT INTO `admin_log` VALUES ('1984', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-24 09:12:21');
INSERT INTO `admin_log` VALUES ('1985', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-24 09:20:28');
INSERT INTO `admin_log` VALUES ('1986', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-24 09:20:53');
INSERT INTO `admin_log` VALUES ('1987', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-24 09:21:38');
INSERT INTO `admin_log` VALUES ('1988', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-24 09:21:40');
INSERT INTO `admin_log` VALUES ('1989', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-24 09:21:42');
INSERT INTO `admin_log` VALUES ('1990', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-24 09:21:45');
INSERT INTO `admin_log` VALUES ('1991', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-24 09:21:59');
INSERT INTO `admin_log` VALUES ('1992', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-24 09:22:01');
INSERT INTO `admin_log` VALUES ('1993', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-24 09:22:04');
INSERT INTO `admin_log` VALUES ('1994', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-24 09:22:05');
INSERT INTO `admin_log` VALUES ('1995', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-24 09:22:08');
INSERT INTO `admin_log` VALUES ('1996', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-24 09:22:10');
INSERT INTO `admin_log` VALUES ('1997', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-24 09:22:13');
INSERT INTO `admin_log` VALUES ('1998', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-24 09:22:14');
INSERT INTO `admin_log` VALUES ('1999', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-24 09:22:18');
INSERT INTO `admin_log` VALUES ('2000', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-24 09:22:25');
INSERT INTO `admin_log` VALUES ('2001', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-24 09:22:41');
INSERT INTO `admin_log` VALUES ('2002', 'front-website-count', 'create', 'front-website-count/create', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-24 09:22:55');
INSERT INTO `admin_log` VALUES ('2003', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-24 09:22:57');
INSERT INTO `admin_log` VALUES ('2004', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-27 14:12:20');
INSERT INTO `admin_log` VALUES ('2005', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-27 14:12:23');
INSERT INTO `admin_log` VALUES ('2006', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-27 14:12:28');
INSERT INTO `admin_log` VALUES ('2007', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-27 14:54:48');
INSERT INTO `admin_log` VALUES ('2008', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-27 14:54:54');
INSERT INTO `admin_log` VALUES ('2009', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-27 14:55:45');
INSERT INTO `admin_log` VALUES ('2010', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-27 14:55:46');
INSERT INTO `admin_log` VALUES ('2011', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 14:55:49');
INSERT INTO `admin_log` VALUES ('2012', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 14:55:52');
INSERT INTO `admin_log` VALUES ('2013', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_log` VALUES ('2014', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 14:56:06');
INSERT INTO `admin_log` VALUES ('2015', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 14:56:12');
INSERT INTO `admin_log` VALUES ('2016', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 14:56:15');
INSERT INTO `admin_log` VALUES ('2017', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 14:56:21');
INSERT INTO `admin_log` VALUES ('2018', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-27 14:56:37');
INSERT INTO `admin_log` VALUES ('2019', 'front-essence-count', 'create', 'front-essence-count/create', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-27 14:56:48');
INSERT INTO `admin_log` VALUES ('2020', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-27 14:56:50');
INSERT INTO `admin_log` VALUES ('2021', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-27 14:59:43');
INSERT INTO `admin_log` VALUES ('2022', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-27 14:59:47');
INSERT INTO `admin_log` VALUES ('2023', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-27 15:00:22');
INSERT INTO `admin_log` VALUES ('2024', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-27 15:00:23');
INSERT INTO `admin_log` VALUES ('2025', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 15:00:29');
INSERT INTO `admin_log` VALUES ('2026', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 15:00:31');
INSERT INTO `admin_log` VALUES ('2027', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_log` VALUES ('2028', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-27 15:00:47');
INSERT INTO `admin_log` VALUES ('2029', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 15:00:53');
INSERT INTO `admin_log` VALUES ('2030', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 15:00:56');
INSERT INTO `admin_log` VALUES ('2031', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-27 15:01:00');
INSERT INTO `admin_log` VALUES ('2032', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-27 15:01:14');
INSERT INTO `admin_log` VALUES ('2033', 'front-user-count', 'create', 'front-user-count/create', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-27 15:01:20');
INSERT INTO `admin_log` VALUES ('2034', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-27 15:01:21');
INSERT INTO `admin_log` VALUES ('2035', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:15');
INSERT INTO `admin_log` VALUES ('2036', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:19');
INSERT INTO `admin_log` VALUES ('2037', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:22');
INSERT INTO `admin_log` VALUES ('2038', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:24');
INSERT INTO `admin_log` VALUES ('2039', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:28');
INSERT INTO `admin_log` VALUES ('2040', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:40');
INSERT INTO `admin_log` VALUES ('2041', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:08:44');
INSERT INTO `admin_log` VALUES ('2042', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-28 14:13:54');
INSERT INTO `admin_log` VALUES ('2043', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-28 14:13:57');
INSERT INTO `admin_log` VALUES ('2044', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-28 14:16:08');
INSERT INTO `admin_log` VALUES ('2045', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-28 14:16:09');
INSERT INTO `admin_log` VALUES ('2046', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-28 14:16:13');
INSERT INTO `admin_log` VALUES ('2047', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-28 14:16:16');
INSERT INTO `admin_log` VALUES ('2048', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_log` VALUES ('2049', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-28 14:16:31');
INSERT INTO `admin_log` VALUES ('2050', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-28 14:16:34');
INSERT INTO `admin_log` VALUES ('2051', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-28 14:16:37');
INSERT INTO `admin_log` VALUES ('2052', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-28 14:16:41');
INSERT INTO `admin_log` VALUES ('2053', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:16:56');
INSERT INTO `admin_log` VALUES ('2054', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-28 14:16:59');
INSERT INTO `admin_log` VALUES ('2055', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:01');
INSERT INTO `admin_log` VALUES ('2056', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:03');
INSERT INTO `admin_log` VALUES ('2057', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:05');
INSERT INTO `admin_log` VALUES ('2058', 'front-product-count', 'create', 'front-product-count/create', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:14');
INSERT INTO `admin_log` VALUES ('2059', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:15');
INSERT INTO `admin_log` VALUES ('2060', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:17:32');
INSERT INTO `admin_log` VALUES ('2061', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:18:19');
INSERT INTO `admin_log` VALUES ('2062', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-28 14:19:50');
INSERT INTO `admin_log` VALUES ('2063', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-28 14:19:52');
INSERT INTO `admin_log` VALUES ('2064', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:19:55');
INSERT INTO `admin_log` VALUES ('2065', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:36:30');
INSERT INTO `admin_log` VALUES ('2066', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:36:36');
INSERT INTO `admin_log` VALUES ('2067', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:37:04');
INSERT INTO `admin_log` VALUES ('2068', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:37:15');
INSERT INTO `admin_log` VALUES ('2069', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:37:58');
INSERT INTO `admin_log` VALUES ('2070', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:38:03');
INSERT INTO `admin_log` VALUES ('2071', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:38:39');
INSERT INTO `admin_log` VALUES ('2072', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:38:45');
INSERT INTO `admin_log` VALUES ('2073', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:38:46');
INSERT INTO `admin_log` VALUES ('2074', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:38:54');
INSERT INTO `admin_log` VALUES ('2075', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:40:39');
INSERT INTO `admin_log` VALUES ('2076', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:41:10');
INSERT INTO `admin_log` VALUES ('2077', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:43:49');
INSERT INTO `admin_log` VALUES ('2078', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:45:02');
INSERT INTO `admin_log` VALUES ('2079', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:45:39');
INSERT INTO `admin_log` VALUES ('2080', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:48:21');
INSERT INTO `admin_log` VALUES ('2081', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:55:03');
INSERT INTO `admin_log` VALUES ('2082', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 14:55:05');
INSERT INTO `admin_log` VALUES ('2083', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:04:29');
INSERT INTO `admin_log` VALUES ('2084', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:05:28');
INSERT INTO `admin_log` VALUES ('2085', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:06:41');
INSERT INTO `admin_log` VALUES ('2086', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:08:05');
INSERT INTO `admin_log` VALUES ('2087', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:08:32');
INSERT INTO `admin_log` VALUES ('2088', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:09:57');
INSERT INTO `admin_log` VALUES ('2089', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:11:19');
INSERT INTO `admin_log` VALUES ('2090', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:11:30');
INSERT INTO `admin_log` VALUES ('2091', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:28:42');
INSERT INTO `admin_log` VALUES ('2092', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:30:09');
INSERT INTO `admin_log` VALUES ('2093', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:30:32');
INSERT INTO `admin_log` VALUES ('2094', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:31:15');
INSERT INTO `admin_log` VALUES ('2095', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:31:20');
INSERT INTO `admin_log` VALUES ('2096', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:31:25');
INSERT INTO `admin_log` VALUES ('2097', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:31:48');
INSERT INTO `admin_log` VALUES ('2098', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:31:59');
INSERT INTO `admin_log` VALUES ('2099', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:34:57');
INSERT INTO `admin_log` VALUES ('2100', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:35:01');
INSERT INTO `admin_log` VALUES ('2101', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:35:05');
INSERT INTO `admin_log` VALUES ('2102', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:35:09');
INSERT INTO `admin_log` VALUES ('2103', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:36:24');
INSERT INTO `admin_log` VALUES ('2104', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:36:29');
INSERT INTO `admin_log` VALUES ('2105', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:36:36');
INSERT INTO `admin_log` VALUES ('2106', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:36:49');
INSERT INTO `admin_log` VALUES ('2107', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:42:31');
INSERT INTO `admin_log` VALUES ('2108', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:43:15');
INSERT INTO `admin_log` VALUES ('2109', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-28 15:44:43');
INSERT INTO `admin_log` VALUES ('2110', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:16:11');
INSERT INTO `admin_log` VALUES ('2111', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:17:57');
INSERT INTO `admin_log` VALUES ('2112', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:18:29');
INSERT INTO `admin_log` VALUES ('2113', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:20:10');
INSERT INTO `admin_log` VALUES ('2114', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:22:45');
INSERT INTO `admin_log` VALUES ('2115', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:22:49');
INSERT INTO `admin_log` VALUES ('2116', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:37:41');
INSERT INTO `admin_log` VALUES ('2117', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:37:45');
INSERT INTO `admin_log` VALUES ('2118', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:38:18');
INSERT INTO `admin_log` VALUES ('2119', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:38:20');
INSERT INTO `admin_log` VALUES ('2120', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:41:35');
INSERT INTO `admin_log` VALUES ('2121', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:42:42');
INSERT INTO `admin_log` VALUES ('2122', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:43:46');
INSERT INTO `admin_log` VALUES ('2123', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:45:42');
INSERT INTO `admin_log` VALUES ('2124', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 14:46:35');
INSERT INTO `admin_log` VALUES ('2125', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:46:38');
INSERT INTO `admin_log` VALUES ('2126', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 14:54:50');
INSERT INTO `admin_log` VALUES ('2127', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:03:41');
INSERT INTO `admin_log` VALUES ('2128', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:03:43');
INSERT INTO `admin_log` VALUES ('2129', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:08:49');
INSERT INTO `admin_log` VALUES ('2130', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:09:26');
INSERT INTO `admin_log` VALUES ('2131', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:10:38');
INSERT INTO `admin_log` VALUES ('2132', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:11:10');
INSERT INTO `admin_log` VALUES ('2133', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:14:02');
INSERT INTO `admin_log` VALUES ('2134', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:14:59');
INSERT INTO `admin_log` VALUES ('2135', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:15:16');
INSERT INTO `admin_log` VALUES ('2136', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:15:51');
INSERT INTO `admin_log` VALUES ('2137', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:16:00');
INSERT INTO `admin_log` VALUES ('2138', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:16:02');
INSERT INTO `admin_log` VALUES ('2139', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:16:26');
INSERT INTO `admin_log` VALUES ('2140', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:18:18');
INSERT INTO `admin_log` VALUES ('2141', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:19:21');
INSERT INTO `admin_log` VALUES ('2142', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:21:05');
INSERT INTO `admin_log` VALUES ('2143', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:22:54');
INSERT INTO `admin_log` VALUES ('2144', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:23:03');
INSERT INTO `admin_log` VALUES ('2145', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:23:22');
INSERT INTO `admin_log` VALUES ('2146', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:25:09');
INSERT INTO `admin_log` VALUES ('2147', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:25:12');
INSERT INTO `admin_log` VALUES ('2148', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:26:36');
INSERT INTO `admin_log` VALUES ('2149', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:26:40');
INSERT INTO `admin_log` VALUES ('2150', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:26:43');
INSERT INTO `admin_log` VALUES ('2151', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:26:46');
INSERT INTO `admin_log` VALUES ('2152', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:27:39');
INSERT INTO `admin_log` VALUES ('2153', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:27:43');
INSERT INTO `admin_log` VALUES ('2154', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:27:48');
INSERT INTO `admin_log` VALUES ('2155', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:30:17');
INSERT INTO `admin_log` VALUES ('2156', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:30:34');
INSERT INTO `admin_log` VALUES ('2157', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:31:29');
INSERT INTO `admin_log` VALUES ('2158', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:02');
INSERT INTO `admin_log` VALUES ('2159', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:04');
INSERT INTO `admin_log` VALUES ('2160', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:13');
INSERT INTO `admin_log` VALUES ('2161', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:15');
INSERT INTO `admin_log` VALUES ('2162', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:18');
INSERT INTO `admin_log` VALUES ('2163', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:30');
INSERT INTO `admin_log` VALUES ('2164', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:34');
INSERT INTO `admin_log` VALUES ('2165', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:37');
INSERT INTO `admin_log` VALUES ('2166', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:39');
INSERT INTO `admin_log` VALUES ('2167', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:32:41');
INSERT INTO `admin_log` VALUES ('2168', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:33:09');
INSERT INTO `admin_log` VALUES ('2169', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:33:12');
INSERT INTO `admin_log` VALUES ('2170', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:33:14');
INSERT INTO `admin_log` VALUES ('2171', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 15:33:32');
INSERT INTO `admin_log` VALUES ('2172', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:33:34');
INSERT INTO `admin_log` VALUES ('2173', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:34:16');
INSERT INTO `admin_log` VALUES ('2174', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:34:34');
INSERT INTO `admin_log` VALUES ('2175', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:37:41');
INSERT INTO `admin_log` VALUES ('2176', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:37:50');
INSERT INTO `admin_log` VALUES ('2177', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:38:26');
INSERT INTO `admin_log` VALUES ('2178', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:38:39');
INSERT INTO `admin_log` VALUES ('2179', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:39:06');
INSERT INTO `admin_log` VALUES ('2180', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:41:06');
INSERT INTO `admin_log` VALUES ('2181', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:42:04');
INSERT INTO `admin_log` VALUES ('2182', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:43:17');
INSERT INTO `admin_log` VALUES ('2183', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:43:32');
INSERT INTO `admin_log` VALUES ('2184', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:48:17');
INSERT INTO `admin_log` VALUES ('2185', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:48:28');
INSERT INTO `admin_log` VALUES ('2186', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 15:48:38');
INSERT INTO `admin_log` VALUES ('2187', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:48:52');
INSERT INTO `admin_log` VALUES ('2188', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-29 15:50:03');
INSERT INTO `admin_log` VALUES ('2189', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:50:05');
INSERT INTO `admin_log` VALUES ('2190', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:55:47');
INSERT INTO `admin_log` VALUES ('2191', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:57:47');
INSERT INTO `admin_log` VALUES ('2192', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:58:29');
INSERT INTO `admin_log` VALUES ('2193', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:58:45');
INSERT INTO `admin_log` VALUES ('2194', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 15:59:50');
INSERT INTO `admin_log` VALUES ('2195', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:00:14');
INSERT INTO `admin_log` VALUES ('2196', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:00:27');
INSERT INTO `admin_log` VALUES ('2197', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:01:54');
INSERT INTO `admin_log` VALUES ('2198', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:02:00');
INSERT INTO `admin_log` VALUES ('2199', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:02:08');
INSERT INTO `admin_log` VALUES ('2200', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:04:20');
INSERT INTO `admin_log` VALUES ('2201', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:05:56');
INSERT INTO `admin_log` VALUES ('2202', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:10:09');
INSERT INTO `admin_log` VALUES ('2203', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-29 16:11:18');
INSERT INTO `admin_log` VALUES ('2204', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-29 16:11:20');
INSERT INTO `admin_log` VALUES ('2205', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:11:22');
INSERT INTO `admin_log` VALUES ('2206', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-29 16:14:25');
INSERT INTO `admin_log` VALUES ('2207', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-29 16:15:01');
INSERT INTO `admin_log` VALUES ('2208', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 12:45:04');
INSERT INTO `admin_log` VALUES ('2209', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 12:46:21');
INSERT INTO `admin_log` VALUES ('2210', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 12:53:40');
INSERT INTO `admin_log` VALUES ('2211', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 12:53:55');
INSERT INTO `admin_log` VALUES ('2212', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 12:58:08');
INSERT INTO `admin_log` VALUES ('2213', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:01:03');
INSERT INTO `admin_log` VALUES ('2214', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:01:12');
INSERT INTO `admin_log` VALUES ('2215', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:01:17');
INSERT INTO `admin_log` VALUES ('2216', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:01:21');
INSERT INTO `admin_log` VALUES ('2217', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:01:29');
INSERT INTO `admin_log` VALUES ('2218', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:02:08');
INSERT INTO `admin_log` VALUES ('2219', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:02:11');
INSERT INTO `admin_log` VALUES ('2220', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:02:19');
INSERT INTO `admin_log` VALUES ('2221', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:02:26');
INSERT INTO `admin_log` VALUES ('2222', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:03:54');
INSERT INTO `admin_log` VALUES ('2223', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:05:33');
INSERT INTO `admin_log` VALUES ('2224', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:05:52');
INSERT INTO `admin_log` VALUES ('2225', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:06:04');
INSERT INTO `admin_log` VALUES ('2226', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:06:13');
INSERT INTO `admin_log` VALUES ('2227', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-30 13:07:45');
INSERT INTO `admin_log` VALUES ('2228', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:07:52');
INSERT INTO `admin_log` VALUES ('2229', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:10:51');
INSERT INTO `admin_log` VALUES ('2230', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:11:22');
INSERT INTO `admin_log` VALUES ('2231', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:12:28');
INSERT INTO `admin_log` VALUES ('2232', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:15:58');
INSERT INTO `admin_log` VALUES ('2233', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:17:30');
INSERT INTO `admin_log` VALUES ('2234', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:23:34');
INSERT INTO `admin_log` VALUES ('2235', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-30 13:23:37');
INSERT INTO `admin_log` VALUES ('2236', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-30 13:23:41');
INSERT INTO `admin_log` VALUES ('2237', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:26:46');
INSERT INTO `admin_log` VALUES ('2238', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:26:57');
INSERT INTO `admin_log` VALUES ('2239', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:28:02');
INSERT INTO `admin_log` VALUES ('2240', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:28:15');
INSERT INTO `admin_log` VALUES ('2241', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:30:09');
INSERT INTO `admin_log` VALUES ('2242', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:30:35');
INSERT INTO `admin_log` VALUES ('2243', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:31:49');
INSERT INTO `admin_log` VALUES ('2244', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:32:15');
INSERT INTO `admin_log` VALUES ('2245', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:33:52');
INSERT INTO `admin_log` VALUES ('2246', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:34:07');
INSERT INTO `admin_log` VALUES ('2247', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:35:31');
INSERT INTO `admin_log` VALUES ('2248', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:37:36');
INSERT INTO `admin_log` VALUES ('2249', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:38:05');
INSERT INTO `admin_log` VALUES ('2250', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:38:53');
INSERT INTO `admin_log` VALUES ('2251', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:10');
INSERT INTO `admin_log` VALUES ('2252', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:49');
INSERT INTO `admin_log` VALUES ('2253', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:52');
INSERT INTO `admin_log` VALUES ('2254', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:55');
INSERT INTO `admin_log` VALUES ('2255', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:57');
INSERT INTO `admin_log` VALUES ('2256', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:39:58');
INSERT INTO `admin_log` VALUES ('2257', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-30 13:40:07');
INSERT INTO `admin_log` VALUES ('2258', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-30 13:40:11');
INSERT INTO `admin_log` VALUES ('2259', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:40:13');
INSERT INTO `admin_log` VALUES ('2260', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:07');
INSERT INTO `admin_log` VALUES ('2261', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:10');
INSERT INTO `admin_log` VALUES ('2262', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:12');
INSERT INTO `admin_log` VALUES ('2263', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:16');
INSERT INTO `admin_log` VALUES ('2264', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:22');
INSERT INTO `admin_log` VALUES ('2265', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:26');
INSERT INTO `admin_log` VALUES ('2266', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:31');
INSERT INTO `admin_log` VALUES ('2267', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:40');
INSERT INTO `admin_log` VALUES ('2268', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-30 13:43:43');
INSERT INTO `admin_log` VALUES ('2269', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-30 13:52:19');
INSERT INTO `admin_log` VALUES ('2270', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-30 13:52:23');
INSERT INTO `admin_log` VALUES ('2271', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-30 13:52:25');
INSERT INTO `admin_log` VALUES ('2272', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-30 13:52:28');
INSERT INTO `admin_log` VALUES ('2273', 'admin-menu', 'create', 'admin-menu/create', '菜单用户权限', '菜单管理', '二级菜单添加', 'Unknown', 'admin', '2017-03-30 13:53:35');
INSERT INTO `admin_log` VALUES ('2274', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-30 13:53:36');
INSERT INTO `admin_log` VALUES ('2275', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-30 13:53:41');
INSERT INTO `admin_log` VALUES ('2276', 'admin-right', 'right-action', 'admin-right/right-action', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-30 13:53:44');
INSERT INTO `admin_log` VALUES ('2277', 'admin-right', 'create', 'admin-right/create', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-30 13:53:53');
INSERT INTO `admin_log` VALUES ('2278', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-30 13:53:55');
INSERT INTO `admin_log` VALUES ('2279', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-30 13:53:57');
INSERT INTO `admin_log` VALUES ('2280', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-30 13:54:00');
INSERT INTO `admin_log` VALUES ('2281', 'admin-role', 'save-rights', 'admin-role/save-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_log` VALUES ('2282', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-30 13:54:30');
INSERT INTO `admin_log` VALUES ('2283', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-03-31 13:10:37');
INSERT INTO `admin_log` VALUES ('2284', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 13:10:39');
INSERT INTO `admin_log` VALUES ('2285', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-03-31 13:10:43');
INSERT INTO `admin_log` VALUES ('2286', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-31 13:10:45');
INSERT INTO `admin_log` VALUES ('2287', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-31 13:10:47');
INSERT INTO `admin_log` VALUES ('2288', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 13:11:03');
INSERT INTO `admin_log` VALUES ('2289', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 13:57:23');
INSERT INTO `admin_log` VALUES ('2290', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 13:58:15');
INSERT INTO `admin_log` VALUES ('2291', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:01:27');
INSERT INTO `admin_log` VALUES ('2292', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:01:48');
INSERT INTO `admin_log` VALUES ('2293', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:02:38');
INSERT INTO `admin_log` VALUES ('2294', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:10:49');
INSERT INTO `admin_log` VALUES ('2295', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:11:12');
INSERT INTO `admin_log` VALUES ('2296', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:15:03');
INSERT INTO `admin_log` VALUES ('2297', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:17:02');
INSERT INTO `admin_log` VALUES ('2298', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:19:54');
INSERT INTO `admin_log` VALUES ('2299', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:20:20');
INSERT INTO `admin_log` VALUES ('2300', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-31 14:21:59');
INSERT INTO `admin_log` VALUES ('2301', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-03-31 14:22:02');
INSERT INTO `admin_log` VALUES ('2302', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-03-31 14:22:05');
INSERT INTO `admin_log` VALUES ('2303', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:22:14');
INSERT INTO `admin_log` VALUES ('2304', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-03-31 14:40:20');
INSERT INTO `admin_log` VALUES ('2305', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:43:49');
INSERT INTO `admin_log` VALUES ('2306', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:44:10');
INSERT INTO `admin_log` VALUES ('2307', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:47:52');
INSERT INTO `admin_log` VALUES ('2308', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:48:54');
INSERT INTO `admin_log` VALUES ('2309', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:49:02');
INSERT INTO `admin_log` VALUES ('2310', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:49:21');
INSERT INTO `admin_log` VALUES ('2311', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:50:00');
INSERT INTO `admin_log` VALUES ('2312', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:56:29');
INSERT INTO `admin_log` VALUES ('2313', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:56:37');
INSERT INTO `admin_log` VALUES ('2314', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:56:45');
INSERT INTO `admin_log` VALUES ('2315', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:56:55');
INSERT INTO `admin_log` VALUES ('2316', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:56:59');
INSERT INTO `admin_log` VALUES ('2317', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:57:04');
INSERT INTO `admin_log` VALUES ('2318', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:57:22');
INSERT INTO `admin_log` VALUES ('2319', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:57:29');
INSERT INTO `admin_log` VALUES ('2320', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:57:36');
INSERT INTO `admin_log` VALUES ('2321', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:58:01');
INSERT INTO `admin_log` VALUES ('2322', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:58:04');
INSERT INTO `admin_log` VALUES ('2323', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 14:58:08');
INSERT INTO `admin_log` VALUES ('2324', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:14:34');
INSERT INTO `admin_log` VALUES ('2325', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:16:16');
INSERT INTO `admin_log` VALUES ('2326', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:16:59');
INSERT INTO `admin_log` VALUES ('2327', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-31 15:17:03');
INSERT INTO `admin_log` VALUES ('2328', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-03-31 15:17:06');
INSERT INTO `admin_log` VALUES ('2329', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-03-31 15:17:10');
INSERT INTO `admin_log` VALUES ('2330', 'admin-menu', 'index', 'admin-menu/index', '菜单用户权限', '菜单管理', '二级菜单查看', 'Unknown', 'admin', '2017-03-31 15:17:15');
INSERT INTO `admin_log` VALUES ('2331', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-31 15:17:18');
INSERT INTO `admin_log` VALUES ('2332', 'admin-right', 'view', 'admin-right/view', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-31 15:17:21');
INSERT INTO `admin_log` VALUES ('2333', 'admin-right', 'update', 'admin-right/update', '菜单用户权限', '菜单管理', '路由添加', 'Unknown', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_log` VALUES ('2334', 'admin-right', 'index', 'admin-right/index', '菜单用户权限', '菜单管理', '路由查看', 'Unknown', 'admin', '2017-03-31 15:17:26');
INSERT INTO `admin_log` VALUES ('2335', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:17:29');
INSERT INTO `admin_log` VALUES ('2336', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:17:38');
INSERT INTO `admin_log` VALUES ('2337', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:17:49');
INSERT INTO `admin_log` VALUES ('2338', 'front-product-log', 'excel', 'front-product-log/excel', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:17:55');
INSERT INTO `admin_log` VALUES ('2339', 'front-product-log', 'excel', 'front-product-log/excel', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:18:53');
INSERT INTO `admin_log` VALUES ('2340', 'front-product-log', 'excel', 'front-product-log/excel', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:21:03');
INSERT INTO `admin_log` VALUES ('2341', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:21:06');
INSERT INTO `admin_log` VALUES ('2342', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:23:21');
INSERT INTO `admin_log` VALUES ('2343', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:24:14');
INSERT INTO `admin_log` VALUES ('2344', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:27:54');
INSERT INTO `admin_log` VALUES ('2345', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:28:08');
INSERT INTO `admin_log` VALUES ('2346', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:28:20');
INSERT INTO `admin_log` VALUES ('2347', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:28:38');
INSERT INTO `admin_log` VALUES ('2348', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:31:25');
INSERT INTO `admin_log` VALUES ('2349', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:33:04');
INSERT INTO `admin_log` VALUES ('2350', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:33:27');
INSERT INTO `admin_log` VALUES ('2351', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:36:51');
INSERT INTO `admin_log` VALUES ('2352', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:38:08');
INSERT INTO `admin_log` VALUES ('2353', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:45:49');
INSERT INTO `admin_log` VALUES ('2354', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:45:56');
INSERT INTO `admin_log` VALUES ('2355', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:46:52');
INSERT INTO `admin_log` VALUES ('2356', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:47:14');
INSERT INTO `admin_log` VALUES ('2357', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:47:18');
INSERT INTO `admin_log` VALUES ('2358', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:48:25');
INSERT INTO `admin_log` VALUES ('2359', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:48:30');
INSERT INTO `admin_log` VALUES ('2360', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:49:18');
INSERT INTO `admin_log` VALUES ('2361', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-03-31 15:51:57');
INSERT INTO `admin_log` VALUES ('2362', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:11:19');
INSERT INTO `admin_log` VALUES ('2363', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:11:32');
INSERT INTO `admin_log` VALUES ('2364', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:11:37');
INSERT INTO `admin_log` VALUES ('2365', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:11:40');
INSERT INTO `admin_log` VALUES ('2366', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:11:46');
INSERT INTO `admin_log` VALUES ('2367', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:12:03');
INSERT INTO `admin_log` VALUES ('2368', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:18:25');
INSERT INTO `admin_log` VALUES ('2369', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:21:49');
INSERT INTO `admin_log` VALUES ('2370', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:21:54');
INSERT INTO `admin_log` VALUES ('2371', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-02 02:21:55');
INSERT INTO `admin_log` VALUES ('2372', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-02 02:21:56');
INSERT INTO `admin_log` VALUES ('2373', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:21:58');
INSERT INTO `admin_log` VALUES ('2374', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:23:02');
INSERT INTO `admin_log` VALUES ('2375', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:23:19');
INSERT INTO `admin_log` VALUES ('2376', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:24:31');
INSERT INTO `admin_log` VALUES ('2377', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:24:34');
INSERT INTO `admin_log` VALUES ('2378', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:24:46');
INSERT INTO `admin_log` VALUES ('2379', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:28:07');
INSERT INTO `admin_log` VALUES ('2380', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:28:58');
INSERT INTO `admin_log` VALUES ('2381', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:29:06');
INSERT INTO `admin_log` VALUES ('2382', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:29:17');
INSERT INTO `admin_log` VALUES ('2383', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:34:06');
INSERT INTO `admin_log` VALUES ('2384', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:37:21');
INSERT INTO `admin_log` VALUES ('2385', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:37:39');
INSERT INTO `admin_log` VALUES ('2386', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:37:51');
INSERT INTO `admin_log` VALUES ('2387', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:41:14');
INSERT INTO `admin_log` VALUES ('2388', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:41:33');
INSERT INTO `admin_log` VALUES ('2389', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:42:25');
INSERT INTO `admin_log` VALUES ('2390', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:42:40');
INSERT INTO `admin_log` VALUES ('2391', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', '192.168.1.3', 'admin', '2017-04-02 02:45:58');
INSERT INTO `admin_log` VALUES ('2392', 'admin-user', 'index', 'admin-user/index', '菜单用户权限', '用户管理', '用户操作', '192.168.1.3', 'admin', '2017-04-02 02:46:11');
INSERT INTO `admin_log` VALUES ('2393', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:46:16');
INSERT INTO `admin_log` VALUES ('2394', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:46:17');
INSERT INTO `admin_log` VALUES ('2395', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:46:43');
INSERT INTO `admin_log` VALUES ('2396', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:46:46');
INSERT INTO `admin_log` VALUES ('2397', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:46:58');
INSERT INTO `admin_log` VALUES ('2398', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:46:59');
INSERT INTO `admin_log` VALUES ('2399', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:47:01');
INSERT INTO `admin_log` VALUES ('2400', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', '192.168.1.3', 'admin', '2017-04-02 02:47:13');
INSERT INTO `admin_log` VALUES ('2401', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', '192.168.1.3', 'admin', '2017-04-02 02:47:43');
INSERT INTO `admin_log` VALUES ('2402', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', '192.168.1.3', 'admin', '2017-04-02 02:47:48');
INSERT INTO `admin_log` VALUES ('2403', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', '192.168.1.3', 'admin', '2017-04-02 02:47:52');
INSERT INTO `admin_log` VALUES ('2404', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:48:17');
INSERT INTO `admin_log` VALUES ('2405', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:48:21');
INSERT INTO `admin_log` VALUES ('2406', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:48:38');
INSERT INTO `admin_log` VALUES ('2407', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:49:01');
INSERT INTO `admin_log` VALUES ('2408', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:49:44');
INSERT INTO `admin_log` VALUES ('2409', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:50:30');
INSERT INTO `admin_log` VALUES ('2410', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:50:46');
INSERT INTO `admin_log` VALUES ('2411', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:51:05');
INSERT INTO `admin_log` VALUES ('2412', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:51:09');
INSERT INTO `admin_log` VALUES ('2413', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:51:30');
INSERT INTO `admin_log` VALUES ('2414', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-02 02:53:50');
INSERT INTO `admin_log` VALUES ('2415', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-02 02:53:53');
INSERT INTO `admin_log` VALUES ('2416', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-04-02 02:53:57');
INSERT INTO `admin_log` VALUES ('2417', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-02 02:53:59');
INSERT INTO `admin_log` VALUES ('2418', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:54:01');
INSERT INTO `admin_log` VALUES ('2419', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:54:09');
INSERT INTO `admin_log` VALUES ('2420', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:56:34');
INSERT INTO `admin_log` VALUES ('2421', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-02 02:56:38');
INSERT INTO `admin_log` VALUES ('2422', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 02:56:57');
INSERT INTO `admin_log` VALUES ('2423', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 02:57:05');
INSERT INTO `admin_log` VALUES ('2424', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-02 02:57:08');
INSERT INTO `admin_log` VALUES ('2425', 'admin-module', 'index', 'admin-module/index', '菜单用户权限', '菜单管理', '一级菜单查看', 'Unknown', 'admin', '2017-04-02 03:14:49');
INSERT INTO `admin_log` VALUES ('2426', 'admin-role', 'index', 'admin-role/index', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-04-02 03:14:52');
INSERT INTO `admin_log` VALUES ('2427', 'admin-role', 'get-all-rights', 'admin-role/get-all-rights', '菜单用户权限', '角色管理', '分配权限', 'Unknown', 'admin', '2017-04-02 03:14:54');
INSERT INTO `admin_log` VALUES ('2428', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-02 03:40:13');
INSERT INTO `admin_log` VALUES ('2429', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-02 03:40:19');
INSERT INTO `admin_log` VALUES ('2430', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:17:07');
INSERT INTO `admin_log` VALUES ('2431', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:17:24');
INSERT INTO `admin_log` VALUES ('2432', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:17:54');
INSERT INTO `admin_log` VALUES ('2433', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:19:22');
INSERT INTO `admin_log` VALUES ('2434', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:20:13');
INSERT INTO `admin_log` VALUES ('2435', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:22:14');
INSERT INTO `admin_log` VALUES ('2436', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:23:42');
INSERT INTO `admin_log` VALUES ('2437', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:24:04');
INSERT INTO `admin_log` VALUES ('2438', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:24:31');
INSERT INTO `admin_log` VALUES ('2439', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:26:24');
INSERT INTO `admin_log` VALUES ('2440', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:27:02');
INSERT INTO `admin_log` VALUES ('2441', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 04:28:16');
INSERT INTO `admin_log` VALUES ('2442', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 05:45:56');
INSERT INTO `admin_log` VALUES ('2443', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 05:57:30');
INSERT INTO `admin_log` VALUES ('2444', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:58:18');
INSERT INTO `admin_log` VALUES ('2445', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:58:22');
INSERT INTO `admin_log` VALUES ('2446', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:58:30');
INSERT INTO `admin_log` VALUES ('2447', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:58:31');
INSERT INTO `admin_log` VALUES ('2448', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:59:16');
INSERT INTO `admin_log` VALUES ('2449', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:59:43');
INSERT INTO `admin_log` VALUES ('2450', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:59:50');
INSERT INTO `admin_log` VALUES ('2451', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 05:59:51');
INSERT INTO `admin_log` VALUES ('2452', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 06:19:16');
INSERT INTO `admin_log` VALUES ('2453', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 06:19:24');
INSERT INTO `admin_log` VALUES ('2454', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:49:17');
INSERT INTO `admin_log` VALUES ('2455', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:49:22');
INSERT INTO `admin_log` VALUES ('2456', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:52:12');
INSERT INTO `admin_log` VALUES ('2457', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:52:20');
INSERT INTO `admin_log` VALUES ('2458', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:52:21');
INSERT INTO `admin_log` VALUES ('2459', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 06:53:10');
INSERT INTO `admin_log` VALUES ('2460', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:03:19');
INSERT INTO `admin_log` VALUES ('2461', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:04:15');
INSERT INTO `admin_log` VALUES ('2462', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:08:58');
INSERT INTO `admin_log` VALUES ('2463', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:09:04');
INSERT INTO `admin_log` VALUES ('2464', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:09:23');
INSERT INTO `admin_log` VALUES ('2465', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:09:30');
INSERT INTO `admin_log` VALUES ('2466', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:09:31');
INSERT INTO `admin_log` VALUES ('2467', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:11:46');
INSERT INTO `admin_log` VALUES ('2468', 'front-user', 'index', 'front-user/index', '前端管理', '用户列表', '操作', '192.168.1.3', 'admin', '2017-04-02 07:12:19');
INSERT INTO `admin_log` VALUES ('2469', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', '192.168.1.3', 'admin', '2017-04-02 07:12:23');
INSERT INTO `admin_log` VALUES ('2470', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', '192.168.1.3', 'admin', '2017-04-02 07:13:11');
INSERT INTO `admin_log` VALUES ('2471', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', '192.168.1.3', 'admin', '2017-04-02 07:13:22');
INSERT INTO `admin_log` VALUES ('2472', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', '192.168.1.3', 'admin', '2017-04-02 07:13:38');
INSERT INTO `admin_log` VALUES ('2473', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:14:52');
INSERT INTO `admin_log` VALUES ('2474', 'front-category', 'delete', 'front-category/delete', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:14:59');
INSERT INTO `admin_log` VALUES ('2475', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:01');
INSERT INTO `admin_log` VALUES ('2476', 'front-category', 'view', 'front-category/view', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:04');
INSERT INTO `admin_log` VALUES ('2477', 'front-category', 'update', 'front-category/update', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:08');
INSERT INTO `admin_log` VALUES ('2478', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:09');
INSERT INTO `admin_log` VALUES ('2479', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:55');
INSERT INTO `admin_log` VALUES ('2480', 'penngo-word', 'index', 'penngo-word/index', '分类管理', '敏感词', '操作', '192.168.1.3', 'admin', '2017-04-02 07:15:59');
INSERT INTO `admin_log` VALUES ('2481', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', '192.168.1.3', 'admin', '2017-04-02 07:32:55');
INSERT INTO `admin_log` VALUES ('2482', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', '192.168.1.3', 'admin', '2017-04-02 07:33:06');
INSERT INTO `admin_log` VALUES ('2483', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', '192.168.1.3', 'admin', '2017-04-02 07:33:11');
INSERT INTO `admin_log` VALUES ('2484', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 07:53:10');
INSERT INTO `admin_log` VALUES ('2485', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 07:53:20');
INSERT INTO `admin_log` VALUES ('2486', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 08:11:15');
INSERT INTO `admin_log` VALUES ('2487', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 08:44:42');
INSERT INTO `admin_log` VALUES ('2488', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 08:44:45');
INSERT INTO `admin_log` VALUES ('2489', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:44:48');
INSERT INTO `admin_log` VALUES ('2490', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:45:01');
INSERT INTO `admin_log` VALUES ('2491', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:45:12');
INSERT INTO `admin_log` VALUES ('2492', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:45:44');
INSERT INTO `admin_log` VALUES ('2493', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:45:55');
INSERT INTO `admin_log` VALUES ('2494', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:45:57');
INSERT INTO `admin_log` VALUES ('2495', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 08:46:04');
INSERT INTO `admin_log` VALUES ('2496', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 08:47:30');
INSERT INTO `admin_log` VALUES ('2497', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:47:35');
INSERT INTO `admin_log` VALUES ('2498', 'front-plate', 'add-plate', 'front-plate/add-plate', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:47:46');
INSERT INTO `admin_log` VALUES ('2499', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 08:47:48');
INSERT INTO `admin_log` VALUES ('2500', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 08:47:51');
INSERT INTO `admin_log` VALUES ('2501', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:50:52');
INSERT INTO `admin_log` VALUES ('2502', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:50:56');
INSERT INTO `admin_log` VALUES ('2503', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:53:00');
INSERT INTO `admin_log` VALUES ('2504', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 08:53:02');
INSERT INTO `admin_log` VALUES ('2505', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 08:53:05');
INSERT INTO `admin_log` VALUES ('2506', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:54:12');
INSERT INTO `admin_log` VALUES ('2507', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:54:16');
INSERT INTO `admin_log` VALUES ('2508', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 08:57:35');
INSERT INTO `admin_log` VALUES ('2509', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 08:59:30');
INSERT INTO `admin_log` VALUES ('2510', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:02:34');
INSERT INTO `admin_log` VALUES ('2511', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:02:37');
INSERT INTO `admin_log` VALUES ('2512', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:04:56');
INSERT INTO `admin_log` VALUES ('2513', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:04:59');
INSERT INTO `admin_log` VALUES ('2514', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:05:26');
INSERT INTO `admin_log` VALUES ('2515', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:05:27');
INSERT INTO `admin_log` VALUES ('2516', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:06:04');
INSERT INTO `admin_log` VALUES ('2517', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:08:17');
INSERT INTO `admin_log` VALUES ('2518', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:08:19');
INSERT INTO `admin_log` VALUES ('2519', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:08:24');
INSERT INTO `admin_log` VALUES ('2520', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:08:25');
INSERT INTO `admin_log` VALUES ('2521', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:08:27');
INSERT INTO `admin_log` VALUES ('2522', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:12:38');
INSERT INTO `admin_log` VALUES ('2523', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:12:47');
INSERT INTO `admin_log` VALUES ('2524', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:12:48');
INSERT INTO `admin_log` VALUES ('2525', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:12:51');
INSERT INTO `admin_log` VALUES ('2526', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:15:52');
INSERT INTO `admin_log` VALUES ('2527', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:15:55');
INSERT INTO `admin_log` VALUES ('2528', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:00');
INSERT INTO `admin_log` VALUES ('2529', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:01');
INSERT INTO `admin_log` VALUES ('2530', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:03');
INSERT INTO `admin_log` VALUES ('2531', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:11');
INSERT INTO `admin_log` VALUES ('2532', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:18');
INSERT INTO `admin_log` VALUES ('2533', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:16:19');
INSERT INTO `admin_log` VALUES ('2534', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:18:00');
INSERT INTO `admin_log` VALUES ('2535', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:18:02');
INSERT INTO `admin_log` VALUES ('2536', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:18:10');
INSERT INTO `admin_log` VALUES ('2537', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:18:11');
INSERT INTO `admin_log` VALUES ('2538', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 09:18:14');
INSERT INTO `admin_log` VALUES ('2539', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 09:23:52');
INSERT INTO `admin_log` VALUES ('2540', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:29:39');
INSERT INTO `admin_log` VALUES ('2541', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 09:36:08');
INSERT INTO `admin_log` VALUES ('2542', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 09:36:15');
INSERT INTO `admin_log` VALUES ('2543', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 09:39:10');
INSERT INTO `admin_log` VALUES ('2544', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:39:13');
INSERT INTO `admin_log` VALUES ('2545', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:39:36');
INSERT INTO `admin_log` VALUES ('2546', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:39:55');
INSERT INTO `admin_log` VALUES ('2547', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:41:45');
INSERT INTO `admin_log` VALUES ('2548', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:42:00');
INSERT INTO `admin_log` VALUES ('2549', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:42:11');
INSERT INTO `admin_log` VALUES ('2550', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:42:27');
INSERT INTO `admin_log` VALUES ('2551', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:43:07');
INSERT INTO `admin_log` VALUES ('2552', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:43:20');
INSERT INTO `admin_log` VALUES ('2553', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:43:56');
INSERT INTO `admin_log` VALUES ('2554', 'front-essence', 'add-essence', 'front-essence/add-essence', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:44:07');
INSERT INTO `admin_log` VALUES ('2555', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:44:09');
INSERT INTO `admin_log` VALUES ('2556', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:44:12');
INSERT INTO `admin_log` VALUES ('2557', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 09:44:24');
INSERT INTO `admin_log` VALUES ('2558', 'front-plate', 'index', 'front-plate/index', '前端管理', '板块', '操作', 'Unknown', 'admin', '2017-04-02 09:45:45');
INSERT INTO `admin_log` VALUES ('2559', 'front-plate', 'create', 'front-plate/create', '前端管理', '添加板块', '操作', 'Unknown', 'admin', '2017-04-02 09:45:53');
INSERT INTO `admin_log` VALUES ('2560', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:46:03');
INSERT INTO `admin_log` VALUES ('2561', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:46:06');
INSERT INTO `admin_log` VALUES ('2562', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:47:22');
INSERT INTO `admin_log` VALUES ('2563', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:47:26');
INSERT INTO `admin_log` VALUES ('2564', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:47:36');
INSERT INTO `admin_log` VALUES ('2565', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:47:37');
INSERT INTO `admin_log` VALUES ('2566', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:47:41');
INSERT INTO `admin_log` VALUES ('2567', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:48:58');
INSERT INTO `admin_log` VALUES ('2568', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:00');
INSERT INTO `admin_log` VALUES ('2569', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:10');
INSERT INTO `admin_log` VALUES ('2570', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:12');
INSERT INTO `admin_log` VALUES ('2571', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:49:15');
INSERT INTO `admin_log` VALUES ('2572', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:20');
INSERT INTO `admin_log` VALUES ('2573', 'front-essence', 'update', 'front-essence/update', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:28');
INSERT INTO `admin_log` VALUES ('2574', 'front-essence', 'create', 'front-essence/create', '前端管理', '添加精华', '添加', 'Unknown', 'admin', '2017-04-02 09:49:29');
INSERT INTO `admin_log` VALUES ('2575', 'front-essence', 'index', 'front-essence/index', '前端管理', '精华', '操作', 'Unknown', 'admin', '2017-04-02 09:49:31');
INSERT INTO `admin_log` VALUES ('2576', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 09:52:42');
INSERT INTO `admin_log` VALUES ('2577', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:17:33');
INSERT INTO `admin_log` VALUES ('2578', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:17:41');
INSERT INTO `admin_log` VALUES ('2579', 'site', 'error', 'site/error', null, null, null, '192.168.1.3', 'admin', '2017-04-02 10:17:41');
INSERT INTO `admin_log` VALUES ('2580', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 10:20:37');
INSERT INTO `admin_log` VALUES ('2581', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:23:26');
INSERT INTO `admin_log` VALUES ('2582', 'front-product', 'update', 'front-product/update', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:24:32');
INSERT INTO `admin_log` VALUES ('2583', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:24:33');
INSERT INTO `admin_log` VALUES ('2584', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-02 10:26:51');
INSERT INTO `admin_log` VALUES ('2585', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 10:44:14');
INSERT INTO `admin_log` VALUES ('2586', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 10:44:46');
INSERT INTO `admin_log` VALUES ('2587', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 10:44:54');
INSERT INTO `admin_log` VALUES ('2588', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:00:16');
INSERT INTO `admin_log` VALUES ('2589', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 11:00:17');
INSERT INTO `admin_log` VALUES ('2590', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:00:45');
INSERT INTO `admin_log` VALUES ('2591', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:01:44');
INSERT INTO `admin_log` VALUES ('2592', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:01:45');
INSERT INTO `admin_log` VALUES ('2593', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:02:32');
INSERT INTO `admin_log` VALUES ('2594', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:02:59');
INSERT INTO `admin_log` VALUES ('2595', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 11:02:59');
INSERT INTO `admin_log` VALUES ('2596', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:05:27');
INSERT INTO `admin_log` VALUES ('2597', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:05:55');
INSERT INTO `admin_log` VALUES ('2598', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 11:05:55');
INSERT INTO `admin_log` VALUES ('2599', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:07:05');
INSERT INTO `admin_log` VALUES ('2600', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:07:34');
INSERT INTO `admin_log` VALUES ('2601', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 11:07:34');
INSERT INTO `admin_log` VALUES ('2602', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:15:38');
INSERT INTO `admin_log` VALUES ('2603', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:16:08');
INSERT INTO `admin_log` VALUES ('2604', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:16:19');
INSERT INTO `admin_log` VALUES ('2605', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:19:42');
INSERT INTO `admin_log` VALUES ('2606', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:20:14');
INSERT INTO `admin_log` VALUES ('2607', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-02 11:20:48');
INSERT INTO `admin_log` VALUES ('2608', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:28:51');
INSERT INTO `admin_log` VALUES ('2609', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:29:25');
INSERT INTO `admin_log` VALUES ('2610', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:30:13');
INSERT INTO `admin_log` VALUES ('2611', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:30:35');
INSERT INTO `admin_log` VALUES ('2612', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:31:09');
INSERT INTO `admin_log` VALUES ('2613', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:31:41');
INSERT INTO `admin_log` VALUES ('2614', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:33:24');
INSERT INTO `admin_log` VALUES ('2615', 'front-product', 'create', 'front-product/create', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:33:51');
INSERT INTO `admin_log` VALUES ('2616', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', 'Unknown', 'admin', '2017-04-02 11:43:49');
INSERT INTO `admin_log` VALUES ('2617', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-03 02:28:54');
INSERT INTO `admin_log` VALUES ('2618', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 02:28:58');
INSERT INTO `admin_log` VALUES ('2619', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:01');
INSERT INTO `admin_log` VALUES ('2620', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:03');
INSERT INTO `admin_log` VALUES ('2621', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:06');
INSERT INTO `admin_log` VALUES ('2622', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:09');
INSERT INTO `admin_log` VALUES ('2623', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:13');
INSERT INTO `admin_log` VALUES ('2624', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:29:27');
INSERT INTO `admin_log` VALUES ('2625', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:30:58');
INSERT INTO `admin_log` VALUES ('2626', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:32:04');
INSERT INTO `admin_log` VALUES ('2627', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:36:04');
INSERT INTO `admin_log` VALUES ('2628', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:36:35');
INSERT INTO `admin_log` VALUES ('2629', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:37:11');
INSERT INTO `admin_log` VALUES ('2630', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:37:32');
INSERT INTO `admin_log` VALUES ('2631', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:38:19');
INSERT INTO `admin_log` VALUES ('2632', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:39:26');
INSERT INTO `admin_log` VALUES ('2633', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 02:59:52');
INSERT INTO `admin_log` VALUES ('2634', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:01:12');
INSERT INTO `admin_log` VALUES ('2635', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:06:29');
INSERT INTO `admin_log` VALUES ('2636', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:13:21');
INSERT INTO `admin_log` VALUES ('2637', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:13:23');
INSERT INTO `admin_log` VALUES ('2638', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:15:54');
INSERT INTO `admin_log` VALUES ('2639', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:16:13');
INSERT INTO `admin_log` VALUES ('2640', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:17:59');
INSERT INTO `admin_log` VALUES ('2641', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:05');
INSERT INTO `admin_log` VALUES ('2642', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:19');
INSERT INTO `admin_log` VALUES ('2643', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:24');
INSERT INTO `admin_log` VALUES ('2644', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:47');
INSERT INTO `admin_log` VALUES ('2645', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:50');
INSERT INTO `admin_log` VALUES ('2646', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 03:19:54');
INSERT INTO `admin_log` VALUES ('2647', 'front-category', 'index', 'front-category/index', '分类管理', '产品类别管理', '操作', '192.168.1.3', 'admin', '2017-04-03 03:28:06');
INSERT INTO `admin_log` VALUES ('2648', 'front-identity', 'index', 'front-identity/index', '分类管理', '身份类别', '操作', '192.168.1.3', 'admin', '2017-04-03 03:28:09');
INSERT INTO `admin_log` VALUES ('2649', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', '192.168.1.3', 'admin', '2017-04-03 03:28:19');
INSERT INTO `admin_log` VALUES ('2650', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:51:37');
INSERT INTO `admin_log` VALUES ('2651', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:51:41');
INSERT INTO `admin_log` VALUES ('2652', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:51:56');
INSERT INTO `admin_log` VALUES ('2653', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:51:58');
INSERT INTO `admin_log` VALUES ('2654', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:01');
INSERT INTO `admin_log` VALUES ('2655', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:11');
INSERT INTO `admin_log` VALUES ('2656', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:12');
INSERT INTO `admin_log` VALUES ('2657', 'front-ad', 'view', 'front-ad/view', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:14');
INSERT INTO `admin_log` VALUES ('2658', 'front-ad', 'update', 'front-ad/update', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:22');
INSERT INTO `admin_log` VALUES ('2659', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', 'Unknown', 'admin', '2017-04-03 03:52:23');
INSERT INTO `admin_log` VALUES ('2660', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-03 06:00:57');
INSERT INTO `admin_log` VALUES ('2661', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-03 06:01:09');
INSERT INTO `admin_log` VALUES ('2662', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-03 06:55:40');
INSERT INTO `admin_log` VALUES ('2663', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-03 06:59:26');
INSERT INTO `admin_log` VALUES ('2664', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-03 06:59:31');
INSERT INTO `admin_log` VALUES ('2665', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-03 07:05:39');
INSERT INTO `admin_log` VALUES ('2666', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 07:26:42');
INSERT INTO `admin_log` VALUES ('2667', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 07:29:19');
INSERT INTO `admin_log` VALUES ('2668', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 07:29:34');
INSERT INTO `admin_log` VALUES ('2669', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 07:29:45');
INSERT INTO `admin_log` VALUES ('2670', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-04-03 07:38:27');
INSERT INTO `admin_log` VALUES ('2671', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 07:38:33');
INSERT INTO `admin_log` VALUES ('2672', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 07:42:54');
INSERT INTO `admin_log` VALUES ('2673', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 07:43:01');
INSERT INTO `admin_log` VALUES ('2674', 'site', 'error', 'site/error', null, null, null, 'Unknown', 'admin', '2017-04-03 07:47:32');
INSERT INTO `admin_log` VALUES ('2675', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 07:50:13');
INSERT INTO `admin_log` VALUES ('2676', 'front-ad-count', 'index', 'front-ad-count/index', '统计管理', '广告统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:01');
INSERT INTO `admin_log` VALUES ('2677', 'front-website-count', 'index', 'front-website-count/index', '统计管理', '网站统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:04');
INSERT INTO `admin_log` VALUES ('2678', 'front-essence-count', 'index', 'front-essence-count/index', '统计管理', '攻略统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:06');
INSERT INTO `admin_log` VALUES ('2679', 'front-user-count', 'index', 'front-user-count/index', '统计管理', '用户统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:09');
INSERT INTO `admin_log` VALUES ('2680', 'front-product-count', 'index', 'front-product-count/index', '统计管理', '效果统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:11');
INSERT INTO `admin_log` VALUES ('2681', 'front-product-log', 'index', 'front-product-log/index', '统计管理', '产品申请统计', '操作', 'Unknown', 'admin', '2017-04-03 08:21:13');
INSERT INTO `admin_log` VALUES ('2682', 'front-ad', 'index', 'front-ad/index', '前端管理', '广告', '操作', '192.168.1.3', 'admin', '2017-04-03 08:54:13');
INSERT INTO `admin_log` VALUES ('2683', 'front-product', 'index', 'front-product/index', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-03 08:54:49');
INSERT INTO `admin_log` VALUES ('2684', 'front-product', 'view', 'front-product/view', '产品管理', '产品列表', '操作', '192.168.1.3', 'admin', '2017-04-03 08:55:00');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `menu_name` varchar(200) NOT NULL COMMENT '名称',
  `module_id` int(11) NOT NULL COMMENT '模块id',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `entry_right_name` varchar(50) DEFAULT NULL COMMENT '入口地址名称',
  `entry_url` varchar(200) NOT NULL COMMENT '入口地址',
  `action` varchar(50) NOT NULL COMMENT '操作ID',
  `controller` varchar(100) NOT NULL COMMENT '控制器ID',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`),
  KEY `fk_module_id` (`module_id`),
  CONSTRAINT `fk_module_id` FOREIGN KEY (`module_id`) REFERENCES `admin_module` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', 'menu_manger', '菜单管理', '1', '菜单管理', '菜单管理', '1', '菜单管理', 'admin-module/index', 'index', 'backend\\controllers\\AdminMenuController', 'n', 'admin', '2016-08-11 16:44:11', 'admin', '2016-08-11 16:44:11');
INSERT INTO `admin_menu` VALUES ('2', 'menu_role', '角色管理', '1', '角色管理', '角色管理', '2', '角色管理', 'admin-role/index', 'index', 'backend\\controllers\\AdminRoleController', 'n', 'admin', '2016-08-11 16:51:56', 'admin', '2016-08-11 16:51:56');
INSERT INTO `admin_menu` VALUES ('3', 'menu_user', '用户管理', '1', '用户管理', '用户管理', '3', '用户管理', 'admin-user/index', 'index', 'backend\\controllers\\AdminUserController', 'n', 'admin', '2016-08-11 16:58:43', 'admin', '2016-08-11 16:58:43');
INSERT INTO `admin_menu` VALUES ('4', 'coazaorizhi', '操作日志', '2', '操作日志', '操作日志', '1', '', 'admin-log/index', 'index', 'backend\\controllers\\AdminLogController', 'n', 'test', '2016-08-14 06:54:17', 'test', '2016-08-14 06:54:17');
INSERT INTO `admin_menu` VALUES ('5', 'category', '产品类别管理', '3', '类别管理', '产品分类管理', '1', '类别管理', 'front-category/index', 'index', 'backend\\controllers\\FrontCategoryController', 'n', 'admin', '2017-03-16 02:48:24', 'admin', '2017-03-16 03:46:28');
INSERT INTO `admin_menu` VALUES ('7', 'word', '敏感词', '3', '敏感词', '敏感词管理', '2', '敏感词', 'penngo-word/index', 'index', 'backend\\controllers\\PenngoWordController', 'n', 'admin', '2017-03-16 03:39:18', 'admin', '2017-03-16 03:39:18');
INSERT INTO `admin_menu` VALUES ('8', 'identity', '身份类别', '3', '身份类别', '身份类别管理', '3', '身份类别', 'front-identity/index', 'index', 'backend\\controllers\\FrontIdentityController', 'n', 'admin', '2017-03-16 04:51:20', 'admin', '2017-03-16 04:51:20');
INSERT INTO `admin_menu` VALUES ('9', 'productlist', '产品列表', '6', '产品列表', '产品列表页', '1', '产品列表', 'front-product/index', 'index', 'backend\\controllers\\FrontProductController', 'n', 'admin', '2017-03-16 06:11:47', 'admin', '2017-03-16 06:11:47');
INSERT INTO `admin_menu` VALUES ('10', 'front_user', '用户列表', '4', '用户列表', '用户列表', '1', '用户列表', 'front-user/index', 'index', 'backend\\controllers\\FrontUserController', 'n', 'admin', '2017-03-20 06:28:06', 'admin', '2017-03-20 06:28:06');
INSERT INTO `admin_menu` VALUES ('11', 'front_essence', '精华', '4', '精华', '精华管理', '2', '精华', 'front-essence/index', 'index', 'backend\\controllers\\FrontEssenceController', 'n', 'admin', '2017-03-20 06:48:43', 'admin', '2017-03-20 06:48:43');
INSERT INTO `admin_menu` VALUES ('12', 'add_essence', '添加精华', '4', '添加精华', '添加精华', '3', '添加精华', 'front-essence/create', 'create', 'backend\\controllers\\FrontEssenceController', 'n', 'admin', '2017-03-20 07:38:21', 'admin', '2017-03-20 07:38:21');
INSERT INTO `admin_menu` VALUES ('13', 'front_plate', '板块', '4', '板块', '板块', '4', '板块', 'front-plate/index', 'index', 'backend\\controllers\\FrontPlateController', 'n', 'admin', '2017-03-21 09:09:59', 'admin', '2017-03-21 09:09:59');
INSERT INTO `admin_menu` VALUES ('15', 'add_plate', '添加板块', '4', '添加板块', '添加板块', '5', '添加板块', 'front-plate/create', 'create', 'backend\\controllers\\FrontPlateController', 'n', 'admin', '2017-03-21 09:56:34', 'admin', '2017-03-21 09:56:34');
INSERT INTO `admin_menu` VALUES ('16', 'front_ad', '广告', '4', '广告', '广告管理', '6', '广告', 'front-ad/index', 'index', 'backend\\controllers\\FrontAdController', 'n', 'admin', '2017-03-22 07:53:30', 'admin', '2017-03-22 07:53:30');
INSERT INTO `admin_menu` VALUES ('17', 'ad_count', '广告统计', '5', '广告统计', '广告统计', '1', '广告统计', 'front-ad-count/index', 'index', 'backend\\controllers\\FrontAdCountController', 'n', 'admin', '2017-03-22 10:53:26', 'admin', '2017-03-22 10:53:26');
INSERT INTO `admin_menu` VALUES ('18', 'website_count', '网站统计', '5', '网站统计', '网站统计', '2', '网站统计', 'front-website-count/index', 'index', 'backend\\controllers\\FrontWebsiteCountController', 'n', 'admin', '2017-03-24 09:21:38', 'admin', '2017-03-24 09:21:38');
INSERT INTO `admin_menu` VALUES ('19', 'essence_count', '攻略统计', '5', '攻略统计', '攻略统计', '3', '攻略统计', 'front-essence-count/index', 'index', 'backend\\controllers\\FrontEssenceCountController', 'n', 'admin', '2017-03-27 14:55:45', 'admin', '2017-03-27 14:55:45');
INSERT INTO `admin_menu` VALUES ('20', 'user_count', '用户统计', '5', '用户统计', '用户统计', '4', '用户统计', 'front-user-count/index', 'index', 'backend\\controllers\\FrontUserCountController', 'n', 'admin', '2017-03-27 15:00:22', 'admin', '2017-03-27 15:00:22');
INSERT INTO `admin_menu` VALUES ('21', 'product_count', '效果统计', '5', '效果统计', '产品效果统计', '5', '效果统计', 'front-product-count/index', 'index', 'backend\\controllers\\FrontProductCountController', 'n', 'admin', '2017-03-28 14:16:08', 'admin', '2017-03-28 14:16:08');
INSERT INTO `admin_menu` VALUES ('22', 'product_log', '产品申请统计', '5', '产品申请统计', '产品申请统计', '6', '产品申请统计', 'front-product-log/index', 'index', 'backend\\controllers\\FrontProductLogController', 'n', 'admin', '2017-03-30 13:53:35', 'admin', '2017-03-30 13:53:35');

-- ----------------------------
-- Table structure for admin_message
-- ----------------------------
DROP TABLE IF EXISTS `admin_message`;
CREATE TABLE `admin_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msg` varchar(1000) DEFAULT NULL COMMENT '留言内容',
  `expiry_days` int(5) unsigned DEFAULT NULL COMMENT '有效天数',
  `create_user` varchar(50) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(50) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_message
-- ----------------------------
INSERT INTO `admin_message` VALUES ('1', '测试文本', '1', 'admin', '2014-11-21 18:47:20', 'admin', '2014-11-21 18:47:27');

-- ----------------------------
-- Table structure for admin_module
-- ----------------------------
DROP TABLE IF EXISTS `admin_module`;
CREATE TABLE `admin_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT 'code',
  `display_label` varchar(200) NOT NULL COMMENT '显示名称',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `des` varchar(400) DEFAULT NULL COMMENT '描述',
  `entry_url` varchar(100) DEFAULT NULL COMMENT '入口地址',
  `display_order` int(5) DEFAULT NULL COMMENT '顺序',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_module
-- ----------------------------
INSERT INTO `admin_module` VALUES ('1', 'menu_manage', '菜单用户权限', 'n', '菜单管理', '', '1', 'admin', '2016-08-11 15:26:21', 'admin', '2016-08-11 16:31:08');
INSERT INTO `admin_module` VALUES ('2', 'rizhimaanage', '日志管理', 'n', '日志管理', '', '2', 'test', '2016-08-14 06:53:13', 'test', '2016-08-14 06:53:13');
INSERT INTO `admin_module` VALUES ('3', 'category', '分类管理', 'n', '分类管理', null, '3', 'admin', '2017-03-16 02:46:28', 'admin', '2017-03-16 05:40:05');
INSERT INTO `admin_module` VALUES ('4', 'front', '前端管理', 'n', '前端数据管理', null, '5', 'admin', '2017-03-16 05:41:10', 'admin', '2017-03-16 05:43:45');
INSERT INTO `admin_module` VALUES ('5', 'count', '统计管理', 'n', '统计管理', null, '6', 'admin', '2017-03-16 05:41:30', 'admin', '2017-03-16 05:42:52');
INSERT INTO `admin_module` VALUES ('6', 'product', '产品管理', 'n', '产品管理', null, '4', 'admin', '2017-03-16 05:43:17', 'admin', '2017-03-16 05:43:34');

-- ----------------------------
-- Table structure for admin_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_right`;
CREATE TABLE `admin_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menu_id` int(11) NOT NULL COMMENT '功能主键',
  `right_name` varchar(200) NOT NULL COMMENT '名称',
  `display_label` varchar(200) DEFAULT NULL COMMENT '显示名',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `display_order` int(5) DEFAULT NULL COMMENT '显示顺序',
  `has_lef` varchar(1) NOT NULL DEFAULT 'n' COMMENT '是否有子',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right` (`menu_id`),
  KEY `index_menu_id` (`menu_id`),
  CONSTRAINT `FK_admin_right` FOREIGN KEY (`menu_id`) REFERENCES `admin_menu` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right
-- ----------------------------
INSERT INTO `admin_right` VALUES ('4', '2', '角色操作', '角色操作', '角色操作', '1', 'n', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right` VALUES ('5', '2', '分配用户', '分配用户', '分配用户', '2', 'n', 'admin', '2016-08-13 17:05:04', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right` VALUES ('6', '2', '分配权限', '分配权限', '分配权限', '3', 'n', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right` VALUES ('7', '3', '用户操作', '用户操作', '用户操作', '1', 'n', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right` VALUES ('8', '4', '操作', '操作', '操作', '1', 'n', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right` VALUES ('13', '1', '一级菜单查看', '一级菜单查看', '一级菜单查看', '1', 'n', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right` VALUES ('14', '1', '一级菜单添加', '一级菜单添加', '一级菜单添加', '2', 'n', 'test', '2016-08-16 15:53:10', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right` VALUES ('15', '1', '一级菜单删除', '一级菜单删除', '一级菜单删除', '3', 'n', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right` VALUES ('16', '1', '二级菜单查看', '二级菜单查看', '二级菜单查看', '4', 'n', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right` VALUES ('17', '1', '二级菜单添加', '二级菜单修改', '二级菜单添加', '5', 'n', 'test', '2016-08-16 15:55:21', 'test', '2016-08-16 15:58:50');
INSERT INTO `admin_right` VALUES ('18', '1', '二级菜单删除', '二级菜单删除', '二级菜单删除', '6', 'n', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right` VALUES ('19', '1', '路由查看', '路由查看', '路由查看', '7', 'n', 'test', '2016-08-16 15:56:32', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right` VALUES ('20', '1', '路由添加', '路由添加', '路由添加', '8', 'n', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right` VALUES ('21', '1', '路由删除', '路由删除', '路由删除', '9', 'n', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right` VALUES ('22', '5', '操作', '查看', '查看修改删除添加', '1', 'n', 'admin', '2017-03-16 02:49:45', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right` VALUES ('24', '7', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right` VALUES ('25', '8', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right` VALUES ('26', '9', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right` VALUES ('27', '10', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-20 06:29:27', 'admin', '2017-03-20 06:29:27');
INSERT INTO `admin_right` VALUES ('28', '11', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right` VALUES ('29', '12', '添加', '添加', '添加', '1', 'n', 'admin', '2017-03-20 07:39:04', 'admin', '2017-03-20 09:07:24');
INSERT INTO `admin_right` VALUES ('30', '13', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right` VALUES ('32', '15', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-21 09:56:59', 'admin', '2017-03-21 09:56:59');
INSERT INTO `admin_right` VALUES ('33', '16', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right` VALUES ('34', '17', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right` VALUES ('35', '18', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-24 09:21:59', 'admin', '2017-03-24 09:21:59');
INSERT INTO `admin_right` VALUES ('36', '19', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right` VALUES ('37', '20', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right` VALUES ('38', '21', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right` VALUES ('39', '22', '操作', '操作', '操作', '1', 'n', 'admin', '2017-03-30 13:53:54', 'admin', '2017-03-31 15:17:25');

-- ----------------------------
-- Table structure for admin_right_url
-- ----------------------------
DROP TABLE IF EXISTS `admin_right_url`;
CREATE TABLE `admin_right_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `right_id` int(11) NOT NULL COMMENT 'right主键',
  `url` varchar(200) DEFAULT NULL COMMENT 'url',
  `para_name` varchar(40) DEFAULT NULL COMMENT '参数名',
  `para_value` varchar(40) DEFAULT NULL COMMENT '参数值',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `FK_admin_right_url` (`right_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `FK_admin_right_url` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_right_url
-- ----------------------------
INSERT INTO `admin_right_url` VALUES ('16', '4', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('17', '4', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('18', '4', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('19', '4', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('20', '4', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('21', '4', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('22', '4', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:04:40', 'admin', '2016-08-13 17:04:40');
INSERT INTO `admin_right_url` VALUES ('30', '6', 'admin-role/index', 'admin-role', 'index', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('31', '6', 'admin-role/view', 'admin-role', 'view', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('32', '6', 'admin-role/create', 'admin-role', 'create', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('33', '6', 'admin-role/update', 'admin-role', 'update', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('34', '6', 'admin-role/delete', 'admin-role', 'delete', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('35', '6', 'admin-role/get-all-rights', 'admin-role', 'get-all-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('36', '6', 'admin-role/save-rights', 'admin-role', 'save-rights', 'admin', '2016-08-13 17:05:24', 'admin', '2016-08-13 17:05:24');
INSERT INTO `admin_right_url` VALUES ('37', '7', 'admin-user/index', 'admin-user', 'index', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('38', '7', 'admin-user/view', 'admin-user', 'view', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('39', '7', 'admin-user/create', 'admin-user', 'create', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('40', '7', 'admin-user/update', 'admin-user', 'update', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('41', '7', 'admin-user/delete', 'admin-user', 'delete', 'admin', '2016-08-13 17:05:57', 'admin', '2016-08-13 17:05:57');
INSERT INTO `admin_right_url` VALUES ('42', '8', 'admin-log/index', 'admin-log', 'index', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('43', '8', 'admin-log/view', 'admin-log', 'view', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('44', '8', 'admin-log/create', 'admin-log', 'create', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('45', '8', 'admin-log/update', 'admin-log', 'update', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('46', '8', 'admin-log/delete', 'admin-log', 'delete', 'test', '2016-08-14 06:54:38', 'test', '2016-08-14 06:54:38');
INSERT INTO `admin_right_url` VALUES ('81', '5', 'admin-user-role/index', 'admin-user-role', 'index', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('82', '5', 'admin-user-role/view', 'admin-user-role', 'view', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('83', '5', 'admin-user-role/create', 'admin-user-role', 'create', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('84', '5', 'admin-user-role/update', 'admin-user-role', 'update', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('85', '5', 'admin-user-role/delete', 'admin-user-role', 'delete', 'test', '2016-08-14 08:22:13', 'test', '2016-08-14 08:22:13');
INSERT INTO `admin_right_url` VALUES ('112', '13', 'admin-module/index', 'admin-module', 'index', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('113', '13', 'admin-module/view', 'admin-module', 'view', 'test', '2016-08-16 15:52:45', 'test', '2016-08-16 15:52:45');
INSERT INTO `admin_right_url` VALUES ('115', '15', 'admin-module/delete', 'admin-module', 'delete', 'test', '2016-08-16 15:53:44', 'test', '2016-08-16 15:53:44');
INSERT INTO `admin_right_url` VALUES ('118', '16', 'admin-menu/index', 'admin-menu', 'index', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('119', '16', 'admin-menu/view', 'admin-menu', 'view', 'test', '2016-08-16 15:55:02', 'test', '2016-08-16 15:55:02');
INSERT INTO `admin_right_url` VALUES ('122', '18', 'admin-menu/delete', 'admin-menu', 'delete', 'test', '2016-08-16 15:55:58', 'test', '2016-08-16 15:55:58');
INSERT INTO `admin_right_url` VALUES ('125', '19', 'admin-right/index', 'admin-right', 'index', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('126', '19', 'admin-right/view', 'admin-right', 'view', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('127', '19', 'admin-right/right-action', 'admin-right', 'right-action', 'test', '2016-08-16 15:57:14', 'test', '2016-08-16 15:57:14');
INSERT INTO `admin_right_url` VALUES ('128', '20', 'admin-right/create', 'admin-right', 'create', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('129', '20', 'admin-right/update', 'admin-right', 'update', 'test', '2016-08-16 15:57:46', 'test', '2016-08-16 15:57:46');
INSERT INTO `admin_right_url` VALUES ('130', '21', 'admin-right/delete', 'admin-right', 'delete', 'test', '2016-08-16 15:58:05', 'test', '2016-08-16 15:58:05');
INSERT INTO `admin_right_url` VALUES ('131', '14', 'admin-module/create', 'admin-module', 'create', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('132', '14', 'admin-module/update', 'admin-module', 'update', 'test', '2016-08-16 15:58:30', 'test', '2016-08-16 15:58:30');
INSERT INTO `admin_right_url` VALUES ('133', '17', 'admin-menu/create', 'admin-menu', 'create', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('134', '17', 'admin-menu/update', 'admin-menu', 'update', 'test', '2016-08-16 15:58:51', 'test', '2016-08-16 15:58:51');
INSERT INTO `admin_right_url` VALUES ('137', '22', 'front-category/index', 'front-category', 'index', 'admin', '2017-03-16 02:50:56', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right_url` VALUES ('138', '22', 'front-category/view', 'front-category', 'view', 'admin', '2017-03-16 02:50:56', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right_url` VALUES ('139', '22', 'front-category/create', 'front-category', 'create', 'admin', '2017-03-16 02:50:56', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right_url` VALUES ('140', '22', 'front-category/update', 'front-category', 'update', 'admin', '2017-03-16 02:50:56', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right_url` VALUES ('141', '22', 'front-category/delete', 'front-category', 'delete', 'admin', '2017-03-16 02:50:56', 'admin', '2017-03-16 02:50:56');
INSERT INTO `admin_right_url` VALUES ('147', '24', 'penngo-word/index', 'penngo-word', 'index', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right_url` VALUES ('148', '24', 'penngo-word/view', 'penngo-word', 'view', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right_url` VALUES ('149', '24', 'penngo-word/create', 'penngo-word', 'create', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right_url` VALUES ('150', '24', 'penngo-word/update', 'penngo-word', 'update', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right_url` VALUES ('151', '24', 'penngo-word/delete', 'penngo-word', 'delete', 'admin', '2017-03-16 03:39:41', 'admin', '2017-03-16 03:39:41');
INSERT INTO `admin_right_url` VALUES ('152', '25', 'front-identity/index', 'front-identity', 'index', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right_url` VALUES ('153', '25', 'front-identity/view', 'front-identity', 'view', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right_url` VALUES ('154', '25', 'front-identity/create', 'front-identity', 'create', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right_url` VALUES ('155', '25', 'front-identity/update', 'front-identity', 'update', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right_url` VALUES ('156', '25', 'front-identity/delete', 'front-identity', 'delete', 'admin', '2017-03-16 04:51:42', 'admin', '2017-03-16 04:51:42');
INSERT INTO `admin_right_url` VALUES ('157', '26', 'front-product/index', 'front-product', 'index', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right_url` VALUES ('158', '26', 'front-product/view', 'front-product', 'view', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right_url` VALUES ('159', '26', 'front-product/create', 'front-product', 'create', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right_url` VALUES ('160', '26', 'front-product/update', 'front-product', 'update', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right_url` VALUES ('161', '26', 'front-product/delete', 'front-product', 'delete', 'admin', '2017-03-16 06:12:09', 'admin', '2017-03-16 06:12:09');
INSERT INTO `admin_right_url` VALUES ('162', '27', 'front-user/index', 'front-user', 'index', 'admin', '2017-03-20 06:29:27', 'admin', '2017-03-20 06:29:27');
INSERT INTO `admin_right_url` VALUES ('163', '27', 'front-user/view', 'front-user', 'view', 'admin', '2017-03-20 06:29:27', 'admin', '2017-03-20 06:29:27');
INSERT INTO `admin_right_url` VALUES ('164', '28', 'front-essence/index', 'front-essence', 'index', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right_url` VALUES ('165', '28', 'front-essence/view', 'front-essence', 'view', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right_url` VALUES ('166', '28', 'front-essence/create', 'front-essence', 'create', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right_url` VALUES ('167', '28', 'front-essence/update', 'front-essence', 'update', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right_url` VALUES ('168', '28', 'front-essence/delete', 'front-essence', 'delete', 'admin', '2017-03-20 06:49:38', 'admin', '2017-03-20 06:49:38');
INSERT INTO `admin_right_url` VALUES ('171', '29', 'front-essence/create', 'front-essence', 'create', 'admin', '2017-03-20 09:07:24', 'admin', '2017-03-20 09:07:24');
INSERT INTO `admin_right_url` VALUES ('172', '29', 'front-essence/add-essence', 'front-essence', 'add-essence', 'admin', '2017-03-20 09:07:24', 'admin', '2017-03-20 09:07:24');
INSERT INTO `admin_right_url` VALUES ('173', '29', 'front-essence/update', 'front-essence', 'update', 'admin', '2017-03-20 09:07:24', 'admin', '2017-03-20 09:07:24');
INSERT INTO `admin_right_url` VALUES ('174', '30', 'front-plate/index', 'front-plate', 'index', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right_url` VALUES ('175', '30', 'front-plate/view', 'front-plate', 'view', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right_url` VALUES ('176', '30', 'front-plate/create', 'front-plate', 'create', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right_url` VALUES ('177', '30', 'front-plate/update', 'front-plate', 'update', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right_url` VALUES ('178', '30', 'front-plate/delete', 'front-plate', 'delete', 'admin', '2017-03-21 09:12:26', 'admin', '2017-03-21 09:12:26');
INSERT INTO `admin_right_url` VALUES ('190', '32', 'front-plate/create', 'front-plate', 'create', 'admin', '2017-03-21 09:56:59', 'admin', '2017-03-21 09:56:59');
INSERT INTO `admin_right_url` VALUES ('191', '32', 'front-plate/add-plate', 'front-plate', 'add-plate', 'admin', '2017-03-21 09:56:59', 'admin', '2017-03-21 09:56:59');
INSERT INTO `admin_right_url` VALUES ('192', '32', 'front-plate/update', 'front-plate', 'update', 'admin', '2017-03-21 09:56:59', 'admin', '2017-03-21 09:56:59');
INSERT INTO `admin_right_url` VALUES ('193', '33', 'front-ad/index', 'front-ad', 'index', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right_url` VALUES ('194', '33', 'front-ad/view', 'front-ad', 'view', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right_url` VALUES ('195', '33', 'front-ad/create', 'front-ad', 'create', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right_url` VALUES ('196', '33', 'front-ad/update', 'front-ad', 'update', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right_url` VALUES ('197', '33', 'front-ad/delete', 'front-ad', 'delete', 'admin', '2017-03-22 07:53:47', 'admin', '2017-03-22 07:53:47');
INSERT INTO `admin_right_url` VALUES ('198', '34', 'front-ad-count/index', 'front-ad-count', 'index', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right_url` VALUES ('199', '34', 'front-ad-count/view', 'front-ad-count', 'view', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right_url` VALUES ('200', '34', 'front-ad-count/create', 'front-ad-count', 'create', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right_url` VALUES ('201', '34', 'front-ad-count/update', 'front-ad-count', 'update', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right_url` VALUES ('202', '34', 'front-ad-count/delete', 'front-ad-count', 'delete', 'admin', '2017-03-22 10:53:45', 'admin', '2017-03-22 10:53:45');
INSERT INTO `admin_right_url` VALUES ('203', '35', 'front-website-count/index', 'front-website-count', 'index', 'admin', '2017-03-24 09:22:00', 'admin', '2017-03-24 09:22:00');
INSERT INTO `admin_right_url` VALUES ('204', '35', 'front-website-count/view', 'front-website-count', 'view', 'admin', '2017-03-24 09:22:00', 'admin', '2017-03-24 09:22:00');
INSERT INTO `admin_right_url` VALUES ('205', '35', 'front-website-count/create', 'front-website-count', 'create', 'admin', '2017-03-24 09:22:00', 'admin', '2017-03-24 09:22:00');
INSERT INTO `admin_right_url` VALUES ('206', '35', 'front-website-count/update', 'front-website-count', 'update', 'admin', '2017-03-24 09:22:00', 'admin', '2017-03-24 09:22:00');
INSERT INTO `admin_right_url` VALUES ('207', '35', 'front-website-count/delete', 'front-website-count', 'delete', 'admin', '2017-03-24 09:22:00', 'admin', '2017-03-24 09:22:00');
INSERT INTO `admin_right_url` VALUES ('208', '36', 'front-essence-count/index', 'front-essence-count', 'index', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right_url` VALUES ('209', '36', 'front-essence-count/view', 'front-essence-count', 'view', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right_url` VALUES ('210', '36', 'front-essence-count/create', 'front-essence-count', 'create', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right_url` VALUES ('211', '36', 'front-essence-count/update', 'front-essence-count', 'update', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right_url` VALUES ('212', '36', 'front-essence-count/delete', 'front-essence-count', 'delete', 'admin', '2017-03-27 14:56:05', 'admin', '2017-03-27 14:56:05');
INSERT INTO `admin_right_url` VALUES ('213', '37', 'front-user-count/index', 'front-user-count', 'index', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right_url` VALUES ('214', '37', 'front-user-count/view', 'front-user-count', 'view', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right_url` VALUES ('215', '37', 'front-user-count/create', 'front-user-count', 'create', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right_url` VALUES ('216', '37', 'front-user-count/update', 'front-user-count', 'update', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right_url` VALUES ('217', '37', 'front-user-count/delete', 'front-user-count', 'delete', 'admin', '2017-03-27 15:00:46', 'admin', '2017-03-27 15:00:46');
INSERT INTO `admin_right_url` VALUES ('218', '38', 'front-product-count/index', 'front-product-count', 'index', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right_url` VALUES ('219', '38', 'front-product-count/view', 'front-product-count', 'view', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right_url` VALUES ('220', '38', 'front-product-count/create', 'front-product-count', 'create', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right_url` VALUES ('221', '38', 'front-product-count/update', 'front-product-count', 'update', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right_url` VALUES ('222', '38', 'front-product-count/delete', 'front-product-count', 'delete', 'admin', '2017-03-28 14:16:30', 'admin', '2017-03-28 14:16:30');
INSERT INTO `admin_right_url` VALUES ('228', '39', 'front-product-log/index', 'front-product-log', 'index', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_right_url` VALUES ('229', '39', 'front-product-log/view', 'front-product-log', 'view', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_right_url` VALUES ('230', '39', 'front-product-log/create', 'front-product-log', 'create', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_right_url` VALUES ('231', '39', 'front-product-log/update', 'front-product-log', 'update', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_right_url` VALUES ('232', '39', 'front-product-log/delete', 'front-product-log', 'delete', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');
INSERT INTO `admin_right_url` VALUES ('233', '39', 'front-product-log/excel', 'front-product-log', 'excel', 'admin', '2017-03-31 15:17:25', 'admin', '2017-03-31 15:17:25');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(50) NOT NULL COMMENT '角色编号',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `des` varchar(400) DEFAULT NULL COMMENT '角色描述',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'superadmin', '超级管理员', '拥有所有权限', 'test', '2016-08-12 15:33:01', 'test', '2016-08-12 15:33:01');
INSERT INTO `admin_role` VALUES ('2', 'testuser', '测试人员', '测试人员', 'test', '2016-08-12 15:33:45', 'test', '2016-08-12 15:33:45');

-- ----------------------------
-- Table structure for admin_role_right
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_right`;
CREATE TABLE `admin_role_right` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '角色主键',
  `right_id` int(11) NOT NULL COMMENT '权限主键',
  `full_path` varchar(250) DEFAULT NULL COMMENT '全路径',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_right_id` (`right_id`),
  CONSTRAINT `admin_role_right_ibfk_1` FOREIGN KEY (`right_id`) REFERENCES `admin_right` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_right
-- ----------------------------
INSERT INTO `admin_role_right` VALUES ('112', '2', '13', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('113', '2', '14', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('114', '2', '15', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('115', '2', '16', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('116', '2', '17', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('117', '2', '18', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('118', '2', '19', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('119', '2', '20', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('120', '2', '21', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('121', '2', '4', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('122', '2', '5', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('123', '2', '6', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('124', '2', '7', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('125', '2', '8', null, 'test', '2016-08-16 16:02:57', 'test', '2016-08-16 16:02:57');
INSERT INTO `admin_role_right` VALUES ('495', '1', '13', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('496', '1', '14', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('497', '1', '15', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('498', '1', '16', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('499', '1', '17', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('500', '1', '18', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('501', '1', '19', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('502', '1', '20', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('503', '1', '21', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('504', '1', '4', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('505', '1', '5', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('506', '1', '6', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('507', '1', '7', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('508', '1', '8', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('509', '1', '22', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('510', '1', '24', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('511', '1', '25', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('512', '1', '27', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('513', '1', '28', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('514', '1', '29', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('515', '1', '30', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('516', '1', '32', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('517', '1', '33', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('518', '1', '34', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('519', '1', '35', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('520', '1', '36', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('521', '1', '37', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('522', '1', '38', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('523', '1', '39', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');
INSERT INTO `admin_role_right` VALUES ('524', '1', '26', null, 'admin', '2017-03-30 13:54:09', 'admin', '2017-03-30 13:54:09');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `create_user` varchar(100) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(101) NOT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('156', 'admin', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, 'Unknown', 'n', null, '10', 'admin', '2014-07-07 00:05:47', 'admin', '2014-09-03 12:19:12');
INSERT INTO `admin_user` VALUES ('158', 'test', '$2y$13$9O6bKJieocg//oSax9fZOOuljAKarBXknqD8.RyYg60FfNjS7SoqK', null, '', 'n', null, '10', 'admin', '2014-09-03 12:19:52', 'admin', '2014-11-21 19:19:22');

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_user_id` (`user_id`),
  KEY `index_role_id` (`role_id`),
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '156', '1', 'admin', '2016-08-12 17:03:13', 'admin', '2016-08-12 17:03:13');
INSERT INTO `admin_user_role` VALUES ('2', '158', '2', 'test', '2016-08-13 16:34:20', 'test', '2016-08-13 16:34:20');

-- ----------------------------
-- Table structure for front_ad
-- ----------------------------
DROP TABLE IF EXISTS `front_ad`;
CREATE TABLE `front_ad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '广告名称',
  `banner_url` varchar(255) NOT NULL COMMENT 'banner地址',
  `ad_url` varchar(255) NOT NULL COMMENT '广告链接',
  `ad_class` varchar(1) NOT NULL DEFAULT '1' COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='广告banner表';

-- ----------------------------
-- Records of front_ad
-- ----------------------------
INSERT INTO `front_ad` VALUES ('1', '首页广告', 'http://192.168.1.4/789sudai/common/uploads/14911915172066.jpg', 'https://www.baidu.com/', '1');
INSERT INTO `front_ad` VALUES ('2', '移动端产品页', '/789sudai/common/uploads/14911915315612.jpg', 'http://www.sina.com', '2');
INSERT INTO `front_ad` VALUES ('3', 'PC端', 'http://192.168.1.4/789sudai/common/uploads/14911915422077.jpg', 'http://www.taobao.com', '3');

-- ----------------------------
-- Table structure for front_ad_count
-- ----------------------------
DROP TABLE IF EXISTS `front_ad_count`;
CREATE TABLE `front_ad_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL COMMENT '广告id',
  `show_total` int(11) NOT NULL COMMENT '当天广告位的展示次数',
  `date` date NOT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端类型；1:pc,2:微信，3:wap',
  `click_total` int(11) NOT NULL COMMENT '当天广告点击量',
  `uv` int(11) NOT NULL COMMENT '展示页uv',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='广告统计';

-- ----------------------------
-- Records of front_ad_count
-- ----------------------------
INSERT INTO `front_ad_count` VALUES ('1', '1', '1', '2017-03-22', '1', '1', '1');
INSERT INTO `front_ad_count` VALUES ('2', '2', '5', '2017-03-24', '1', '5', '5');
INSERT INTO `front_ad_count` VALUES ('3', '1', '55', '2017-03-23', '2', '5', '5');
INSERT INTO `front_ad_count` VALUES ('7', '1', '2', '2017-03-25', '1', '1', '1');
INSERT INTO `front_ad_count` VALUES ('6', '3', '5', '2017-03-28', '1', '167', '5373');

-- ----------------------------
-- Table structure for front_category
-- ----------------------------
DROP TABLE IF EXISTS `front_category`;
CREATE TABLE `front_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '类别名称',
  `create_user` varchar(20) NOT NULL COMMENT '创建人',
  `update_user` varchar(20) DEFAULT NULL COMMENT '更新人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='类别表';

-- ----------------------------
-- Records of front_category
-- ----------------------------
INSERT INTO `front_category` VALUES ('3', '学生贷', 'admin', 'admin', '2017-03-16 03:44:24', '2017-04-02 07:15:08');
INSERT INTO `front_category` VALUES ('4', '工薪贷', 'admin', 'admin', '2017-03-16 03:44:42', '2017-03-16 03:44:42');
INSERT INTO `front_category` VALUES ('5', '信用贷', 'admin', 'admin', '2017-03-16 03:45:02', '2017-03-16 03:45:02');

-- ----------------------------
-- Table structure for front_essence
-- ----------------------------
DROP TABLE IF EXISTS `front_essence`;
CREATE TABLE `front_essence` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `introduce` varchar(255) DEFAULT NULL COMMENT '简介',
  `content` varchar(15000) NOT NULL COMMENT '内容',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `cteate_date` datetime NOT NULL COMMENT '创建时间',
  `rec` tinyint(4) DEFAULT '0' COMMENT '推荐',
  `img` varchar(255) DEFAULT NULL COMMENT '图片',
  `read` int(10) DEFAULT '0' COMMENT '阅读量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='精华(攻略)表';

-- ----------------------------
-- Records of front_essence
-- ----------------------------
INSERT INTO `front_essence` VALUES ('1', '简单借款1', '简单借款的申请流程', '<p>111111111111111test111aa</p>', '2017-03-21 06:43:47', '2017-03-21 06:43:47', '0', null, '0');
INSERT INTO `front_essence` VALUES ('2', 'a', 'a', '<p>a</p>', '2017-03-20 09:19:22', '2017-03-20 09:19:22', '0', null, '0');
INSERT INTO `front_essence` VALUES ('3', 'a', 'a', '<p><img src=\"/ueditor/php/upload/image/20170320/1490001611611266.jpg\" title=\"1490001611611266.jpg\" alt=\"1490001611611266.jpg\" width=\"100\" height=\"50\" border=\"0\" vspace=\"0\" style=\"width: 100px; height: 50px;\"/></p>', '2017-03-21 08:53:20', '2017-03-21 08:53:20', '1', null, '0');
INSERT INTO `front_essence` VALUES ('4', 'a', 'a', '<p>aaaaaaaaaaaa<br/></p><p>aaaaaa</p>', '2017-03-21 08:49:57', '2017-03-21 08:49:57', '1', null, '0');
INSERT INTO `front_essence` VALUES ('5', '测试', 'success', '<p><span style=\"color: rgb(79, 129, 189);\">一、借款条件</span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\">1、年龄：18-30周岁；4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。4、银行卡绑定。</span><br/></span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\"><br/></span></span></p><p><span style=\"color: rgb(79, 129, 189);\">二、申请资料</span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\">1、身份证；</span><br/></span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\">2、手机实名认证；</span></span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\">3、芝麻分认证；</span></span></p><p><span style=\"color: rgb(79, 129, 189);\"><span style=\"color: rgb(0, 0, 0);\">4、银行卡绑定。<br/></span></span></p>', '2017-04-02 09:49:28', '2017-03-21 08:53:46', '1', '/789sudai/common/uploads/14911265684638.jpg', '0');
INSERT INTO `front_essence` VALUES ('6', 'hhh', 'hhhh', '<p>hhh</p>', '2017-04-02 09:49:11', '2017-04-02 09:44:08', '0', '/789sudai/common/uploads/14911265515043.jpg', '0');

-- ----------------------------
-- Table structure for front_essence_count
-- ----------------------------
DROP TABLE IF EXISTS `front_essence_count`;
CREATE TABLE `front_essence_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `essence_id` int(11) NOT NULL COMMENT '攻略id',
  `date` date NOT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端类型 1:pc,2:微信,3:wap',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '当天攻略浏览次数',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '当天攻略浏览人数',
  `r_click_total` int(11) NOT NULL DEFAULT '0' COMMENT '推荐产品点击量',
  `r_apply_total` int(11) NOT NULL DEFAULT '0' COMMENT '推荐产品申请量',
  `share_total` int(11) NOT NULL DEFAULT '0' COMMENT '分享次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='攻略统计表';

-- ----------------------------
-- Records of front_essence_count
-- ----------------------------
INSERT INTO `front_essence_count` VALUES ('1', '1', '2017-03-30', '1', '1', '1', '1', '1', '1');
INSERT INTO `front_essence_count` VALUES ('2', '1', '2017-03-29', '1', '0', '0', '0', '0', '0');
INSERT INTO `front_essence_count` VALUES ('3', '2', '2017-03-31', '1', '0', '0', '0', '0', '0');
INSERT INTO `front_essence_count` VALUES ('4', '3', '2017-03-29', '1', '0', '0', '0', '0', '0');
INSERT INTO `front_essence_count` VALUES ('5', '4', '2017-03-27', '1', '0', '0', '0', '0', '0');
INSERT INTO `front_essence_count` VALUES ('6', '5', '2017-03-30', '2', '1', '1', '1', '1', '1');
INSERT INTO `front_essence_count` VALUES ('7', '5', '2017-03-30', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for front_identity
-- ----------------------------
DROP TABLE IF EXISTS `front_identity`;
CREATE TABLE `front_identity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '身份名称',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_user` varchar(20) DEFAULT NULL COMMENT '更新人',
  `create_user` varchar(20) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='身份要求表';

-- ----------------------------
-- Records of front_identity
-- ----------------------------
INSERT INTO `front_identity` VALUES ('1', '高校学生', '2017-03-16 04:52:40', '2017-03-16 04:52:40', 'admin', 'admin');
INSERT INTO `front_identity` VALUES ('2', '上班族', '2017-03-16 04:54:48', '2017-03-16 04:52:54', 'admin', 'admin');
INSERT INTO `front_identity` VALUES ('3', '个体户', '2017-03-16 04:53:14', '2017-03-16 04:53:14', 'admin', 'admin');
INSERT INTO `front_identity` VALUES ('4', '自由职业者', '2017-03-16 04:53:28', '2017-03-16 04:53:28', 'admin', 'admin');

-- ----------------------------
-- Table structure for front_index
-- ----------------------------
DROP TABLE IF EXISTS `front_index`;
CREATE TABLE `front_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '前端名字',
  `index_id` int(11) NOT NULL COMMENT '类型标识',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of front_index
-- ----------------------------
INSERT INTO `front_index` VALUES ('1', '微信', '1');
INSERT INTO `front_index` VALUES ('2', 'PC', '2');
INSERT INTO `front_index` VALUES ('3', 'WAP', '3');

-- ----------------------------
-- Table structure for front_plate
-- ----------------------------
DROP TABLE IF EXISTS `front_plate`;
CREATE TABLE `front_plate` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `introduce` varchar(255) DEFAULT NULL COMMENT '简介',
  `content` varchar(15000) NOT NULL COMMENT '内容详细',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `img_url` varchar(255) DEFAULT NULL COMMENT '图片',
  `read` int(10) DEFAULT '0' COMMENT '阅读量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='板块(干货)表';

-- ----------------------------
-- Records of front_plate
-- ----------------------------
INSERT INTO `front_plate` VALUES ('3', '板块', '板块测试', '<p>1】板块</p><p>2.。。精华123</p>', '2017-03-22 07:41:53', '2017-03-21 09:46:15', '../../common/uploads/14901684977691.jpg', '0');
INSERT INTO `front_plate` VALUES ('2', 'aa', 'aa', '<p>aaggg</p>', '2017-03-22 07:42:10', '2017-03-21 09:40:25', '../../common/uploads/14901685304629.jpg', '0');
INSERT INTO `front_plate` VALUES ('4', '你的信用污点是这么来的', '你的信用污点是这么来的...', '<p>asdasd<br/></p><p>sadasdaas</p><p><br/></p><p>sadasdas</p><p><br/></p><p>aaaaa</p><p>sss巴巴大师肯德基</p>', '2017-03-22 07:42:28', '2017-03-21 09:59:55', '../../common/uploads/14901685485289.jpg', '0');
INSERT INTO `front_plate` VALUES ('5', 'aa', 'aa', '<p>aaa</p>', '2017-03-22 07:33:51', '2017-03-22 07:33:51', '../../common/uploads/14901680318839.jpg', '0');
INSERT INTO `front_plate` VALUES ('6', 'aa', 'aaaa', '<p>aaa</p>', '2017-04-02 08:45:56', '2017-04-02 08:45:56', '/common/uploads/14911227556755.jpg', '0');
INSERT INTO `front_plate` VALUES ('7', 'hhh', 'hhh', '<p>hhh</p>', '2017-04-02 08:47:47', '2017-04-02 08:47:47', '/789sudai/common/uploads/14911228672828.jpg', '0');

-- ----------------------------
-- Table structure for front_product
-- ----------------------------
DROP TABLE IF EXISTS `front_product`;
CREATE TABLE `front_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL COMMENT '产品名称',
  `order` int(11) NOT NULL COMMENT '排序',
  `category_id` varchar(50) NOT NULL COMMENT '类别',
  `new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是新口子',
  `hot` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是热门',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否上架',
  `limit` varchar(100) NOT NULL COMMENT '额度',
  `age` varchar(100) NOT NULL COMMENT '年龄范围',
  `identity_id` varchar(100) NOT NULL COMMENT '身份id',
  `money_rate` varchar(100) NOT NULL COMMENT '利率',
  `term` varchar(100) NOT NULL COMMENT '还款期限',
  `handle_time` varchar(100) NOT NULL COMMENT '办理时间',
  `aptitude` varchar(255) NOT NULL COMMENT '资质要求',
  `credit` varchar(255) NOT NULL COMMENT '信用要求',
  `materials` varchar(255) NOT NULL COMMENT '申请材料',
  `prompt` varchar(255) NOT NULL COMMENT '申请提示',
  `logo_url` varchar(255) NOT NULL COMMENT 'logo地址',
  `describe` varchar(255) NOT NULL COMMENT '产品描述',
  `apply_total` varchar(100) NOT NULL COMMENT '申请量',
  `link` varchar(255) NOT NULL COMMENT '产品链接',
  `telephone` varchar(100) NOT NULL COMMENT '产品热线',
  `success_rate` tinyint(1) NOT NULL DEFAULT '5' COMMENT '成功率',
  `update_user` varchar(20) DEFAULT NULL COMMENT '更新人',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `create_user` varchar(20) NOT NULL COMMENT '创建人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `return` varchar(255) DEFAULT NULL COMMENT '还款方式',
  `check` varchar(255) DEFAULT NULL COMMENT '审核方式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of front_product
-- ----------------------------
INSERT INTO `front_product` VALUES ('17', '货上钱', '3', '3,5', '1', '1', '0', '1', '10-100元', '20-30岁', '1,2,4', '1%-2%日', '1天-1月天', '10天', 'aaa', 'aaa', 'aaa', 'aaa', '../../common/uploads/14897453563146.jpg', 'aaa123123123', '1000', 'www.baidu.com', '8008800', '5', 'admin', '2017-04-02 09:16:18', 'admin', '2017-03-17 10:09:16', null, null);
INSERT INTO `front_product` VALUES ('16', '货上钱', '3', '3,5', '1', '1', '0', '1', '10-100元', '20-30岁', '1,2,4', '1%-2%日', '1天-1月天', '10天', 'aaa', 'aaa', 'aaa', 'aaa', '../../common/uploads/14897453563146.jpg', 'aaa', '1000', 'www.baidu.com', '8008800', '5', 'admin', '2017-04-02 09:18:10', 'admin', '2017-03-17 10:09:16', null, null);
INSERT INTO `front_product` VALUES ('14', '现金贷', '3', '3', '0', '0', '1', '0', '1-1元', '1-1岁', '1', '1%-1%日', '1-1', '12', '1', '1', '1', '1', '../../common/uploads/14899893613524.jpg', '1', '1', '1', '1', '1', 'admin', '2017-04-02 05:59:50', 'admin', '2017-03-20 05:56:01', null, null);
INSERT INTO `front_product` VALUES ('15', '货上钱', '3', '3,5', '1', '1', '0', '1', '10-100元', '20-30岁', '1,2,4', '1%-2%日', '1天-1月天', '10天', 'aaa', 'aaa', 'aaa', 'aaa', '../../common/uploads/14897453563146.jpg', 'aaa', '1000', 'www.baidu.com', '8008800', '5', 'admin', '2017-03-18 02:37:28', 'admin', '2017-03-17 10:09:16', null, null);
INSERT INTO `front_product` VALUES ('13', '快贷', '2', '3,4,5', '1', '1', '1', '1', '1000-2000元', '15-20岁', '3,4', '2%-3%日', '1月-2月', '15天', 'zz', 'xy', 'sb', 'zy', '../../common/uploads/14898052692597.jpg', 'ms', 'as', 'lianjie', '热线', '5', 'admin', '2017-04-02 10:24:32', 'admin', '2017-03-17 11:01:09', null, null);
INSERT INTO `front_product` VALUES ('12', '货上钱', '3', '3,5', '1', '0', '0', '1', '10-100元', '20-30岁', '1,2,4', '1%-2%日', '1天-1月天', '10天', 'aaa', 'aaa', 'aaa', 'aaa', '../../common/uploads/14897453563146.jpg', 'aaa', '1000', 'www.baidu.com', '8008800', '5', 'admin', '2017-03-18 02:37:28', 'admin', '2017-03-17 10:09:16', null, null);
INSERT INTO `front_product` VALUES ('18', '货上钱', '3', '3,5', '1', '0', '0', '1', '10-100元', '20-30岁', '1,2,4', '1%-2%日', '1天-1月天', '10天', 'aaa', 'aaa', 'aaa', 'aaa', '../../common/uploads/14897453563146.jpg', 'aaa', '1000', 'www.baidu.com', '8008800', '5', 'admin', '2017-03-18 02:37:28', 'admin', '2017-03-17 10:09:16', null, null);
INSERT INTO `front_product` VALUES ('20', 'aa', '1', '3', '0', '0', '0', '0', '1-1元', '1-1岁', '2', '1%-1%日', '1-1', '1', '1', '1', '1', '1', '/789sudai/common/uploads/14911308163396.jpg', '1', '11', '1', '1', '11', 'admin', '2017-04-02 11:00:17', 'admin', '2017-04-02 11:00:17', null, null);
INSERT INTO `front_product` VALUES ('21', '1', '1', '3', '1', '0', '1', '0', '1-1元', '1-1岁', '1', '1%-1%日', '1-1', '1', '1', '1', '1', '1', '/789sudai/common/uploads/14911309043509.jpg', '1', '1', '1', '1', '1', 'admin', '2017-04-02 11:01:44', 'admin', '2017-04-02 11:01:44', null, null);
INSERT INTO `front_product` VALUES ('22', '1', '1', '3', '1', '0', '1', '0', '1-1元', '1-1岁', '1', '1%-%日', '1-1', '1', '1', '1', '1', '1', '/789sudai/common/uploads/14911309793015.jpg', '1', '1', '1', '1', '1', 'admin', '2017-04-02 11:02:59', 'admin', '2017-04-02 11:02:59', null, null);
INSERT INTO `front_product` VALUES ('23', '1', '1', '3', '0', '0', '0', '0', '1-元', '1-岁', '1', '1%-%日', '1-', '1', '1', '11', '1', '1', '/789sudai/common/uploads/14911311551276.jpg', '1', '11', '1', '1', '1', 'admin', '2017-04-02 11:05:55', 'admin', '2017-04-02 11:05:55', null, null);
INSERT INTO `front_product` VALUES ('24', '1', '1', '3', '0', '0', '1', '0', '1-元', '1-岁', '1', '1%-%日', '1-', '1', '1', '1', '1', '1', '/789sudai/common/uploads/14911312543730.jpg', '1', '11', '1', '1', '1', 'admin', '2017-04-02 11:07:34', 'admin', '2017-04-02 11:07:34', null, null);
INSERT INTO `front_product` VALUES ('25', '1', '1', '3', '0', '0', '0', '0', '1-元', '1-岁', '1', '1%-%日', '1-', '1', '1', '1', '11', '1', '/789sudai/common/uploads/14911317687828.jpg', '1', '1', '11', '1', '1', 'admin', '2017-04-02 11:16:08', 'admin', '2017-04-02 11:16:08', null, null);
INSERT INTO `front_product` VALUES ('26', '1', '1', '3', '0', '0', '0', '0', '1-元', '1-岁', '1', '1%-%日', '1-', '1', '1', '1', '11', '1', '/789sudai/common/uploads/14911317792006.jpg', '1', '1', '11', '1', '1', 'admin', '2017-04-02 11:16:19', 'admin', '2017-04-02 11:16:19', null, null);

-- ----------------------------
-- Table structure for front_product_count
-- ----------------------------
DROP TABLE IF EXISTS `front_product_count`;
CREATE TABLE `front_product_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `date` date NOT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端1:pc, 2:微信, 3:wap',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '产品详情页浏览次数',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '当天详情页浏览人数',
  `apply_total` int(11) NOT NULL DEFAULT '0' COMMENT '当天产品申请量',
  `share_total` int(1) NOT NULL DEFAULT '0' COMMENT '当天产品分享次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='产品统计表';

-- ----------------------------
-- Records of front_product_count
-- ----------------------------
INSERT INTO `front_product_count` VALUES ('1', '12', '2017-03-30', '1', '1', '1', '1', '1');
INSERT INTO `front_product_count` VALUES ('2', '13', '2017-03-29', '1', '0', '0', '0', '0');
INSERT INTO `front_product_count` VALUES ('3', '14', '2017-03-31', '1', '1', '1', '1', '1');
INSERT INTO `front_product_count` VALUES ('4', '14', '2017-03-31', '2', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for front_product_log
-- ----------------------------
DROP TABLE IF EXISTS `front_product_log`;
CREATE TABLE `front_product_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `product_id` int(11) DEFAULT NULL COMMENT '产品id',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `type` tinyint(1) DEFAULT '1' COMMENT '前端',
  `date` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户申请产品记录表';

-- ----------------------------
-- Records of front_product_log
-- ----------------------------
INSERT INTO `front_product_log` VALUES ('1', '1', '12', '2017-03-31 22:14:18', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('2', '2', '13', '2017-03-31 22:14:27', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('3', '3', '14', '2017-03-31 22:14:34', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('4', '1', '13', '2017-03-31 22:14:46', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('5', '1', '14', '2017-03-30 22:56:14', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('6', '3', '13', '2017-04-02 10:21:36', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('7', '2', '13', '2017-04-02 10:24:09', '1', '2017-04-03');
INSERT INTO `front_product_log` VALUES ('9', '1', '1', '2017-04-03 08:36:02', '1', null);

-- ----------------------------
-- Table structure for front_user
-- ----------------------------
DROP TABLE IF EXISTS `front_user`;
CREATE TABLE `front_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL COMMENT '用户姓名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `auth_key` varchar(50) DEFAULT NULL COMMENT '自动登录key',
  `last_ip` varchar(50) DEFAULT NULL COMMENT '最近一次登录ip',
  `is_online` char(1) DEFAULT 'n' COMMENT '是否在线',
  `domain_account` varchar(100) DEFAULT NULL COMMENT '域账号',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `sex` char(1) DEFAULT 'm' COMMENT '性别',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='前台用户表';

-- ----------------------------
-- Records of front_user
-- ----------------------------
INSERT INTO `front_user` VALUES ('1', '张三', '123456', null, null, 'n', null, '18200000000', 'm', '2017-03-20 14:32:08', '2017-03-20 14:32:11');
INSERT INTO `front_user` VALUES ('2', '李四', '123456', null, null, 'n', null, '18288888888', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `front_user` VALUES ('3', '王五', '123456', null, null, 'n', null, '18266666666', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for front_user_count
-- ----------------------------
DROP TABLE IF EXISTS `front_user_count`;
CREATE TABLE `front_user_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端类型；1:pc ,2:微信, 3:wap',
  `register_total` int(11) NOT NULL DEFAULT '0' COMMENT '当天注册量',
  `login_total` int(11) NOT NULL DEFAULT '0' COMMENT '当天登录次数',
  `login_user_total` int(11) NOT NULL DEFAULT '0' COMMENT '当天登录人数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户统计';

-- ----------------------------
-- Records of front_user_count
-- ----------------------------
INSERT INTO `front_user_count` VALUES ('1', '2017-03-30', '1', '1', '1', '1');
INSERT INTO `front_user_count` VALUES ('2', '2017-03-29', '1', '2', '2', '2');
INSERT INTO `front_user_count` VALUES ('3', '2017-03-31', '1', '60', '60', '60');
INSERT INTO `front_user_count` VALUES ('4', '2017-03-28', '1', '1043', '8016', '3305');
INSERT INTO `front_user_count` VALUES ('5', '2017-03-30', '2', '500', '1000', '800');

-- ----------------------------
-- Table structure for front_website_count
-- ----------------------------
DROP TABLE IF EXISTS `front_website_count`;
CREATE TABLE `front_website_count` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '日期',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前端类型；1:pc, 2:微信， 3:wap',
  `pv` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `uv` int(11) NOT NULL DEFAULT '0' COMMENT '浏览人数',
  `register_total` int(11) NOT NULL DEFAULT '0' COMMENT '当天用户注册总量',
  `look_total` int(11) NOT NULL DEFAULT '0' COMMENT '产品查看量',
  `apply_total` int(11) NOT NULL DEFAULT '0' COMMENT '产品申请量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='网站统计';

-- ----------------------------
-- Records of front_website_count
-- ----------------------------
INSERT INTO `front_website_count` VALUES ('1', '2017-03-29', '1', '1', '1', '1', '1', '1');
INSERT INTO `front_website_count` VALUES ('2', '2017-03-30', '1', '0', '10', '0', '0', '0');
INSERT INTO `front_website_count` VALUES ('3', '2017-03-28', '1', '0', '0', '0', '0', '0');
INSERT INTO `front_website_count` VALUES ('4', '2017-03-29', '2', '12', '12', '12', '12', '12');
INSERT INTO `front_website_count` VALUES ('5', '2017-03-30', '2', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for penngo_word
-- ----------------------------
DROP TABLE IF EXISTS `penngo_word`;
CREATE TABLE `penngo_word` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '敏感词',
  `create_user` varchar(20) NOT NULL COMMENT '创建人',
  `update_user` varchar(20) DEFAULT NULL COMMENT '更新人',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of penngo_word
-- ----------------------------

-- ----------------------------
-- View structure for v_user_pro
-- ----------------------------
DROP VIEW IF EXISTS `v_user_pro`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_pro` AS select `front_user`.`username` AS `username`,`front_product_log`.`user_id` AS `user_id`,`front_product_log`.`product_id` AS `product_id`,`front_product_log`.`create_date` AS `create_date`,`front_product_log`.`id` AS `id`,`front_product`.`p_name` AS `p_name`,`front_user`.`phone` AS `phone` from ((`front_product_log` join `front_user` on((`front_product_log`.`user_id` = `front_user`.`id`))) join `front_product` on((`front_product_log`.`product_id` = `front_product`.`id`))) ;
DROP TRIGGER IF EXISTS `tri_adInsert`;
DELIMITER ;;
CREATE TRIGGER `tri_adInsert` AFTER INSERT ON `front_ad` FOR EACH ROW begin
INSERT INTO front_ad_count(ad_id,show_total,type,click_total,uv,date) VALUES(new.id,0,1,0,0,now());
end
;;
DELIMITER ;
