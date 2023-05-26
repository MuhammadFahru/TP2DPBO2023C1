/*
 Navicat Premium Data Transfer

 Source Server         : Local Mysql (XAMPP)
 Source Server Type    : MySQL
 Source Server Version : 100427 (10.4.27-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_dpbo_tp2

 Target Server Type    : MySQL
 Target Server Version : 100427 (10.4.27-MariaDB)
 File Encoding         : 65001

 Date: 18/06/2023 00:45:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for national_team
-- ----------------------------
DROP TABLE IF EXISTS `national_team`;
CREATE TABLE `national_team`  (
  `national_team_id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `negara` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `julukan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `coach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`national_team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of national_team
-- ----------------------------
INSERT INTO `national_team` VALUES (1, 'images/team/foto1.jpg', 'Indonesia', 'Garuda', 'Shin Tae Yong');
INSERT INTO `national_team` VALUES (2, 'images/team/foto2.jpg', 'Argentina', 'La Abiceleste', 'Scaloni');
INSERT INTO `national_team` VALUES (3, 'images/team/foto3.jpg', 'Brazil', 'Selecao', 'Silva');

-- ----------------------------
-- Table structure for player
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player`  (
  `player_id` int NOT NULL AUTO_INCREMENT,
  `national_team_id` int NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nomor_punggung` int NULL DEFAULT NULL,
  `posisi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`player_id`) USING BTREE,
  INDEX `national_team_id`(`national_team_id` ASC) USING BTREE,
  CONSTRAINT `player_ibfk_1` FOREIGN KEY (`national_team_id`) REFERENCES `national_team` (`national_team_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES (1, 1, 'images/player/player1.jpg', 'Gonzales', 10, 'Striker');
INSERT INTO `player` VALUES (2, 1, 'images/player/player2.jpg', 'Bambang Pamunkas', 20, 'Striker');
INSERT INTO `player` VALUES (3, 2, 'images/player/player3', 'Lionel Messi', 10, 'Forward');
INSERT INTO `player` VALUES (4, 3, 'images/player/player4.jpg', 'Neymar Jr', 10, 'Forward');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Fahru', 'fahru@mail.com', 'fahru123');
INSERT INTO `user` VALUES (2, 'Ozi', 'ozi@mail.com', 'ozi123');

SET FOREIGN_KEY_CHECKS = 1;
