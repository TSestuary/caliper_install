-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 192.168.64.97    Database: uams
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

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
-- Table structure for table `account_account`
--

DROP TABLE IF EXISTS `account_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `date_locked` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `account_account_site_id_2ab408b4_fk_backend_site_id` (`site_id`) USING BTREE,
  CONSTRAINT `account_account_ibfk_1` FOREIGN KEY (`site_id`) REFERENCES `backend_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_account`
--

LOCK TABLES `account_account` WRITE;
/*!40000 ALTER TABLE `account_account` DISABLE KEYS */;
INSERT INTO `account_account` VALUES (1,'pbkdf2_sha256$36000$Swr5xrLF3hIb$5dgV/xiyIUZfU95lP8jT53yIM6yk50irBfEYQ8Ky6B8=','2018-01-11 14:14:08.703030','uams','luoyw0711@thundersoft.com',1,1,'2017-12-28 11:22:44.503000',NULL,1,NULL),(2,'pbkdf2_sha256$36000$NYxlnoNrulYl$3aojUMf+7xvoyCckH/SvymT6Mc46JoqyY/ih/d7veRU=',NULL,'caliper','c@qq.com',0,1,'2017-12-28 15:09:00.156000',NULL,0,NULL),(3,'pbkdf2_sha256$36000$qOlPZ6g3M1Vf$oIe1IhoavbmRNboKiYybK4kVeUh6LNhL+5bFp63L7F8=',NULL,'zhangxin','zhangxin@zhangxin.com',0,1,'2017-12-28 15:42:13.661000',NULL,0,NULL),(4,'pbkdf2_sha256$36000$X2IDiMOVLF3g$2y34+3a9BmqoeaFa6vncMwCWA3AGRsD8WJhQAqOLdao=',NULL,'max','487qq@163.com',0,1,'2017-12-28 16:24:07.923000','2017-12-29 00:00:00.000000',0,NULL),(5,'pbkdf2_sha256$36000$tQOLIEW5Y2wT$MP9J3yXCZD2PFgknfgd3/g2032Tp6MtaSYkU8R2MTnQ=',NULL,'qiuqiaohua','gorgeodby@163.com',0,1,'2017-12-29 09:36:22.061000',NULL,0,NULL),(6,'pbkdf2_sha256$36000$OQrbqHVCEkrQ$pBo/PW/YV+WXnhERhClDS5JZRj5qYO6tY6eQKzNqfSY=',NULL,'admin','gorgebaby@163.com',0,1,'2017-12-29 10:36:19.614000',NULL,0,NULL),(7,'pbkdf2_sha256$36000$5VfQ9BlWm47C$/qjwXhN28sRv/Gb8smZMLvR9/aGtAmAbkpl+WhBNotQ=',NULL,'super','super@q.com',0,1,'2017-12-29 22:20:00.000000',NULL,0,NULL),(8,'pbkdf2_sha256$36000$5VfQ9BlWm47C$/qjwXhN28sRv/Gb8smZMLvR9/aGtAmAbkpl+WhBNotQ=',NULL,'asset','asset@qq.com',0,1,'2017-12-29 22:23:00.000000',NULL,0,NULL),(9,'pbkdf2_sha256$36000$5VfQ9BlWm47C$/qjwXhN28sRv/Gb8smZMLvR9/aGtAmAbkpl+WhBNotQ=',NULL,'maintain','maintain@qq.com',0,1,'2017-12-29 22:25:00.000000',NULL,0,NULL),(10,'pbkdf2_sha256$36000$5VfQ9BlWm47C$/qjwXhN28sRv/Gb8smZMLvR9/aGtAmAbkpl+WhBNotQ=',NULL,'operation','operation@qq.com',0,1,'2017-12-29 22:28:00.000000',NULL,0,NULL),(11,'pbkdf2_sha256$36000$thqWHp3eXyAH$35OT0NHIP+ZsVExousnqtPvQYl1aj/7ikpiQyobKCbw=',NULL,'cuser','cuser@qq.com',0,1,'2018-01-02 10:52:00.000000','2018-01-10 00:00:00.000000',0,NULL),(12,'pbkdf2_sha256$36000$gZVKlfGtOXFs$T/hz3nF9FGJ625Uck2LIYnVfCsIwIRuQcZ6rLT2Um4o=',NULL,'maintain1','maintain1@qq.com',0,1,'2018-01-04 14:54:00.000000',NULL,0,NULL),(13,'pbkdf2_sha256$36000$EumNHFsbqT6h$Q2nW+FobMS2oTiN+YlYpQG6tqrFlSlETThiNsCGE5TU=',NULL,'cuser2','cuser2@qq.com',0,1,'2018-01-04 14:54:00.000000','2018-01-10 00:00:00.000000',0,NULL),(25,'pbkdf2_sha256$36000$P4fd1gASdGt7$4vsm+GvDqTLHuBJJ/fa/6X6rUR8jg9XHtEoKUG7B5ic=',NULL,'test00','test00@qq.com',0,1,'2018-01-05 11:31:00.000000',NULL,0,NULL),(26,'pbkdf2_sha256$36000$SyislmqYIkmi$DGyIalBAe0IlkcbQssOMv1iOLc+A5HL+Wljv1m9Zvb4=',NULL,'test01','test01@qq.com',0,1,'2018-01-05 11:32:00.000000',NULL,0,NULL),(27,'pbkdf2_sha256$36000$cTOG8xLXYgqb$x6gAl6GtPXatIaPHE01o0m129uxqbMdA2GX5dnT+GXA=',NULL,'test02','test02@qq.com',0,1,'2018-01-05 11:45:00.000000',NULL,0,NULL),(28,'pbkdf2_sha256$36000$2b7jxwv1AiIZ$MwaaTrHdlkwjiVhQScAbvreIRuK+WhF1l06Q5fJdP+I=',NULL,'test03','test03@qq.com',0,1,'2018-01-05 11:46:00.000000',NULL,0,NULL);
/*!40000 ALTER TABLE `account_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_account_sites`
--

DROP TABLE IF EXISTS `account_account_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_account_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_account_sites_account_id_site_id_e4ba7dfa_uniq` (`account_id`,`site_id`) USING BTREE,
  KEY `account_account_sites_site_id_974bc056_fk_backend_site_id` (`site_id`) USING BTREE,
  CONSTRAINT `account_account_sites_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_account` (`id`),
  CONSTRAINT `account_account_sites_ibfk_2` FOREIGN KEY (`site_id`) REFERENCES `backend_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_account_sites`
--

LOCK TABLES `account_account_sites` WRITE;
/*!40000 ALTER TABLE `account_account_sites` DISABLE KEYS */;
INSERT INTO `account_account_sites` VALUES (11,1,2),(1,1,4),(4,2,1),(2,2,3),(3,2,4),(5,3,3),(7,4,1),(6,4,3),(8,5,3),(10,6,1),(9,6,3),(16,7,2),(12,7,3),(30,7,6),(25,7,7),(17,8,2),(13,8,3),(18,8,6),(22,8,7),(71,8,8),(34,8,9),(65,9,2),(14,9,3),(29,9,6),(19,9,7),(27,10,2),(15,10,3),(24,10,6),(56,10,8),(28,10,9),(32,11,1),(31,11,2),(20,11,3),(21,11,6),(23,11,7),(26,11,8),(33,11,9),(35,12,3),(70,12,6),(37,12,7),(36,13,3),(38,13,6);
/*!40000 ALTER TABLE `account_account_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`) USING BTREE,
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`) USING BTREE,
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add remote job',6,'add_remotejob'),(17,'Can change remote job',6,'change_remotejob'),(18,'Can delete remote job',6,'delete_remotejob'),(19,'Can add API credential',7,'add_apikey'),(20,'Can change API credential',7,'change_apikey'),(21,'Can delete API credential',7,'delete_apikey'),(22,'Can add log',8,'add_log'),(23,'Can change log',8,'change_log'),(24,'Can delete log',8,'delete_log'),(25,'Can add 站点组',9,'add_site'),(26,'Can change 站点组',9,'change_site'),(27,'Can delete 站点组',9,'delete_site'),(28,'Can add 用户',10,'add_account'),(29,'Can change 用户',10,'change_account'),(30,'Can delete 用户',10,'delete_account'),(31,'Can add 账号备份',11,'add_backup'),(32,'Can change 账号备份',11,'change_backup'),(33,'Can delete 账号备份',11,'delete_backup'),(34,'Can add 备份策略',12,'add_strategy'),(35,'Can change 备份策略',12,'change_strategy'),(36,'Can delete 备份策略',12,'delete_strategy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authen_apikey`
--

DROP TABLE IF EXISTS `authen_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authen_apikey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apikey` varchar(8) NOT NULL,
  `secret` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apikey` (`apikey`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authen_apikey`
--

LOCK TABLES `authen_apikey` WRITE;
/*!40000 ALTER TABLE `authen_apikey` DISABLE KEYS */;
INSERT INTO `authen_apikey` VALUES (1,'ff205290','ceb59112354f4599bd2af9b4bf5ab70a'),(2,'42565d6c','afdd4b1fefcd4dd892602dd990267924'),(3,'22dd41a8','d207be648bad4b0cac4e6066954ab2eb'),(4,'fa19d893','74643558ab664359b0830386ef5fe940'),(5,'97e78262','24a64c435a214867baf1fb9c8b85b03a'),(6,'c472273a','df3d976ac1bd4b969cbb911199d1c685'),(7,'9871d4ac','fa4215fb8f1d49e38c5f1fac424205e8'),(8,'aa796122','db2244e6f7ab440e9590b84a7a432f6b'),(9,'0313769e','f34bfa4345f846b5a813424e6fe843bf'),(10,'1944e78b','5fc0c942bf324dc5ba0fab3bbefbcb29');
/*!40000 ALTER TABLE `authen_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_log`
--

DROP TABLE IF EXISTS `backend_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `user` varchar(20) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `operation` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_log`
--

LOCK TABLES `backend_log` WRITE;
/*!40000 ALTER TABLE `backend_log` DISABLE KEYS */;
INSERT INTO `backend_log` VALUES (1,'127.0.0.1','luo','2017-12-28 11:25:04.993000','创建站点组 CaliperServer'),(2,'127.0.0.1','luo','2017-12-28 11:25:33.152000','创建站点组 裸板云'),(3,'127.0.0.1','luo','2017-12-28 11:26:32.426000','创建站点组 OpenEstuary'),(4,'127.0.0.1','luo','2017-12-28 13:21:39.236000','修改站点组 CaliperServer'),(5,'127.0.0.1','luo','2017-12-28 13:21:56.464000','创建站点组 CaliperServer1'),(6,'127.0.0.1','luo','2017-12-28 14:45:38.871000','激活 CaliperServer1'),(7,'127.0.0.1','luo','2017-12-28 14:47:53.787000','登录 CaliperServer1'),(8,'127.0.0.1','luo','2017-12-28 14:51:47.879000','登出'),(9,'127.0.0.1','luo','2017-12-28 14:53:35.291000','登录 CaliperServer1'),(10,'127.0.0.1','luo','2017-12-28 14:53:42.020000','登出'),(11,'127.0.0.1','luo','2017-12-28 14:54:01.979000','登录 CaliperServer1'),(12,'127.0.0.1','luo','2017-12-28 14:55:12.112000','登出'),(13,'127.0.0.1','caliper','2017-12-28 15:09:05.548000','注册 CaliperServer1'),(14,'127.0.0.1','caliper','2017-12-28 15:09:10.652000','登出'),(15,'127.0.0.1','caliper','2017-12-28 15:16:24.639000','激活 CaliperServer1'),(16,'127.0.0.1','luo','2017-12-28 15:35:54.626000','创建站点组 CaliperServer2'),(17,'192.168.64.196','caliper','2017-12-28 15:39:36.774000','激活 CaliperServer'),(18,'192.168.66.120','zhangxin','2017-12-28 15:42:18.748000','注册 CaliperServer2'),(19,'192.168.64.196','max','2017-12-28 16:24:13.124000','注册 CaliperServer'),(20,'192.168.64.196','max','2017-12-28 16:24:54.278000','激活 CaliperServer'),(21,'127.0.0.1','luo','2017-12-28 21:06:42.820000','登录 CaliperServer1'),(22,'127.0.0.1','luo','2017-12-28 21:06:46.183000','登出'),(23,'127.0.0.1','luo','2017-12-28 21:10:34.967000','登录 CaliperServer1'),(24,'127.0.0.1','luo','2017-12-28 21:16:12.566000','登出'),(25,'127.0.0.1','luo','2017-12-28 21:17:35.490000','重置密码'),(26,'127.0.0.1','luo','2017-12-28 21:18:09.678000','登录 CaliperServer1'),(27,'127.0.0.1','luo','2017-12-28 21:18:29.701000','登出'),(28,'127.0.0.1','luo','2017-12-28 21:18:44.309000','登录 CaliperServer1'),(29,'127.0.0.1','luo','2017-12-28 21:19:02.710000','修改密码'),(30,'127.0.0.1','luo','2017-12-28 21:19:05.834000','登出'),(31,'127.0.0.1','luo','2017-12-28 21:21:07.454000','登录 CaliperServer1'),(32,'192.168.64.196','qiuqiaohua','2017-12-29 09:36:27.381000','注册 CaliperServer'),(33,'127.0.0.1','luo','2017-12-29 10:04:20.289000','锁定账号 max'),(34,'127.0.0.1','luo','2017-12-29 10:12:59.108000','解锁账号 max'),(35,'192.168.64.196','admin','2017-12-29 10:36:24.765000','注册 CaliperServer'),(36,'192.168.64.196','admin','2017-12-29 10:36:53.262000','激活 CaliperServer'),(37,'127.0.0.1','super','2017-12-29 10:47:29.426000','注册 CaliperServer1'),(38,'127.0.0.1','super','2017-12-29 10:48:11.558000','登出'),(39,'127.0.0.1','super','2017-12-29 10:49:48.068000','注册 CaliperServer1'),(40,'127.0.0.1','super','2017-12-29 10:52:50.862000','激活 CaliperServer1'),(41,'127.0.0.1','super','2017-12-29 10:53:04.319000','登出'),(42,'127.0.0.1','super','2017-12-29 10:53:12.260000','登录 CaliperServer1'),(43,'127.0.0.1','super','2017-12-29 10:56:42.290000','登出'),(44,'127.0.0.1','super2','2017-12-29 10:57:24.249000','注册 CaliperServer1'),(45,'127.0.0.1','super2','2017-12-29 10:57:48.340000','登出'),(46,'127.0.0.1','luo','2017-12-29 22:17:11.119000','激活 裸板云'),(47,'127.0.0.1','luo','2017-12-29 22:18:15.045000','登录 裸板云'),(48,'127.0.0.1','luo','2017-12-29 22:20:08.111000','登出'),(49,'127.0.0.1','super','2017-12-29 22:29:18.798000','激活 裸板云'),(50,'127.0.0.1','super','2017-12-29 22:29:37.694000','登出'),(51,'127.0.0.1','asset','2017-12-29 22:29:49.586000','激活 裸板云'),(52,'127.0.0.1','luo','2018-01-02 10:47:36.923000','创建站点组 裸版云DEV_ASSET'),(53,'127.0.0.1','luo','2018-01-02 10:48:04.739000','修改站点组 CaliperServerDEV'),(54,'192.168.65.254','asset','2018-01-02 10:48:08.970000','激活 裸版云DEV_ASSET'),(55,'127.0.0.1','luo','2018-01-02 10:48:11.106000','修改站点组 CaliperServerDEV_2'),(56,'127.0.0.1','luo','2018-01-02 10:48:19.121000','修改站点组 CaliperServerDEV_1'),(57,'127.0.0.1','luo','2018-01-02 10:48:26.548000','修改站点组 裸板云DEV'),(58,'127.0.0.1','luo','2018-01-02 10:49:05.367000','修改站点组 CaliperServerDEV'),(59,'127.0.0.1','luo','2018-01-02 10:49:45.535000','修改站点组 OpenEstuaryDEV'),(60,'192.168.65.254','asset','2018-01-02 10:50:48.924000','登出'),(61,'192.168.65.254','asset','2018-01-02 10:50:56.201000','登录 裸版云DEV_ASSET'),(62,'192.168.65.254','asset','2018-01-02 10:50:58.741000','登出'),(63,'127.0.0.1','luo','2018-01-02 10:51:03.472000','创建站点组 裸板云DEV_SUPER'),(64,'127.0.0.1','luo','2018-01-02 10:51:18.860000','创建站点组 裸板云DEV_CUSER'),(65,'192.168.65.254','asset','2018-01-02 10:51:19.935000','登录 裸版云DEV_ASSET'),(66,'192.168.65.254','asset','2018-01-02 10:52:21.497000','登出'),(67,'192.168.65.161','maintain','2018-01-02 10:52:46.586000','激活 裸板云DEV_SUPER'),(68,'192.168.65.254','cuser','2018-01-02 10:53:34.197000','激活 裸版云DEV_ASSET'),(69,'192.168.65.161','maintain','2018-01-02 10:53:57.832000','登出'),(70,'192.168.65.161','asset','2018-01-02 10:54:07.535000','激活 裸板云DEV_SUPER'),(71,'192.168.65.161','asset','2018-01-02 10:54:22.315000','登出'),(72,'192.168.65.161','cuser','2018-01-02 10:54:31.249000','激活 裸板云DEV_SUPER'),(73,'192.168.65.161','cuser','2018-01-02 10:54:38.668000','登出'),(74,'192.168.65.254','cuser','2018-01-02 10:54:56.227000','登出'),(75,'192.168.65.254','operation','2018-01-02 10:55:06.598000','激活 裸版云DEV_ASSET'),(76,'192.168.65.254','operation','2018-01-02 10:55:11.888000','登出'),(77,'192.168.65.254','asset','2018-01-02 10:55:15.371000','登录 裸版云DEV_ASSET'),(78,'192.168.65.161','asset','2018-01-02 10:56:56.906000','登录 裸板云DEV_SUPER'),(79,'192.168.65.254','asset','2018-01-02 11:24:08.489000','登出'),(80,'192.168.65.254','cuser','2018-01-02 11:24:12.178000','登录 裸版云DEV_ASSET'),(81,'192.168.65.161','maintain','2018-01-02 13:44:17.298000','登录 裸板云DEV_SUPER'),(82,'192.168.65.254','asset','2018-01-02 13:44:49.797000','登录 裸版云DEV_ASSET'),(83,'192.168.65.161','super','2018-01-02 14:15:13.461000','激活 裸板云DEV_SUPER'),(84,'192.168.65.254','cuser','2018-01-02 14:16:21.385000','登录 裸版云DEV_ASSET'),(85,'192.168.65.161','maintain','2018-01-02 14:16:25.049000','登录 裸板云DEV_SUPER'),(86,'192.168.65.161','super','2018-01-02 14:56:36.764000','登录 裸板云DEV_SUPER'),(87,'192.168.65.161','super','2018-01-02 15:33:47.535000','登录 裸板云DEV_SUPER'),(88,'192.168.65.161','maintain','2018-01-02 15:40:40.658000','登录 裸板云DEV_SUPER'),(89,'192.168.65.254','cuser','2018-01-02 16:03:38.116000','登录 裸版云DEV_ASSET'),(90,'192.168.65.254','cuser','2018-01-02 16:03:59.083000','登录 裸版云DEV_ASSET'),(91,'192.168.65.254','cuser','2018-01-02 16:04:11.252000','登录 裸版云DEV_ASSET'),(92,'192.168.65.254','asset','2018-01-02 16:04:24.154000','登录 裸版云DEV_ASSET'),(93,'127.0.0.1','super','2018-01-02 16:20:00.300000','登录 裸板云DEV'),(94,'127.0.0.1','super','2018-01-02 16:45:04.324000','登出'),(95,'127.0.0.1','super','2018-01-02 16:45:12.771000','登录 裸板云DEV'),(96,'192.168.65.161','maintain','2018-01-02 16:47:28.089000','登出'),(97,'192.168.65.161','super','2018-01-02 16:47:31.927000','登录 裸板云DEV_SUPER'),(98,'192.168.65.161','super','2018-01-02 16:48:16.701000','登出'),(99,'192.168.65.161','maintain','2018-01-02 16:48:20.983000','登录 裸板云DEV_SUPER'),(100,'192.168.65.254','asset','2018-01-02 17:34:52.441000','登出'),(101,'192.168.65.254','cuser','2018-01-02 17:34:55.859000','登录 裸版云DEV_ASSET'),(102,'127.0.0.1','super','2018-01-02 20:32:41.046000','登录 裸板云DEV'),(103,'127.0.0.1','super','2018-01-02 20:33:25.255000','登录 裸板云DEV'),(104,'127.0.0.1','super','2018-01-02 20:41:44.783000','登录 裸板云DEV'),(105,'127.0.0.1','super','2018-01-02 21:13:51.468000','登录 裸板云DEV'),(106,'127.0.0.1','super','2018-01-02 21:20:57.616000','登录 裸板云DEV'),(107,'127.0.0.1','super','2018-01-02 22:50:57.774000','登录 裸板云DEV'),(108,'192.168.65.254','asset','2018-01-03 09:42:12.156000','登录 裸版云DEV_ASSET'),(109,'192.168.65.161','maintain','2018-01-03 09:42:47.070000','登录 裸板云DEV_SUPER'),(110,'192.168.65.254','asset','2018-01-03 09:47:42.341000','登出'),(111,'192.168.65.161','maintain','2018-01-03 09:50:17.183000','登出'),(112,'192.168.65.161','super','2018-01-03 09:50:29.685000','登录 裸板云DEV_SUPER'),(113,'192.168.65.254','cuser','2018-01-03 10:04:30.151000','登录 裸版云DEV_ASSET'),(114,'192.168.65.161','super','2018-01-03 10:12:48.946000','登出'),(115,'192.168.65.254','cuser','2018-01-03 10:12:49.776000','登出'),(116,'192.168.65.254','asset','2018-01-03 10:12:53.941000','登录 裸版云DEV_ASSET'),(117,'192.168.65.161','maintain','2018-01-03 10:12:55.375000','登录 裸板云DEV_SUPER'),(118,'192.168.64.196','cuser','2018-01-03 10:14:30.044000','激活 裸板云DEV_CUSER'),(119,'192.168.65.254','asset','2018-01-03 10:14:31.768000','登出'),(120,'192.168.65.254','cuser','2018-01-03 10:14:35.496000','登录 裸版云DEV_ASSET'),(121,'192.168.64.196','max','2018-01-03 10:28:47.667000','登录 CaliperServerDEV'),(122,'127.0.0.1','operation','2018-01-03 10:40:14.833000','激活 裸板云DEV'),(123,'192.168.65.254','cuser','2018-01-03 11:30:43.745000','登录 裸版云DEV_ASSET'),(124,'127.0.0.1','super','2018-01-03 11:47:24.033000','登录 裸板云DEV'),(125,'192.168.65.161','cuser','2018-01-03 13:25:49.921000','登录 裸板云DEV_SUPER'),(126,'192.168.65.161','cuser','2018-01-03 13:26:35.613000','登出'),(127,'192.168.65.161','cuser','2018-01-03 13:26:42.049000','登录 裸板云DEV_SUPER'),(128,'127.0.0.1','super','2018-01-03 13:28:27.086000','登录 裸板云DEV'),(129,'192.168.65.161','cuser','2018-01-03 13:34:35.260000','登出'),(130,'192.168.65.161','maintain','2018-01-03 13:34:48.632000','登录 裸板云DEV_SUPER'),(131,'192.168.65.254','asset','2018-01-03 14:49:25.352000','登录 裸版云DEV_ASSET'),(132,'192.168.65.161','maintain','2018-01-03 15:09:20.703000','登录 裸板云DEV_SUPER'),(133,'192.168.65.161','maintain','2018-01-03 15:32:50.553000','登出'),(134,'192.168.65.161','asset','2018-01-03 15:32:59.580000','登录 裸板云DEV_SUPER'),(135,'192.168.65.161','asset','2018-01-03 15:39:54.520000','登出'),(136,'192.168.65.161','maintain','2018-01-03 15:40:00.418000','登录 裸板云DEV_SUPER'),(137,'192.168.65.161','asset','2018-01-03 16:00:16.981000','登录 裸板云DEV_SUPER'),(138,'192.168.65.254','cuser','2018-01-03 16:15:15.812000','登录 裸版云DEV_ASSET'),(139,'192.168.65.254','cuser','2018-01-03 16:18:58.169000','登出'),(140,'192.168.65.254','asset','2018-01-03 16:19:01.950000','登录 裸版云DEV_ASSET'),(141,'127.0.0.1','luo','2018-01-03 16:26:29.037000','创建站点组 裸板云DEV_OP'),(142,'192.168.64.63','operation','2018-01-03 16:29:38.821000','激活 裸板云DEV_OP'),(143,'192.168.65.254','asset','2018-01-03 16:48:37.852000','登出'),(144,'192.168.65.254','cuser','2018-01-03 16:48:41.491000','登录 裸版云DEV_ASSET'),(145,'192.168.65.254','cuser','2018-01-03 16:51:14.271000','登出'),(146,'192.168.65.254','asset','2018-01-03 16:51:17.664000','登录 裸版云DEV_ASSET'),(147,'127.0.0.1','super','2018-01-03 17:05:25.031000','登录 裸板云DEV'),(148,'127.0.0.1','super','2018-01-03 17:05:58.086000','登出'),(149,'127.0.0.1','super','2018-01-03 17:06:09.431000','登录 裸板云DEV'),(150,'192.168.65.254','asset','2018-01-03 17:11:45.107000','登出'),(151,'192.168.65.254','maintain','2018-01-03 17:11:57.415000','激活 裸版云DEV_ASSET'),(152,'192.168.65.254','maintain','2018-01-03 17:17:46.977000','登出'),(153,'192.168.65.254','super','2018-01-03 17:17:58.425000','激活 裸版云DEV_ASSET'),(154,'192.168.65.254','super','2018-01-03 17:18:50.744000','登出'),(155,'192.168.65.254','asset','2018-01-03 17:18:56.493000','登录 裸版云DEV_ASSET'),(156,'192.168.65.254','cuser','2018-01-03 18:46:45.924000','登录 裸版云DEV_ASSET'),(157,'127.0.0.1','cuser','2018-01-03 19:16:59.354000','激活 裸板云DEV'),(158,'192.168.65.254','operation','2018-01-03 19:36:10.580000','登录 裸版云DEV_ASSET'),(159,'192.168.65.254','operation','2018-01-03 19:55:21.053000','登出'),(160,'192.168.65.254','cuser','2018-01-03 19:55:27.162000','登录 裸版云DEV_ASSET'),(161,'192.168.65.254','cuser','2018-01-03 20:04:25.490000','登出'),(162,'192.168.65.254','asset','2018-01-03 20:04:31.538000','登录 裸版云DEV_ASSET'),(163,'192.168.64.196','cuser','2018-01-04 10:19:29.299000','登录 裸板云DEV_CUSER'),(164,'192.168.64.196','cuser','2018-01-04 10:29:56.791000','激活 CaliperServerDEV'),(165,'192.168.64.196','cuser','2018-01-04 10:30:10.469000','登出'),(166,'192.168.65.161','maintain','2018-01-04 10:41:11.369000','登录 裸板云DEV_SUPER'),(167,'192.168.65.161','maintain','2018-01-04 10:46:00.412000','登出'),(168,'192.168.65.161','asset','2018-01-04 10:46:21.539000','登录 裸板云DEV_SUPER'),(169,'192.168.65.161','asset','2018-01-04 10:46:33.242000','登出'),(170,'192.168.65.161','cuser','2018-01-04 10:46:38.721000','登录 裸板云DEV_SUPER'),(171,'192.168.65.161','cuser','2018-01-04 10:46:58.396000','登出'),(172,'192.168.65.161','maintain','2018-01-04 10:50:27.225000','登录 裸板云DEV_SUPER'),(173,'192.168.64.63','cuser','2018-01-04 10:54:16.073000','激活 裸板云DEV_OP'),(174,'192.168.65.254','asset','2018-01-04 11:06:33.339000','登录 裸版云DEV_ASSET'),(175,'192.168.65.254','asset','2018-01-04 11:13:21.201000','登出'),(176,'192.168.65.254','cuser','2018-01-04 11:13:25.294000','登录 裸版云DEV_ASSET'),(177,'192.168.65.161','cuser','2018-01-04 11:21:24.450000','登录 裸板云DEV_SUPER'),(178,'127.0.0.1','operation','2018-01-04 11:24:08.672000','登录 裸板云DEV'),(179,'127.0.0.1','operation','2018-01-04 11:25:20.857000','登出'),(180,'127.0.0.1','asset','2018-01-04 11:25:27.505000','登录 裸板云DEV'),(181,'192.168.64.63','asset','2018-01-04 11:26:35.853000','激活 裸板云DEV_OP'),(182,'192.168.64.63','operation','2018-01-04 11:27:22.309000','登录 裸板云DEV_OP'),(183,'192.168.65.254','cuser','2018-01-04 11:31:29.965000','登出'),(184,'192.168.65.254','asset','2018-01-04 11:31:33.466000','登录 裸版云DEV_ASSET'),(185,'192.168.65.254','asset','2018-01-04 11:33:57.940000','登出'),(186,'192.168.65.254','cuser','2018-01-04 11:34:02.106000','登录 裸版云DEV_ASSET'),(187,'127.0.0.1','asset','2018-01-04 11:34:33.578000','登出'),(188,'127.0.0.1','super','2018-01-04 11:34:45.826000','登录 裸板云DEV'),(189,'127.0.0.1','super','2018-01-04 11:34:57.188000','登出'),(190,'127.0.0.1','asset','2018-01-04 11:35:04.894000','登录 裸板云DEV'),(191,'127.0.0.1','asset','2018-01-04 11:35:23.070000','登出'),(192,'127.0.0.1','operation','2018-01-04 11:38:49.649000','登录 裸板云DEV'),(193,'192.168.65.254','operation','2018-01-04 12:57:15.291000','登录 裸版云DEV_ASSET'),(194,'192.168.65.254','operation','2018-01-04 12:58:10.737000','登出'),(195,'192.168.65.254','operation','2018-01-04 12:58:26.277000','登录 裸版云DEV_ASSET'),(196,'192.168.65.254','operation','2018-01-04 12:59:22.586000','登出'),(197,'192.168.65.254','asset','2018-01-04 12:59:25.877000','登录 裸版云DEV_ASSET'),(198,'127.0.0.1','operation','2018-01-04 13:18:24.487000','登录 裸板云DEV'),(199,'192.168.65.161','cuser','2018-01-04 13:25:38.646000','登录 裸板云DEV_SUPER'),(200,'192.168.64.63','asset','2018-01-04 13:30:09.131000','登录 裸板云DEV_OP'),(201,'192.168.65.161','cuser','2018-01-04 13:40:45.905000','登出'),(202,'192.168.65.161','maintain','2018-01-04 13:40:59.688000','登录 裸板云DEV_SUPER'),(203,'192.168.65.254','asset','2018-01-04 13:46:50.569000','登录 裸版云DEV_ASSET'),(204,'192.168.65.161','maintain','2018-01-04 14:16:37.996000','登录 裸板云DEV_SUPER'),(205,'192.168.65.254','asset','2018-01-04 14:17:36.099000','登录 裸版云DEV_ASSET'),(206,'192.168.64.196','cuser','2018-01-04 14:20:10.806000','登录 裸板云DEV_CUSER'),(207,'192.168.65.161','maintain','2018-01-04 14:44:23.125000','登出'),(208,'192.168.65.161','maintain','2018-01-04 14:46:20.181000','登录 裸板云DEV_SUPER'),(209,'192.168.65.161','maintain','2018-01-04 14:46:29.523000','登出'),(210,'192.168.65.161','maintain','2018-01-04 14:48:27.086000','登录 裸板云DEV_SUPER'),(211,'192.168.65.254','cuser','2018-01-04 14:50:23.092000','登录 裸版云DEV_ASSET'),(212,'192.168.65.254','cuser','2018-01-04 14:50:56.223000','登出'),(213,'192.168.65.254','asset','2018-01-04 14:50:59.987000','登录 裸版云DEV_ASSET'),(214,'192.168.65.254','asset','2018-01-04 14:53:43.631000','登出'),(215,'192.168.65.254','asset','2018-01-04 14:53:47.171000','登录 裸版云DEV_ASSET'),(216,'192.168.65.161','maintain','2018-01-04 14:56:51.702000','登出'),(217,'192.168.65.161','maintain1','2018-01-04 14:56:59.659000','激活 裸板云DEV_SUPER'),(218,'192.168.65.161','maintain1','2018-01-04 14:57:40.142000','登出'),(219,'192.168.65.161','maintain','2018-01-04 14:57:47.291000','登录 裸板云DEV_SUPER'),(220,'192.168.65.161','maintain','2018-01-04 15:02:34.342000','登出'),(221,'192.168.65.161','maintain1','2018-01-04 15:02:39.052000','登录 裸板云DEV_SUPER'),(222,'192.168.65.161','maintain1','2018-01-04 15:02:47.881000','登出'),(223,'192.168.65.161','maintain','2018-01-04 15:02:54.543000','登录 裸板云DEV_SUPER'),(224,'192.168.65.254','asset','2018-01-04 15:03:17.527000','登出'),(225,'192.168.65.254','cuser2','2018-01-04 15:03:22.216000','激活 裸版云DEV_ASSET'),(226,'192.168.65.161','maintain','2018-01-04 15:16:56.942000','登出'),(227,'192.168.65.161','maintain','2018-01-04 15:17:10.195000','登录 裸板云DEV_SUPER'),(228,'192.168.65.161','maintain','2018-01-04 15:17:48.538000','登出'),(229,'192.168.65.161','super','2018-01-04 15:18:06.288000','登录 裸板云DEV_SUPER'),(230,'192.168.65.254','cuser2','2018-01-04 15:19:58.433000','登出'),(231,'192.168.65.254','maintain','2018-01-04 15:26:18.534000','登录 裸版云DEV_ASSET'),(232,'192.168.65.161','super','2018-01-04 15:27:17.965000','登出'),(233,'192.168.65.161','maintain','2018-01-04 15:27:23.537000','登录 裸板云DEV_SUPER'),(234,'192.168.65.161','maintain','2018-01-04 15:30:08.883000','登出'),(235,'192.168.65.161','cuser','2018-01-04 15:30:14.567000','登录 裸板云DEV_SUPER'),(236,'192.168.65.161','cuser','2018-01-04 15:30:34.277000','登出'),(237,'192.168.65.161','super','2018-01-04 15:30:40.818000','登录 裸板云DEV_SUPER'),(238,'192.168.65.254','maintain','2018-01-04 15:36:56.317000','登出'),(239,'192.168.65.254','asset','2018-01-04 15:37:00.824000','登录 裸版云DEV_ASSET'),(240,'127.0.0.1','super','2018-01-04 15:54:35.990000','登录 裸板云DEV'),(241,'127.0.0.1','super','2018-01-04 15:55:20.447000','登出'),(242,'127.0.0.1','super','2018-01-04 15:55:27.633000','登录 裸板云DEV'),(243,'192.168.65.254','asset','2018-01-04 15:58:32.198000','登出'),(244,'192.168.65.254','cuser','2018-01-04 15:58:36.352000','登录 裸版云DEV_ASSET'),(245,'192.168.65.254','cuser','2018-01-04 16:01:12.588000','登出'),(246,'192.168.65.254','super','2018-01-04 16:01:18.238000','登录 裸版云DEV_ASSET'),(247,'192.168.65.254','super','2018-01-04 16:03:44.696000','登出'),(248,'192.168.65.254','asset','2018-01-04 16:03:48.573000','登录 裸版云DEV_ASSET'),(249,'192.168.65.161','maintain','2018-01-04 16:17:01.856000','登录 裸板云DEV_SUPER'),(250,'192.168.65.254','asset','2018-01-04 16:36:10.451000','登出'),(251,'192.168.65.254','maintain','2018-01-04 16:36:15.217000','登录 裸版云DEV_ASSET'),(252,'127.0.0.1','super','2018-01-04 16:40:00.657000','登录 裸板云DEV'),(253,'127.0.0.1','super','2018-01-04 16:40:36.749000','登出'),(254,'127.0.0.1','luo','2018-01-04 16:40:42.866000','登录 裸板云DEV'),(255,'127.0.0.1','luo','2018-01-04 16:41:53.350000','登出'),(256,'127.0.0.1','super5','2018-01-04 16:46:56.925000','登录 裸板云DEV'),(257,'127.0.0.1','super6','2018-01-04 16:48:48.257000','激活 裸板云DEV'),(258,'127.0.0.1','super7','2018-01-04 16:56:42.849000','登录 裸板云DEV'),(259,'127.0.0.1','luo','2018-01-04 16:58:35.813000','修改站点组 CaliperServer'),(260,'192.168.65.161','maintain','2018-01-04 16:58:53.727000','登录 裸板云DEV_SUPER'),(261,'192.168.65.254','operation','2018-01-04 17:15:56.610000','登录 裸版云DEV_ASSET'),(262,'192.168.65.161','asset','2018-01-04 17:42:21.717000','登录 裸板云DEV_SUPER'),(263,'192.168.65.161','asset','2018-01-04 17:43:27.569000','登出'),(264,'192.168.65.161','maintain','2018-01-04 17:43:33.742000','登录 裸板云DEV_SUPER'),(265,'192.168.65.254','asset','2018-01-04 18:31:39.242000','登录 裸版云DEV_ASSET'),(266,'192.168.65.254','asset','2018-01-04 18:33:28.390000','登出'),(267,'192.168.65.254','cuser','2018-01-04 18:33:32.073000','登录 裸版云DEV_ASSET'),(268,'192.168.65.254','cuser','2018-01-04 18:34:23.310000','登出'),(269,'127.0.0.1','super','2018-01-04 18:35:41.041000','登录 裸板云DEV'),(270,'192.168.65.254','cuser','2018-01-04 18:35:44.285000','登录 裸版云DEV_ASSET'),(271,'127.0.0.1','super','2018-01-04 18:35:52.730000','登出'),(272,'192.168.65.254','cuser','2018-01-04 18:35:52.850000','登出'),(273,'192.168.65.254','operation','2018-01-04 18:36:01.165000','登录 裸版云DEV_ASSET'),(274,'127.0.0.1','operation','2018-01-04 18:36:01.670000','登录 裸板云DEV'),(275,'127.0.0.1','operation','2018-01-04 18:36:13.428000','登出'),(276,'127.0.0.1','asset','2018-01-04 18:36:21.138000','登录 裸板云DEV'),(277,'192.168.65.254','operation','2018-01-04 18:36:55.201000','登出'),(278,'192.168.65.254','maintain','2018-01-04 18:37:01.498000','登录 裸版云DEV_ASSET'),(279,'127.0.0.1','asset','2018-01-04 18:37:44.110000','登出'),(280,'127.0.0.1','operation','2018-01-04 18:37:57.037000','登录 裸板云DEV'),(281,'192.168.65.254','maintain','2018-01-04 18:42:24.228000','登出'),(282,'192.168.65.254','operation','2018-01-04 18:42:29.140000','登录 裸版云DEV_ASSET'),(283,'192.168.65.254','operation','2018-01-04 18:47:07.825000','登出'),(284,'192.168.65.254','asset','2018-01-04 18:47:11.781000','登录 裸版云DEV_ASSET'),(285,'192.168.65.254','asset','2018-01-04 18:47:28.082000','登出'),(286,'192.168.65.254','operation','2018-01-04 18:47:35.491000','登录 裸版云DEV_ASSET'),(287,'192.168.65.254','operation','2018-01-04 18:59:48.532000','登出'),(288,'192.168.65.254','asset','2018-01-04 18:59:52.163000','登录 裸版云DEV_ASSET'),(289,'192.168.65.254','asset','2018-01-04 19:00:37.427000','登出'),(290,'192.168.65.254','operation','2018-01-04 19:00:42.847000','登录 裸版云DEV_ASSET'),(291,'127.0.0.1','luo7310','2018-01-04 20:13:38.148000','注册 裸板云DEV'),(292,'127.0.0.1','luo7311','2018-01-04 20:15:47.833000','注册 裸板云DEV'),(293,'127.0.0.1','luo7312','2018-01-04 20:16:43.954000','注册 裸板云DEV'),(294,'127.0.0.1','luo73813','2018-01-04 20:43:10.513000','注册 裸板云DEV'),(295,'127.0.0.1','super7','2018-01-04 21:36:46.592000','登录 裸板云DEV'),(296,'127.0.0.1','luo','2018-01-04 21:44:02.946000','修改站点组 EstuaryCloud'),(297,'127.0.0.1','super7','2018-01-04 21:52:00.133000','登出'),(298,'127.0.0.1','super6','2018-01-04 21:52:07.338000','登录 EstuaryCloud'),(299,'127.0.0.1','super6','2018-01-04 21:53:48.820000','登出'),(300,'127.0.0.1','super5','2018-01-04 21:54:03.518000','登录 EstuaryCloud'),(301,'127.0.0.1','super3','2018-01-04 23:27:24.242000','登录 EstuaryCloud'),(302,'127.0.0.1','super8','2018-01-04 23:29:31.251000','注册 EstuaryCloud'),(303,'127.0.0.1','super2','2018-01-05 00:52:07.826000','登录 EstuaryCloud'),(304,'127.0.0.1','luo','2018-01-05 00:57:43.666000','修改站点组 EstuaryCloud'),(305,'127.0.0.1','luo','2018-01-05 00:57:49.162000','修改站点组 EstuaryCloud'),(306,'127.0.0.1','luo','2018-01-05 00:57:54.642000','修改站点组 EstuaryCloud'),(307,'127.0.0.1','luo','2018-01-05 00:58:00.506000','修改站点组 EstuaryCloud'),(308,'192.168.65.254','operation','2018-01-05 09:32:27.541000','登录 EstuaryCloud'),(309,'192.168.65.161','maintain','2018-01-05 09:35:23.630000','登录 EstuaryCloud'),(310,'192.168.65.254','operation','2018-01-05 09:44:56.497000','登出'),(311,'192.168.65.254','asset','2018-01-05 09:45:00.032000','登录 EstuaryCloud'),(312,'192.168.65.254','asset','2018-01-05 09:47:06.983000','登出'),(313,'192.168.65.254','operation','2018-01-05 09:47:11.715000','登录 EstuaryCloud'),(314,'127.0.0.1','asset','2018-01-05 10:02:36.384000','登录 EstuaryCloud'),(315,'192.168.65.254','operation','2018-01-05 10:05:33.769000','登出'),(316,'192.168.65.254','asset','2018-01-05 10:05:37.388000','登录 EstuaryCloud'),(317,'192.168.65.254','asset','2018-01-05 10:08:07.038000','登出'),(318,'192.168.65.254','maintain','2018-01-05 10:08:10.647000','登录 EstuaryCloud'),(319,'192.168.65.254','maintain','2018-01-05 10:08:47.249000','登出'),(320,'192.168.65.254','operation','2018-01-05 10:08:51.801000','登录 EstuaryCloud'),(321,'192.168.65.161','super','2018-01-05 10:40:28.541000','登录 EstuaryCloud'),(322,'192.168.65.161','super','2018-01-05 10:56:33.276000','登出'),(323,'192.168.65.161','maintain','2018-01-05 10:56:43.388000','登录 EstuaryCloud'),(324,'192.168.65.161','maintain','2018-01-05 11:00:30.766000','登出'),(325,'192.168.65.161','super','2018-01-05 11:00:35.963000','登录 EstuaryCloud'),(326,'192.168.65.161','super','2018-01-05 11:06:44.536000','登出'),(327,'192.168.65.161','maintain','2018-01-05 11:06:49.787000','登录 EstuaryCloud'),(328,'192.168.65.161','asset','2018-01-05 11:07:27.096000','登录 EstuaryCloud'),(329,'192.168.65.161','maintain','2018-01-05 11:08:26.901000','登出'),(330,'192.168.65.161','maintain1','2018-01-05 11:08:32.730000','登录 EstuaryCloud'),(331,'192.168.65.161','maintain1','2018-01-05 11:10:50.760000','登出'),(332,'192.168.65.161','maintain','2018-01-05 11:10:57.538000','登录 EstuaryCloud'),(333,'192.168.65.254','operation','2018-01-05 11:17:12.624000','登录 EstuaryCloud'),(334,'192.168.64.196','operation','2018-01-05 11:25:41.108000','激活 EstuaryCloud'),(335,'127.0.0.1','test00','2018-01-05 11:31:48.899000','注册 EstuaryCloud'),(336,'127.0.0.1','test01','2018-01-05 11:32:31.482000','注册 EstuaryCloud'),(337,'192.168.65.161','maintain','2018-01-05 11:36:16.543000','登出'),(338,'192.168.65.161','cuser','2018-01-05 11:36:23.056000','登录 EstuaryCloud'),(339,'127.0.0.1','test02','2018-01-05 11:45:18.460000','注册 EstuaryCloud'),(340,'127.0.0.1','test03','2018-01-05 11:46:36.968000','注册 EstuaryCloud'),(341,'127.0.0.1','super','2018-01-05 13:07:37.254000','登录 EstuaryCloud'),(342,'127.0.0.1','super','2018-01-05 13:07:40.682000','登出'),(343,'127.0.0.1','asset','2018-01-05 13:07:46.873000','登录 EstuaryCloud'),(344,'127.0.0.1','asset','2018-01-05 13:07:50.879000','登出'),(345,'127.0.0.1','operation','2018-01-05 13:08:03.341000','登录 EstuaryCloud'),(346,'127.0.0.1','operation','2018-01-05 13:08:17.710000','登出'),(347,'127.0.0.1','maintain','2018-01-05 13:08:25.662000','激活 EstuaryCloud'),(348,'192.168.65.161','maintain','2018-01-05 13:14:14.812000','登录 EstuaryCloud'),(349,'192.168.65.161','super','2018-01-05 13:29:03.093000','登录 EstuaryCloud'),(350,'192.168.65.161','maintain','2018-01-05 13:33:11.551000','登出'),(351,'192.168.65.161','super','2018-01-05 13:33:25.327000','登录 EstuaryCloud'),(352,'192.168.65.254','operation','2018-01-05 13:34:59.400000','登录 EstuaryCloud'),(353,'192.168.65.254','operation','2018-01-05 14:33:33.615000','登录 EstuaryCloud'),(354,'192.168.65.254','operation','2018-01-05 14:50:42.594000','登出'),(355,'192.168.65.254','asset','2018-01-05 14:50:45.690000','登录 EstuaryCloud'),(356,'192.168.65.254','asset','2018-01-05 14:51:19.099000','登出'),(357,'192.168.65.254','operation','2018-01-05 14:51:22.925000','登录 EstuaryCloud'),(358,'192.168.65.161','maintain','2018-01-05 15:05:17.612000','登录 EstuaryCloud'),(359,'192.168.65.254','operation','2018-01-05 15:38:09.088000','登出'),(360,'192.168.65.161','super','2018-01-05 15:38:11.033000','登录 EstuaryCloud'),(361,'192.168.65.254','operation','2018-01-05 15:38:14.925000','登录 EstuaryCloud'),(362,'192.168.65.161','super','2018-01-05 15:38:28.877000','登出'),(363,'192.168.65.254','operation','2018-01-05 15:40:04.086000','登出'),(364,'192.168.65.254','asset','2018-01-05 15:40:08.197000','登录 EstuaryCloud'),(365,'192.168.65.254','asset','2018-01-05 15:41:26.524000','登出'),(366,'192.168.65.254','cuser','2018-01-05 15:41:30.237000','登录 EstuaryCloud'),(367,'192.168.65.161','maintain','2018-01-05 15:50:30.750000','登录 EstuaryCloud'),(368,'192.168.65.254','cuser','2018-01-05 16:02:17.924000','登出'),(369,'192.168.65.254','maintain','2018-01-05 16:02:22.767000','登录 EstuaryCloud'),(370,'192.168.65.254','maintain','2018-01-05 16:13:45.799000','登出'),(371,'192.168.65.254','cuser','2018-01-05 16:13:51.229000','登录 EstuaryCloud'),(372,'192.168.65.254','cuser','2018-01-05 16:15:16.208000','登出'),(373,'192.168.65.254','maintain','2018-01-05 16:15:23.218000','登录 EstuaryCloud'),(374,'192.168.65.254','maintain','2018-01-05 16:36:22.109000','登出'),(375,'192.168.65.254','cuser','2018-01-05 16:36:26.730000','登录 EstuaryCloud'),(376,'192.168.65.254','cuser','2018-01-05 16:36:39.772000','登出'),(377,'192.168.65.254','maintain','2018-01-05 16:36:43.889000','登录 EstuaryCloud'),(378,'192.168.65.254','maintain','2018-01-05 16:36:56.570000','登出'),(379,'192.168.65.254','cuser','2018-01-05 16:37:00.795000','登录 EstuaryCloud'),(380,'192.168.65.254','cuser','2018-01-05 16:42:39.921000','登出'),(381,'192.168.65.254','maintain','2018-01-05 16:42:44.516000','登录 EstuaryCloud'),(382,'192.168.64.196','max','2018-01-05 16:44:51.960000','登录 CaliperServer'),(383,'192.168.65.254','operation','2018-01-05 17:19:29.195000','登录 EstuaryCloud'),(384,'192.168.65.161','super','2018-01-05 18:44:52.880000','登录 EstuaryCloud'),(385,'192.168.65.254','operation','2018-01-05 18:47:50.517000','登录 EstuaryCloud'),(386,'127.0.0.1','super','2018-01-05 18:49:46.017000','登录 EstuaryCloud'),(387,'127.0.0.1','super','2018-01-05 18:54:13.802000','登出'),(388,'127.0.0.1','maintain','2018-01-05 18:54:24.930000','登录 EstuaryCloud'),(389,'127.0.0.1','maintain','2018-01-05 18:54:29.636000','登出'),(390,'127.0.0.1','operation','2018-01-05 18:54:35.731000','登录 EstuaryCloud'),(391,'127.0.0.1','operation','2018-01-05 18:56:15.568000','登出'),(392,'127.0.0.1','super','2018-01-05 18:56:21.014000','登录 EstuaryCloud'),(393,'192.168.65.254','operation','2018-01-08 10:03:08.891000','登录 EstuaryCloud'),(394,'192.168.65.161','maintain','2018-01-08 10:03:21.897000','登录 EstuaryCloud'),(395,'192.168.65.254','operation','2018-01-08 10:16:45.876000','登出'),(396,'192.168.65.254','asset','2018-01-08 10:16:51.448000','登录 EstuaryCloud'),(397,'192.168.65.161','maintain','2018-01-08 10:17:17.946000','登出'),(398,'192.168.65.161','maintain','2018-01-08 10:17:23.303000','登录 EstuaryCloud'),(399,'192.168.65.161','super','2018-01-08 10:17:53.404000','登录 EstuaryCloud'),(400,'192.168.65.161','maintain','2018-01-08 11:16:47.592000','登录 EstuaryCloud'),(401,'127.0.0.1','cuser','2018-01-08 13:38:42.767000','登录 EstuaryCloud'),(402,'192.168.65.254','maintain','2018-01-08 13:39:00.537000','登录 EstuaryCloud'),(403,'192.168.65.254','maintain','2018-01-08 13:39:40.556000','登出'),(404,'192.168.65.254','asset','2018-01-08 13:39:44.270000','登录 EstuaryCloud'),(405,'192.168.65.254','asset','2018-01-08 13:42:24.759000','登出'),(406,'192.168.65.254','operation','2018-01-08 13:42:29.489000','登录 EstuaryCloud'),(407,'192.168.65.254','operation','2018-01-08 13:43:23.843000','登出'),(408,'192.168.65.254','asset','2018-01-08 13:43:27.966000','登录 EstuaryCloud'),(409,'127.0.0.1','cuser','2018-01-08 13:54:30.897000','登出'),(410,'127.0.0.1','super','2018-01-08 13:54:37.644000','登录 EstuaryCloud'),(411,'127.0.0.1','super','2018-01-08 13:54:46.165000','登出'),(412,'127.0.0.1','cuser','2018-01-08 13:54:51.924000','登录 EstuaryCloud'),(413,'192.168.65.254','asset','2018-01-08 13:56:17.825000','登出'),(414,'192.168.65.254','maintain','2018-01-08 13:56:21.685000','登录 EstuaryCloud'),(415,'192.168.65.254','maintain','2018-01-08 13:56:48.895000','登出'),(416,'192.168.65.254','asset','2018-01-08 13:56:52.386000','登录 EstuaryCloud'),(417,'192.168.65.161','maintain','2018-01-08 14:30:57.847000','登录 EstuaryCloud'),(418,'192.168.65.254','operation','2018-01-08 14:48:11.079000','登录 EstuaryCloud'),(419,'192.168.64.196','max','2018-01-08 15:26:08.926000','登录 CaliperServer'),(420,'192.168.65.254','operation','2018-01-08 15:29:17.709000','登录 EstuaryCloud'),(421,'192.168.65.254','operation','2018-01-08 15:32:00.346000','登出'),(422,'192.168.65.254','asset','2018-01-08 15:32:04.514000','登录 EstuaryCloud'),(423,'192.168.65.161','maintain','2018-01-08 15:36:23.930000','登录 EstuaryCloud'),(424,'192.168.65.254','asset','2018-01-08 15:48:57.640000','登出'),(425,'192.168.65.254','operation','2018-01-08 15:49:01.935000','登录 EstuaryCloud'),(426,'192.168.65.254','operation','2018-01-08 15:54:22.911000','登出'),(427,'192.168.65.254','operation','2018-01-08 15:54:35.004000','登录 EstuaryCloud'),(428,'192.168.64.196','cuser','2018-01-08 16:01:07.951000','登录 CaliperServer'),(429,'192.168.65.254','operation','2018-01-08 16:02:46.682000','登出'),(430,'192.168.65.254','cuser','2018-01-08 16:03:20.857000','登录 EstuaryCloud'),(431,'192.168.64.196','operation','2018-01-08 16:19:44.733000','登录 EstuaryCloud'),(432,'192.168.64.196','cuser','2018-01-08 16:30:43.558000','登出'),(433,'192.168.64.196','cuser','2018-01-08 16:31:08.308000','登录 EstuaryCloud'),(434,'192.168.65.254','operation','2018-01-08 16:48:22.736000','登录 EstuaryCloud'),(435,'192.168.65.254','operation','2018-01-08 16:48:25.224000','登出'),(436,'192.168.65.254','operation','2018-01-08 16:48:28.461000','登录 EstuaryCloud'),(437,'192.168.65.254','operation','2018-01-08 16:54:14.829000','登出'),(438,'192.168.65.254','cuser','2018-01-08 16:54:20.315000','登录 EstuaryCloud'),(439,'192.168.65.161','cuser','2018-01-08 17:00:01.420000','登录 EstuaryCloud'),(440,'192.168.65.254','cuser','2018-01-08 17:07:50.445000','登出'),(441,'192.168.65.254','operation','2018-01-08 17:07:55.198000','登录 EstuaryCloud'),(442,'192.168.65.254','operation','2018-01-08 17:08:44.631000','登出'),(443,'192.168.65.254','asset','2018-01-08 17:08:49.366000','登录 EstuaryCloud'),(444,'192.168.65.161','maintain','2018-01-09 09:25:10.566000','登录 EstuaryCloud'),(445,'192.168.65.161','cuser','2018-01-09 09:42:18.997000','登录 EstuaryCloud'),(446,'192.168.65.254','asset','2018-01-09 09:46:46.237000','登录 EstuaryCloud'),(447,'192.168.65.161','super','2018-01-09 10:25:14.253000','登录 EstuaryCloud'),(448,'127.0.0.1','uams','2018-01-09 10:44:10.223000','创建站点组 test'),(449,'192.168.65.254','asset','2018-01-09 15:26:27.099000','登录 EstuaryCloud'),(450,'127.0.0.1','uams','2018-01-09 16:04:52.225000','创建策略 备份策略'),(451,'127.0.0.1','uams','2018-01-09 16:09:31.000000','创建策略 备份策略3'),(452,'127.0.0.1','uams','2018-01-09 16:20:34.261000','创建策略 备份策略'),(453,'127.0.0.1','uams','2018-01-09 16:24:38.646000','创建策略 备份策略'),(454,'127.0.0.1','uams','2018-01-09 16:30:53.742000','创建策略 备份策略3'),(455,'127.0.0.1','uams','2018-01-09 16:31:16.828000','创建策略 备份策略112'),(456,'192.168.65.254','operation','2018-01-09 16:37:57.851000','登录 EstuaryCloud'),(457,'192.168.65.254','operation','2018-01-09 16:39:50.672000','登出'),(458,'192.168.65.254','asset','2018-01-09 16:39:54.810000','登录 EstuaryCloud'),(459,'192.168.65.254','asset','2018-01-09 18:43:58.117000','登录 EstuaryCloud'),(460,'127.0.0.1','uams','2018-01-09 19:26:21.117000','修改策略 备份策略112'),(461,'UAMS','系统','2018-01-09 19:27:00.096000','自动备份'),(462,'UAMS','系统','2018-01-09 19:27:00.172000','自动备份'),(463,'127.0.0.1','uams','2018-01-09 19:27:25.203000','修改策略 备份'),(464,'127.0.0.1','uams','2018-01-09 19:59:10.573000','修改策略 备份'),(465,'UAMS','系统','2018-01-09 20:00:00.099000','自动备份'),(466,'UAMS','系统','2018-01-09 20:31:00.112000','自动备份'),(467,'UAMS','系统','2018-01-09 20:31:00.573000','自动备份'),(468,'UAMS','系统','2018-01-09 20:37:12.096000','自动备份'),(469,'UAMS','系统','2018-01-09 20:37:12.330000','自动备份'),(470,'127.0.0.1','uams','2018-01-09 20:37:49.399000','数据还原 E:\\\\2018_01_09_200800'),(471,'UAMS','系统','2018-01-09 20:48:02.822000','自动备份'),(472,'UAMS','系统','2018-01-09 20:48:03.000000','自动备份'),(473,'127.0.0.1','uams','2018-01-09 21:25:33.818000','修改策略 备份'),(474,'127.0.0.1','uams','2018-01-09 21:26:51.917000','修改策略 备份1'),(475,'UAMS','系统','2018-01-09 21:30:36.878000','自动备份'),(476,'127.0.0.1','uams','2018-01-09 21:31:24.281000','数据还原 E:\\\\2018_01_09_213034'),(477,'127.0.0.1','uams','2018-01-09 23:40:51.790000','修改策略 备份1'),(478,'UAMS','系统','2018-01-09 23:41:03.713000','自动备份'),(479,'127.0.0.1','uams','2018-01-09 23:41:22.482000','修改策略 备份'),(480,'UAMS','系统','2018-01-09 23:42:19.936000','自动备份'),(481,'127.0.0.1','uams','2018-01-09 23:43:04.905000','数据还原 E:\\/2018_01_09_234218'),(482,'UAMS','系统','2018-01-09 23:44:00.249000','自动备份'),(483,'192.168.65.254','asset','2018-01-10 09:34:13.827000','登录 EstuaryCloud'),(484,'192.168.65.161','maintain','2018-01-10 09:35:51.730000','登录 EstuaryCloud'),(485,'192.168.65.254','operation','2018-01-10 10:08:11.554000','登录 EstuaryCloud'),(486,'192.168.65.254','operation','2018-01-10 10:19:40.630000','登出'),(487,'192.168.65.254','asset','2018-01-10 10:19:44.404000','登录 EstuaryCloud'),(488,'192.168.65.254','asset','2018-01-10 10:56:26.516000','登录 EstuaryCloud'),(489,'192.168.65.161','asset','2018-01-10 11:15:10.414000','登录 EstuaryCloud'),(490,'192.168.65.254','maintain','2018-01-10 12:08:53.710000','登录 EstuaryCloud'),(491,'192.168.65.254','maintain','2018-01-10 12:09:11.768000','登出'),(492,'192.168.65.254','asset','2018-01-10 12:09:14.968000','登录 EstuaryCloud'),(493,'192.168.65.254','asset','2018-01-10 12:11:32.595000','登出'),(494,'192.168.65.254','maintain','2018-01-10 12:11:36.906000','登录 EstuaryCloud'),(495,'192.168.65.254','maintain','2018-01-10 12:18:36.769000','登出'),(496,'192.168.65.254','asset','2018-01-10 12:18:48.529000','登录 EstuaryCloud'),(497,'192.168.65.254','asset','2018-01-10 13:07:59.952000','登录 EstuaryCloud'),(498,'192.168.65.161','maintain','2018-01-10 13:19:01.792000','登录 EstuaryCloud'),(499,'192.168.65.254','asset','2018-01-10 13:20:07.328000','登出'),(500,'192.168.65.254','operation','2018-01-10 13:20:11.700000','登录 EstuaryCloud'),(501,'192.168.64.196','cuser','2018-01-10 13:29:15.614000','登录 EstuaryCloud'),(502,'192.168.65.254','operation','2018-01-10 13:32:36.532000','登出'),(503,'192.168.65.254','asset','2018-01-10 13:32:39.891000','登录 EstuaryCloud'),(504,'192.168.65.254','asset','2018-01-10 13:45:53.094000','登出'),(505,'192.168.65.254','cuser','2018-01-10 13:45:58.753000','登录 EstuaryCloud'),(506,'192.168.65.254','cuser','2018-01-10 13:47:35.746000','登出'),(507,'192.168.65.254','asset','2018-01-10 13:47:44.308000','登录 EstuaryCloud'),(508,'192.168.65.254','asset','2018-01-10 13:53:47.498000','登出'),(509,'192.168.65.254','operation','2018-01-10 13:53:52.489000','登录 EstuaryCloud'),(510,'192.168.65.254','operation','2018-01-10 13:55:33.368000','登出'),(511,'192.168.65.254','asset','2018-01-10 13:55:36.799000','登录 EstuaryCloud'),(512,'192.168.65.161','maintain1','2018-01-10 14:03:16.153000','登录 EstuaryCloud'),(513,'192.168.65.161','asset','2018-01-10 14:13:53.096000','登录 EstuaryCloud'),(514,'192.168.65.161','maintain1','2018-01-10 14:20:21.552000','登出'),(515,'192.168.65.161','maintain','2018-01-10 14:20:27.214000','登录 EstuaryCloud'),(516,'192.168.65.254','maintain','2018-01-10 15:07:44.880000','登录 EstuaryCloud'),(517,'192.168.65.254','maintain','2018-01-10 15:14:03.354000','登出'),(518,'192.168.65.254','asset','2018-01-10 15:14:06.734000','登录 EstuaryCloud'),(519,'192.168.65.254','asset','2018-01-10 15:16:59.765000','登出'),(520,'192.168.65.254','maintain','2018-01-10 15:17:04.943000','登录 EstuaryCloud'),(521,'192.168.65.254','maintain','2018-01-10 15:18:51.389000','登出'),(522,'192.168.65.254','asset','2018-01-10 15:18:55.000000','登录 EstuaryCloud'),(523,'192.168.65.254','asset','2018-01-10 15:20:11.293000','登出'),(524,'192.168.65.254','operation','2018-01-10 15:20:15.554000','登录 EstuaryCloud'),(525,'192.168.65.254','operation','2018-01-10 15:20:21.095000','登出'),(526,'192.168.65.254','cuser','2018-01-10 15:20:24.663000','登录 EstuaryCloud'),(527,'192.168.65.254','cuser','2018-01-10 15:26:54.246000','登出'),(528,'192.168.65.254','asset','2018-01-10 15:26:58.193000','登录 EstuaryCloud'),(529,'192.168.65.254','asset','2018-01-10 15:34:20.597000','登出'),(530,'192.168.65.254','cuser','2018-01-10 15:34:24.591000','登录 EstuaryCloud'),(531,'192.168.65.161','cuser','2018-01-10 15:36:58.820000','登录 EstuaryCloud'),(532,'192.168.65.161','cuser','2018-01-10 15:59:39.699000','登出'),(533,'192.168.65.161','maintain','2018-01-10 15:59:45.352000','登录 EstuaryCloud'),(534,'192.168.65.254','asset','2018-01-10 16:05:01.583000','登录 EstuaryCloud'),(535,'192.168.65.254','asset','2018-01-10 16:05:18.242000','登出'),(536,'192.168.65.254','maintain','2018-01-10 16:05:21.949000','登录 EstuaryCloud'),(537,'192.168.65.254','maintain','2018-01-10 16:05:34.650000','登出'),(538,'192.168.65.254','maintain1','2018-01-10 16:05:43.100000','激活 EstuaryCloud'),(539,'192.168.65.254','maintain1','2018-01-10 16:05:58.031000','登出'),(540,'192.168.65.254','asset','2018-01-10 16:06:01.429000','登录 EstuaryCloud'),(541,'192.168.65.161','maintain','2018-01-10 16:20:16.728000','登出'),(542,'192.168.65.161','asset','2018-01-10 16:20:24.187000','登录 EstuaryCloud'),(543,'192.168.65.254','asset','2018-01-10 16:33:12.403000','登出'),(544,'192.168.65.254','maintain','2018-01-10 16:33:15.718000','登录 EstuaryCloud'),(545,'192.168.65.254','maintain','2018-01-10 16:33:51.576000','登出'),(546,'192.168.65.254','maintain1','2018-01-10 16:33:56.607000','登录 EstuaryCloud'),(547,'192.168.65.254','maintain1','2018-01-10 16:40:20.335000','登出'),(548,'192.168.65.254','asset','2018-01-10 16:40:24.192000','登录 EstuaryCloud'),(549,'192.168.65.161','maintain','2018-01-10 16:50:58.617000','登录 EstuaryCloud'),(550,'192.168.65.161','maintain','2018-01-10 18:52:37.404000','登录 EstuaryCloud'),(551,'127.0.0.1','uams','2018-01-10 20:51:11.567000','锁定账号 cuser2'),(552,'127.0.0.1','uams','2018-01-10 20:57:47.015000','修改策略 备份'),(553,'UAMS','系统','2018-01-10 20:58:00.337000','自动备份'),(554,'127.0.0.1','uams','2018-01-10 21:02:21.533000','数据还原 E:\\/2018_01_10_205800'),(555,'127.0.0.1','uams','2018-01-10 21:08:15.885000','解锁账号 cuser2'),(556,'127.0.0.1','uams','2018-01-10 21:08:20.255000','锁定账号 cuser'),(557,'192.168.65.254','asset','2018-01-11 09:43:31.466000','登录 EstuaryCloud'),(558,'192.168.65.254','asset','2018-01-11 09:43:39.730000','登出'),(559,'127.0.0.1','uams','2018-01-11 09:44:35.439000','解锁账号 cuser'),(560,'192.168.65.254','cuser','2018-01-11 09:44:50.797000','登录 EstuaryCloud'),(561,'192.168.65.161','maintain','2018-01-11 09:54:25.648000','登录 EstuaryCloud'),(562,'192.168.65.161','maintain','2018-01-11 10:21:30.492000','登出'),(563,'192.168.65.161','super','2018-01-11 10:21:38.182000','登录 EstuaryCloud'),(564,'192.168.64.196','asset','2018-01-11 10:23:31.151000','激活 EstuaryCloud'),(565,'192.168.65.254','cuser','2018-01-11 10:34:36.557000','登录 EstuaryCloud'),(566,'192.168.65.254','cuser','2018-01-11 10:34:39.743000','登出'),(567,'192.168.65.254','asset','2018-01-11 10:34:44.017000','登录 EstuaryCloud'),(568,'192.168.65.254','asset','2018-01-11 10:37:57.481000','登录 EstuaryCloud'),(569,'192.168.65.254','asset','2018-01-11 10:39:50.194000','登出'),(570,'192.168.65.254','cuser','2018-01-11 10:39:56.701000','登录 EstuaryCloud'),(571,'192.168.65.161','cuser','2018-01-11 10:40:54.162000','登录 EstuaryCloud'),(572,'192.168.65.161','cuser','2018-01-11 10:41:09.101000','登出'),(573,'127.0.0.1','uams','2018-01-11 11:30:10.522000','创建策略 备份策略'),(574,'127.0.0.1','uams','2018-01-11 11:30:55.320000','修改策略 备份策略路径\"/home/myname/uamsbaks/\"不合法'),(575,'127.0.0.1','uams','2018-01-11 11:32:51.204000','修改策略 备份策略路径\"/home/myname/uamsbaks/\"不合法'),(576,'127.0.0.1','uams','2018-01-11 11:33:36.166000','修改策略 备份策略'),(577,'UAMS','系统','2018-01-11 11:34:00.666000','自动备份'),(578,'127.0.0.1','uams','2018-01-11 11:34:40.562000','修改策略 备份策略路径\"A://\"不合法'),(579,'UAMS','系统','2018-01-11 11:42:00.278000','自动备份'),(580,'127.0.0.1','uams','2018-01-11 11:42:39.093000','修改策略 备份策略'),(581,'127.0.0.1','uams','2018-01-11 11:44:11.679000','修改策略 备份策略路径\"/home/myname/uamsbaks/\"无访问权限'),(582,'127.0.0.1','uams','2018-01-11 12:22:04.527000','修改策略 备份策略1路径\"/home/myname/uamsbaks/\"无访问权限'),(583,'127.0.0.1','uams','2018-01-11 12:23:15.252000','修改策略 备份策略'),(584,'UAMS','系统','2018-01-11 12:24:00.298000','自动备份'),(585,'192.168.65.161','super','2018-01-11 13:14:01.901000','登录 EstuaryCloud'),(586,'192.168.64.196','cuser','2018-01-11 13:16:39.553000','登录 EstuaryCloud'),(587,'192.168.65.254','cuser','2018-01-11 13:30:59.845000','登录 EstuaryCloud'),(588,'192.168.65.161','super','2018-01-11 13:35:43.510000','登出'),(589,'192.168.65.161','maintain','2018-01-11 13:35:50.354000','登录 EstuaryCloud'),(590,'127.0.0.1','uams','2018-01-11 14:14:35.601094','修改策略 备份'),(591,'127.0.0.1','uams','2018-01-11 14:18:08.382400','修改策略 备份'),(592,'127.0.0.1','uams','2018-01-11 14:21:40.334108','修改策略 备份'),(593,'127.0.0.1','uams','2018-01-11 14:23:58.848093','修改策略 备份'),(594,'127.0.0.1','uams','2018-01-11 15:28:46.701232','修改策略 备份');
/*!40000 ALTER TABLE `backend_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_site`
--

DROP TABLE IF EXISTS `backend_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `host` varchar(100) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `logout` varchar(200) NOT NULL,
  `lock` varchar(200) NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `apikey_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `host` (`host`) USING BTREE,
  KEY `backend_site_apikey_id_b18c083a_fk_authen_apikey_id` (`apikey_id`) USING BTREE,
  CONSTRAINT `backend_site_ibfk_1` FOREIGN KEY (`apikey_id`) REFERENCES `authen_apikey` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_site`
--

LOCK TABLES `backend_site` WRITE;
/*!40000 ALTER TABLE `backend_site` DISABLE KEYS */;
INSERT INTO `backend_site` VALUES (1,'CaliperServer','caliper.com:8001',0,'','','巧华',1),(2,'EstuaryCloud','main.com:8000',0,'','','',2),(3,'OpenEstuaryDEV','website.com',1,'','','',3),(4,'CaliperServerDEV_1','caliper1.com:8001',0,'','','罗',4),(5,'CaliperServerDEV_2','caliper2.com:8000',0,'','','张新',5),(6,'EstuaryCloud','asset.com:8000',0,'','','',6),(7,'EstuaryCloud','super.com:8000',0,'','','',7),(8,'EstuaryCloud','cuser.com:8000',0,'','','',8),(9,'EstuaryCloud','jqm.com:8000',0,'','','启明',9);
/*!40000 ALTER TABLE `backend_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_backup`
--

DROP TABLE IF EXISTS `backup_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_backup`
--

LOCK TABLES `backup_backup` WRITE;
/*!40000 ALTER TABLE `backup_backup` DISABLE KEYS */;
INSERT INTO `backup_backup` VALUES (11,'2018-01-09 21:30:36.826000','E:\\\\2018_01_09_213034'),(12,'2018-01-09 23:41:03.645000','E:\\/2018_01_09_234102'),(13,'2018-01-09 23:42:19.897000','E:\\/2018_01_09_234218'),(14,'2018-01-09 23:44:00.177000','E:\\/2018_01_09_234400'),(15,'2018-01-10 20:58:00.299000','E:\\/2018_01_10_205800'),(16,'2018-01-11 11:34:00.584000','/home/myname/uamsbaks//2018_01_11_113400'),(17,'2018-01-11 11:42:00.235000','/home/myname/uamsbaks//2018_01_11_114200'),(18,'2018-01-11 12:24:00.249000','/home/myname/uamsbaks//2018_01_11_122400');
/*!40000 ALTER TABLE `backup_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup_strategy`
--

DROP TABLE IF EXISTS `backup_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup_strategy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hour` int(11) NOT NULL,
  `path` varchar(200) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup_strategy`
--

LOCK TABLES `backup_strategy` WRITE;
/*!40000 ALTER TABLE `backup_strategy` DISABLE KEYS */;
INSERT INTO `backup_strategy` VALUES (9,'备份',20,'uams_db',0),(10,'备份策略',12,'/home/myname/uamsbaks/',1);
/*!40000 ALTER TABLE `backup_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`) USING BTREE,
  KEY `django_admin_log_user_id_c564eba6_fk_account_account_id` (`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_ibfk_1` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `account_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-12-28 11:25:04.994000','1','CaliperServer',1,'[{\"added\": {}}]',9,1),(2,'2017-12-28 11:25:33.213000','2','裸板云',1,'[{\"added\": {}}]',9,1),(3,'2017-12-28 11:26:32.428000','3','OpenEstuary',1,'[{\"added\": {}}]',9,1),(4,'2017-12-28 13:21:39.295000','1','CaliperServer',2,'[{\"changed\": {\"fields\": [\"remarks\"]}}]',9,1),(5,'2017-12-28 13:21:56.524000','4','CaliperServer1',1,'[{\"added\": {}}]',9,1),(6,'2017-12-28 15:35:54.629000','5','CaliperServer2',1,'[{\"added\": {}}]',9,1),(7,'2017-12-28 17:22:34.035000','1','Backup object',1,'[{\"added\": {}}]',11,1),(8,'2017-12-29 10:59:29.526000','9','super2',3,'',10,1),(9,'2017-12-29 10:59:29.589000','8','super',3,'',10,1),(10,'2017-12-29 10:59:29.639000','7','super0',3,'',10,1),(11,'2017-12-29 22:20:34.483000','7','super',1,'[{\"added\": {}}]',10,1),(12,'2017-12-29 22:23:36.203000','8','asset',1,'[{\"added\": {}}]',10,1),(13,'2017-12-29 22:25:33.931000','9','maintain',1,'[{\"added\": {}}]',10,1),(14,'2017-12-29 22:28:45.811000','10','operation',1,'[{\"added\": {}}]',10,1),(15,'2018-01-02 10:47:36.924000','6','裸版云DEV_ASSET',1,'[{\"added\": {}}]',9,1),(16,'2018-01-02 10:48:04.741000','5','CaliperServerDEV',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(17,'2018-01-02 10:48:11.108000','5','CaliperServerDEV_2',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(18,'2018-01-02 10:48:19.123000','4','CaliperServerDEV_1',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(19,'2018-01-02 10:48:26.550000','2','裸板云DEV',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(20,'2018-01-02 10:49:05.480000','1','CaliperServerDEV',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(21,'2018-01-02 10:49:45.538000','3','OpenEstuaryDEV',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(22,'2018-01-02 10:51:03.494000','7','裸板云DEV_SUPER',1,'[{\"added\": {}}]',9,1),(23,'2018-01-02 10:51:18.862000','8','裸板云DEV_CUSER',1,'[{\"added\": {}}]',9,1),(24,'2018-01-02 10:53:20.226000','11','cuser',1,'[{\"added\": {}}]',10,1),(25,'2018-01-03 16:26:29.136000','9','裸板云DEV_OP',1,'[{\"added\": {}}]',9,1),(26,'2018-01-04 14:54:42.419000','12','maintain1',1,'[{\"added\": {}}]',10,1),(27,'2018-01-04 14:55:02.830000','13','cuser2',1,'[{\"added\": {}}]',10,1),(28,'2018-01-04 16:41:44.580000','14','super2',1,'[{\"added\": {}}]',10,1),(29,'2018-01-04 16:45:07.930000','15','super3',1,'[{\"added\": {}}]',10,1),(30,'2018-01-04 16:45:56.536000','16','super4',1,'[{\"added\": {}}]',10,1),(31,'2018-01-04 16:46:44.631000','17','super5',1,'[{\"added\": {}}]',10,1),(32,'2018-01-04 16:48:25.903000','18','super6',1,'[{\"added\": {}}]',10,1),(33,'2018-01-04 16:50:39.685000','19','super7',1,'[{\"added\": {}}]',10,1),(34,'2018-01-04 16:58:35.815000','1','CaliperServer',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(35,'2018-01-04 21:44:02.949000','2','EstuaryCloud',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(36,'2018-01-05 00:57:43.670000','9','EstuaryCloud',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(37,'2018-01-05 00:57:49.164000','8','EstuaryCloud',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(38,'2018-01-05 00:57:54.752000','7','EstuaryCloud',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(39,'2018-01-05 00:58:00.508000','6','EstuaryCloud',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',9,1),(40,'2018-01-09 10:44:10.260000','10','test',1,'[{\"added\": {}}]',9,1),(41,'2018-01-09 10:44:37.509000','28','test03',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(42,'2018-01-09 10:44:46.023000','27','test02',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(43,'2018-01-09 10:44:54.152000','26','test01',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(44,'2018-01-09 10:45:01.092000','25','test00',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(45,'2018-01-09 11:10:49.853000','10','test',3,'',9,1),(46,'2018-01-09 16:04:52.226000','1','Strategy object',1,'[{\"added\": {}}]',12,1),(47,'2018-01-09 16:09:31.092000','5','Strategy object',1,'[{\"added\": {}}]',12,1),(48,'2018-01-09 16:20:26.477000','5','Strategy object',3,'',12,1),(49,'2018-01-09 16:20:26.500000','1','Strategy object',3,'',12,1),(50,'2018-01-09 16:20:34.262000','6','Strategy object',1,'[{\"added\": {}}]',12,1),(51,'2018-01-09 16:24:33.011000','6','Strategy object',3,'',12,1),(52,'2018-01-09 16:24:38.648000','7','Strategy object',1,'[{\"added\": {}}]',12,1),(53,'2018-01-09 16:30:53.742000','8','Strategy object',1,'[{\"added\": {}}]',12,1),(54,'2018-01-09 16:31:04.904000','8','Strategy object',3,'',12,1),(55,'2018-01-09 16:31:04.937000','7','Strategy object',3,'',12,1),(56,'2018-01-09 16:31:16.828000','9','Strategy object',1,'[{\"added\": {}}]',12,1),(57,'2018-01-09 19:26:21.119000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\", \"path\"]}}]',12,1),(58,'2018-01-09 19:27:25.204000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(59,'2018-01-09 19:59:10.574000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(60,'2018-01-09 20:37:39.532000','28','test03',3,'',10,1),(61,'2018-01-09 20:37:39.567000','27','test02',3,'',10,1),(62,'2018-01-09 20:37:39.591000','26','test01',3,'',10,1),(63,'2018-01-09 21:25:33.820000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(64,'2018-01-09 21:26:51.918000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(65,'2018-01-09 21:28:02.549000','10','Backup object',3,'',11,1),(66,'2018-01-09 21:28:02.612000','9','Backup object',3,'',11,1),(67,'2018-01-09 21:28:02.737000','8','Backup object',3,'',11,1),(68,'2018-01-09 21:28:02.837000','7','Backup object',3,'',11,1),(69,'2018-01-09 21:28:02.913000','6','Backup object',3,'',11,1),(70,'2018-01-09 21:28:02.938000','5','Backup object',3,'',11,1),(71,'2018-01-09 21:28:02.971000','4','Backup object',3,'',11,1),(72,'2018-01-09 21:28:02.997000','3','Backup object',3,'',11,1),(73,'2018-01-09 21:28:03.029000','2','Backup object',3,'',11,1),(74,'2018-01-09 21:28:03.054000','1','Backup object',3,'',11,1),(75,'2018-01-09 21:31:17.044000','28','test03',3,'',10,1),(76,'2018-01-09 23:40:51.790000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(77,'2018-01-09 23:41:22.483000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(78,'2018-01-09 23:42:48.702000','28','test03',3,'',10,1),(79,'2018-01-09 23:42:48.743000','27','test02',3,'',10,1),(80,'2018-01-10 20:57:47.017000','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(81,'2018-01-10 21:01:07.723000','28','test03',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(82,'2018-01-10 21:01:26.879000','13','cuser2',2,'[{\"changed\": {\"fields\": [\"sites\"]}}]',10,1),(83,'2018-01-10 21:02:05.594000','3','OpenEstuaryDEV',3,'',9,1),(84,'2018-01-10 21:02:13.975000','27','test02',3,'',10,1),(85,'2018-01-11 11:30:10.523000','10','Strategy object',1,'[{\"added\": {}}]',12,1),(86,'2018-01-11 11:30:55.340000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\", \"valid\"]}}]',12,1),(87,'2018-01-11 11:32:51.205000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\", \"valid\"]}}]',12,1),(88,'2018-01-11 11:33:36.188000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\", \"valid\"]}}]',12,1),(89,'2018-01-11 11:34:40.564000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"path\"]}}]',12,1),(90,'2018-01-11 11:42:39.094000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(91,'2018-01-11 11:44:11.681000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(92,'2018-01-11 12:22:04.528000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"name\"]}}]',12,1),(93,'2018-01-11 12:23:15.253000','10','Strategy object',2,'[{\"changed\": {\"fields\": [\"hour\"]}}]',12,1),(94,'2018-01-11 14:14:35.602732','9','Strategy object',2,'[]',12,1),(95,'2018-01-11 14:18:08.384173','9','Strategy object',2,'[]',12,1),(96,'2018-01-11 14:21:40.335717','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"path\"]}}]',12,1),(97,'2018-01-11 14:23:58.850121','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"path\"]}}]',12,1),(98,'2018-01-11 15:28:46.703016','9','Strategy object',2,'[{\"changed\": {\"fields\": [\"path\"]}}]',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'account','account'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(7,'authen','apikey'),(8,'backend','log'),(9,'backend','site'),(11,'backup','backup'),(12,'backup','strategy'),(4,'contenttypes','contenttype'),(6,'remote','remotejob'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'authen','0001_initial','2017-12-28 11:21:21.039000'),(2,'backend','0001_initial','2017-12-28 11:21:22.487000'),(3,'account','0001_initial','2017-12-28 11:21:26.212000'),(4,'contenttypes','0001_initial','2017-12-28 11:21:26.655000'),(5,'admin','0001_initial','2017-12-28 11:21:29.452000'),(6,'admin','0002_logentry_remove_auto_add','2017-12-28 11:21:29.566000'),(7,'contenttypes','0002_remove_content_type_name','2017-12-28 11:21:31.005000'),(8,'auth','0001_initial','2017-12-28 11:21:34.551000'),(9,'auth','0002_alter_permission_name_max_length','2017-12-28 11:21:35.212000'),(10,'auth','0003_alter_user_email_max_length','2017-12-28 11:21:35.282000'),(11,'auth','0004_alter_user_username_opts','2017-12-28 11:21:35.322000'),(12,'auth','0005_alter_user_last_login_null','2017-12-28 11:21:35.363000'),(13,'auth','0006_require_contenttypes_0002','2017-12-28 11:21:35.397000'),(14,'auth','0007_alter_validators_add_error_messages','2017-12-28 11:21:35.457000'),(15,'auth','0008_alter_user_username_max_length','2017-12-28 11:21:35.649000'),(16,'backup','0001_initial','2017-12-28 11:21:36.208000'),(17,'remote','0001_initial','2017-12-28 11:21:37.247000'),(18,'sessions','0001_initial','2017-12-28 11:21:37.717000'),(19,'backend','0002_auto_20171228_1539','2017-12-28 15:39:28.411000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3f7o5ffs97pei2qjv0v6jmayou30iopw','M2E0YzBiNWQwNjc0OWUxNDhmMzI1MzVjZGIzMDUwMzdmMmQzOTZlOTp7ImNhbGxiYWNrIjoiaHR0cDovL3N1cGVyLmNvbTo4MDAwL3VhbXMvYXV0aGNhbGxiYWNrP3JlZGlyZWN0PS8iLCJhcGlfa2V5IjoiNDI1NjVkNmMifQ==','2018-01-25 10:40:43.569000'),('3rzxqorn52tvrmt1wdu6t2eaxt0yfcyd','MGFkYTBiYmE3OWYwY2E2ZGUyZDA1M2Y2MDMxMDBkMmE4YzBhZWQzMTp7ImNhbGxiYWNrIjoiaHR0cDovL21haW4uY29tOjgwMDAvdWFtcy9hdXRoY2FsbGJhY2s/cmVkaXJlY3Q9LyIsImFwaV9rZXkiOiI0MjU2NWQ2YyIsIl9hdXRoX3VzZXJfaGFzaCI6IjQzYjk0ZGY1ODQ5NDNmZDViMDZlZWRkYjc1Yzc5NTcyMTliOTc0NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-18 14:17:00.254000'),('5y4x7o7f9niy4gsv7l8dh7dakv87p8hd','YzU1Y2MxZDIwMGRlZjE4YWI5NjVmZGQ1ZThkODZkODI2YjA2M2U0MTp7ImNhbGxiYWNrIjoiaHR0cDovL2Fzc2V0LmNvbTo4MDAwL3VhbXMvYXV0aGNhbGxiYWNrP3JlZGlyZWN0PS8iLCJhcGlfa2V5IjoiNDI1NjVkNmMifQ==','2018-01-25 13:30:36.065000'),('65ri113513k99udr3tagfyl2vjpw8dxb','M2E0YzBiNWQwNjc0OWUxNDhmMzI1MzVjZGIzMDUwMzdmMmQzOTZlOTp7ImNhbGxiYWNrIjoiaHR0cDovL3N1cGVyLmNvbTo4MDAwL3VhbXMvYXV0aGNhbGxiYWNrP3JlZGlyZWN0PS8iLCJhcGlfa2V5IjoiNDI1NjVkNmMifQ==','2018-01-25 13:35:46.757000'),('ahpbes79m9ngnox6goyo139v1ttoepxm','YTZmNzBhZjdhNDU2YTE3N2M5MjE4MjA0MjY1OWJkOWZmMzYwZTI5Yzp7ImNhbGxiYWNrIjoiaHR0cDovL21haW4uY29tOjgwMDAvdWFtcy9hdXRoY2FsbGJhY2s/cmVkaXJlY3Q9LyIsImFwaV9rZXkiOiI0MjU2NWQ2YyJ9','2018-01-24 21:10:31.633000'),('b0kl4gzl140hn3p5ftv4jkwtueak1zeq','YjcwMzA2OTA4YjhhYjcxOWU0YmRjYjk3OTc2YjE2YjBiNGM0Mzc4OTp7ImNhbGxiYWNrIjoiaHR0cDovL2pxbS5jb206ODAwMC91YW1zL2F1dGhjYWxsYmFjaz9yZWRpcmVjdD0vIiwiYXBpX2tleSI6IjQyNTY1ZDZjIn0=','2018-01-18 13:29:32.754000'),('d9otsmxinuzwff0423ojz5tsm68gw8qx','YTZmNzBhZjdhNDU2YTE3N2M5MjE4MjA0MjY1OWJkOWZmMzYwZTI5Yzp7ImNhbGxiYWNrIjoiaHR0cDovL21haW4uY29tOjgwMDAvdWFtcy9hdXRoY2FsbGJhY2s/cmVkaXJlY3Q9LyIsImFwaV9rZXkiOiI0MjU2NWQ2YyJ9','2018-01-16 16:21:56.440000'),('gs19buoewhq0iv294wmv5wm44zzbmss5','MGNmN2E1MzNhNTNiMTRiN2IyMGQxOTRkNDY0OWQ2Zjc0ZTYwNDIxZjp7ImNhbGxiYWNrIjoiaHR0cDovL2NhbGlwZXIuY29tOjgwMDEvdXNlci9zaWdudXBjYWxsYmFjaz9yZWRpcmVjdD0vdGFzay9saXN0IiwiYXBpX2tleSI6ImZhMTlkODkzIn0=','2018-01-24 18:35:59.122000'),('h1sskxrmx8ajsswtf643rnxontgntorp','OTYzNDg3OGYzMjZmOTkzNDRjYmViZGU2MjAwNGE5NzhmOTQ5ZjZhMDp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYjk0ZGY1ODQ5NDNmZDViMDZlZWRkYjc1Yzc5NTcyMTliOTc0NTkiLCJfYXV0aF91c2VyX2lkIjoiMSIsInJlY292ZXJpbmciOmZhbHNlLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNhbGxiYWNrIjoiaHR0cDovL21haW4uY29tOjgwMDAvdWFtcy9hdXRoY2FsbGJhY2s/cmVkaXJlY3Q9LyIsImFwaV9rZXkiOiI0MjU2NWQ2YyJ9','2018-01-24 21:08:45.743000'),('jwahwsf6fdgjeo5igqnni693r2thhke8','YjcwMzA2OTA4YjhhYjcxOWU0YmRjYjk3OTc2YjE2YjBiNGM0Mzc4OTp7ImNhbGxiYWNrIjoiaHR0cDovL2pxbS5jb206ODAwMC91YW1zL2F1dGhjYWxsYmFjaz9yZWRpcmVjdD0vIiwiYXBpX2tleSI6IjQyNTY1ZDZjIn0=','2018-01-18 11:27:11.567000'),('qof7gf0i4b4xtx40ebgwsn252onec282','Y2ZkNmUyNDljNzQ1MzZlOWExZDMzNzkwNjQwMWMwZDY1NDUzM2Q2MDp7ImNhbGxiYWNrIjoiaHR0cDovL21haW4uY29tOjgwMDAvdWFtcy9hdXRoY2FsbGJhY2s/cmVkaXJlY3Q9LyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiYXBpX2tleSI6IjQyNTY1ZDZjIiwiX2F1dGhfdXNlcl9oYXNoIjoiNDNiOTRkZjU4NDk0M2ZkNWIwNmVlZGRiNzVjNzk1NzIxOWI5NzQ1OSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-16 20:32:31.004000'),('rukjgjb6f021z14mpgyw98nz1kxbx0wt','ZTg2Y2ZmYWQxZTQzMGMxNDk4YThlYTA0ODA1NWI0MDQ0NzVjNzI3Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjYzllOTM2MjQ0YTM0NjMzZThmMDhlZDFkOTE5OTIyZWZhNjVlOGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-11 21:18:20.983000'),('tlwg3j1xv05wx918pemmj66r8yqwc19c','MDQ3MTI3ZjU3MWIxODFmNjBmOWVlMmU2Mjk2NzEwMzVhNWQxYzI0Nzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYjk0ZGY1ODQ5NDNmZDViMDZlZWRkYjc1Yzc5NTcyMTliOTc0NTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-01-25 14:14:08.737572'),('u4dzkfa2ohyztnv50p0x1twhwkjrtq74','NWVlYTk2YTRjZWI3ZTAxYWRlMGRjOTI1MmEwY2ExZmQ5YTgzMDA0Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzYjk0ZGY1ODQ5NDNmZDViMDZlZWRkYjc1Yzc5NTcyMTliOTc0NTkiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-01-17 19:16:59.424000'),('xm32fz1cwwup499vjlri4grveoahuxv3','MjUzM2Q3MWRjNmYwZjc2NWQ2YjhlNTlmZDdkZDM2MDhlZjg4MGQyZTp7ImNhbGxiYWNrIjoiaHR0cDovL2N1c2VyLmNvbTo4MDAwL3VhbXMvYXV0aGNhbGxiYWNrP3JlZGlyZWN0PS8iLCJhcGlfa2V5IjoiNDI1NjVkNmMifQ==','2018-01-19 11:19:41.128000'),('xxc6tpquix0omtot92sbjyc29ic0mxl2','ZWU5NjA0NDNkZmI2MThhNDc5MjU5Yjg5ZTgzNzgzNzgxMGZhMTIwMDp7ImNhbGxiYWNrIjoiaHR0cDovL2NhbGlwZXIyLmNvbTo4MDAwL3VzZXIvY2hhbmdlcHdkY2FsbGJhY2s/cmVkaXJlY3Q9L3Rhc2svbGlzdCIsImFwaV9rZXkiOiJmYTE5ZDg5MyJ9','2018-01-11 16:56:54.328000'),('yhqcm3z1rndzl6t709vf3c2pfisg58f2','MjUzM2Q3MWRjNmYwZjc2NWQ2YjhlNTlmZDdkZDM2MDhlZjg4MGQyZTp7ImNhbGxiYWNrIjoiaHR0cDovL2N1c2VyLmNvbTo4MDAwL3VhbXMvYXV0aGNhbGxiYWNrP3JlZGlyZWN0PS8iLCJhcGlfa2V5IjoiNDI1NjVkNmMifQ==','2018-01-25 13:14:45.668000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remote_remotejob`
--

DROP TABLE IF EXISTS `remote_remotejob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remote_remotejob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobId` varchar(50) NOT NULL,
  `operate` varchar(50) NOT NULL,
  `jobUrl` varchar(500) NOT NULL,
  `params` varchar(5000) NOT NULL,
  `other` varchar(1000) DEFAULT NULL,
  `response` varchar(5000) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobId` (`jobId`) USING BTREE,
  KEY `remote_remotejob_owner_id_ae876cb0_fk_account_account_id` (`owner_id`) USING BTREE,
  CONSTRAINT `remote_remotejob_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `account_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remote_remotejob`
--

LOCK TABLES `remote_remotejob` WRITE;
/*!40000 ALTER TABLE `remote_remotejob` DISABLE KEYS */;
/*!40000 ALTER TABLE `remote_remotejob` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-16 11:35:38
