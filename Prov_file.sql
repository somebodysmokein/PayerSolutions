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
  `CredentialNumber` varchar(20) DEFAULT NULL,
  `CredentialType` varchar(100) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credential_info`
--

LOCK TABLES `credential_info` WRITE;
/*!40000 ALTER TABLE `credential_info` DISABLE KEYS */;
INSERT INTO `credential_info` VALUES ('1111111111','sdasdsaj',NULL,'2017-04-30 21:32:13'),('RN00152386','Physician Assistant License',NULL,'2017-04-30 21:32:13'),('PH00067206','11111111111',NULL,'2017-05-01 12:23:27'),('VB60620428','Pharmacy Assistant License',NULL,'2017-04-30 21:32:13'),('NT00001156','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('NT00001022','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('NC60007090','Nursing Assistant Certification',NULL,'2017-04-30 21:32:13'),('RN60574617','Registered Nurse License',NULL,'2017-04-30 21:32:13'),('NA60714847','Nursing Assistant Registration',NULL,'2017-04-30 21:32:13'),('NA00142022','Nursing Assistant Registration',NULL,'2017-04-30 21:32:13'),('NT00000598','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('NT00000510','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('NT00000598','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('NT00000598','Naturopathic Physician License',NULL,'2017-04-30 21:32:13'),('sdddddddddddddd','Naturopathic Physician License',NULL,'2017-05-01 07:09:03');
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
  `CredentialNumber` varchar(20) DEFAULT NULL,
  `last_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_date`
--

LOCK TABLES `d_date` WRITE;
/*!40000 ALTER TABLE `d_date` DISABLE KEYS */;
INSERT INTO `d_date` VALUES ('PH00067206','2017-04-05','2017-04-06','2017-04-17','Yes',NULL,'2017-04-30 21:33:32'),('2017-05-02','2017-05-02','2017-05-02','2017-05-02','Yes','PH00067206','2017-05-01 12:23:27'),('2017-04-06','2017-04-13','2017-04-26','2017-04-10','No','NT00001156','2017-04-30 21:33:32'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','NT00001022','2017-04-30 21:33:32'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','NC60007090','2017-04-30 21:33:32'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','RN60574617','2017-04-30 21:33:32'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NA60714847','2017-04-30 21:33:32'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NA00142022','2017-04-30 21:33:32'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598','2017-04-30 21:33:32'),('2017-04-13','2017-04-14','2017-04-28','2017-04-19','Yes','NT00000510','2017-04-30 21:33:32'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598','2017-04-30 21:33:32'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598','2017-04-30 21:33:32'),('2017-05-01','2017-05-31','2017-05-31','2017-05-01','Yes','sdddddddddddddd','2017-05-01 07:09:03');
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
INSERT INTO `procs_tracking` VALUES ('2017-05-01 02:02:03','2017-05-01 02:02:03'),('2017-05-01 02:02:05','2017-05-01 02:02:05'),('2017-05-01 02:02:06','2017-05-01 02:02:06'),('2017-05-01 02:02:08','2017-05-01 02:02:08'),('2017-05-01 02:02:09','2017-05-01 02:02:09'),('2017-05-01 06:45:20','2017-05-01 06:45:20'),('2017-05-01 07:08:01','2017-05-01 07:08:01'),('2017-05-01 07:09:01','2017-05-01 07:09:01'),('2017-05-01 07:09:03','2017-05-01 07:09:03'),('2017-05-01 12:27:14','2017-05-01 12:27:14'),('2017-05-01 12:27:28','2017-05-01 12:27:28');
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
  PRIMARY KEY (`PROV_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider_persn_details`
--

LOCK TABLES `provider_persn_details` WRITE;
/*!40000 ALTER TABLE `provider_persn_details` DISABLE KEYS */;
INSERT INTO `provider_persn_details` VALUES ('1111111111','raghunathan','Venkatesh','NA','1988','2017-04-30 21:34:47',1),('RN00152386','Raghunathan','Venkatesh','NA','1988','2017-04-30 21:34:47',2),('PH00067206','Raghunathan','Venkatesh','NA','1988','2017-05-01 12:23:27',3),('VB60620428','Chen','Tara','L','1981','2017-04-30 21:34:47',4),('NT00001156','ROTH','CHASE','A','1971','2017-04-30 21:34:47',5),('NT00001022','Robert','Abell','C','1960','2017-04-30 21:34:47',6),('NC60007090','Berhane','Adhanom','','1960','2017-04-30 21:34:47',7),('RN60574617','Bradley','Lolita','Alancia','1971','2017-04-30 21:34:47',8),('NA60714847','Chenier','Karen','NA','1976','2017-04-30 21:34:47',9),('NA00142022','Edgerly','Dorothy','R','1976','2017-04-30 21:34:47',10),('NT00000598','Jardin','Kyrie','S','1953','2017-04-30 21:34:47',11),('NT00000510','BARRON','PATRICK','CARROLL','1949','2017-04-30 21:34:47',12),('NT00000598','Jardin','Kyrie','S','1953','2017-04-30 21:34:47',13),('NT00000598','Jardin','Kyrie','S','1953','2017-04-30 21:34:47',14),('sdddddddddddddd','Geller','Ross','M','1977','2017-05-01 07:09:03',15);
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

-- Dump completed on 2017-05-01  8:32:19
