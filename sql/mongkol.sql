/*
 Navicat Premium Data Transfer

 Source Server         : localMariadb3306
 Source Server Type    : MariaDB
 Source Server Version : 100208
 Source Host           : localhost:3306
 Source Schema         : mongkol

 Target Server Type    : MariaDB
 Target Server Version : 100208
 File Encoding         : 65001

 Date: 07/02/2018 16:37:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS
= 0;

-- ----------------------------
-- Table structure for colors
-- ----------------------------
CREATE TABLE `colors`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `RGB` varchar
(20) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of colors
-- ----------------------------
INSERT INTO `
colors`
VALUES
  (1, 'ดำ', 'B', '000000', 'BLACK', '2018-01-22 22:51:35', '2018-01-22 23:14:13', 'system', 'system');
INSERT INTO `
colors`
VALUES
  (2, 'เขียว', 'G', '80FF00', 'GREEn', '2018-01-22 22:51:35', '2018-01-22 23:14:14', 'system', 'system');
INSERT INTO `
colors`
VALUES
  (3, 'ฟ้า', 'BL', '00FFFF', 'BlUE', '2018-01-22 22:51:35', '2018-01-22 23:13:50', 'system', 'system');
INSERT INTO `
colors`
VALUES
  (4, 'ขาว', 'W', 'FFFFFF', 'WHITE', '2018-01-22 22:51:35', '2018-01-22 23:13:54', 'system', 'system');
INSERT INTO `
colors`
VALUES
  (5, 'ดำ/เขียว', 'BG', '000000/80FF00', 'B/G', '2018-01-22 22:51:35', '2018-01-22 23:13:57', 'system', 'system');

-- ----------------------------
-- Table structure for machines
-- ----------------------------
CREATE TABLE `machines`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of machines
-- ----------------------------
INSERT INTO `
machines`
VALUES
  (1, '41', '#41', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `
machines`
VALUES
  (2, '42', '#42', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `
machines`
VALUES
  (3, '43', '#43', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');
INSERT INTO `
machines`
VALUES
  (4, '44', '#44', '2018-01-22 22:54:17', '2018-01-22 22:54:33', 'system', 'system');

-- ----------------------------
-- Table structure for maketos
-- ----------------------------
CREATE TABLE `maketos`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT ' ',
  `name` varchar
(100) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(100) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maketos
-- ----------------------------
INSERT INTO `
maketos`
VALUES
  (1, 'ภายในประเทศ', 'Domestic', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');
INSERT INTO `
maketos`
VALUES
  (2, 'พม่า', 'Myanmar', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');
INSERT INTO `
maketos`
VALUES
  (3, 'มาเลเซีย', 'Malaysia', '2018-01-22 22:55:28', '2018-01-22 22:57:10', 'system', 'system');

-- ----------------------------
-- Table structure for products
-- ----------------------------
CREATE TABLE `products`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(150) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shortname` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Name,color,size,unit',
  `name_en` varchar
(150) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `percen` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `size_id` int
(10) UNSIGNED NULL DEFAULT NULL COMMENT 'ขนาด',
  `unit_id` int
(10) UNSIGNED NULL DEFAULT NULL COMMENT 'หน่วย m = เมตร  y = หลา',
  `color_id` int
(10) UNSIGNED NULL DEFAULT NULL COMMENT 'สี',
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE,
  INDEX `unit_id`
(`unit_id`) USING BTREE,
  INDEX `color_id`
(`color_id`) USING BTREE,
  INDEX `size_id`
(`size_id`) USING BTREE,
  CONSTRAINT `products_ibfk_1` FOREIGN KEY
(`size_id`) REFERENCES `sizes`
(`id`) ON
DELETE
SET NULL
ON
UPDATE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY
(`unit_id`) REFERENCES `units`
(`id`) ON
DELETE
SET NULL
ON
UPDATE SET NULL,
  CONSTRAINT `products_ibfk_3` FOREIGN KEY
(`color_id`) REFERENCES `colors`
(`id`) ON
DELETE
SET NULL
ON
UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `
products`
VALUES
  (1, 'กรองแสง', 'F35/B/1x100/M', 'F35/B/1x100/M', NULL, '35%', 1, 1, 1, '2018-01-22 23:08:37', '2018-01-22 23:18:43', 'system', 'system');
INSERT INTO `
products`
VALUES
  (2, 'กรองแสง', 'F35/B/1x100/M', 'F35/B/1x100/M', NULL, '35%', 1, 1, 1, '2018-01-22 23:08:37', '2018-02-05 23:13:21', 'system', 'system');

-- ----------------------------
-- Table structure for sizes
-- ----------------------------
CREATE TABLE `sizes`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shorta` varchar
(5) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shortb` varchar
(5) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sizes
-- ----------------------------
INSERT INTO `
sizes`
VALUES
  (1, '1x100', '1x100', '1', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:51', 'system', 'system');
INSERT INTO `
sizes`
VALUES
  (2, '2x100', '2x100', '2', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:53', 'system', 'system');
INSERT INTO `
sizes`
VALUES
  (3, '3x100', '3x100', '3', '100', '2018-01-22 22:59:07', '2018-01-22 23:16:54', 'system', 'system');

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
CREATE TABLE `stocks`
(
  `id` bigint
(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int
(10) UNSIGNED NULL DEFAULT NULL,
  `qty` int
(10) NULL DEFAULT NULL,
  `weight` double
(10, 2) NULL DEFAULT NULL,
  `warehouse_id` int
(10) UNSIGNED NULL DEFAULT NULL,
  `timeshift_id` int
(10) UNSIGNED NULL DEFAULT NULL,
  `machine_id` int
(10) UNSIGNED NULL DEFAULT NULL,
  `maketo_id` int
(10) UNSIGNED NULL DEFAULT NULL,
  `bill_no` varbinary
(30) NULL DEFAULT NULL,
  `bill_date` datetime
(0) NULL DEFAULT NULL,
  `notes` text CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `action` tinyint
(5) NULL DEFAULT NULL COMMENT '1. เพิ่ม 2 ออก  3  ย้าย',
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updaed_at` timestamp
(0) NULL DEFAULT NULL,
  `created_at` datetime
(0) NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE,
  INDEX `product_id`
(`product_id`) USING BTREE,
  INDEX `timeshift_id`
(`timeshift_id`) USING BTREE,
  INDEX `stocks_ibfk_2`
(`machine_id`) USING BTREE,
  INDEX `warehouse_id`
(`warehouse_id`) USING BTREE,
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY
(`product_id`) REFERENCES `products`
(`id`) ON
DELETE RESTRICT ON
UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_2` FOREIGN KEY
(`machine_id`) REFERENCES `machines`
(`id`) ON
DELETE RESTRICT ON
UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_3` FOREIGN KEY
(`timeshift_id`) REFERENCES `timeshifts`
(`id`) ON
DELETE RESTRICT ON
UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_4` FOREIGN KEY
(`machine_id`) REFERENCES `maketos`
(`id`) ON
DELETE RESTRICT ON
UPDATE RESTRICT,
  CONSTRAINT `stocks_ibfk_5` FOREIGN KEY
(`warehouse_id`) REFERENCES `warehouses`
(`id`) ON
DELETE RESTRICT ON
UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for timeshifts
-- ----------------------------
CREATE TABLE `timeshifts`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อกะ',
  `time` varchar
(100) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(50) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of timeshifts
-- ----------------------------
INSERT INTO `
timeshifts`
VALUES
  (1, 'กะ A', '06.00-18.00', 'A shift', '2018-01-22 22:53:26', '2018-01-22 22:53:45', 'system', 'system');
INSERT INTO `
timeshifts`
VALUES
  (2, 'กะ B', '18.00-06.00', 'B shift', '2018-01-22 22:53:26', '2018-01-22 22:53:45', 'system', 'system');

-- ----------------------------
-- Table structure for units
-- ----------------------------
CREATE TABLE `units`
(
  `id` int
(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `shortid` varchar
(5) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `name_en` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------
INSERT INTO `
units`
VALUES
  (1, 'เมตร', 'M', 'meter\r\n', '2018-01-22 23:01:02', '2018-01-22 23:14:51', 'system', 'system');
INSERT INTO `
units`
VALUES
  (2, 'หลา', 'Y', '\r\nyard', '2018-01-22 23:01:02', '2018-01-22 23:14:54', 'system', 'system');

-- ----------------------------
-- Table structure for warehouses
-- ----------------------------
CREATE TABLE `warehouses`
(
  `id` int
(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar
(100) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อโกดัง',
  `name_en` varchar
(100) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `created_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_by` varchar
(30) CHARACTER
SET utf8
COLLATE utf8_bin NULL DEFAULT NULL,
  `updated_at` timestamp
(0) NULL DEFAULT NULL,
  `created_at` timestamp
(0) NULL DEFAULT NULL,
  PRIMARY KEY
(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER
SET = utf8
COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehouses
-- ----------------------------
INSERT INTO `
warehouses`
VALUES
  (1, 'โกดัง 1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `
warehouses`
VALUES
  (2, 'โกดัง 2', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS
= 1;
