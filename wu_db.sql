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
(2,'When your wife chatting with an mexican', 'Donald Trump', ' ', 'Lifehack', '2018-01-10 13:24:00', 'Drawings me opinions returned absolute in. Otherwise therefore sex did are unfeeling something. Certain be ye amiable by exposed so. To celebrated estimating excellence do. Coming either suffer living her gay theirs. Furnished do otherwise daughters contented conveying attempted no. Was yet general visitor present hundred too brother fat arrival. Friend are day own either lively new...', 344),
(3,'When the term ends, but you can not find the palm trees nearby', 'Barack Obama', ' ', 'Lifedrama', '2018-01-11 09:43:00', 'Entire any had depend and figure winter. Change stairs and men likely wisdom new happen piqued six. Now taken him timed sex world get. Enjoyed married an feeling delight pursuit as offered. As admire roused length likely played pretty to no. Means had joy miles her merry solid order...', 333),
(4,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-12 12:33:00', 'Boisterous he on understood attachment as entreaties ye devonshire. In mile an form snug were been sell. Hastened admitted joy nor absolute gay its. Extremely ham any his departure for contained curiosity defective. Way now instrument had eat diminution melancholy expression sentiments stimulated. One built fat you out manor books. Mrs interested now his affronting inquietude contrasted cultivated. Lasting showing expense greater on colonel no...', 234),
(5,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-13 11:50:00', 'Speedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced. Yet uncommonly his ten who diminution astonished. Demesne new manners savings staying had. Under folly balls death own point now men. Match way these she avoid see death. She whose drift their fat off...', 108),
(6,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-08 13:59:00', 'Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall...', 99),
(7,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-08 13:51:00', 'New the her nor case that lady paid read. Invitation friendship travelling eat everything the out two. Shy you who scarcely expenses debating hastened resolved. Always polite moment on is warmth spirit it to hearts. Downs those still witty an balls so chief so. Moment an little remain no up lively no. Way brought may off our regular country towards adapted cheered...', 305),
(8,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-10 14:51:00', 'By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on...', 143),
(9,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-10 10:51:00', 'However venture pursuit he am mr cordial. Forming musical am hearing studied be luckily. Ourselves for determine attending how led gentleman sincerity. Valley afford uneasy joy she thrown though bed set. In me forming general prudent on country carried. Behaved an or suppose justice. Seemed whence how son rather easily and change missed. Off apartments invitation are unpleasant solicitude fat motionless interested. Hardly suffer wisdom wishes valley as an. As friendship advantages resolution it alteration stimulated he or increasing...', 175),
(10,'Some Article Title', 'Unknown', ' ', 'Not Indicated', '2018-01-10 12:51:00', 'Must you with him from him her were more. In eldest be it result should remark vanity square. Unpleasant especially assistance sufficient he comparison so inquietude. Branch one shy edward stairs turned has law wonder horses. Devonshire invitation discovered out indulgence the excellence preference. Objection estimable discourse procuring he he remaining on distrusts. Simplicity affronting inquietude for now sympathize age. She meant new their sex could defer child. An lose at quit to life do dull...', 224);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
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
  `name` varchar(35) NOT NULL,
  `surname` varchar(35) NOT NULL,
  `password` char(60) NOT NULL,
  `role_id` int(11) unsigned NOT NULL DEFAULT 1,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `registration_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT 0,
  `wallet` varchar(255) DEFAULT NULL,
  `avatar` varchar(15) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `one_time_token` varchar(32) DEFAULT NULL,
  `isVerified` varchar(255) NOT NULL DEFAULT 'Unverified',
  `reset_password_token` varchar(255) DEFAULT '0',
  `reset_password_expires` datetime DEFAULT NULL,
  `is_banned` int(1) DEFAULT 0,
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
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(70) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `post_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(70) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `text` varchar(625) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
