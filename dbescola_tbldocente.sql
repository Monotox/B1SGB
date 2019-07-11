-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: dbescola
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `tbldocente`
--

DROP TABLE IF EXISTS `tbldocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbldocente` (
  `upkChave` binary(16) NOT NULL,
  `strProntuario` varchar(7) NOT NULL,
  `strNome` varchar(150) NOT NULL,
  `strEscolaridade` enum('FUNDAMENTAL','MEDIO','TECNOLOGO','BACHARELADO','LICENCIATURA','MESTRADO','DOUTORADO','POSGRADUACAO','LIVREDOCENCIA') NOT NULL,
  `dataNascimento` date NOT NULL,
  `dcCriado` datetime DEFAULT CURRENT_TIMESTAMP,
  `dcAtualizado` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upkChave`),
  KEY `idx_tbldocente_upkChave` (`upkChave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldocente`
--

LOCK TABLES `tbldocente` WRITE;
/*!40000 ALTER TABLE `tbldocente` DISABLE KEYS */;
INSERT INTO `tbldocente` VALUES (_binary '²Hj\ïn\Øé‡«dgs/\ï','3000122','JosÃ©','TECNOLOGO','1997-11-28','2019-05-04 22:54:19',NULL),(_binary '\ØPPn\Øé‡«dgs/\ï','3000112','Marta','TECNOLOGO','1971-05-23','2019-05-04 22:55:23',NULL),(_binary '\ØR†Sn\Øé‡«dgs/\ï','3000110','Rafael','TECNOLOGO','2006-09-19','2019-05-04 22:55:23',NULL);
/*!40000 ALTER TABLE `tbldocente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 20:38:56
