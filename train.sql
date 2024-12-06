/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : train

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 02/06/2024 16:02:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 成人票
-- ----------------------------
DROP TABLE IF EXISTS `成人票`;
CREATE TABLE `成人票`  (
  `票编号` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `路线编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `账号` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `身份证号` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `火车编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `价格` smallint NULL DEFAULT NULL,
  `座位` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `发车时间` datetime(0) NULL DEFAULT NULL,
  `到达时间` datetime(0) NULL DEFAULT NULL,
  `车次` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `valid` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`票编号`) USING BTREE,
  INDEX `FK_Relationship_4`(`火车编号`) USING BTREE,
  INDEX `FK_Relationship_6`(`路线编号`) USING BTREE,
  INDEX `FK_Relationship3`(`身份证号`) USING BTREE,
  INDEX `FK_Realtionship4`(`账号`) USING BTREE,
  CONSTRAINT `FK_Realtionship4` FOREIGN KEY (`账号`) REFERENCES `用户` (`账号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Relationship3` FOREIGN KEY (`身份证号`) REFERENCES `用户` (`身份证号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`火车编号`) REFERENCES `火车` (`火车编号`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`路线编号`) REFERENCES `路线` (`路线编号`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 成人票
-- ----------------------------
INSERT INTO `成人票` VALUES ('0729', '136', NULL, NULL, '12', 547, '58B', '硬卧', '2023-10-19 14:00:00', '2023-10-20 14:00:00', 'G896', '0');
INSERT INTO `成人票` VALUES ('0920', '137', NULL, NULL, '26', 701, '38C', '软卧', '2023-03-02 14:00:00', '2023-03-03 14:00:00', 'G399', '0');
INSERT INTO `成人票` VALUES ('0939', '148', NULL, NULL, '16', 903, '54D', '软卧', '2023-01-11 14:00:00', '2023-01-12 14:00:00', 'G180', '0');
INSERT INTO `成人票` VALUES ('0958', '137', NULL, NULL, '25', 231, '95D', '一等座', '2023-10-04 14:00:00', '2023-10-05 14:00:00', 'G808', '0');
INSERT INTO `成人票` VALUES ('1127', '137', NULL, NULL, '7', 601, '26E', '硬座', '2023-08-29 14:00:00', '2023-08-30 14:00:00', 'G759', '0');
INSERT INTO `成人票` VALUES ('2552', '145', NULL, NULL, '17', 750, '16A', '一等座', '2023-05-03 14:00:00', '2023-05-04 14:00:00', 'G873', '0');
INSERT INTO `成人票` VALUES ('2659', '132', NULL, NULL, '27', 396, '39E', '商务座', '2023-10-08 14:00:00', '2023-10-09 14:00:00', 'G666', '0');
INSERT INTO `成人票` VALUES ('2665', '137', NULL, NULL, '17', 947, '86B', '硬卧', '2023-02-19 14:00:00', '2023-02-20 14:00:00', 'G798', '0');
INSERT INTO `成人票` VALUES ('2716', '149', NULL, NULL, '7', 721, '54F', '软卧', '2023-05-03 14:00:00', '2023-05-04 14:00:00', 'G186', '0');
INSERT INTO `成人票` VALUES ('2816', '143', NULL, NULL, '7', 452, '39A', '硬卧', '2023-05-22 14:00:00', '2023-05-23 14:00:00', 'G378', '0');
INSERT INTO `成人票` VALUES ('3038', '145', NULL, NULL, '22', 470, '64A', '一等座', '2023-05-31 14:00:00', '2023-06-01 14:00:00', 'G148', '0');
INSERT INTO `成人票` VALUES ('3284', '144', NULL, NULL, '26', 884, '45D', '硬卧', '2023-04-03 14:00:00', '2023-04-04 14:00:00', 'G963', '0');
INSERT INTO `成人票` VALUES ('3320', '144', NULL, NULL, '29', 591, '97D', '软卧', '2023-08-30 14:00:00', '2023-08-31 14:00:00', 'G743', '0');
INSERT INTO `成人票` VALUES ('3598', '142', NULL, NULL, '5', 338, '94C', '软卧', '2023-04-28 14:00:00', '2023-04-29 14:00:00', 'G379', '0');
INSERT INTO `成人票` VALUES ('3644', '142', NULL, NULL, '5', 104, '88F', '一等座', '2023-03-04 14:00:00', '2023-03-05 14:00:00', 'G383', '0');
INSERT INTO `成人票` VALUES ('3671', '124', NULL, NULL, '16', 932, '21B', '硬座', '2023-09-03 14:00:00', '2023-09-04 14:00:00', 'G115', '0');
INSERT INTO `成人票` VALUES ('4192', '133', NULL, NULL, '8', 809, '40A', '二等座', '2023-03-08 14:00:00', '2023-03-09 14:00:00', 'G752', '0');
INSERT INTO `成人票` VALUES ('5460', '142', NULL, NULL, '21', 905, '79D', '软卧', '2023-08-11 14:00:00', '2023-08-12 14:00:00', 'G907', '0');
INSERT INTO `成人票` VALUES ('5700', '140', NULL, NULL, '13', 440, '54B', '硬卧', '2023-02-21 14:00:00', '2023-02-22 14:00:00', 'G916', '0');
INSERT INTO `成人票` VALUES ('5825', '137', NULL, NULL, '24', 756, '52A', '硬座', '2023-08-21 14:00:00', '2023-08-22 14:00:00', 'G745', '0');
INSERT INTO `成人票` VALUES ('6133', '132', NULL, NULL, '7', 207, '89A', '一等座', '2023-05-18 14:00:00', '2023-05-19 14:00:00', 'G286', '0');
INSERT INTO `成人票` VALUES ('6178', '143', NULL, NULL, '27', 733, '3E', '一等座', '2023-08-19 14:00:00', '2023-08-20 14:00:00', 'G318', '0');
INSERT INTO `成人票` VALUES ('6205', '140', NULL, NULL, '27', 779, '78B', '商务座', '2023-04-13 14:00:00', '2023-04-14 14:00:00', 'G708', '0');
INSERT INTO `成人票` VALUES ('6359', '125', NULL, NULL, '12', 482, '7C', '软卧', '2023-07-19 14:00:00', '2023-07-20 14:00:00', 'G931', '0');
INSERT INTO `成人票` VALUES ('6393', '138', NULL, NULL, '18', 855, '92F', '软卧', '2023-04-09 14:00:00', '2023-04-10 14:00:00', 'G737', '0');
INSERT INTO `成人票` VALUES ('6534', '139', NULL, NULL, '9', 306, '12A', '商务座', '2023-06-01 14:00:00', '2023-06-02 14:00:00', 'G234', '0');
INSERT INTO `成人票` VALUES ('6592', '144', NULL, NULL, '20', 572, '72A', '软卧', '2023-06-03 14:00:00', '2023-06-04 14:00:00', 'G686', '0');
INSERT INTO `成人票` VALUES ('6662', '135', NULL, NULL, '18', 314, '82A', '硬座', '2023-06-28 14:00:00', '2023-06-29 14:00:00', 'G986', '0');
INSERT INTO `成人票` VALUES ('6825', '142', NULL, NULL, '14', 348, '62F', '二等座', '2023-01-24 14:00:00', '2023-01-25 14:00:00', 'G373', '0');
INSERT INTO `成人票` VALUES ('6836', '125', NULL, NULL, '29', 363, '94E', '硬卧', '2023-07-08 14:00:00', '2023-07-09 14:00:00', 'G184', '0');
INSERT INTO `成人票` VALUES ('7069', '130', NULL, NULL, '16', 661, '75F', '硬座', '2023-05-10 14:00:00', '2023-05-11 14:00:00', 'G620', '0');
INSERT INTO `成人票` VALUES ('7890', '125', NULL, NULL, '28', 364, '31A', '一等座', '2023-02-09 14:00:00', '2023-02-10 14:00:00', 'G283', '0');
INSERT INTO `成人票` VALUES ('7997', '124', NULL, NULL, '23', 987, '71C', '硬卧', '2023-09-29 14:00:00', '2023-09-30 14:00:00', 'G484', '0');
INSERT INTO `成人票` VALUES ('8026', '128', NULL, NULL, '9', 690, '24E', '商务座', '2023-07-22 14:00:00', '2023-07-23 14:00:00', 'G933', '0');
INSERT INTO `成人票` VALUES ('8619', '147', NULL, NULL, '7', 622, '10C', '硬座', '2023-04-01 14:00:00', '2023-04-02 14:00:00', 'G291', '0');
INSERT INTO `成人票` VALUES ('9660', '132', NULL, NULL, '24', 392, '31C', '二等座', '2023-01-25 14:00:00', '2023-01-26 14:00:00', 'G330', '0');
INSERT INTO `成人票` VALUES ('T12347', '125', NULL, NULL, '17', 600, '2F商务座', '商务座', '2024-10-03 10:30:00', '2024-10-03 14:30:00', 'G33', '0');
INSERT INTO `成人票` VALUES ('T12358', '148', NULL, NULL, '29', 380, '9D二等座', '二等座', '2024-10-15 09:00:00', '2024-10-15 13:00:00', 'D44', '0');
INSERT INTO `成人票` VALUES ('T12359', '149', NULL, NULL, '13', 420, '3E一等座', '一等座', '2024-10-16 12:30:00', '2024-10-16 16:30:00', 'G55', '0');
INSERT INTO `成人票` VALUES ('T12364', '129', NULL, NULL, '4', 400, '8A一等座', '一等座', '2024-10-21 15:30:00', '2024-10-21 20:30:00', 'D11', '0');
INSERT INTO `成人票` VALUES ('T12365', '130', NULL, NULL, '21', 370, '3D二等座', '二等座', '2024-10-22 09:00:00', '2024-10-22 13:30:00', 'G22', '0');
INSERT INTO `成人票` VALUES ('T12368', '124', NULL, NULL, '7', 510, '4F商务座', '商务座', '2024-10-25 09:30:00', '2024-10-25 14:30:00', 'G66', '0');
INSERT INTO `成人票` VALUES ('T12369', '124', NULL, NULL, '28', 430, '10C一等座', '一等座', '2024-10-26 15:00:00', '2024-10-26 20:00:00', 'D77', '0');
INSERT INTO `成人票` VALUES ('T12376', '145', NULL, NULL, '27', 440, '5A一等座', '一等座', '2024-10-28 12:00:00', '2024-10-28 16:30:00', 'D33', '0');
INSERT INTO `成人票` VALUES ('T12398', '149', NULL, NULL, '19', 470, '3B一等座', '一等座', '2024-11-05 08:00:00', '2024-11-05 13:00:00', 'G88', '0');
INSERT INTO `成人票` VALUES ('T12399', '149', NULL, NULL, '20', 340, '12D二等座', '二等座', '2024-11-06 14:30:00', '2024-11-06 19:30:00', 'D99', '0');

-- ----------------------------
-- Table structure for 火车
-- ----------------------------
DROP TABLE IF EXISTS `火车`;
CREATE TABLE `火车`  (
  `火车编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `火车类型` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `火车状态` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `火车名字` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`火车编号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 火车
-- ----------------------------
INSERT INTO `火车` VALUES ('12', '动车', '正常', 'D122');
INSERT INTO `火车` VALUES ('1234', '高铁', '正常', 'G13');
INSERT INTO `火车` VALUES ('1235', '高铁', '运行', 'G13');
INSERT INTO `火车` VALUES ('125', '高铁', '运行', 'G13');
INSERT INTO `火车` VALUES ('13', '普快', '修复', 'K133');
INSERT INTO `火车` VALUES ('14', '特快', '已恢复', 'T144');
INSERT INTO `火车` VALUES ('16', '快速', '正常', 'Z166');
INSERT INTO `火车` VALUES ('17', '旅游列车', '满员', 'Y177');
INSERT INTO `火车` VALUES ('18', '货运列车', '运行中', 'H188');
INSERT INTO `火车` VALUES ('19', '高铁', '即将发车', 'G199');
INSERT INTO `火车` VALUES ('20', '动车', '即将到达', 'D200');
INSERT INTO `火车` VALUES ('21', '普快', '临时停运', 'K211');
INSERT INTO `火车` VALUES ('22', '特快', '即将恢复', 'T222');
INSERT INTO `火车` VALUES ('23', '城际', '发车前准备', 'C233');
INSERT INTO `火车` VALUES ('24', '高铁', '运行中', 'G244');
INSERT INTO `火车` VALUES ('25', '动车', '途中停靠', 'D255');
INSERT INTO `火车` VALUES ('26', '直达列车', '正常', 'Z266');
INSERT INTO `火车` VALUES ('27', '临客列车', '即将抵达', 'L277');
INSERT INTO `火车` VALUES ('28', '复兴号', '正常', 'F288');
INSERT INTO `火车` VALUES ('29', '和谐号', '正常', 'H299');
INSERT INTO `火车` VALUES ('4', '特快', '正常', 'T44');
INSERT INTO `火车` VALUES ('5', '城际', '正常', 'C55');
INSERT INTO `火车` VALUES ('6', '高铁', '修复', 'G66');
INSERT INTO `火车` VALUES ('7', '动车', '正常', 'D77');
INSERT INTO `火车` VALUES ('78', '高铁', '正常', 'G15');
INSERT INTO `火车` VALUES ('8', '普快', '正常', 'K88');
INSERT INTO `火车` VALUES ('9', '特快', '修复', 'T99');

-- ----------------------------
-- Table structure for 用户
-- ----------------------------
DROP TABLE IF EXISTS `用户`;
CREATE TABLE `用户`  (
  `姓名` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `身份证号` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `账号` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `密码` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `性别` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `电话号` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`身份证号`, `账号`) USING BTREE,
  INDEX `身份证号`(`身份证号`) USING BTREE,
  INDEX `账号`(`账号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 用户
-- ----------------------------
INSERT INTO `用户` VALUES ('a', '1234242', '123456', '123456', '男', '1234567890');
INSERT INTO `用户` VALUES ('c', '12342432', '1234561', '123457', '男', '1234567891');
INSERT INTO `用户` VALUES ('d', '12342443', '1234562', '123458', '男', '1234567892');
INSERT INTO `用户` VALUES ('e', '12342455', '1234563', '123459', '男', '1234567893');
INSERT INTO `用户` VALUES ('g', '12342477', '1234565', '123451', '男', '1234567895');
INSERT INTO `用户` VALUES ('h', '12342485', '1234566', '123452', '男', '1234567896');
INSERT INTO `用户` VALUES ('f', '123426', '1234564', '123450', '男', '1234567894');
INSERT INTO `用户` VALUES ('aa', '123457', 'wrwwq', '12345', '男', '1314');

-- ----------------------------
-- Table structure for 路线
-- ----------------------------
DROP TABLE IF EXISTS `路线`;
CREATE TABLE `路线`  (
  `路线编号` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `起始点` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `终点` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`路线编号`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 路线
-- ----------------------------
INSERT INTO `路线` VALUES ('1', '北京', '上海');
INSERT INTO `路线` VALUES ('100', '赤峰', '呼和浩特');
INSERT INTO `路线` VALUES ('124', '北京', '西安');
INSERT INTO `路线` VALUES ('125', '北京', '上海');
INSERT INTO `路线` VALUES ('128', '上海', '西安');
INSERT INTO `路线` VALUES ('129', '成都', '上海');
INSERT INTO `路线` VALUES ('130', '北京', '广州');
INSERT INTO `路线` VALUES ('132', '杭州', '重庆');
INSERT INTO `路线` VALUES ('133', '天津', '南京');
INSERT INTO `路线` VALUES ('134', '西安', '成都');
INSERT INTO `路线` VALUES ('135', '广州', '深圳');
INSERT INTO `路线` VALUES ('136', '武汉', '北京');
INSERT INTO `路线` VALUES ('137', '重庆', '杭州');
INSERT INTO `路线` VALUES ('138', '南京', '天津');
INSERT INTO `路线` VALUES ('139', '长沙', '沈阳');
INSERT INTO `路线` VALUES ('140', '大连', '昆明');
INSERT INTO `路线` VALUES ('142', '郑州', '哈尔滨');
INSERT INTO `路线` VALUES ('143', '厦门', '兰州');
INSERT INTO `路线` VALUES ('144', '南昌', '石家庄');
INSERT INTO `路线` VALUES ('145', '济南', '太原');
INSERT INTO `路线` VALUES ('146', '合肥', '长春');
INSERT INTO `路线` VALUES ('147', '海口', '乌鲁木齐');
INSERT INTO `路线` VALUES ('148', '呼和浩特', '银川');
INSERT INTO `路线` VALUES ('149', '西宁', '拉萨');
INSERT INTO `路线` VALUES ('15', '成都', '重庆');
INSERT INTO `路线` VALUES ('22', '西安', '兰州');
INSERT INTO `路线` VALUES ('31', '南京', '杭州');
INSERT INTO `路线` VALUES ('47', '哈尔滨', '长春');
INSERT INTO `路线` VALUES ('53', '昆明', '大理');
INSERT INTO `路线` VALUES ('61', '福州', '厦门');
INSERT INTO `路线` VALUES ('7', '广州', '深圳');
INSERT INTO `路线` VALUES ('72', '沈阳', '大连');
INSERT INTO `路线` VALUES ('88', '郑州', '武汉');

-- ----------------------------
-- View structure for piao
-- ----------------------------
DROP VIEW IF EXISTS `piao`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `piao`
 AS select `成人票`.`票编号` AS `票编号`,`成人票`.`火车编号` AS `火车编号`,`成人票`.`价格` 
 AS `价格`,`成人票`.`座位` AS `座位`,`成人票`.`发车时间` AS `发车时间`,`成人票`.`到达时间` AS `到达时间`,`成人票`.`车次` 
 AS `车次` from (`路线` join `成人票` on((`路线`.`路线编号` = `成人票`.`路线编号`))) where ((`成人票`.`valid` = '0') and
  (`路线`.`起始点` = '北京') and (`路线`.`终点` = '西安') and (`成人票`.`价格` < 10000) and (`成人票`.`价格` > 0));

-- ----------------------------
-- Procedure structure for fixinfor
-- ----------------------------
DROP PROCEDURE IF EXISTS `fixinfor`;
delimiter ;;
CREATE PROCEDURE `fixinfor`(IN name VARCHAR(20),
    IN id VARCHAR(20),
    IN zhanghao VARCHAR(20),
    IN sex VARCHAR(20),
    IN phone VARCHAR(20),
    IN password VARCHAR(20))
BEGIN
   
    
    IF name = '' OR password = '' OR phone = '' OR zhanghao = '' OR sex = '' THEN
        
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '输入参数不能为空';
    ELSE

    
           update 用户,成人票 
           set 用户.账号=zhanghao,成人票.账号=zhanghao,用户.性别=sex,用户.电话号=phone,用户.密码=password,用户.姓名=name
           where 用户.账号=成人票.账号 and 用户.身份证号=id;
           
           update 用户 set 性别=sex,电话号=phone,密码=password,姓名=name,账号=zhanghao where 身份证号=id;
    END IF; 
           
    END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table 用户
-- ----------------------------
DROP TRIGGER IF EXISTS `before_insert_user`;
delimiter ;;
CREATE TRIGGER `before_insert_user` BEFORE INSERT ON `用户` FOR EACH ROW BEGIN    
    IF NEW.`性别` <> '男' AND NEW.`性别` <> '女' THEN    
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '性别信息错误';    
    ELSEIF NEW.`性别`='' OR NEW.`姓名`='' OR NEW.`电话号`='' OR NEW.`身份证号`='' OR NEW.`账号`='' THEN  
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = '输入参数不能为空';    
    END IF;  
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
