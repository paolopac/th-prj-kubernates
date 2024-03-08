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
-- Table structure for table `MSG002_PROMPT_CHAT_GPT`
--

DROP TABLE IF EXISTS `MSG002_PROMPT_CHAT_GPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MSG002_PROMPT_CHAT_GPT` (
  `MSG002_ID` bigint NOT NULL AUTO_INCREMENT,
  `MSG002_PROMPT` varchar(600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MSG002_ID_MSG003` bigint NOT NULL,
  `MSG002_ID_AN005` bigint NOT NULL,
  `MSG002_ID_AN003` bigint NOT NULL,
  `MSG002_DATA_UTILIZZO` datetime(4) DEFAULT NULL,
  `MSG002_DATA_CREAZIONE` datetime(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4),
  `MSG002_COD_UTENTE_CREAZIONE` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PA',
  `MSG002_DATA_MODIFICA` datetime(4) DEFAULT NULL,
  `MSG002_COD_UTENTE_MODIFICA` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `MSG002_STATO` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'E',
  PRIMARY KEY (`MSG002_ID`),
  KEY `MSG002_KEY_AN003` (`MSG002_ID_AN003`),
  KEY `MSG002_KEY_AN005` (`MSG002_ID_AN005`),
  KEY `MSG002_KEY_MSG003` (`MSG002_ID_MSG003`),
  CONSTRAINT `MSG002_KEY_AN003` FOREIGN KEY (`MSG002_ID_AN003`) REFERENCES `AN003_ASSOCIATION` (`AN003_ID`),
  CONSTRAINT `MSG002_KEY_AN005` FOREIGN KEY (`MSG002_ID_AN005`) REFERENCES `AN005_TIPO_CANALE` (`AN005_ID`),
  CONSTRAINT `MSG002_KEY_MSG003` FOREIGN KEY (`MSG002_ID_MSG003`) REFERENCES `MSG003_TIPO_CONTENUTO` (`MSG003_ID`),
  CONSTRAINT `CHK_MSG002_STATO` CHECK (((`MSG002_STATO` = _utf8mb3'E') or (`MSG002_STATO` = _utf8mb3'D')))
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MSG002_PROMPT_CHAT_GPT`
--

LOCK TABLES `MSG002_PROMPT_CHAT_GPT` WRITE;
/*!40000 ALTER TABLE `MSG002_PROMPT_CHAT_GPT` DISABLE KEYS */;
INSERT INTO `MSG002_PROMPT_CHAT_GPT` VALUES (1,'Scrivi un post facebook che pubblicizzi il campionato regionale Corripuglia, formato da gare di 10km o halfmarathon per le vie delle città più belle della regione. Entrando in happy runners si hanno sconti e agevolazioni nel partecipare oltre a poter gareggiare con centinaia di atleti',1,1,1,NULL,'2024-02-22 10:47:53.9389','PA',NULL,NULL,'E'),(2,'Scrivi un post Instagram che pubblicizzi il campionato regionale FIDAL della regione Puglia dal nome CorriPuglia. Il campionato prevede diverse tappe per le vittà più belle della regione. Le gare sono 10km o half marathon è aperta a tutti gli appassionati e amatori, ognuno con i propri tempi. Entrando in happy runers si hanno agevolazioni per la partecipazione alle gare.',1,1,1,NULL,'2024-02-22 10:49:10.7386','PA',NULL,NULL,'E'),(3,'Scrivi un post Instagram che pubblicizzi il campionato regionale FIDAL CorriPuglia, che prevede gare di 10km e mette maratone per le città più belle della regione, tra cui anche la città di Altamura. Entrando in happy runners si ha modo di partecipare alle gare con agevolazioni e si ha modo di correre assieme a centinaia di altri atleti.',1,1,1,NULL,'2024-02-22 10:49:10.7546','PA',NULL,NULL,'E'),(4,'Hi',5,1,1,NULL,'2024-02-22 16:37:06.6566','PA',NULL,NULL,'E'),(127,'Scrivi un post facebook che incita l\'attività della corsa, anche con aforismi e che inviti ad iscriversi alla happy runners Altamura.',3,1,1,NULL,'2024-02-27 18:55:22.6277','PA',NULL,NULL,'E'),(128,'Scrivi un post facebook che inciti la corsa con aforismi sulla bellezza della corsa e che inviti ad iscriversi alla happy runners Altamura',3,1,1,NULL,'2024-02-27 18:55:22.6335','PA',NULL,NULL,'E'),(129,'Scrivi un post facebook che promuova la corsa e l\'iscrizione alla happy runners Altamura, informando che sono previsti vantaggi per la partecipazione alle gare regionali FIDAL per gli iscritti',3,1,1,NULL,'2024-02-27 18:55:22.6389','PA',NULL,NULL,'E'),(130,'Scrivi un post Facebook di incitamento alla corsa anche con aforismi. Grazie',2,1,1,NULL,'2024-02-27 18:55:22.6452','PA',NULL,NULL,'E'),(131,'Scrivi un post Facebook di promuova la corsa, che evidenzi gli aspetti positivi e sani. Grazie',2,1,1,NULL,'2024-02-27 18:55:22.6496','PA',NULL,NULL,'E'),(132,'Scrivi un post Facebook che promuova la corsa, che evidenzi gli aspetti positivi, sani e il benessere. Grazie',2,1,1,NULL,'2024-02-27 18:55:22.6551','PA',NULL,NULL,'E'),(133,'Scrivi un post Facebook di auguri natalizio per gli iscritti alla happy runners altamura e tutti gli utenti della pagina facebook happy runnes altamura',4,1,1,NULL,'2024-02-27 18:55:22.6599','PA',NULL,NULL,'E'),(134,'Scrivi un post Facebook di auguri Pasquale per gli iscritti alla happy runners altamura e tutti gli utenti della pagina facebook e instagram happy runnes altamura',8,1,1,NULL,'2024-02-27 18:55:22.6649','PA',NULL,NULL,'E'),(135,'Scrivi un post Facebook di auguri per il nuovo anno, senza scrivere il nome dell\'anno, per gli iscritti alla happy runners altamura e tutti gli utenti della pagina facebook e instagram happy runnes altamura. Grazie',6,1,1,NULL,'2024-02-27 18:55:22.6703','PA',NULL,NULL,'E');
/*!40000 ALTER TABLE `MSG002_PROMPT_CHAT_GPT` ENABLE KEYS */;
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
