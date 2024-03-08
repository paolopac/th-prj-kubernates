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
-- Table structure for table `MSG006_URL_CONTEXTUAL_IMG`
--

DROP TABLE IF EXISTS `MSG006_URL_CONTEXTUAL_IMG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MSG006_URL_CONTEXTUAL_IMG` (
  `MSG006_ID` bigint NOT NULL AUTO_INCREMENT,
  `MSG006_URL` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MSG006_ID_MSG005` bigint NOT NULL,
  `MSG006_DATA_UTILIZZO` datetime(4) DEFAULT NULL,
  `MSG006_DATA_CREAZIONE` datetime(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4),
  `MSG006_COD_UTENTE_CREAZIONE` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PA',
  `MSG006_DATA_MODIFICA` datetime(4) DEFAULT NULL,
  `MSG006_COD_UTENTE_MODIFICA` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MSG006_STATO` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'E',
  PRIMARY KEY (`MSG006_ID`),
  KEY `MSG006_KEY_MSG005` (`MSG006_ID_MSG005`),
  CONSTRAINT `MSG006_KEY_MSG005` FOREIGN KEY (`MSG006_ID_MSG005`) REFERENCES `MSG005_CONTEXTUAL_IMG` (`MSG005_ID`),
  CONSTRAINT `CHK_MSG006_STATO` CHECK (((`MSG006_STATO` = _utf8mb3'E') or (`MSG006_STATO` = _utf8mb3'D')))
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MSG006_URL_CONTEXTUAL_IMG`
--

LOCK TABLES `MSG006_URL_CONTEXTUAL_IMG` WRITE;
/*!40000 ALTER TABLE `MSG006_URL_CONTEXTUAL_IMG` DISABLE KEYS */;
INSERT INTO `MSG006_URL_CONTEXTUAL_IMG` VALUES (1,'https://media.foundit.hk/career-advice/wp-content/uploads/2021/08/1509963788.jpg',1,NULL,'2024-02-26 14:19:51.9694','PA',NULL,NULL,'E'),(77,'https://media.foundit.hk/career-advice/wp-content/uploads/2021/08/1509963788.jpg',55,NULL,'2024-02-27 19:04:21.7164','PA',NULL,NULL,'E'),(78,'https://media.foundit.hk/career-advice/wp-content/uploads/2021/08/1509963788.jpg',52,NULL,'2024-02-27 19:05:15.3399','PA',NULL,NULL,'E');
/*!40000 ALTER TABLE `MSG006_URL_CONTEXTUAL_IMG` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 12:30:03
