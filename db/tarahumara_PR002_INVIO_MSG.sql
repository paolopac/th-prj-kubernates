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
-- Table structure for table `PR002_INVIO_MSG`
--

DROP TABLE IF EXISTS `PR002_INVIO_MSG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PR002_INVIO_MSG` (
  `PR002_ID` bigint NOT NULL AUTO_INCREMENT,
  `PR002_ID_AN003` bigint NOT NULL,
  `PR002_ID_MSG003` bigint NOT NULL,
  `PR002_ID_AN005` bigint NOT NULL,
  `PR002_ID_MSG004` bigint NOT NULL,
  `PR002_DATA_ULTIMO_INVIO` datetime(4) DEFAULT NULL,
  `PR002_NUM_TENTATIVI` int NOT NULL DEFAULT '0',
  `PR002_DATA_CREAZIONE` datetime(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4),
  `PR002_COD_UTENTE_CREAZIONE` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PA',
  `PR002_DATA_MODIFICA` datetime(4) DEFAULT NULL,
  `PR002_COD_UTENTE_MODIFICA` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `PR002_STATO` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'E',
  PRIMARY KEY (`PR002_ID`),
  KEY `PR002_KEY_AN003` (`PR002_ID_AN003`),
  KEY `PR002_KEY_MSG003` (`PR002_ID_MSG003`),
  KEY `PR002_KEY_AN005` (`PR002_ID_AN005`),
  KEY `PR002_KEY_MSG004` (`PR002_ID_MSG004`),
  CONSTRAINT `PR002_KEY_AN003` FOREIGN KEY (`PR002_ID_AN003`) REFERENCES `AN003_ASSOCIATION` (`AN003_ID`),
  CONSTRAINT `PR002_KEY_AN005` FOREIGN KEY (`PR002_ID_AN005`) REFERENCES `AN005_TIPO_CANALE` (`AN005_ID`),
  CONSTRAINT `PR002_KEY_MSG003` FOREIGN KEY (`PR002_ID_MSG003`) REFERENCES `MSG003_TIPO_CONTENUTO` (`MSG003_ID`),
  CONSTRAINT `PR002_KEY_MSG004` FOREIGN KEY (`PR002_ID_MSG004`) REFERENCES `MSG004_STATO_INVIO` (`MSG004_ID`),
  CONSTRAINT `CHK_PR002_STATO` CHECK (((`PR002_STATO` = _utf8mb3'E') or (`PR002_STATO` = _utf8mb3'D')))
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PR002_INVIO_MSG`
--

LOCK TABLES `PR002_INVIO_MSG` WRITE;
/*!40000 ALTER TABLE `PR002_INVIO_MSG` DISABLE KEYS */;
/*!40000 ALTER TABLE `PR002_INVIO_MSG` ENABLE KEYS */;
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
