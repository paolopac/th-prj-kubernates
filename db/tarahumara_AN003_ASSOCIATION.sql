CREATE DATABASE  IF NOT EXISTS `tarahumara` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tarahumara`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tarahumara
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `AN003_ASSOCIATION`
--

DROP TABLE IF EXISTS `AN003_ASSOCIATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AN003_ASSOCIATION` (
  `AN003_ID` bigint NOT NULL AUTO_INCREMENT,
  `AN003_NOME` varchar(40) NOT NULL,
  `AN003_FIDALID` varchar(10) NOT NULL,
  `AN003_CF` varchar(16) DEFAULT NULL,
  `AN003_PIVA` varchar(11) DEFAULT NULL,
  `AN003_CITTA` varchar(50) NOT NULL,
  `AN003_INDIRIZZO` varchar(50) NOT NULL,
  `AN003_CAP` varchar(5) NOT NULL,
  `AN003_PROVINCIA` varchar(50) NOT NULL,
  `AN003_TELEFONO` varchar(20) NOT NULL,
  `AN003_EMAIL` varchar(30) NOT NULL,
  PRIMARY KEY (`AN003_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AN003_ASSOCIATION`
--

LOCK TABLES `AN003_ASSOCIATION` WRITE;
/*!40000 ALTER TABLE `AN003_ASSOCIATION` DISABLE KEYS */;
INSERT INTO `AN003_ASSOCIATION` VALUES (1,'Happy Runners Altamura','BA703',NULL,'07004700725','Altamura','ViA S. Quasimodo 5','70022','BA','3883483236','paoloacqua@hotmail.it');
/*!40000 ALTER TABLE `AN003_ASSOCIATION` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 12:30:04