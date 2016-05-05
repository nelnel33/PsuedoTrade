-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: cse305
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `stockhistory`
--

DROP TABLE IF EXISTS `stockhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockhistory` (
  `stockSymbol` varchar(11) DEFAULT NULL,
  `oldPrice` double DEFAULT NULL,
  `newPrice` double DEFAULT NULL,
  `difference` double DEFAULT NULL,
  `changeDate` datetime DEFAULT NULL,
  KEY `stockSymbol` (`stockSymbol`),
  CONSTRAINT `stockhistory_ibfk_1` FOREIGN KEY (`stockSymbol`) REFERENCES `stocks` (`stockSymbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockhistory`
--

LOCK TABLES `stockhistory` WRITE;
/*!40000 ALTER TABLE `stockhistory` DISABLE KEYS */;
INSERT INTO `stockhistory` VALUES ('GM',5,10,5,'2012-04-16 00:00:00'),('GM',10,7,-3,'2012-05-16 00:00:00'),('f',7,12,5,'2012-07-16 00:00:00'),('GM',7,12,5,'2016-04-16 00:00:00'),('GM',10,7,-3,'2016-03-16 00:00:00'),('GM',5,25,20,'2016-04-24 00:00:00'),('IBM',10,11,1,'2016-01-31 00:00:00'),('IBM',18,10,1,'2014-01-31 00:00:00'),('GM',43.23,50.23,7,'2016-05-05 19:23:01');
/*!40000 ALTER TABLE `stockhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-05 19:38:53
