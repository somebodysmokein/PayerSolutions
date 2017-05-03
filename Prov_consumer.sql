-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: prov_consumer
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
-- Table structure for table `consumer_d_date`
--

DROP TABLE IF EXISTS `consumer_d_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_d_date` (
  `CE_DUE_DT` varchar(10) DEFAULT NULL,
  `first_iss_DT` varchar(10) DEFAULT NULL,
  `last_iss_DT` varchar(10) DEFAULT NULL,
  `exp_DT` varchar(10) DEFAULT NULL,
  `ACTION_TAKEN` varchar(5) DEFAULT NULL,
  `CredentialNumber` varchar(20) NOT NULL DEFAULT '',
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_d_date`
--

LOCK TABLES `consumer_d_date` WRITE;
/*!40000 ALTER TABLE `consumer_d_date` DISABLE KEYS */;
INSERT INTO `consumer_d_date` VALUES ('2017-05-03','2017-05-12','2017-05-25','2017-05-11','No','VM60171312','2017-05-03 05:04:19'),('2017-05-10','2017-05-20','2017-05-17','2017-05-11','Yes','HHH1111111','2017-05-03 05:22:27'),('2017-05-10','2017-05-12','2017-05-25','2017-05-16','Yes','HHH1111111','2017-05-03 05:28:22'),('2017-05-05','2017-05-03','2017-05-13','2017-05-31','Yes','HHH22222','2017-05-03 05:29:48'),('2017-05-10','2017-05-12','2017-05-25','2017-05-16','Yes','HHH22222','2017-05-03 05:31:33');
/*!40000 ALTER TABLE `consumer_d_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_prov_credential_info`
--

DROP TABLE IF EXISTS `consumer_prov_credential_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_prov_credential_info` (
  `CredentialNumber` varchar(20) NOT NULL DEFAULT '',
  `CredentialType` varchar(100) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `VENDOR_ID` int(11) DEFAULT NULL,
  `CONSUMER_ID` int(11) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_prov_credential_info`
--

LOCK TABLES `consumer_prov_credential_info` WRITE;
/*!40000 ALTER TABLE `consumer_prov_credential_info` DISABLE KEYS */;
INSERT INTO `consumer_prov_credential_info` VALUES ('VM60171312','Registered Nurse License',NULL,NULL,NULL,'2017-05-03 05:03:56'),('HHH1111111','Physician',NULL,NULL,NULL,'2017-05-03 05:22:26'),('HHH1111111','Nurse',NULL,NULL,NULL,'2017-05-03 05:28:22'),('HHH22222','Physician',NULL,NULL,NULL,'2017-05-03 05:29:48'),('HHH22222','Orthopeadist',NULL,NULL,NULL,'2017-05-03 05:31:33');
/*!40000 ALTER TABLE `consumer_prov_credential_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_provider_persn_details`
--

DROP TABLE IF EXISTS `consumer_provider_persn_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_provider_persn_details` (
  `PROV_ID` int(11) DEFAULT NULL,
  `CredentialNumber` varchar(20) NOT NULL DEFAULT '',
  `LastName` varchar(30) DEFAULT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `BIRTH_YEAR` varchar(4) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_provider_persn_details`
--

LOCK TABLES `consumer_provider_persn_details` WRITE;
/*!40000 ALTER TABLE `consumer_provider_persn_details` DISABLE KEYS */;
INSERT INTO `consumer_provider_persn_details` VALUES (16,'VM60171312','Corcel','Megan','Jean','1988','2017-05-03 05:04:10'),(17,'HHH1111111','Raghunathan','Venkatesh','NA','1988','2017-05-03 05:22:26'),(17,'HHH1111111','Raghunathan','Venkatesh','NA','2018','2017-05-03 05:28:22'),(18,'HHH22222','MB','Kalisaran','NA','2018','2017-05-03 05:29:47'),(18,'HHH22222','MB','Kalisaran','NA','2018','2017-05-03 05:31:33');
/*!40000 ALTER TABLE `consumer_provider_persn_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-03  1:36:33
