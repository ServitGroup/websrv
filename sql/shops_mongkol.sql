/*
 Navicat Premium Data Transfer

 Source Server         : localMariadb3306
 Source Server Type    : MariaDB
 Source Server Version : 100208
 Source Host           : localhost:3306
 Source Schema         : shops_mongkol

 Target Server Type    : MariaDB
 Target Server Version : 100208
 File Encoding         : 65001

 Date: 13/02/2018 17:08:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `category_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'กรองแสง', 'filter', 'system', 'system', NULL, NULL);

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RGB` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `colors` VALUES (1, 'ดำ', 'B', '000000', 'BLACK', '2018-01-22 22:51:35', '2018-01-22 23:14:13', 'system', 'system');
INSERT INTO `colors` VALUES (2, 'เขียว', 'G', '80FF00', 'GREEn', '2018-01-22 22:51:35', '2018-01-22 23:14:14', 'system', 'system');
INSERT INTO `colors` VALUES (3, 'ฟ้า', 'BL', '00FFFF', 'BlUE', '2018-01-22 22:51:35', '2018-01-22 23:13:50', 'system', 'system');
INSERT INTO `colors` VALUES (4, 'ขาว', 'W', 'FFFFFF', 'WHITE', '2018-01-22 22:51:35', '2018-01-22 23:13:54', 'system', 'system');
INSERT INTO `colors` VALUES (5, 'ดำ/เขียว', 'BG', '000000/80FF00', 'B/G', '2018-01-22 22:51:35', '2018-01-22 23:13:57', 'system', 'system');
INSERT INTO `colors` VALUES (6, 'xxx', 'xxx', 'x', 'x', '2018-02-06 16:13:08', '2018-02-11 16:13:24', 'aaa', 'bbb');

-- ----------------------------
-- Table structure for columns
-- ----------------------------
DROP TABLE IF EXISTS `columns`;
CREATE TABLE `columns`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ชื่อtable',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inputtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datatype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `required` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datalenth` int(10) NULL DEFAULT 0,
  `numscale` int(10) NULL DEFAULT 0,
  `unsigned` int(1) NULL DEFAULT 0,
  `visible` int(1) UNSIGNED NULL DEFAULT 1,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `width` int(11) NULL DEFAULT NULL,
  `height` int(11) NULL DEFAULT NULL,
  `searchable` int(1) NULL DEFAULT NULL,
  `orderable` int(1) NULL DEFAULT NULL,
  `search` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '{\"search\":\"\", \"regex\":\"\" }',
  `sort` int(3) NULL DEFAULT NULL,
  `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datadic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of columns
-- ----------------------------
INSERT INTO `columns` VALUES (1, 'units', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (2, 'units', 'name', '', 'Name', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (3, 'units', 'shortid', '', 'Shortid', 'textinput', 'varchar', NULL, 5, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"shortid\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":5,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(5)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (4, 'units', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (5, 'units', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (6, 'units', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"CO', NULL, '');
INSERT INTO `columns` VALUES (7, 'units', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (8, 'units', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"units\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (9, 'categories', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(11) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (10, 'categories', 'category_name', '', 'Category Name', 'textinput', 'varchar', NULL, 255, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"category_name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":255,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(255)\",\"COLUMN_KEY\":\"\",\"COLUMN_CO', NULL, '');
INSERT INTO `columns` VALUES (11, 'categories', 'category_en', '', 'Category En', 'textinput', 'varchar', NULL, 255, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"category_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":255,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(255)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMM', NULL, '');
INSERT INTO `columns` VALUES (12, 'categories', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 255, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":255,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(255)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMME', NULL, '');
INSERT INTO `columns` VALUES (13, 'categories', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 255, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":255,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(255)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMME', NULL, '');
INSERT INTO `columns` VALUES (14, 'categories', 'created_at', '', 'Created At', 'datetime-local', 'datetime', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"datetime\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"datetime\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (15, 'categories', 'updated_at', '', 'Updated At', 'datetime-local', 'datetime', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"categories\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"datetime\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"datetime\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (16, 'colors', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (17, 'colors', 'name', '', 'Name', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (18, 'colors', 'shortid', '', 'Shortid', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"shortid\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (19, 'colors', 'RGB', '', 'RGB', 'textinput', 'varchar', NULL, 20, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"RGB\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":20,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(20)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (20, 'colors', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (21, 'colors', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":', NULL, '');
INSERT INTO `columns` VALUES (22, 'colors', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"C', NULL, '');
INSERT INTO `columns` VALUES (23, 'colors', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (24, 'colors', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 8, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"colors\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (32, 'machines', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (33, 'machines', 'name', '', 'Name', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (34, 'machines', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (35, 'machines', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (36, 'machines', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",', NULL, '');
INSERT INTO `columns` VALUES (37, 'machines', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":', NULL, '');
INSERT INTO `columns` VALUES (38, 'machines', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"machines\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":', NULL, '');
INSERT INTO `columns` VALUES (39, 'products', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (40, 'products', 'name', '', 'Name', 'textinput', 'varchar', NULL, 150, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":150,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(150)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (41, 'products', 'shortname', '', 'Shortname', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"shortname\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (42, 'products', 'shortid', '', 'Shortid', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"shortid\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"Na', NULL, 'Name,color,size,unit');
INSERT INTO `columns` VALUES (43, 'products', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 150, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":150,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(150)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (44, 'products', 'percen', '', 'Percen', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"percen\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (45, 'products', 'size_id', '', 'Size Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"size_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\":\"ข', NULL, 'ขนาด');
INSERT INTO `columns` VALUES (46, 'products', 'unit_id', '', 'Unit Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"unit_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\":\"ห', NULL, 'หน่วย m = เมตร  y = หลา');
INSERT INTO `columns` VALUES (47, 'products', 'color_id', '', 'Color Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 8, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"color_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\":\"', NULL, 'สี');
INSERT INTO `columns` VALUES (48, 'products', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 9, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (49, 'products', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 10, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",', NULL, '');
INSERT INTO `columns` VALUES (50, 'products', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 0, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 11, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":', NULL, '');
INSERT INTO `columns` VALUES (51, 'products', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 0, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 12, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"products\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":', NULL, '');
INSERT INTO `columns` VALUES (52, 'timeshifts', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (53, 'timeshifts', 'name', '', 'Name', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"ชื่', NULL, 'ชื่อกะ');
INSERT INTO `columns` VALUES (54, 'timeshifts', 'time', '', 'Time', 'textinput', 'varchar', NULL, 100, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"time\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":100,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(100)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (55, 'timeshifts', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 50, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":50,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(50)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (56, 'timeshifts', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMME', NULL, '');
INSERT INTO `columns` VALUES (57, 'timeshifts', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"', NULL, '');
INSERT INTO `columns` VALUES (58, 'timeshifts', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (59, 'timeshifts', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"timeshifts\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (60, 'warehouses', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(11) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (61, 'warehouses', 'name', '', 'Name', 'textinput', 'varchar', NULL, 100, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":100,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(100)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"ช', NULL, 'ชื่อโกดัง');
INSERT INTO `columns` VALUES (62, 'warehouses', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 100, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":100,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(100)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\"', NULL, '');
INSERT INTO `columns` VALUES (63, 'warehouses', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (64, 'warehouses', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT', NULL, '');
INSERT INTO `columns` VALUES (65, 'warehouses', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMME', NULL, '');
INSERT INTO `columns` VALUES (66, 'warehouses', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"warehouses\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMME', NULL, '');
INSERT INTO `columns` VALUES (67, 'sizes', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (68, 'sizes', 'name', '', 'Name', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (69, 'sizes', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (70, 'sizes', 'shorta', '', 'Shorta', 'textinput', 'varchar', NULL, 5, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"shorta\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":5,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(5)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (71, 'sizes', 'shortb', '', 'Shortb', 'textinput', 'varchar', NULL, 5, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"shortb\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":5,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(5)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (72, 'sizes', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (73, 'sizes', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"CO', NULL, '');
INSERT INTO `columns` VALUES (74, 'sizes', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (75, 'sizes', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 8, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"sizes\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (76, 'stocks', 'id', '', 'Id', 'number', 'bigint', 'required', 20, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"bigint\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":20,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"bigint(20) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (77, 'stocks', 'product_id', '', 'Product Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"product_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (78, 'stocks', 'qty', '', 'Qty', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"qty\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (79, 'stocks', 'weight', '', 'Weight', 'number', 'double', NULL, 10, 2, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"weight\",\"DATA_TYPE\":\"double\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":2,\"COLUMN_TYPE\":\"double(10,2)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (80, 'stocks', 'warehouse_id', '', 'Warehouse Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"warehouse_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\"', NULL, '');
INSERT INTO `columns` VALUES (81, 'stocks', 'timeshift_id', '', 'Timeshift Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"timeshift_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\"', NULL, '');
INSERT INTO `columns` VALUES (82, 'stocks', 'machine_id', '', 'Machine Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"machine_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"MUL\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (83, 'stocks', 'maketo_id', '', 'Maketo Id', 'number', 'int', NULL, 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 7, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"maketo_id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (84, 'stocks', 'bill_no', '', 'Bill No', 'textinput', 'varbinary', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 8, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"bill_no\",\"DATA_TYPE\":\"varbinary\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varbinary(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (85, 'stocks', 'bill_date', '', 'Bill Date', 'datetime-local', 'datetime', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 9, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"bill_date\",\"DATA_TYPE\":\"datetime\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"datetime\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (86, 'stocks', 'notes', '', 'Notes', 'textarea', 'text', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 10, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"notes\",\"DATA_TYPE\":\"text\",\"CHARACTER_MAXIMUM_LENGTH\":65535,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"text\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (87, 'stocks', 'action', '', 'Action', 'number', 'tinyint', NULL, 3, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 11, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"action\",\"DATA_TYPE\":\"tinyint\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":3,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"tinyint(5)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"1. เพิ่ม 2', NULL, '1. เพิ่ม 2 ออก  3  ย้าย');
INSERT INTO `columns` VALUES (88, 'stocks', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 12, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (89, 'stocks', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 13, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (90, 'stocks', 'updaed_at', '', 'Updaed At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 14, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"updaed_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"CO', NULL, '');
INSERT INTO `columns` VALUES (91, 'stocks', 'created_at', '', 'Created At', 'datetime-local', 'datetime', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 15, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"stocks\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"datetime\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"datetime\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (92, 'maketos', 'id', '', 'Id', 'number', 'int', 'required', 10, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 0, '{\"IS_NULLABLE\":\"NO\",\"COLUMN_DEFAULT\":null,\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"id\",\"DATA_TYPE\":\"int\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":10,\"NUMERIC_SCALE\":0,\"COLUMN_TYPE\":\"int(10) unsigned\",\"COLUMN_KEY\":\"PRI\",\"COLUMN_COMMENT\":\" \"}', NULL, ' ');
INSERT INTO `columns` VALUES (93, 'maketos', 'name', '', 'Name', 'textinput', 'varchar', NULL, 100, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 1, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"name\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":100,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(100)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"}', NULL, '');
INSERT INTO `columns` VALUES (94, 'maketos', 'name_en', '', 'Name En', 'textinput', 'varchar', NULL, 100, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 2, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"name_en\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":100,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(100)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"\"', NULL, '');
INSERT INTO `columns` VALUES (95, 'maketos', 'created_at', '', 'Created At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 3, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"created_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\"', NULL, '');
INSERT INTO `columns` VALUES (96, 'maketos', 'updated_at', '', 'Updated At', 'datetime-local', 'timestamp', NULL, 0, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 4, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"current_timestamp()\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"updated_at\",\"DATA_TYPE\":\"timestamp\",\"CHARACTER_MAXIMUM_LENGTH\":null,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"timestamp\",\"COLUMN_KEY\":\"\",\"', NULL, '');
INSERT INTO `columns` VALUES (97, 'maketos', 'created_by', '', 'Created By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 5, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"created_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');
INSERT INTO `columns` VALUES (98, 'maketos', 'updated_by', '', 'Updated By', 'textinput', 'varchar', NULL, 30, 0, 0, 1, NULL, NULL, NULL, 1, 1, '{\"search\":\"\", \"regex\":\"\" }', 6, '{\"IS_NULLABLE\":\"YES\",\"COLUMN_DEFAULT\":\"NULL\",\"TABLE_NAME\":\"maketos\",\"COLUMN_NAME\":\"updated_by\",\"DATA_TYPE\":\"varchar\",\"CHARACTER_MAXIMUM_LENGTH\":30,\"NUMERIC_PRECISION\":null,\"NUMERIC_SCALE\":null,\"COLUMN_TYPE\":\"varchar(30)\",\"COLUMN_KEY\":\"\",\"COLUMN_COMMENT\":\"', NULL, '');

-- ----------------------------
-- Table structure for dbinfos
-- ----------------------------
DROP TABLE IF EXISTS `dbinfos`;
CREATE TABLE `dbinfos`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dbinfos
-- ----------------------------
INSERT INTO `dbinfos` VALUES (1, 'colors', 'Color สี', 'Color');
INSERT INTO `dbinfos` VALUES (2, 'sizes', 'Size ขนาด', 'Size');
INSERT INTO `dbinfos` VALUES (3, 'units', 'Unit หน่วย', 'Unit');
INSERT INTO `dbinfos` VALUES (4, 'maketos', 'Make to  ผลิดให้ ', 'Make to');
INSERT INTO `dbinfos` VALUES (5, 'stocks', 'Stock ', 'Stock');
INSERT INTO `dbinfos` VALUES (6, 'warehouses', 'Warehouse โกดัง', 'Warehouse');
INSERT INTO `dbinfos` VALUES (7, 'categories', 'Category หมวดสินค้า', 'Category');
INSERT INTO `dbinfos` VALUES (8, 'product', 'Product สินค้า', 'Product');
INSERT INTO `dbinfos` VALUES (9, 'timeshifts', 'Time shift กะ', 'Time shift');
INSERT INTO `dbinfos` VALUES (10, 'machines', 'Machine เครื่องจักร', 'Machine');
INSERT INTO `dbinfos` VALUES (11, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for machines
-- ----------------------------
DROP TABLE IF EXISTS `machines`;
CREATE TABLE `machines`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of machines
-- ----------------------------
INSERT INTO `machines` VALUES (1, '41', '#41', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `machines` VALUES (2, '42', '#42', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `machines` VALUES (3, '43', '#43', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `machines` VALUES (4, '44', '#44', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');

-- ----------------------------
-- Table structure for maketos
-- ----------------------------
DROP TABLE IF EXISTS `maketos`;
CREATE TABLE `maketos`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT ' ',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maketos
-- ----------------------------
INSERT INTO `maketos` VALUES (1, 'ภายในประเทศ', 'Domestic', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');
INSERT INTO `maketos` VALUES (2, 'พม่า', 'Myanmar', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');
INSERT INTO `maketos` VALUES (3, 'มาเลเซีย', 'Malaysia', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'TOP  LEFT RIGHT BOTTOM',
  `group` tinyint(4) NULL DEFAULT NULL COMMENT 'group of เมนู',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เมนูที่มี tables',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ซื้อ Menu',
  `permalink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'permalink',
  `component` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'icon class',
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT 1 COMMENT 'status 1 0 ',
  `parent_id` int(10) UNSIGNED NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(10) UNSIGNED NULL DEFAULT 0 COMMENT 'การเลียง',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `crated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 'LEFTSIDEBAR', 1, '', 'Dashboard', 'dashboard', 'Template', 'dashboard', 'material-icons text-primary', 0, 0, 'เก็บรายการ payments ต่าง ๆ ', 0, '2017-11-15 21:51:27', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (2, 'LEFTSIDEBAR', 1, NULL, 'Products', 'products', 'Paymentslog', 'event_seat', 'material-icons text-danger', 1, 0, NULL, 1, '2017-11-15 21:51:27', '2018-02-11 15:05:19', 'system', 'system');
INSERT INTO `menus` VALUES (3, 'LEFTSIDEBAR', 1, NULL, 'Stocks', 'stocks', 'Paymentslog', 'thumb_up', 'material-icons text-info', 1, 0, NULL, 2, '2017-11-15 21:59:59', '2018-02-11 15:05:20', 'system', 'system');
INSERT INTO `menus` VALUES (4, 'LEFTSIDEBAR', 1, NULL, 'Leads', 'leads', 'Template', 'receipt', 'material-icons text-default', 0, 0, NULL, 3, '2017-11-15 22:00:05', '2018-02-11 15:22:42', 'system', 'system');
INSERT INTO `menus` VALUES (5, 'LEFTSIDEBAR', 1, NULL, 'Import Leads', 'import_leads', 'Template', 'backup', 'material-icons text-primary', 0, 0, NULL, 4, '2017-11-15 22:00:16', '2018-02-11 15:22:42', 'system', 'system');
INSERT INTO `menus` VALUES (6, 'LEFTSIDEBAR', 1, NULL, 'Quotations', 'qutations', 'Template', 'receipt', 'material-icons text-danger', 0, 0, NULL, 5, '2017-11-15 22:00:37', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (7, 'LEFTSIDEBAR', 1, NULL, 'Invoices', '', 'Template', 'web', 'material-icons text-info', 0, 0, NULL, 6, '2017-11-15 22:00:43', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (8, 'LEFTSIDEBAR', 1, 'invoices', 'Invoices', 'invoices', 'Paymentslog', 'web', 'material-icons text-default', 0, 7, NULL, 7, '2017-11-15 22:00:54', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (9, 'LEFTSIDEBAR', 1, 'paymentlogs', 'Payment Log', 'paymentlogs', 'Paymentslog', 'archive', 'material-icons text-primary', 0, 7, NULL, 8, '2017-11-15 22:00:59', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (10, 'LEFTSIDEBAR', 1, NULL, 'Sales Teams', 'sales_team', 'Template', 'groups', 'material-icons text-danger', 0, 0, NULL, 9, '2017-11-15 22:01:08', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (11, 'LEFTSIDEBAR', 1, NULL, 'Logged Calls', 'logged_calls', 'Template', 'phone', 'material-icons text-info', 0, 0, NULL, 10, '2017-11-15 22:01:14', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (12, 'LEFTSIDEBAR', 1, NULL, 'Sales Order', 'sale_order', 'Template', 'attach_money', 'material-icons text-default', 0, 0, NULL, 11, '2017-11-15 22:01:19', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (13, 'LEFTSIDEBAR', 1, NULL, 'Products', NULL, 'Template', 'shopping_basket', 'material-icons text-primary', 0, 0, NULL, 12, '2017-11-15 22:01:22', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (14, 'LEFTSIDEBAR', 1, NULL, 'Products', 'products', 'Template', 'layer', 'material-icons text-danger', 0, 13, NULL, 13, '2017-11-15 22:01:34', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (15, 'LEFTSIDEBAR', 1, NULL, 'Category', 'category', 'Template', 'gamepad', 'material-icons text-info', 0, 13, NULL, 14, '2017-11-15 22:01:37', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (16, 'LEFTSIDEBAR', 1, NULL, 'Calendar', 'calendar', 'Template', 'event_note', 'material-icons text-default', 0, 0, NULL, 15, '2017-11-15 22:01:40', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (17, 'LEFTSIDEBAR', 1, NULL, 'Companines', '', 'Template', 'flag', 'material-icons text-primary', 0, 0, NULL, 16, '2017-11-15 22:01:46', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (18, 'LEFTSIDEBAR', 1, NULL, 'Company', 'company', 'Template', 'flag', 'material-icons text-danger', 0, 17, NULL, 17, '2017-11-15 22:01:55', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (19, 'LEFTSIDEBAR', 1, NULL, 'Agent', 'agent', 'Template', 'person', 'material-icons text-info', 0, 17, NULL, 18, '2017-11-15 22:01:58', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (20, 'LEFTSIDEBAR', 1, NULL, 'Meetings', 'meetings', 'Template', 'radio', 'material-icons text-default', 0, 0, NULL, 19, '2017-11-15 22:02:01', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (21, 'LEFTSIDEBAR', 1, NULL, 'Tasks', 'tasks', 'Template', 'event_task', 'material-icons text-primary', 0, 0, NULL, 20, '2017-11-15 22:02:04', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (22, 'LEFTSIDEBAR', 2, NULL, 'Configuration', '', 'Template', 'dashboard', 'material-icons text-primary', 0, 0, NULL, 21, '2017-11-15 22:02:22', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (23, 'LEFTSIDEBAR', 2, NULL, 'Staff', 'staff', 'Contact', 'people_outline', 'material-icons text-danger', 0, 0, NULL, 22, '2017-11-15 22:02:25', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (24, 'LEFTSIDEBAR', 2, NULL, 'Options', 'options', 'Template', 'dashboard', 'material-icons text-info', 0, 0, NULL, 23, '2017-11-15 22:02:28', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (25, 'LEFTSIDEBAR', 2, NULL, 'Email templates', 'email_template', 'Template', 'email', 'material-icons text-default', 0, 0, NULL, 24, '2017-11-15 22:02:39', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (26, 'LEFTSIDEBAR', 2, NULL, 'Quotations Temlate', 'quotations_template', 'Template', 'image', 'material-icons text-primary', 0, 0, NULL, 25, '2017-11-15 22:02:48', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (27, 'LEFTSIDEBAR', 2, NULL, 'Setting', 'setting', 'Setting', 'settings', 'material-icons text-danger', 0, 0, NULL, 26, '2017-11-15 22:02:51', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (28, NULL, 3, NULL, 'etc', 'etc', 'Template', 'dashboard', 'material-icons text-info', 0, 0, NULL, 27, '2017-11-15 22:06:59', '2018-02-11 15:03:25', 'system', 'system');
INSERT INTO `menus` VALUES (29, NULL, 3, NULL, 'profiles', 'profiles', 'Template', 'dashboard', 'material-icons text-primary', 0, 0, NULL, 28, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (30, 'LEFTSIDEBAR', 2, 'users', 'Users', 'users', 'Paymentslog', 'account_circle', 'material-icons text-danger', 1, 0, NULL, 99, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (31, 'LEFTSIDEBAR', 2, 'books', 'Book', 'books', 'Paymentslog', 'book', 'material-icons text-info', 0, 0, NULL, 0, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (32, 'LEFTSIDEBAR', 2, 'stmas', 'Stmas', 'stmas', 'Paymentslog', 'book', 'material-icons text-default', 0, 0, NULL, 0, '2017-11-15 22:07:02', '2018-02-11 15:31:38', 'system', 'system');
INSERT INTO `menus` VALUES (33, 'LEFTSIDEBAR', 2, 'sizes', 'Sizes', 'sizes', 'Paymentslog', 'photo_size_select_large\r\n', 'material-icons text-primary', 1, 0, NULL, 2, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (34, 'LEFTSIDEBAR', 2, 'colors', 'Colors', 'colors', 'Color', 'location_on', 'material-icons text-danger', 1, 0, NULL, 2, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (35, 'LEFTSIDEBAR', 2, 'units', 'Units', 'units', 'Paymentslog', 'swap_calls\r\n', 'material-icons text-info', 1, 0, NULL, 3, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (36, 'LEFTSIDEBAR', 2, 'maketos', 'Maketo', 'maketos', 'Paymentslog', 'extension\r\n', 'material-icons text-default', 1, 0, NULL, 5, '2017-11-15 22:07:02', '2018-02-11 17:00:26', 'system', 'system');
INSERT INTO `menus` VALUES (37, 'LEFTSIDEBAR', 2, 'machines', 'Machine', 'machines', 'Paymentslog', 'build\r\n', 'material-icons text-primary', 1, 0, NULL, 4, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (38, 'LEFTSIDEBAR', 2, 'warehouses', 'Ware House', 'warehouses', 'Paymentslog', 'store\r\n', 'material-icons text-danger', 1, 0, NULL, 1, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (39, 'LEFTSIDEBAR', 2, 'categories', 'Category', 'categories', 'Paymentslog', 'event_note', 'material-icons text-info', 1, 0, NULL, 0, '2017-11-15 22:07:02', '2018-02-11 17:04:21', 'system', 'system');
INSERT INTO `menus` VALUES (40, 'LEFTSIDEBAR', 2, 'timeshifts', 'Time Shifts', 'timeshifts', 'Paymentslog', 'alarm', 'material-icons text-default', 1, 0, NULL, 5, '2017-11-15 22:07:02', '2018-02-11 16:37:26', 'system', 'system');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shortname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Name,color,size,unit',
  `name_en` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `percen` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `size_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT 'ขนาด',
  `unit_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT 'หน่วย m = เมตร  y = หลา',
  `color_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT 'สี',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `unit_id`(`unit_id`) USING BTREE,
  INDEX `color_id`(`color_id`) USING BTREE,
  INDEX `size_id`(`size_id`) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'กรองแสง', 'F35/B/1x100/M', 'F35/B/1x100/M', NULL, '35%', 1, 1, 1, '2018-01-22 23:08:37', '2018-01-22 23:18:43', 'system', 'system');
INSERT INTO `products` VALUES (2, 'กรองแสง', 'F35/B/1x100/M', 'F35/B/1x100/M', NULL, '35%', 1, 1, 1, '2018-01-22 23:08:37', '2018-02-05 23:13:21', 'system', 'system');

-- ----------------------------
-- Table structure for sizes
-- ----------------------------
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shorta` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shortb` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sizes
-- ----------------------------
INSERT INTO `sizes` VALUES (1, '1x100', '1x100', '1', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:51', 'system', 'system');
INSERT INTO `sizes` VALUES (2, '2x100', '2x100', '2', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:53', 'system', 'system');
INSERT INTO `sizes` VALUES (3, '3x100', '3x100', '3', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:54', 'system', 'system');

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `qty` int(10) NULL DEFAULT NULL,
  `weight` double(10, 2) NULL DEFAULT NULL,
  `warehouse_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `timeshift_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `machine_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `maketo_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `bill_no` varbinary(30) NULL DEFAULT NULL,
  `bill_date` datetime(0) NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `action` tinyint(5) NULL DEFAULT NULL COMMENT '1. เพิ่ม 2 ออก  3  ย้าย',
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updaed_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  INDEX `timeshift_id`(`timeshift_id`) USING BTREE,
  INDEX `stocks_ibfk_2`(`machine_id`) USING BTREE,
  INDEX `warehouse_id`(`warehouse_id`) USING BTREE,
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`machine_id`) REFERENCES `machines` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_3` FOREIGN KEY (`timeshift_id`) REFERENCES `timeshifts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_4` FOREIGN KEY (`machine_id`) REFERENCES `maketos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_5` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for timeshifts
-- ----------------------------
DROP TABLE IF EXISTS `timeshifts`;
CREATE TABLE `timeshifts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อกะ',
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of timeshifts
-- ----------------------------
INSERT INTO `timeshifts` VALUES (1, 'กะ A', '06.00-18.00', 'A shift', '2018-01-22 22:53:26', '2018-01-22 22:53:45', 'system', 'system');
INSERT INTO `timeshifts` VALUES (2, 'กะ B', '18.00-06.00', 'B shift', '2018-01-22 22:53:26', '2018-01-22 22:53:45', 'system', 'system');

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `units` VALUES (1, 'เมตร', 'M', 'meter\r\n', '2018-01-22 23:01:02', '2018-01-22 23:14:51', 'system', 'system');
INSERT INTO `units` VALUES (2, 'หลา', 'Y', '\r\nyard', '2018-01-22 23:01:02', '2018-01-22 23:14:54', 'system', 'system');

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE `warehouses`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อโกดัง',
  `name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `warehouses` VALUES (1, 'โรงทอ', 'โรงทอ', 'system', 'system', '2018-02-10 23:46:31', '2018-02-10 23:46:31');
INSERT INTO `warehouses` VALUES (2, 'โรง 1', 'โรง 1', 'system', 'system', '2018-02-10 23:46:31', '2018-02-10 23:46:31');
INSERT INTO `warehouses` VALUES (3, 'โรง 2', 'โรง 2', 'system', 'system', '2018-02-10 23:46:31', '2018-02-10 23:46:31');
INSERT INTO `warehouses` VALUES (4, 'โรง 3', 'โรง 3', 'system', 'system', '2018-02-10 23:46:31', '2018-02-10 23:46:31');

SET FOREIGN_KEY_CHECKS = 1;
