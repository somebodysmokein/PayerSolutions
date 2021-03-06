-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: prov_file
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `credential_info`
--

DROP TABLE IF EXISTS `credential_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credential_info` (
  `CredentialNumber` varchar(20) NOT NULL DEFAULT '',
  `CredentialType` varchar(100) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CredentialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential_info`
--

LOCK TABLES `credential_info` WRITE;
/*!40000 ALTER TABLE `credential_info` DISABLE KEYS */;
INSERT INTO `credential_info` VALUES ('HHH1111111','Nurse',NULL,'2017-05-03 05:27:52'),('HHH22222','Orthopeadist',NULL,'2017-05-03 05:31:05'),('VM60171312','Registered Nurse License',NULL,'2017-05-03 04:58:31');
/*!40000 ALTER TABLE `credential_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_date`
--

DROP TABLE IF EXISTS `d_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_date` (
  `CE_DUE_DT` varchar(10) DEFAULT NULL,
  `first_iss_DT` varchar(10) DEFAULT NULL,
  `last_iss_DT` varchar(10) DEFAULT NULL,
  `EXP_DT` varchar(10) DEFAULT NULL,
  `ACTION_TAKEN` varchar(5) DEFAULT NULL,
  `CredentialNumber` varchar(20) NOT NULL DEFAULT '',
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CredentialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_date`
--

LOCK TABLES `d_date` WRITE;
/*!40000 ALTER TABLE `d_date` DISABLE KEYS */;
INSERT INTO `d_date` VALUES ('2017-05-10','2017-05-12','2017-05-25','2017-05-16','Yes','HHH1111111','2017-05-03 05:27:53'),('2017-05-10','2017-05-12','2017-05-25','2017-05-16','Yes','HHH22222','2017-05-03 05:31:05'),('2017-05-03','2017-05-12','2017-05-25','2017-05-11','No','VM60171312','2017-05-03 04:58:31');
/*!40000 ALTER TABLE `d_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procs_tracking`
--

DROP TABLE IF EXISTS `procs_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procs_tracking` (
  `BEGIN_TIMESTAMP` timestamp NULL DEFAULT NULL,
  `END_TIMESTAMP` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procs_tracking`
--

LOCK TABLES `procs_tracking` WRITE;
/*!40000 ALTER TABLE `procs_tracking` DISABLE KEYS */;
INSERT INTO `procs_tracking` VALUES ('2017-05-03 04:48:43','2017-05-03 04:48:43'),('2017-05-03 04:59:05','2017-05-03 04:59:05'),('2017-05-03 05:22:27','2017-05-03 05:22:27'),('2017-05-03 05:28:22','2017-05-03 05:28:22'),('2017-05-03 05:29:48','2017-05-03 05:29:48'),('2017-05-03 05:31:33','2017-05-03 05:31:33');
/*!40000 ALTER TABLE `procs_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider_persn_details`
--

DROP TABLE IF EXISTS `provider_persn_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_persn_details` (
  `CredentialNumber` varchar(20) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `BIRTH_YEAR` varchar(4) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `PROV_ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`PROV_ID`),
  UNIQUE KEY `persn_details_ux` (`CredentialNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_persn_details`
--

LOCK TABLES `provider_persn_details` WRITE;
/*!40000 ALTER TABLE `provider_persn_details` DISABLE KEYS */;
INSERT INTO `provider_persn_details` VALUES ('VM60171312','Corcel','Megan','Jean','1988','2017-05-03 04:58:31',16),('HHH1111111','Raghunathan','Venkatesh','NA','2018','2017-05-03 05:27:52',17),('HHH22222','MB','Kalisaran','NA','2018','2017-05-03 05:31:05',18);
/*!40000 ALTER TABLE `provider_persn_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-03  1:36:17
