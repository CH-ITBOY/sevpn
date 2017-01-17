-- MySQL dump 10.13  Distrib 5.5.52, for Linux (i686)
--
-- Host: localhost    Database: eyeshadow
-- ------------------------------------------------------
-- Server version	5.5.52

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
-- Table structure for table `sp_config`
--

DROP TABLE IF EXISTS `sp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_config`
--

LOCK TABLES `sp_config` WRITE;
/*!40000 ALTER TABLE `sp_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_email_verify`
--

DROP TABLE IF EXISTS `sp_email_verify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_email_verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expire_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_email_verify`
--

LOCK TABLES `sp_email_verify` WRITE;
/*!40000 ALTER TABLE `sp_email_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `sp_email_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sp_log`
--

DROP TABLE IF EXISTS `sp_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `msg` text NOT NULL,
  `created_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sp_log`
--

LOCK TABLES `sp_log` WRITE;
/*!40000 ALTER TABLE `sp_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sp_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_checkin_log`
--

DROP TABLE IF EXISTS `ss_checkin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_checkin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `checkin_at` int(11) NOT NULL,
  `traffic` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_checkin_log`
--

LOCK TABLES `ss_checkin_log` WRITE;
/*!40000 ALTER TABLE `ss_checkin_log` DISABLE KEYS */;
INSERT INTO `ss_checkin_log` VALUES (1,1,1475390753,101711872,'2016-10-02 18:45:53','2016-10-02 18:45:53'),(2,2,1475406850,0,'2016-10-02 23:14:10','2016-10-02 23:14:10'),(3,1,1476329684,0,'2016-10-13 15:34:44','2016-10-13 15:34:44'),(4,1,1476409061,0,'2016-10-14 13:37:41','2016-10-14 13:37:41'),(5,2,1476622293,0,'2016-10-17 00:51:33','2016-10-17 00:51:33'),(6,1,1477309428,0,'2016-10-24 23:43:48','2016-10-24 23:43:48'),(7,3,1477310439,0,'2016-10-25 00:00:39','2016-10-25 00:00:39'),(8,4,1482465026,0,'2016-12-23 16:50:26','2016-12-23 16:50:26');
/*!40000 ALTER TABLE `ss_checkin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_invite_code`
--

DROP TABLE IF EXISTS `ss_invite_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_invite_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_invite_code`
--

LOCK TABLES `ss_invite_code` WRITE;
/*!40000 ALTER TABLE `ss_invite_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_invite_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_node`
--

DROP TABLE IF EXISTS `ss_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` int(3) NOT NULL,
  `server` varchar(128) NOT NULL,
  `method` varchar(64) NOT NULL,
  `custom_method` tinyint(1) NOT NULL DEFAULT '0',
  `traffic_rate` float NOT NULL DEFAULT '1',
  `info` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `offset` int(11) NOT NULL DEFAULT '0',
  `sort` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_node`
--

LOCK TABLES `ss_node` WRITE;
/*!40000 ALTER TABLE `ss_node` DISABLE KEYS */;
INSERT INTO `ss_node` VALUES (1,'美国',1,'23.106.131.126','rc4-md5',0,1,'美国洛杉矶','正常',0,0);
/*!40000 ALTER TABLE `ss_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_node_info_log`
--

DROP TABLE IF EXISTS `ss_node_info_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_node_info_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `uptime` float NOT NULL,
  `load` varchar(32) NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_node_info_log`
--

LOCK TABLES `ss_node_info_log` WRITE;
/*!40000 ALTER TABLE `ss_node_info_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_node_info_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_node_online_log`
--

DROP TABLE IF EXISTS `ss_node_online_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_node_online_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `online_user` int(11) NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_node_online_log`
--

LOCK TABLES `ss_node_online_log` WRITE;
/*!40000 ALTER TABLE `ss_node_online_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_node_online_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ss_password_reset`
--

DROP TABLE IF EXISTS `ss_password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ss_password_reset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(32) NOT NULL,
  `token` varchar(128) NOT NULL,
  `init_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ss_password_reset`
--

LOCK TABLES `ss_password_reset` WRITE;
/*!40000 ALTER TABLE `ss_password_reset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ss_password_reset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(32) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `passwd` varchar(16) NOT NULL,
  `t` int(11) NOT NULL DEFAULT '0',
  `u` bigint(20) NOT NULL,
  `d` bigint(20) NOT NULL,
  `transfer_enable` bigint(20) NOT NULL,
  `port` int(11) NOT NULL,
  `protocol` varchar(32) NOT NULL DEFAULT 'origin',
  `obfs` varchar(32) NOT NULL DEFAULT 'plain',
  `switch` tinyint(4) NOT NULL DEFAULT '1',
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `last_get_gift_time` int(11) NOT NULL DEFAULT '0',
  `last_check_in_time` int(11) NOT NULL DEFAULT '0',
  `last_rest_pass_time` int(11) NOT NULL DEFAULT '0',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `invite_num` int(8) NOT NULL DEFAULT '0',
  `is_admin` int(2) NOT NULL DEFAULT '0',
  `ref_by` int(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) NOT NULL DEFAULT '0',
  `method` varchar(64) NOT NULL DEFAULT 'rc4-md5',
  `is_email_verify` tinyint(4) NOT NULL DEFAULT '0',
  `reg_ip` varchar(128) NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `port` (`port`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','253858643@qq.com','8d68d361917da74565f0b8274829be45','qinhf',1484627014,260510682,2704450878,5470420992,1025,'origin','plain',1,1,1,0,1477309428,0,'2017-01-17 04:23:34',0,1,0,0,'rc4-md5',0,'127.0.0.1'),(2,'fanfan','floristgao@126.com','2ba66a0446fa57241346ce997c230dfc','8zulrw',1484624492,54606832,2806827343,5368709120,1026,'origin','plain',1,1,1,0,1476622293,0,'2017-01-17 03:41:32',0,0,1,0,'rc4-md5',0,'45.32.27.28'),(4,'mao','727480175@qq.com','3379f212bf9be9c4cfa439b695a33b90','7qo689',1484624492,31385594,2290513276,5368709120,1027,'origin','plain',1,1,1,0,1482465026,0,'2017-01-17 03:41:32',0,0,1,0,'rc4-md5',0,'223.104.101.32');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_traffic_log`
--

DROP TABLE IF EXISTS `user_traffic_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_traffic_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `u` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `rate` float NOT NULL,
  `traffic` varchar(32) NOT NULL,
  `log_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_traffic_log`
--

LOCK TABLES `user_traffic_log` WRITE;
/*!40000 ALTER TABLE `user_traffic_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_traffic_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16 23:28:35
