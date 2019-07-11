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
-- Table structure for table `tblestudante`
--

DROP TABLE IF EXISTS `tblestudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblestudante` (
  `upkChave` binary(16) NOT NULL,
  `strNome` varchar(50) NOT NULL,
  `dcNascimento` date NOT NULL,
  `strProntuario` varchar(7) NOT NULL,
  `dcCriado` datetime DEFAULT CURRENT_TIMESTAMP,
  `dcAtualizado` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upkChave`),
  UNIQUE KEY `strProntuario_UNIQUE` (`strProntuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestudante`
--

LOCK TABLES `tblestudante` WRITE;
/*!40000 ALTER TABLE `tblestudante` DISABLE KEYS */;
INSERT INTO `tblestudante` VALUES (_binary '7/w7n\Øé‡«dgs/\ï','JosÃ© Campillo','1997-11-28','3000133','2019-05-04 22:50:52',NULL),(_binary 'E§x$n\Øé‡«dgs/\ï','Marta Eliane','1971-05-23','3000132','2019-05-04 22:51:17',NULL),(_binary 'T°„>n\Øé‡«dgs/\ï','Rafael Campillo','2006-09-19','3000131','2019-05-04 22:51:42',NULL);
/*!40000 ALTER TABLE `tblestudante` ENABLE KEYS */;
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
