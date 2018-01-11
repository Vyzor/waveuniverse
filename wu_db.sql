-- MySQL dump 10.13  Distrib 5.6.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wu_db
-- ------------------------------------------------------
-- Server version	5.6.31-0ubuntu0.15.10.1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `creation_date` datetime NOT NULL,
  `text` varchar(350) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Thousand and One Broken Chairs', 'Jackie Chan', ' ', 'History of success', '2018-01-10 13:51:00', 'Chan was born on 7 April 1954, in Hong Kong, as Chan Kong-sang, to Charles and Lee-Lee Chan, refugees from the Chinese Civil War. His mother or parents nicknamed him Pao-pao ("Cannonball") because the energetic child was always rolling around. His parents worked for the French ambassador in Hong Kong, and Chan spent his formative years within the grounds of the consuls residence in the Victoria Peak district...', 356),
(2,'First Article', 'First Author', ' ', 'First Subject', '2018-01-10 13:51:00', 'Some test text of first article', 154),
(3,'Second Article', 'First Author', ' ', 'First Subject', '2018-01-11 13:51:00', 'Some test text of first article', 333),
(4,'dsadas Article', 'First Author', ' ', 'First Subject', '2018-01-12 13:51:00', 'Some test text of first article', 234),
(5,'ssa Article', 'First Author', ' ', 'First Subject', '2018-01-13 13:51:00', 'Some test text of first article', 108),
(6,'asd Article', 'First Author', ' ', 'First Subject', '2018-01-08 13:51:00', 'Some test text of first article', 99),
(7,'sd Article', 'First Author', ' ', 'First Subject', '2018-01-08 13:51:00', 'Some test text of first article', 305),
(8,'asd Article', 'First Author', ' ', 'First Subject', '2018-01-10 14:51:00', 'Some test text of first article', 143),
(9,'d Article', 'First Author', ' ', 'First Subject', '2018-01-10 10:51:00', 'Some test text of first article', 175),
(10,'asd Article', 'First Author', ' ', 'First Subject', '2018-01-10 12:51:00', 'Some test text of first article', 224);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `asset_name` varchar(255) DEFAULT NULL,
  `asset_value` decimal(16,8) DEFAULT NULL,
  `asset_time` int(12) DEFAULT NULL,
  `asset_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES ('SBUX',58.1700,1480456800,2),('WFC',51.8900,1480456800,2),('YHOO',41.7600,1481320800,2),('PFE',31.9300,1480456800,2),('DIS',104.6100,1481319900,2),('BAC',20.3000,1480456800,2),('^EURNZD',1.4919,1480505400,3),('VOD',24.4900,1480456800,2),('INTC',35.7600,1481320800,2),('FB',120.8700,1480456800,2),('HPQ',15.7650,1481319900,2),('AMZN',768.6600,1481320800,2),('V',79.2000,1480455900,2),('C',55.5200,1480456800,2),('TSLA',189.5700,1480456800,2),('CSCO',29.8300,1480456800,2),('GOOGL',809.4500,1481320800,2),('OIL',5.3900,1480456800,4),('MS',40.6100,1480456800,2),('CORN',19.1800,1481319900,4),('BIDU',170.7100,1481320800,2),('MSFT',61.9700,1481320800,2),('DB',15.5300,1480455900,2),('CVX',115.8800,1481319900,2),('T',40.4000,1481320800,2),('^CADJPY',84.5180,1480505400,3),('^CHFJPY',111.5810,1480505400,3),('^AUDCAD',0.9981,1480505400,3),('^AUDUSD',0.7459,1481532300,3),('^USDHKD',7.7554,1480505400,3),('NOK',4.2900,1480456800,2),('XOM',88.8800,1481319900,2),('^AUDNZD',1.0438,1480505400,3),('NKE',51.7200,1481320800,2),('KO',65.2500,1481319900,2),('^USDTRY',3.4198,1480505400,3),('^GBPAUD',1.6678,1480505400,3),('GPRO',9.2350,1481319900,2),('ORCL',40.5600,1480455900,2),('^USDNOK',8.4452,1481532300,3),('^EURCHF',1.0806,1480505400,3),('TWTR',19.6700,1481319900,2),('TESO',9.1000,1481320800,2),('BCS',10.5950,1480455900,2),('^ZARJPY',7.9810,1480505400,3),('GOLD',73.6100,1480456800,4),('^EURNOK',9.0478,1480505400,3),('^GBPCHF',1.2608,1480505400,3),('^USDDKK',6.9796,1480505400,3),('^NZDCHF',0.7242,1480505400,3),('EBAY',29.9700,1481320800,2),('^EURAUD',1.4293,1480505400,3),('^CADCHF',0.7574,1480505400,3),('^NZDCAD',0.9390,1481532300,3),('^EURUSD',1.0660,1480505400,3),('^AUDJPY',84.3630,1480505400,3),('^USDSEK',9.1455,1480505400,3),('^GBPJPY',140.7080,1480505400,3),('^USDCAD',1.3384,1480505400,3),('^USDZAR',13.9679,1480505400,3),('^GBPNZD',1.7409,1480505400,3),('^USDMXN',20.5570,1480505400,3),('^TRYJPY',33.0530,1480505400,3),('^USDSGD',1.4256,1480505400,3),('^GBPCAD',1.6647,1480505400,3),('LNKD',195.9600,1481148000,2),('^USDJPY',113.1240,1480505400,3),('^EURGBP',0.8569,1480505400,3),('^NZDUSD',0.7144,1480505400,3),('^EURSEK',9.7490,1480505400,3),('^GBPUSD',1.2438,1480505400,3),('^AUDCHF',0.7559,1480505400,3),('^USDCHF',1.0171,1481532300,3),('^EURCAD',1.4266,1480505400,3),('^NZDJPY',80.8160,1480505400,3),('AAPL',113.9500,1481320800,2),('HSBC',42.6300,1481319900,2),('^USDCNH',6.9398,1481532300,3),('GM',34.5600,1480456800,2),('IBM',163.6100,1480455900,2),('^EURTRY',3.6460,1480505400,3),('^EURJPY',120.5860,1480505400,3),('^BTCUSD',120.5860,1480505400,3),('QBC1!',120.5860,1480505400,4),('USOIL',120.5860,1480505400,4),('XAUUSD',120.5860,1480505400,4),('XAGUSD',120.5860,1480505400,4),('HG1!',120.5860,1480505400,4),('PL1!',120.5860,1480505400,4),('PA1!',120.5860,1480505400,4),('W1!',120.5860,1480505400,4),('S1!',120.5860,1480505400,4),('SM1!',120.5860,1480505400,4),('BO1!',120.5860,1480505400,4),('ZO1!',120.5860,1480505400,4),('QRR1!',120.5860,1480505400,4),('KG1!',120.5860,1480505400,4),('KA1!',120.5860,1480505400,4),('KT1!',120.5860,1480505400,4),('CJ1!',120.5860,1480505400,4),('LB1!',120.5860,1480505400,4),('^BCCBTC',58.1700,1480456800,5),('^BCCETH',58.1700,1480456800,5),('^BCHBTC',58.1700,1480456800,5),('^BCHETH',58.1700,1480456800,5),('^BCNBTC',58.1700,1480456800,5),('^BCNXMR',58.1700,1480456800,5),('^BNTBTC',58.1700,1480456800,5),('^BNTETH',58.1700,1480456800,5),('^BTCDBTC',58.1700,1480456800,5),('^BTCDXMR',58.1700,1480456800,5),('^BTCEUR',58.1700,1480456800,5),('^BTCUSD',58.1700,1480456800,5),('^BTSBTC',58.1700,1480456800,5),('^BTSETH',58.1700,1480456800,5),('^CANNBTC',58.1700,1480456800,5),('^CFIBTC',58.1700,1480456800,5),('^CFIETH',58.1700,1480456800,5),('^CVCBTC',58.1700,1480456800,5),('^CVCETH',58.1700,1480456800,5),('^DASHBTC',58.1700,1480456800,5),('^DASHETH',58.1700,1480456800,5),('^DASHUSD',58.1700,1480456800,5),('^DASHXMR',58.1700,1480456800,5),('^ETCBTC',58.1700,1480456800,5),('^ETCETH',58.1700,1480456800,5),('^ETCUSD',58.1700,1480456800,5),('^ETHBTC',58.1700,1480456800,5),('^ETHEUR',58.1700,1480456800,5),('^ETHUSD',58.1700,1480456800,5),('^GASBTC',58.1700,1480456800,5),('^GASETH',58.1700,1480456800,5),('^GNOBTC',58.1700,1480456800,5),('^GNOETH',58.1700,1480456800,5),('^GNTBTC',58.1700,1480456800,5),('^GNTETH',58.1700,1480456800,5),('^LTCBTC',58.1700,1480456800,5),('^LTCETH',58.1700,1480456800,5),('^LTCUSD',58.1700,1480456800,5),('^MCOBTC',58.1700,1480456800,5),('^MCOETH',58.1700,1480456800,5),('^NEOBTC',58.1700,1480456800,5),('^NEOETH',58.1700,1480456800,5),('^OMGBTC',58.1700,1480456800,5),('^OMGETH',58.1700,1480456800,5),('^REPBTC',58.1700,1480456800,5),('^REPETH',58.1700,1480456800,5),('^STEEMBT',58.1700,1480456800,5),('^STEEMET',58.1700,1480456800,5),('^XEMBTC',58.1700,1480456800,5),('^XEMETH',58.1700,1480456800,5),('^XMRBTC',58.1700,1480456800,5),('^XMRETH',58.1700,1480456800,5),('^XRPBTC',58.1700,1480456800,5),('^XRPETH',58.1700,1480456800,5),('^ZECBTC',58.1700,1480456800,5),('^ZECETH',58.1700,1480456800,5),('^ANTBTC',58.1700,1480456800,5),('^ANTETH',58.1700,1480456800,5),('^ADTBTC',58.1700,1480456800,5),('^ADTETH',58.1700,1480456800,5),('^ADXBTC',58.1700,1480456800,5),('^ADXETH',58.1700,1480456800,5),('^ARDRBTC',58.1700,1480456800,5),('^ARKBTC',58.1700,1480456800,5),('^BLKBTC',58.1700,1480456800,5),('^BLKXMR',58.1700,1480456800,5),('^BYCBTC',58.1700,1480456800,5),('^FUNBTC',58.1700,1480456800,5),('^FUNETH',58.1700,1480456800,5),('^GAMBTC',58.1700,1480456800,5),('^IONBTC',58.1700,1480456800,5),('^KMDBTC',58.1700,1480456800,5),('^NXSBTC',58.1700,1480456800,5),('^NXTBTC',58.1700,1480456800,5),('^NXTUSD',58.1700,1480456800,5),('^QTUMBTC',58.1700,1480456800,5),('^QTUMETH',58.1700,1480456800,5),('^STORJBT',58.1700,1480456800,5),('^STORJET',58.1700,1480456800,5),('^TRSTBTC',58.1700,1480456800,5),('^TRSTETH',58.1700,1480456800,5),('^VTCBTC',58.1700,1480456800,5),('^WAVESBT',58.1700,1480456800,5),('^WAVESET',58.1700,1480456800,5),('^WINGSBT',58.1700,1480456800,5),('^WINGSET',58.1700,1480456800,5),('^STRATBT',58.1700,1480456800,5),('^STRATET',58.1700,1480456800,5),('^SNTBTC',58.1700,1480456800,5),('^SNTETH',58.1700,1480456800,5);
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_assets`
--

