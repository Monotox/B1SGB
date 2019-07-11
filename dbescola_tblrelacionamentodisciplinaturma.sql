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
-- Table structure for table `tblrelacionamentodisciplinaturma`
--

DROP TABLE IF EXISTS `tblrelacionamentodisciplinaturma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblrelacionamentodisciplinaturma` (
  `upkChave` binary(16) NOT NULL,
  `fkDisciplina` binary(16) NOT NULL,
  `fkTurma` binary(16) NOT NULL,
  PRIMARY KEY (`upkChave`),
  KEY `fk_disciplina_rel` (`fkDisciplina`),
  KEY `fk_turma_rel` (`fkTurma`),
  KEY `idx_tblrelacionamentodisciplinaturma_upkChave` (`upkChave`),
  CONSTRAINT `fk_disciplina_rel` FOREIGN KEY (`fkDisciplina`) REFERENCES `tbldisciplina` (`upkChave`),
  CONSTRAINT `fk_turma_rel` FOREIGN KEY (`fkTurma`) REFERENCES `tblturma` (`upkChave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrelacionamentodisciplinaturma`
--

LOCK TABLES `tblrelacionamentodisciplinaturma` WRITE;
/*!40000 ALTER TABLE `tblrelacionamentodisciplinaturma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrelacionamentodisciplinaturma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 20:38:54
