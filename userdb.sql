/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : userdb

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-02-21 10:54:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '2',
  PRIMARY KEY (`id`,`userName`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '张松磊', 'admin', '2');

-- ----------------------------
-- Table structure for admin_analyse
-- ----------------------------
DROP TABLE IF EXISTS `admin_analyse`;
CREATE TABLE `admin_analyse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `analyseTitle` varchar(255) DEFAULT NULL,
  `analyse` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`user`),
  KEY `user` (`user`),
  CONSTRAINT `admin_analyse_ibfk_1` FOREIGN KEY (`user`) REFERENCES `admin` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_analyse
-- ----------------------------
INSERT INTO `admin_analyse` VALUES ('1', '张松磊', '第一季度总结报告', '总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1总结1', '2015-06-01');
INSERT INTO `admin_analyse` VALUES ('2', '张松磊', '第二季度总结报告', '总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2总结2', '2015-06-02');
INSERT INTO `admin_analyse` VALUES ('3', '张松磊', '第三季度总结报告', '总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3总结3', '2015-06-03');
INSERT INTO `admin_analyse` VALUES ('4', '张松磊', '第四季度总结报告', '总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4总结4', '2015-06-03');
INSERT INTO `admin_analyse` VALUES ('5', '张松磊', '第五季度总结报告', '哈哈哈哈哈哈哈哈哈哈', '2015-06-04');
INSERT INTO `admin_analyse` VALUES ('6', '张松磊', '呵呵呵', '啦啦啦', '2017-02-20');

-- ----------------------------
-- Table structure for admin_loan_record
-- ----------------------------
DROP TABLE IF EXISTS `admin_loan_record`;
CREATE TABLE `admin_loan_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `loanDate` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `paperID` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `peopleNum` varchar(255) DEFAULT NULL,
  `userHealth` varchar(255) DEFAULT NULL,
  `household_address` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyLicense` varchar(255) DEFAULT NULL,
  `companyTele` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `guarantor` varchar(255) DEFAULT NULL,
  `guaSex` varchar(255) DEFAULT NULL,
  `guaPaperID` varchar(255) DEFAULT NULL,
  `guaAddress` varchar(255) DEFAULT NULL,
  `guaPostcode` varchar(255) DEFAULT NULL,
  `guaHealth` varchar(255) DEFAULT NULL,
  `guaIncome` varchar(255) DEFAULT NULL,
  `guaDeposit` varchar(255) DEFAULT NULL,
  `guaCompany` varchar(255) DEFAULT NULL,
  `guaCompTel` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `loanLife` varchar(255) DEFAULT NULL,
  `purpers` varchar(255) DEFAULT NULL,
  `bankCard` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `IDCardPhoto` varchar(255) DEFAULT NULL,
  `homeIDPhoto` varchar(255) DEFAULT NULL,
  `companyIDPhoto` varchar(255) DEFAULT NULL,
  `guaIDCardPhoto` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '2',
  PRIMARY KEY (`id`,`user`),
  KEY `user` (`user`),
  CONSTRAINT `admin_loan_record_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_loan_record
