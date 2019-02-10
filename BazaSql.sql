-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: sklep
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gry`
--

DROP TABLE IF EXISTS `gry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gatunek` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cena` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gry`
--

LOCK TABLES `gry` WRITE;
/*!40000 ALTER TABLE `gry` DISABLE KEYS */;
INSERT INTO `gry` VALUES (1,'Call of Duty','FPS','56,99'),(2,'Final Fantasy XIV','MMORPG','80,99');
/*!40000 ALTER TABLE `gry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `klienci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nazwisko` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES (1,'Edward','Nowak'),(2,'asd','asd');
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zakupy`
--

DROP TABLE IF EXISTS `zakupy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zakupy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_klienta` int(11) NOT NULL,
  `id_gry` int(11) NOT NULL,
  `datazakupu` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sklep_klient_id_idx` (`id_klienta`),
  KEY `fk_sklep_gra_id_idx` (`id_gry`),
  CONSTRAINT `fk_sklep_gra_id` FOREIGN KEY (`id_gry`) REFERENCES `gry` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sklep_klient_id` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakupy`
--

LOCK TABLES `zakupy` WRITE;
/*!40000 ALTER TABLE `zakupy` DISABLE KEYS */;
INSERT INTO `zakupy` VALUES (16,1,1,'2019-02-10 21:45:50');
/*!40000 ALTER TABLE `zakupy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-10 22:14:05
