-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: rush2reason
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `score` int DEFAULT '0',
  `isFinished` int DEFAULT '0',
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (47,'123222',9,1),(4,'232',1,1),(5,'23222',1,1),(8,'23232',1,1),(21,'24242',1,1),(20,'32t3t',1,1),(19,'32y3',26,1),(48,'552232',10,1),(2,'asd23',1,0),(22,'asda2',0,0),(14,'asdasdasd',0,0),(15,'asdasdaww',0,0),(25,'daer',0,0),(7,'dang',1,0),(1,'Ding',99,1),(11,'dude55',1,1),(27,'gdgd',0,0),(26,'jhajha2',0,0),(9,'new1',1,0),(10,'new4',0,0),(38,'playa089',0,0),(34,'playa11',19,1),(35,'playa112',1,1),(12,'playa2',17,1),(36,'playaa2',1,0),(37,'playaa43',1,0),(16,'player100',1,1),(17,'player200',19,1),(45,'Player333',1,0),(44,'Player425',1,0),(6,'wael',0,0),(39,'wr',1,0),(40,'wrwr',0,0),(41,'wtwt2',46,1),(33,'y2y',46,1),(31,'y3y',0,0),(42,'ya2323',19,1),(24,'yarew',0,0),(18,'yay',28,1),(29,'yay2',17,0),(30,'yay23',36,1),(13,'yaya',0,0),(43,'yaya2432',27,1),(28,'yw',10,1);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-22 21:57:01