-- ----------------------------
INSERT INTO `admin_loan_record` VALUES ('1', '张松磊', '张磊', '2015-06-01', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `admin_loan_record` VALUES ('2', 'zsl', 'zsl', '2015-05-13', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `admin_loan_record` VALUES ('3', '张松磊', '张磊', '2015-05-11', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `admin_loan_record` VALUES ('4', 'zsl', 'zsl', '2015-05-22', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `admin_loan_record` VALUES ('5', '张松磊', '张磊', '2015-05-28', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `admin_loan_record` VALUES ('6', 'zsl', 'zsl', '2015-05-13', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `admin_loan_record` VALUES ('7', '张松磊', '张磊', '2015-06-02', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '0', '2');
INSERT INTO `admin_loan_record` VALUES ('8', 'zsl', 'zsl', '2015-06-02', '女', '414424198909081230', '未婚', '13412312312', '3', '差', '北京市', '博士及以上', '呵呵呵', '123431', '你猜啊', 'W1231321231', '13123123', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '良', '43111', '1234567', '湖南大学', '123123123', '1231311', '12', '结婚', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `admin_loan_record` VALUES ('9', '张松磊', '张磊', '2015-06-05', '男', '414424198909081230', '未婚', '13412312312', '', '良', '北京市', '不祥', '湖南大学天马学生公寓', '', '', '', '', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '优', '43111', '1234567', '湖南大学', '123123123', '10000', '12', '买房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `admin_loan_record` VALUES ('10', 'zsl', '张磊', '2017-02-20', '女', '414424198909081230', '已婚', '13412312312', '', '优', '北京市', '不祥', '呵呵呵', '', '', '', '', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '优', '43111', '1234567', '湖南大学', '123123123', '10000', '31', '123123', '123123123123123', '3.5%', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', '2', '2');

-- ----------------------------
-- Table structure for loan_record
-- ----------------------------
DROP TABLE IF EXISTS `loan_record`;
CREATE TABLE `loan_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `loanDate` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `paperID` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `peopleNum` varchar(255) DEFAULT NULL,
  `userHealth` varchar(255) DEFAULT NULL,
  `household_address` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyLicense` varchar(255) DEFAULT NULL,
  `companyTele` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  `deposit` varchar(255) DEFAULT NULL,
  `guarantor` varchar(255) DEFAULT NULL,
  `guaSex` varchar(255) DEFAULT NULL,
  `guaPaperID` varchar(255) DEFAULT NULL,
  `guaAddress` varchar(255) DEFAULT NULL,
  `guaPostcode` varchar(255) DEFAULT NULL,
  `guaHealth` varchar(255) DEFAULT NULL,
  `guaIncome` varchar(255) DEFAULT NULL,
  `guaDeposit` varchar(255) DEFAULT NULL,
  `guaCompany` varchar(255) DEFAULT NULL,
  `guaCompTel` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `loanLife` varchar(255) DEFAULT NULL,
  `purpers` varchar(255) DEFAULT NULL,
  `bankCard` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL,
  `IDCardPhoto` varchar(255) DEFAULT NULL,
  `homeIDPhoto` varchar(255) DEFAULT NULL,
  `companyIDPhoto` varchar(255) DEFAULT NULL,
  `guaIDCardPhoto` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`,`user`),
  KEY `user` (`user`),
  CONSTRAINT `loan_record_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loan_record
-- ----------------------------
INSERT INTO `loan_record` VALUES ('1', '张松磊', '张磊', '2015-06-01', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `loan_record` VALUES ('2', 'zsl', 'zsl', '2015-05-13', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `loan_record` VALUES ('3', '张松磊', '张磊', '2015-05-11', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `loan_record` VALUES ('4', 'zsl', 'zsl', '2015-05-22', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `loan_record` VALUES ('5', '张松磊', '张磊', '2015-05-28', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `loan_record` VALUES ('6', 'zsl', 'zsl', '2015-05-13', '男', '414424198909081230', '未婚', '13412312312', '5', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '湖南大学', 'E3123813123', '0123-12312312', '8000', '200000', '刘学畅', '男', '411421121212121212', '北京市', '410082', '优', '10000', '1000000', '天马学生公寓', '1230-12312312', '300000', '24', '购房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `loan_record` VALUES ('7', '张松磊', '张磊', '2015-06-02', '男', '414424198909081230', '已婚', '13412312312', '1', '良', '北京市', '本科', '湖南大学天马学生公寓', '410082', '中央电视台', '12312312123', '12312312312', '12345', '87654321', '史瑜良', '男', '12345678907654321', '北京市', '12345', '良', '54321', '12345678', '天马', '543211', '1234567890', '32', '买车', '0987654321123456789', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '0', '2');
INSERT INTO `loan_record` VALUES ('8', 'zsl', 'zsl', '2015-06-02', '女', '414424198909081230', '未婚', '13412312312', '3', '差', '北京市', '博士及以上', '呵呵呵', '123431', '你猜啊', 'W1231321231', '13123123', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '良', '43111', '1234567', '湖南大学', '123123123', '1231311', '12', '结婚', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '1', '2');
INSERT INTO `loan_record` VALUES ('9', '张松磊', '张磊', '2015-06-05', '男', '414424198909081230', '未婚', '13412312312', '', '良', '北京市', '不祥', '湖南大学天马学生公寓', '', '', '', '', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '优', '43111', '1234567', '湖南大学', '123123123', '10000', '12', '买房', '123123123123123', '3.5%', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\捕获0001.PNG', 'C:\\tomcat\\webapps\\Loan\\uploadimg\\201506092002\\demo0.PNG', '2', '2');
INSERT INTO `loan_record` VALUES ('10', 'zsl', '张磊', '2017-02-20', '女', '414424198909081230', '已婚', '13412312312', '', '优', '北京市', '不祥', '呵呵呵', '', '', '', '', '31232', '543321', '张石磊', '男', '1312312312312312313', '北京市', '123456', '优', '43111', '1234567', '湖南大学', '123123123', '10000', '31', '123123', '123123123123123', '3.5%', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', 'D:\\tomcat\\webapps\\Loan\\uploadimg\\201702201006\\QQ截图20170220100506.png', '2', '2');

-- ----------------------------
-- Table structure for service_detail
-- ----------------------------
DROP TABLE IF EXISTS `service_detail`;
CREATE TABLE `service_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `user` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_detail
-- ----------------------------
INSERT INTO `service_detail` VALUES ('1', '<strong>1. 申贷条件：</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 年满18周岁，具有完全民事行为能力的自然人;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 具有合法有效的身份证明及婚姻状况证明;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 具有合法的经营资格和固定的经营场所，能提供合法的营业执照(或商户经营证、摊位证、行业经营许可证等)及经营场所的产权证明或承包、租赁证明资料;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 具有按时足额偿还贷款本息的能力;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 具有良好的信用记录和还款意愿，借款人在市商行及其他已查知的金融机构无不良信用记录;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 除采用信用担保方式外，能提供合法、有效、可靠的贷款担保;&nbsp;<br />\r\n<strong>2. 贷款方式：</strong>直接贷款、间接贷款、买方信贷和卖方信贷&nbsp;<br />\r\n<strong>3. 信贷展期：</strong>由贷款人与借款单位详细协商后确定。&nbsp;<br />\r\n<strong>4. 信贷额度：</strong>由贷款人与借款单位详细协商后确定，不具有法律效力。&nbsp;<br />\r\n<strong>5. 信贷利率：</strong>贷款利率因贷款种类和期限的不同而不同，同时也与借贷资金的稀缺程度相联系&nbsp;<br />\r\n<strong>6. 申贷流程：</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 申请：符合小额担保贷款条件的个人，凭劳动保障等部门颁发的相关证件，向项目所在地的担保中心或劳动保障事务所提出书面申请；符合小额担保贷款条件的小企业凭有关证书（认定证书、工商执照等），向所在地担保中心提出书面申请。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 推荐：社区居委会和街道（乡镇）劳动保障事务所受理后出具推荐审核意见；&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 审核：担保机构对申请人是否符合贷款扶持范围及条件进行审查，对申请贷款项目进行市场调查和评估。经审核符合贷款条件的，由担保机构向银行提供小额贷款项目推荐意见；担保机构对小企业是否符合贷款扶持范围及条件进行审查，对申请贷款项目进行市场调查和评估。经审核符合贷款条件的，由担保机构向银行提供小额贷款项目推荐意见。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 推荐、担保：a.申请人自身具有反担保措施的，由担保中心向经办银行推荐并提供担保；b.申请人自身不具有反担保措施的，可由担保中心向经办银行推荐，自行向银行提供担保。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 推荐、担保：a.小企业自身具有反担保措施的，由担保中心向经办银行推荐并提供担保；b.小企业自身不具有反担保措施的，可由担保中心向经办银行推荐，自行向银行提供担保。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 核贷：a.申请人凭担保机构小额贷款项目推荐意见，及有关申请贷款资料等，到经办银行办理贷款手续。b.经办银行按有关信贷规定进行审核并发放，并将结果告知申请人及担保机构。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;7) 核贷：a.小企业凭担保机构小额贷款项目推荐意见，及有关申请贷款资料等，到经办银行办理贷款手续。b.经办银行按有关信贷规定进行审核并发放，并将结果告知申请小企业及担保机构。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;8) 放贷。&nbsp;<br />\r\n<strong>7. 贷款材料:</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 小额贷款申请书（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 户口本复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 身份证复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 租房协议或自有房产证明复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 工商执照副本、卫生许可证、生产许可证复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 税务登记副本复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;7) 再就业优惠证复印件（1-2页 一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;8) 贷款银行要求提供的其它材料&nbsp;', '张松磊', '2015-06-10');
INSERT INTO `service_detail` VALUES ('4', '<strong>1. 申贷条件：</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 年满<strong>20</strong>周岁，具有完全民事行为能力的自然人;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 具有合法有效的身份证明及婚姻状况证明;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 具有合法的经营资格和固定的经营场所，能提供合法的营业执照(或商户经营证、摊位证、行业经营许可证等)及经营场所的产权证明或承包、租赁证明资料;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 具有按时足额偿还贷款本息的能力;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 具有良好的信用记录和还款意愿，借款人在市商行及其他已查知的金融机构无不良信用记录;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 除采用信用担保方式外，能提供合法、有效、可靠的贷款担保;&nbsp;<br />\r\n<strong>2. 贷款方式：</strong>直接贷款、间接贷款、买方信贷和卖方信贷&nbsp;<br />\r\n<strong>3. 信贷展期：</strong>由贷款人与借款单位详细协商后确定。&nbsp;<br />\r\n<strong>4. 信贷额度：</strong>由贷款人与借款单位详细协商后确定，不具有法律效力。&nbsp;<br />\r\n<strong>5. 信贷利率：</strong>贷款利率因贷款种类和期限的不同而不同，同时也与借贷资金的稀缺程度相联系&nbsp;<br />\r\n<strong>6. 申贷流程：</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 申请：符合小额担保贷款条件的个人，凭劳动保障等部门颁发的相关证件，向项目所在地的担保中心或劳动保障事务所提出书面申请；符合小额担保贷款条件的小企业凭有关证书（认定证书、工商执照等），向所在地担保中心提出书面申请。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 推荐：社区居委会和街道（乡镇）劳动保障事务所受理后出具推荐审核意见；&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 审核：担保机构对申请人是否符合贷款扶持范围及条件进行审查，对申请贷款项目进行市场调查和评估。经审核符合贷款条件的，由担保机构向银行提供小额贷款项目推荐意见；担保机构对小企业是否符合贷款扶持范围及条件进行审查，对申请贷款项目进行市场调查和评估。经审核符合贷款条件的，由担保机构向银行提供小额贷款项目推荐意见。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 推荐、担保：a.申请人自身具有反担保措施的，由担保中心向经办银行推荐并提供担保；b.申请人自身不具有反担保措施的，可由担保中心向经办银行推荐，自行向银行提供担保。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 推荐、担保：a.小企业自身具有反担保措施的，由担保中心向经办银行推荐并提供担保；b.小企业自身不具有反担保措施的，可由担保中心向经办银行推荐，自行向银行提供担保。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 核贷：a.申请人凭担保机构小额贷款项目推荐意见，及有关申请贷款资料等，到经办银行办理贷款手续。b.经办银行按有关信贷规定进行审核并发放，并将结果告知申请人及担保机构。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;7) 核贷：a.小企业凭担保机构小额贷款项目推荐意见，及有关申请贷款资料等，到经办银行办理贷款手续。b.经办银行按有关信贷规定进行审核并发放，并将结果告知申请小企业及担保机构。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;8) 放贷。&nbsp;<br />\r\n<strong>7. 贷款材料:</strong>&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;1) 小额贷款申请书（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;2) 户口本复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;3) 身份证复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;4) 租房协议或自有房产证明复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;5) 工商执照副本、卫生许可证、生产许可证复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;6) 税务登记副本复印件（一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;7) 再就业优惠证复印件（1-2页 一式叁份）&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;8) 贷款银行要求提供的其它材料&nbsp;', '张松磊', '2017-02-20');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `paper` varchar(255) DEFAULT NULL,
  `paperID` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobilePhone` varchar(255) DEFAULT NULL,
  `telePhone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`,`userName`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张松磊', '111111', '对我影响最大的人是谁', '张松磊', '张磊', '男', '二代身份证', '414424198909081230', '2594454098@qq.com', '13122222222', '0123-7654321', '湖南大学天马学生公寓', '1');
INSERT INTO `user` VALUES ('2', 'zsl', '111111', '我的爱好是什么', '唱歌', '张磊', '女', '护照', '414424198909081230', '1526856951@qq.com', '13122222222', '0121-1234567', '呵呵呵', '1');
INSERT INTO `user` VALUES ('3', '刘学畅', '123456', '我最喜欢的食物是什么', '123', '刘学畅', '男', 'idcard', '414424198909081230', '981217623@qq.com', '13122222222', '', '额外人无头人 ', '1');
