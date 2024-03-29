-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: affinity
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `renounce_bd`
--

DROP TABLE IF EXISTS `renounce_bd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renounce_bd` (
  `r_date` date NOT NULL,
  `child_ID` int NOT NULL,
  `renouncer_ID` int DEFAULT NULL,
  PRIMARY KEY (`child_ID`),
  KEY `renouncer_ID` (`renouncer_ID`),
  CONSTRAINT `renounce_bd_ibfk_3` FOREIGN KEY (`child_ID`) REFERENCES `child` (`child_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `renounce_bd_ibfk_4` FOREIGN KEY (`renouncer_ID`) REFERENCES `biological_donor` (`cr_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renounce_bd`
--

LOCK TABLES `renounce_bd` WRITE;
/*!40000 ALTER TABLE `renounce_bd` DISABLE KEYS */;
INSERT INTO `renounce_bd` VALUES ('2009-12-17',100001,600001),('2005-08-21',100002,600002),('2013-11-27',100003,600003),('2013-08-11',100004,600004),('2017-02-10',100005,600005),('2016-12-30',100006,600006),('2017-02-10',100007,600005),('2012-10-02',100008,600008),('2020-07-21',100009,600009),('2010-06-19',100010,600010),('2010-10-05',100011,600011),('2014-04-07',100012,600012),('2017-11-30',100013,600013),('2009-06-23',100014,600014),('2015-10-08',100015,600015),('2020-06-08',100016,600016),('2017-11-06',100017,600017),('2021-01-02',100018,600007),('2014-01-29',100019,600019),('2008-10-28',100020,600020),('2021-02-17',100021,600021),('2017-10-25',100022,600022),('2018-02-21',100023,600018),('2021-02-17',100081,600021),('2010-07-09',100083,600001),('2010-09-11',100084,600002);
/*!40000 ALTER TABLE `renounce_bd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-18 19:19:23
