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
  `CredentialNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_d_date`
--

LOCK TABLES `consumer_d_date` WRITE;
/*!40000 ALTER TABLE `consumer_d_date` DISABLE KEYS */;
INSERT INTO `consumer_d_date` VALUES ('2017-04-01','2017-04-05','2017-04-17','2017-04-30','YES','PH00067206'),('2017-04-06','2017-04-13','2017-04-26','2017-04-10','No','NT00001156'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','NT00001022'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','NC60007090'),('2017-04-06','2017-04-13','2017-04-26','2017-04-18','Yes','RN60574617'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NA60714847'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NA00142022'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-13','2017-04-14','2017-04-28','2017-04-19','Yes','NT00000510'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-02-11','2017-04-02','2017-04-25','2017-04-19','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-04-05','2017-04-24','2017-04-27','2017-04-03','Yes','NT00000598'),('2017-05-02','2017-05-02','2017-05-02','2017-05-02','Yes','PH00067206'),('2017-05-02','2017-05-02','2017-05-02','2017-05-02','Yes','PH00067206');
/*!40000 ALTER TABLE `consumer_d_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer_prov_credential_info`
--

DROP TABLE IF EXISTS `consumer_prov_credential_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer_prov_credential_info` (
  `CredentialNumber` varchar(20) DEFAULT NULL,
  `CredentialType` varchar(100) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `VENDOR_ID` int(11) DEFAULT NULL,
  `CONSUMER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_prov_credential_info`
--

LOCK TABLES `consumer_prov_credential_info` WRITE;
/*!40000 ALTER TABLE `consumer_prov_credential_info` DISABLE KEYS */;
INSERT INTO `consumer_prov_credential_info` VALUES ('PH00067206','Pharmacist License',NULL,NULL,NULL),('NT00001156','Naturopathic Physician License',NULL,NULL,NULL),('NT00001022','Naturopathic Physician License',NULL,NULL,NULL),('NC60007090','Nursing Assistant Certification',NULL,NULL,NULL),('RN60574617','Registered Nurse License',NULL,NULL,NULL),('NA60714847','Nursing Assistant Registration',NULL,NULL,NULL),('NA00142022','Nursing Assistant Registration',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000510','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('PH00067206','Pharmacist License',NULL,NULL,NULL),('NT00001156','Naturopathic Physician License',NULL,NULL,NULL),('NT00001022','Naturopathic Physician License',NULL,NULL,NULL),('NC60007090','Nursing Assistant Certification',NULL,NULL,NULL),('RN60574617','Registered Nurse License',NULL,NULL,NULL),('NA60714847','Nursing Assistant Registration',NULL,NULL,NULL),('NA00142022','Nursing Assistant Registration',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000510','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('NT00000598','Naturopathic Physician License',NULL,NULL,NULL),('PH00067206','11111111111',NULL,NULL,NULL),('PH00067206','11111111111',NULL,NULL,NULL);
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
  `CredentialNumber` varchar(20) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `BIRTH_YEAR` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer_provider_persn_details`
--

LOCK TABLES `consumer_provider_persn_details` WRITE;
/*!40000 ALTER TABLE `consumer_provider_persn_details` DISABLE KEYS */;
INSERT INTO `consumer_provider_persn_details` VALUES (1567048117,'PH00067206','Raghunathan','Venkatesh','NA','1988'),(1567048117,'NT00001156','ROTH','CHASE','A','1971'),(1567048117,'NT00001022','Robert','Abell','C','1960'),(1567048117,'NC60007090','Berhane','Adhanom','','1960'),(1567048117,'RN60574617','Bradley','Lolita','Alancia','1971'),(1567048117,'NA60714847','Chenier','Karen','NA','1976'),(1567048117,'NA00142022','Edgerly','Dorothy','R','1976'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000510','BARRON','PATRICK','CARROLL','1949'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'PH00067206','Raghunathan','Venkatesh','NA','1988'),(1567048117,'NT00001156','ROTH','CHASE','A','1971'),(1567048117,'NT00001022','Robert','Abell','C','1960'),(1567048117,'NC60007090','Berhane','Adhanom','','1960'),(1567048117,'RN60574617','Bradley','Lolita','Alancia','1971'),(1567048117,'NA60714847','Chenier','Karen','NA','1976'),(1567048117,'NA00142022','Edgerly','Dorothy','R','1976'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000510','BARRON','PATRICK','CARROLL','1949'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'PH00067206','Raghunathan','Venkatesh','NA','1988'),(1567048117,'NT00001156','ROTH','CHASE','A','1971'),(1567048117,'NT00001022','Robert','Abell','C','1960'),(1567048117,'NC60007090','Berhane','Adhanom','','1960'),(1567048117,'RN60574617','Bradley','Lolita','Alancia','1971'),(1567048117,'NA60714847','Chenier','Karen','NA','1976'),(1567048117,'NA00142022','Edgerly','Dorothy','R','1976'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000510','BARRON','PATRICK','CARROLL','1949'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(1567048117,'NT00000598','Jardin','Kyrie','S','1953'),(NULL,'PH00067206','Raghunathan','Venkatesh','NA','1988'),(NULL,'PH00067206','Raghunathan','Venkatesh','NA','1988');
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

-- Dump completed on 2017-05-01  8:32:44