DROP TABLE IF EXISTS `contest_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_assets` (
  `contest_id` int(11) DEFAULT NULL,
  `contest_start` int(11) DEFAULT NULL,
  `assets` text,
  KEY `contest_id` (`contest_id`),
  CONSTRAINT `contest_assets_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_assets`
--

LOCK TABLES `contest_assets` WRITE;
/*!40000 ALTER TABLE `contest_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_portfolio`
--

DROP TABLE IF EXISTS `contest_portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `assets_str` text,
  `entered_with` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`portfolio_id`),
  KEY `contest_id` (`contest_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `contest_portfolio_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`contest_id`),
  CONSTRAINT `contest_portfolio_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_portfolio`
--

LOCK TABLES `contest_portfolio` WRITE;
/*!40000 ALTER TABLE `contest_portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_portfolio` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `contest_portfolio`
--

DROP TABLE IF EXISTS `portfolio_advanced`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio_advanced` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_name` varchar(30) DEFAULT NULL,
  `assets_str` text,
  `type_name` varchar(10) DEFAULT NULL,
  `use_stocks` int (1) NOT NULL DEFAULT '0',
  `use_currencies` int (1) NOT NULL DEFAULT '0',
  `use_commodities` int (1) NOT NULL DEFAULT '0',
  `use_crypto` int (1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`portfolio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio_advanced`
--

LOCK TABLES `portfolio_advanced` WRITE;
/*!40000 ALTER TABLE `portfolio_advanced` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio_advanced` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_recurrence`
--

DROP TABLE IF EXISTS `contest_recurrence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_recurrence` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_value` text,
  `time_to_publish` datetime DEFAULT NULL,
  `interval_to_publish` int(11) DEFAULT 0,
  `interval_to_live` int(11) DEFAULT 0,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_recurrence`
--

LOCK TABLES `contest_recurrence` WRITE;
/*!40000 ALTER TABLE `contest_recurrence` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_recurrence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_status`
--

DROP TABLE IF EXISTS `contest_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(15) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_status`
--

LOCK TABLES `contest_status` WRITE;
/*!40000 ALTER TABLE `contest_status` DISABLE KEYS */;
INSERT INTO `contest_status` VALUES (1,'created'),(2,'published'),(3,'live'),(4,'completed'),(5,'cancelled');
/*!40000 ALTER TABLE `contest_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_type`
--

DROP TABLE IF EXISTS `contest_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_type`
--

LOCK TABLES `contest_type` WRITE;
/*!40000 ALTER TABLE `contest_type` DISABLE KEYS */;
INSERT INTO `contest_type` VALUES (1,'Stocks'),(2,'Currencies'),(3,'Commodities'),(4,'Cryptocurrencies');
/*!40000 ALTER TABLE `contest_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_users`
--

DROP TABLE IF EXISTS `contest_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_users` (
  `contest_id` int(11) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  KEY `contest_id` (`contest_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `contest_users_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`contest_id`),
  CONSTRAINT `contest_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_users`
--

LOCK TABLES `contest_users` WRITE;
/*!40000 ALTER TABLE `contest_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_winners`
--

DROP TABLE IF EXISTS `contest_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_winners` (
  `contest_id` int(11) NOT NULL,
  `winner` text,
  `participants` text,
  `place` int(11) not NULL,
  KEY `contest_id` (`contest_id`),
  CONSTRAINT `contest_winners_ibfk_1` FOREIGN KEY (`contest_id`) REFERENCES `contests` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_winners`
--

LOCK TABLES `contest_winners` WRITE;
/*!40000 ALTER TABLE `contest_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contests`
--

DROP TABLE IF EXISTS `contests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contests` (
  `contest_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `summary` varchar(150) NOT NULL,
  `start_date` datetime NOT NULL,
  `time_to_publish` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `max_entries` int(11) DEFAULT NULL,
  `max_multiple_entries` int(11) NOT NULL,
  `participants` int(11) DEFAULT '0',
  `status_id` int(11) NOT NULL DEFAULT '1',
  `v_money` int(11) NOT NULL DEFAULT '10000',
  `use_stocks` int (1) NOT NULL DEFAULT '0',
  `use_currencies` int (1) NOT NULL DEFAULT '0',
  `use_commodities` int (1) NOT NULL DEFAULT '0',
  `use_crypto` int (1) NOT NULL DEFAULT '0',
  `entry_fee` int(11) NOT NULL,
  `accept_tickets` varchar(20) NOT NULL DEFAULT 'false',
  `isFeatured` int(1) NOT NULL DEFAULT '0',
  `prize_model_id` int(3) NOT NULL,
  `prize_model_value` text,
  `prizes` text,
  `assets_start` text,
  `assets_end` text,
  `ranking_list` text,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`contest_id`),
  KEY `status_id` (`status_id`),
  KEY `prize_model_id` (`prize_model_id`),
  CONSTRAINT `contests_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `contest_status` (`status_id`),
  CONSTRAINT `contests_ibfk_2` FOREIGN KEY (`prize_model_id`) REFERENCES `prizes` (`prize_model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contests`
--

LOCK TABLES `contests` WRITE;
/*!40000 ALTER TABLE `contests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `notification_id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `time_created` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` TEXT DEFAULT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `has_been_read` tinyint(1) DEFAULT 0,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `portfolio_name` varchar(30) DEFAULT NULL,
  `assets` text,
  `type_name` varchar(20) DEFAULT NULL,
  `use_stocks` int (1) NOT NULL DEFAULT '0',
  `use_currencies` int (1) NOT NULL DEFAULT '0',
  `use_commodities` int (1) NOT NULL DEFAULT '0',
  `use_crypto` int (1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`portfolio_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prizes`
--

DROP TABLE IF EXISTS `prizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prizes` (
  `prize_model_id` int(11) NOT NULL AUTO_INCREMENT,
  `prize_model_name` varchar(255) NOT NULL,
  PRIMARY KEY (`prize_model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prizes`
--

LOCK TABLES `prizes` WRITE;
/*!40000 ALTER TABLE `prizes` DISABLE KEYS */;
INSERT INTO `prizes` VALUES (1,'PPP LDPM'),(2,'PPP H'),(3,'Multiplier'),(4,'GPP LDPM'),(5,'GPP H'),(6,'NGPP LDPM'),(7,'NGPP H'),(8,'Satelite');
/*!40000 ALTER TABLE `prizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `whitelist_ips` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user',''),(2,'admin','127.0.0.1,37.233.52.140'),(3,'advanced','');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` char(60) NOT NULL,
  `role_id` int(11) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `address` varchar(255),
  `country` varchar(255),
  `city` varchar(255),
  `postal_code` varchar(255),
  `level` int(11) NOT NULL DEFAULT 0,
  `withdrawal_pending_request` varchar(255),
  `registration_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `comments` varchar(255),
  `balance` decimal(10,2) DEFAULT 10000,
  `frozen_money` decimal(10,2) DEFAULT 0,
  `xp_points` int(11) NOT NULL DEFAULT '0',
  `bronze` int(11) NOT NULL DEFAULT '0',
  `silver` int(11) NOT NULL DEFAULT '0',
  `gold` int(11) NOT NULL DEFAULT '0',
  `deposit_addresses` text DEFAULT NULL,
  `avatar` varchar(15) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `paths_to_img` varchar(255) DEFAULT NULL,
  `isVerified` varchar(255) NOT NULL DEFAULT 'Unverified',
  `reset_password_token` varchar(255) DEFAULT 0,
  `reset_password_expires` datetime DEFAULT NULL,
  `is_banned` int(1) DEFAULT 0,
  `email_verification_token` varchar(255) DEFAULT 0,
  `email_verification_status` int(1) DEFAULT 0,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `password` (`password`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2y$10$Oj4EBDbf5H.4WmKApvRlDetPNpdHZpM6eHITUZaeR1UBOF29ckhZO',2,'murzac.vladimir@gmail.com','spartacus 11/1','Moldova','Chisinau','2000',100,'Approve request','2017-02-13 13:51:00','2017-02-13 13:51:00','comments',6500.00,0.00,0,0,0,0,'','Avatar1','','','','','Verified','','','',0,'',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawals`
--

DROP TABLE IF EXISTS `withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdrawals` (
  `time_created` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `status_text` varchar(50) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `send_address` varchar(50) DEFAULT NULL,
  `send_txid` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawals`
--

LOCK TABLES `withdrawals` WRITE;
/*!40000 ALTER TABLE `withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-24 13:48:47
