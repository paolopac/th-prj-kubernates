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
-- Table structure for table `CONF001_ACCESS_FACEBOOK`
--

DROP TABLE IF EXISTS `CONF001_ACCESS_FACEBOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONF001_ACCESS_FACEBOOK` (
  `CONF001_ID` bigint NOT NULL AUTO_INCREMENT,
  `CONF001_PAGE_ID` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CONF001_LIVED_LONG_PAGE_ACCESS_TOKEN` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CONF001_ID_AN003` bigint NOT NULL,
  `CONF001_DATA_CREAZIONE` datetime(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4),
  `CONF001_COD_UTENTE_CREAZIONE` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PA',
  `CONF001_DATA_MODIFICA` datetime(4) DEFAULT NULL,
  `CONF001_COD_UTENTE_MODIFICA` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CONF001_STATO` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'E',
  PRIMARY KEY (`CONF001_ID`),
  KEY `CONF001_KEY_AN003` (`CONF001_ID_AN003`),
  CONSTRAINT `CONF001_KEY_AN003` FOREIGN KEY (`CONF001_ID_AN003`) REFERENCES `AN003_ASSOCIATION` (`AN003_ID`),
  CONSTRAINT `CHK_CONF001_STATO` CHECK (((`CONF001_STATO` = _utf8mb3'E') or (`CONF001_STATO` = _utf8mb3'D')))
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONF001_ACCESS_FACEBOOK`
--

LOCK TABLES `CONF001_ACCESS_FACEBOOK` WRITE;
/*!40000 ALTER TABLE `CONF001_ACCESS_FACEBOOK` DISABLE KEYS */;
INSERT INTO `CONF001_ACCESS_FACEBOOK` VALUES (1,'607909929299457','EAANsxXHhW1UBOZCH2BZCu1sdnLaFGZAE04cvyCerpiK3pBJJVkGmQiqWIUnxiph6nozKNCZB3vWshswZAKIp73FPAFGRBZAIr58SkhZAwcy5pGidvgkCBZBvIMe4e9VaGSIpGZBe7XA9u1C0l1CBnORygbzahXaW4G51k2cLQZAiGobjAxXj51rqOD4S7a8FpD9TnFNlguDVbXVthC20EH',1,'2024-02-16 09:10:33.8085','PA',NULL,NULL,'E');
/*!40000 ALTER TABLE `CONF001_ACCESS_FACEBOOK` ENABLE KEYS */;
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