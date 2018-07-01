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
INSERT INTO `kcb` VALUES ('001','è®¡ç®—æœºç½‘ç»œ','1',16,2),('002','æ“ä½œç³»ç»ŸåŽŸç†','1',12,2),('003','å•ç‰‡æœºåŽŸç†','2',10,2),('004','Cè¯­è¨€ç¨‹åºè®¾è®¡','3',16,4),('005','è½¯ä»¶å·¥ç¨‹','5',20,2);
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
INSERT INTO `xsb` VALUES ('001','æž—å°çº¢',1,'1994-7-8',23,'æ°‘æ—ç”Ÿ','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0‚\0\0\0µ²cÝ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^í”½•Â0é†è\Z \0rZ pNî\"œP„ô@\rs§_,É2øÜ›oß¶ž¬ÝÑJ^|ÏLdÎCæ<dÎCæ<dÎCæ<dÎCæ.Û¯ÕöP:ºf±9¹g3g1-ÜRæÃ)¹¾ºýõÕb“.w—däo<d>ä´ö’å¸#Ó03+ûÝêmæ6wM›Î7/ë.H4ÚMX:	»eï4d=¯m‡Kè–áíV„B£†×N«·#NøãÌ3Òž[óp\"Lõ}AÕq§Ñ7+°îÊ+æ÷Â/ò{Js{ý†±îÌx<ó™\'\rŒ¹Õ	={~8­¯glÜ<[æñú4­ôáÖ¬˜§¯Ïdúi·%:™qó	=oÌšèg|ÿ›mn7hañ˜×’ù4ñ×2nžGÕüztók,z^O’ô^þ‡»}isÕþ/˜ñÍÓcÕâÈÌÍüªáüæ¡8É‘ËŠ³EÜñž÷Yüœdq{Š}	Ìc~½~ƒ†ÛøHÿù÷‹Èz>%œy~ìsfîùTz^rKøÉ¼Òü³9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9ªùñü/éÉ&¨¶\0\0\0\0IEND®B`‚',1),('002','é™ˆå°æ¢…',1,'2003-8-8',67,'',NULL,2),('004','æŽä¼Ÿ',0,'1994-2-3',45,'nvldnvflsdn',NULL,1),('005','èƒ¡æ–Œ',0,'1993-4-4',122,'22222222','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0‚\0\0\0µ²cÝ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^í”½•Â0é†è\Z \0rZ pNî\"œP„ô@\rs§_,É2øÜ›oß¶ž¬ÝÑJ^|ÏLdÎCæ<dÎCæ<dÎCæ<dÎCæ.Û¯ÕöP:ºf±9¹g3g1-ÜRæÃ)¹¾ºýõÕb“.w—däo<d>ä´ö’å¸#Ó03+ûÝêmæ6wM›Î7/ë.H4ÚMX:	»eï4d=¯m‡Kè–áíV„B£†×N«·#NøãÌ3Òž[óp\"Lõ}AÕq§Ñ7+°îÊ+æ÷Â/ò{Js{ý†±îÌx<ó™\'\rŒ¹Õ	={~8­¯glÜ<[æñú4­ôáÖ¬˜§¯Ïdúi·%:™qó	=oÌšèg|ÿ›mn7hañ˜×’ù4ñ×2nžGÕüztók,z^O’ô^þ‡»}isÕþ/˜ñÍÓcÕâÈÌÍüªáüæ¡8É‘ËŠ³EÜñž÷Yüœdq{Š}	Ìc~½~ƒ†ÛøHÿù÷‹Èz>%œy~ìsfîùTz^rKøÉ¼Òü³9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9ªùñü/éÉ&¨¶\0\0\0\0IEND®B`‚',1),('006','å§œæ™“æ•',1,'1995-06-02',77,'','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0‚\0\0\0µ²cÝ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^í”½•Â0é†è\Z \0rZ pNî\"œP„ô@\rs§_,É2øÜ›oß¶ž¬ÝÑJ^|ÏLdÎCæ<dÎCæ<dÎCæ<dÎCæ.Û¯ÕöP:ºf±9¹g3g1-ÜRæÃ)¹¾ºýõÕb“.w—däo<d>ä´ö’å¸#Ó03+ûÝêmæ6wM›Î7/ë.H4ÚMX:	»eï4d=¯m‡Kè–áíV„B£†×N«·#NøãÌ3Òž[óp\"Lõ}AÕq§Ñ7+°îÊ+æ÷Â/ò{Js{ý†±îÌx<ó™\'\rŒ¹Õ	={~8­¯glÜ<[æñú4­ôáÖ¬˜§¯Ïdúi·%:™qó	=oÌšèg|ÿ›mn7hañ˜×’ù4ñ×2nžGÕüztók,z^O’ô^þ‡»}isÕþ/˜ñÍÓcÕâÈÌÍüªáüæ¡8É‘ËŠ³EÜñž÷Yüœdq{Š}	Ìc~½~ƒ†ÛøHÿù÷‹Èz>%œy~ìsfîùTz^rKøÉ¼Òü³9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9ªùñü/éÉ&¨¶\0\0\0\0IEND®B`‚',1),('007','é»„æ™“æ•',1,'1995-02-16',77,'','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0‚\0\0\0µ²cÝ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^í”½•Â0é†è\Z \0rZ pNî\"œP„ô@\rs§_,É2øÜ›oß¶ž¬ÝÑJ^|ÏLdÎCæ<dÎCæ<dÎCæ<dÎCæ.Û¯ÕöP:ºf±9¹g3g1-ÜRæÃ)¹¾ºýõÕb“.w—däo<d>ä´ö’å¸#Ó03+ûÝêmæ6wM›Î7/ë.H4ÚMX:	»eï4d=¯m‡Kè–áíV„B£†×N«·#NøãÌ3Òž[óp\"Lõ}AÕq§Ñ7+°îÊ+æ÷Â/ò{Js{ý†±îÌx<ó™\'\rŒ¹Õ	={~8­¯glÜ<[æñú4­ôáÖ¬˜§¯Ïdúi·%:™qó	=oÌšèg|ÿ›mn7hañ˜×’ù4ñ×2nžGÕüztók,z^O’ô^þ‡»}isÕþ/˜ñÍÓcÕâÈÌÍüªáüæ¡8É‘ËŠ³EÜñž÷Yüœdq{Š}	Ìc~½~ƒ†ÛøHÿù÷‹Èz>%œy~ìsfîùTz^rKøÉ¼Òü³9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9ªùñü/éÉ&¨¶\0\0\0\0IEND®B`‚',1),('008','æ±Ÿæ˜Ž',0,'2018-03-29',167,'','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0S\0\0\0‚\0\0\0µ²cÝ\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^í”½•Â0é†è\Z \0rZ pNî\"œP„ô@\rs§_,É2øÜ›oß¶ž¬ÝÑJ^|ÏLdÎCæ<dÎCæ<dÎCæ<dÎCæ.Û¯ÕöP:ºf±9¹g3g1-ÜRæÃ)¹¾ºýõÕb“.w—däo<d>ä´ö’å¸#Ó03+ûÝêmæ6wM›Î7/ë.H4ÚMX:	»eï4d=¯m‡Kè–áíV„B£†×N«·#NøãÌ3Òž[óp\"Lõ}AÕq§Ñ7+°îÊ+æ÷Â/ò{Js{ý†±îÌx<ó™\'\rŒ¹Õ	={~8­¯glÜ<[æñú4­ôáÖ¬˜§¯Ïdúi·%:™qó	=oÌšèg|ÿ›mn7hañ˜×’ù4ñ×2nžGÕüztók,z^O’ô^þ‡»}isÕþ/˜ñÍÓcÕâÈÌÍüªáüæ¡8É‘ËŠ³EÜñž÷Yüœdq{Š}	Ìc~½~ƒ†ÛøHÿù÷‹Èz>%œy~ìsfîùTz^rKøÉ¼Òü³9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9™ó9ªùñü/éÉ&¨¶\0\0\0\0IEND®B`‚',3),('020','èµµæ˜Ž',1,'1994-4-4',32,'dsbdth',NULL,1),('021','å¼ ä¸‰',0,'2021-3-3',242,'ç±³å¥½',NULL,2),('022','æŽå››',0,'1995-5-5',34,'ä¸­åˆå•¦',NULL,3),('023','çŽ‹æ¯…',1,'1002-3-3',67,'å—¯å¾ˆè‰¾ä¸å‡¡',NULL,2);
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
INSERT INTO `zyb` VALUES (1,'è®¡ç®—æœº',10,'å¤§ä¸œå“¥'),(2,'å¿ƒç†å­¦',34,'è€é“'),(3,'åœŸæœ¨å·¥ç¨‹',20,NULL),(4,'è‡ªåŠ¨åŒ–',30,'è€æž—');
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
