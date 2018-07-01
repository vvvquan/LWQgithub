-- MySQL dump 10.10
--
-- Host: localhost    Database: xscj
-- ------------------------------------------------------
-- Server version	5.0.27-community-nt

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cjb`
--

DROP TABLE IF EXISTS `cjb`;
CREATE TABLE `cjb` (
  `XH` varchar(6) NOT NULL,
  `KCH` varchar(3) NOT NULL,
  `CJ` int(11) default '0',
  `XF` int(11) default NULL,
  PRIMARY KEY  (`XH`,`KCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cjb`
--

LOCK TABLES `cjb` WRITE;
/*!40000 ALTER TABLE `cjb` DISABLE KEYS */;
INSERT INTO `cjb` VALUES ('001','001',95,2),('001','005',76,2),('002','002',86,2),('005','003',95,2),('023','005',90,2);
/*!40000 ALTER TABLE `cjb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlb`
--

DROP TABLE IF EXISTS `dlb`;
CREATE TABLE `dlb` (
  `ID` int(11) NOT NULL auto_increment,
  `XH` varchar(6) NOT NULL,
  `KL` varchar(20) NOT NULL,
  `ROLE` smallint(6) default '0',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dlb`
--

LOCK TABLES `dlb` WRITE;
/*!40000 ALTER TABLE `dlb` DISABLE KEYS */;
INSERT INTO `dlb` VALUES (1,'000','abc',1),(2,'001','abcde',0);
/*!40000 ALTER TABLE `dlb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kcb`
--

DROP TABLE IF EXISTS `kcb`;
CREATE TABLE `kcb` (
  `KCH` varchar(3) NOT NULL,
  `KCM` varchar(12) default NULL,
  `KXXQ` enum('1','2','3','4','5','6','7','8') default NULL,
  `XS` int(11) default NULL,
  `XF` int(11) default NULL,
  PRIMARY KEY  (`KCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kcb`
--

LOCK TABLES `kcb` WRITE;
/*!40000 ALTER TABLE `kcb` DISABLE KEYS */;
INSERT INTO `kcb` VALUES ('001','计算机网络','1',16,2),('002','操作系统原理','1',12,2),('003','单片机原理','2',10,2),('004','C语言程序设计','3',16,4),('005','软件工程','5',20,2);
/*!40000 ALTER TABLE `kcb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xsb`
--

DROP TABLE IF EXISTS `xsb`;
CREATE TABLE `xsb` (
  `XH` varchar(255) NOT NULL,
  `XM` varchar(255) NOT NULL,
  `XB` smallint(6) NOT NULL,
  `CSSJ` varchar(255) default NULL,
  `ZXF` int(11) default NULL,
  `BZ` varchar(500) default NULL,
  `ZP` longblob,
  `ZY_ID` int(11) default NULL,
  PRIMARY KEY  (`XH`),
  KEY `FKk9q2pvo21jeeyjmjseca8607` (`ZY_ID`),
  CONSTRAINT `FKk9q2pvo21jeeyjmjseca8607` FOREIGN KEY (`ZY_ID`) REFERENCES `zyb` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xsb`
--

LOCK TABLES `xsb` WRITE;
/*!40000 ALTER TABLE `xsb` DISABLE KEYS */;
INSERT INTO `xsb` VALUES ('001','林小红',1,'1994-7-8',23,'民族生','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0�\0\0\0��c�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^픽��0��\Z�\0rZ pN�\"�P��@\rs�_,�2�ܛo������J^|�Ld�C�<d�C�<d�C�<d�C�.ۯ��P:�f�9�g3g1-�R��)�������b�.w�d�o<d>����#�03+���m�6wM��7/�.H4�MX:	�e�4�d=�m�K���V�B���N��#N���3Ҟ[�p\"L�}A�q��7+���+���/�{Js{�����x<�\'\r���	={~8��gl�<�[���4���֬����d�i�%:�q�	=o���g|��mn7ha��ג�4��2n�G��zt�k,z^O��^���}is��/����c����������8ɑˊ�E܏��Y��dq{�}	�c~�~����H�����z>%�y~�sf��Tz^rK�ɼ����9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9����/��&��\0\0\0\0IEND�B`�',1),('002','陈小梅',1,'2003-8-8',67,'',NULL,2),('004','李伟',0,'1994-2-3',45,'nvldnvflsdn',NULL,1),('005','胡斌',0,'1993-4-4',122,'22222222','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0�\0\0\0��c�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^픽��0��\Z�\0rZ pN�\"�P��@\rs�_,�2�ܛo������J^|�Ld�C�<d�C�<d�C�<d�C�.ۯ��P:�f�9�g3g1-�R��)�������b�.w�d�o<d>����#�03+���m�6wM��7/�.H4�MX:	�e�4�d=�m�K���V�B���N��#N���3Ҟ[�p\"L�}A�q��7+���+���/�{Js{�����x<�\'\r���	={~8��gl�<�[���4���֬����d�i�%:�q�	=o���g|��mn7ha��ג�4��2n�G��zt�k,z^O��^���}is��/����c����������8ɑˊ�E܏��Y��dq{�}	�c~�~����H�����z>%�y~�sf��Tz^rK�ɼ����9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9����/��&��\0\0\0\0IEND�B`�',1),('006','姜晓敏',1,'1995-06-02',77,'','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0�\0\0\0��c�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^픽��0��\Z�\0rZ pN�\"�P��@\rs�_,�2�ܛo������J^|�Ld�C�<d�C�<d�C�<d�C�.ۯ��P:�f�9�g3g1-�R��)�������b�.w�d�o<d>����#�03+���m�6wM��7/�.H4�MX:	�e�4�d=�m�K���V�B���N��#N���3Ҟ[�p\"L�}A�q��7+���+���/�{Js{�����x<�\'\r���	={~8��gl�<�[���4���֬����d�i�%:�q�	=o���g|��mn7ha��ג�4��2n�G��zt�k,z^O��^���}is��/����c����������8ɑˊ�E܏��Y��dq{�}	�c~�~����H�����z>%�y~�sf��Tz^rK�ɼ����9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9����/��&��\0\0\0\0IEND�B`�',1),('007','黄晓敏',1,'1995-02-16',77,'','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0�\0\0\0��c�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^픽��0��\Z�\0rZ pN�\"�P��@\rs�_,�2�ܛo������J^|�Ld�C�<d�C�<d�C�<d�C�.ۯ��P:�f�9�g3g1-�R��)�������b�.w�d�o<d>����#�03+���m�6wM��7/�.H4�MX:	�e�4�d=�m�K���V�B���N��#N���3Ҟ[�p\"L�}A�q��7+���+���/�{Js{�����x<�\'\r���	={~8��gl�<�[���4���֬����d�i�%:�q�	=o���g|��mn7ha��ג�4��2n�G��zt�k,z^O��^���}is��/����c����������8ɑˊ�E܏��Y��dq{�}	�c~�~����H�����z>%�y~�sf��Tz^rK�ɼ����9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9����/��&��\0\0\0\0IEND�B`�',1),('008','江明',0,'2018-03-29',167,'','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0�\0\0\0��c�\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^픽��0��\Z�\0rZ pN�\"�P��@\rs�_,�2�ܛo������J^|�Ld�C�<d�C�<d�C�<d�C�.ۯ��P:�f�9�g3g1-�R��)�������b�.w�d�o<d>����#�03+���m�6wM��7/�.H4�MX:	�e�4�d=�m�K���V�B���N��#N���3Ҟ[�p\"L�}A�q��7+���+���/�{Js{�����x<�\'\r���	={~8��gl�<�[���4���֬����d�i�%:�q�	=o���g|��mn7ha��ג�4��2n�G��zt�k,z^O��^���}is��/����c����������8ɑˊ�E܏��Y��dq{�}	�c~�~����H�����z>%�y~�sf��Tz^rK�ɼ����9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9��9����/��&��\0\0\0\0IEND�B`�',3),('020','赵明',1,'1994-4-4',32,'dsbdth',NULL,1),('021','张三',0,'2021-3-3',242,'米好',NULL,2),('022','李四',0,'1995-5-5',34,'中午啦',NULL,3),('023','王毅',1,'1002-3-3',67,'嗯很艾丝凡',NULL,2);
/*!40000 ALTER TABLE `xsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zyb`
--

DROP TABLE IF EXISTS `zyb`;
CREATE TABLE `zyb` (
  `ID` int(11) NOT NULL auto_increment,
  `ZYM` varchar(12) NOT NULL,
  `RS` int(11) default '0',
  `FDY` varchar(8) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zyb`
--

LOCK TABLES `zyb` WRITE;
/*!40000 ALTER TABLE `zyb` DISABLE KEYS */;
INSERT INTO `zyb` VALUES (1,'计算机',10,'大东哥'),(2,'心理学',34,'老铁'),(3,'土木工程',20,NULL),(4,'自动化',30,'老林');
/*!40000 ALTER TABLE `zyb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01 11:31:19
