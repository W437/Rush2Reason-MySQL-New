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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `answer1` varchar(100) NOT NULL,
  `answer2` varchar(100) NOT NULL,
  `answer3` varchar(100) NOT NULL,
  `answer4` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `question_UNIQUE` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'What does a funambulist walk on?','A Tight Rope','A bed of hot coals','A tightrope made of spaghetti','A cloud of floating marshmallows'),(2,'Area 51 is located in which US state?','Nevada','New York','Texas','Florida'),(3,'What is Symptomatology the study of?','Symptoms','Underwater basket weaving techniques','Intergalactic fashion trends','Optimal temperature for baking cookies on Mars'),(4,'Which science deals with the motion of projectiles?','Ballistics','Astrology','Phrenology','Cryptography'),(5,'What is Nutriology the study of?','Nutrition','The study of nutria, a type of large rodent','The study of nutrinos, a fictional subatomic particle','The study of nutribots, advanced robots designed to cook nutritious meals'),(6,'What animal is known to be ‘man’s best friend’?','Dog','Giraffe','Jellyfish','Cactus'),(7,'What animal is covered in quills?','Porcupine','Elephant','Goldfish','Giraffe'),(8,'What’s a newly hatched butterfly called?','Caterpillar','A fluffy potato','A flying spaghetti monster','A mini Godzilla'),(9,'What does a snake shed a few times a year?','Its skin','Feathers','Scales','Pinecones'),(10,'What type of reptile can detach their tails when they are in danger and then regrow it?','Lizards','Elephants','Penguins','Pineapples'),(11,'What do you call a cocktail consisting of coconut milk, rum, and pineapple?','Pina Colada','Pineapple Mojito','Coconut Colada','Rum Smoothie'),(12,'Who is depicted on the US hundred-dollar bill?','Benjamin Franklin','Abraham Lincoln','Elvis Presley','SpongeBob SquarePants'),(13,'What is James Bond’s preferred drink of choice?','Martini','Orange juice','Milkshake','Hot chocolate'),(14,'On What Japanese City Was The First Atomic Bomb Dropped?','Hiroshima','Tokyo','Kyoto','Osaka'),(15,'Who Was The First Woman To Fly Solo Across The Atlantic Ocean?','Amelia Earhart','Amelia Bedelia','Dora the Explorer','Cinderella'),(16,'In CSS, which of these values CANNOT be used with the \"position\" property?','Center','Unicorn','Pizza','Banana');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
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
