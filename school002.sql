CREATE DATABASE  IF NOT EXISTS `school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `school`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nameIdx` (`name`),
  KEY `floorIdx` (`floor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` (`id`, `name`, `floor`) VALUES (1,'A',1),(2,'B',2),(3,'C',2),(4,'D',3),(5,'E',3);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int unsigned NOT NULL,
  `subject_id` int unsigned NOT NULL,
  `score` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`student_id`,`score`,`subject_id`),
  KEY `id_idx` (`subject_id`),
  CONSTRAINT `student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` (`id`, `student_id`, `subject_id`, `score`) VALUES (2,1,2,60),(4,1,4,63),(1,1,1,68),(6,1,6,78),(3,1,3,80),(5,1,5,84),(12,2,6,56),(7,2,1,73),(11,2,5,73),(9,2,3,78),(10,2,4,81),(8,2,2,91),(17,3,5,60),(16,3,4,64),(18,3,6,64),(13,3,1,79),(15,3,3,79),(14,3,2,81),(21,4,3,61),(19,4,1,68),(22,4,4,70),(24,4,6,74),(20,4,2,83),(23,4,5,90),(25,5,1,67),(27,5,3,73),(28,5,4,76),(30,5,6,77),(29,5,5,83),(26,5,2,86),(33,6,3,41),(31,6,1,61),(36,6,6,65),(32,6,2,67),(35,6,5,68),(34,6,4,85),(37,7,1,60),(38,7,2,60),(41,7,5,70),(42,7,6,75),(40,7,4,82),(39,7,3,86),(43,8,1,69),(48,8,6,70),(45,8,3,74),(46,8,4,76),(44,8,2,77),(47,8,5,82),(51,9,3,69),(52,9,4,69),(54,9,6,78),(50,9,2,88),(53,9,5,91),(49,9,1,93),(57,10,3,48),(58,10,4,66),(55,10,1,77),(60,10,6,78),(59,10,5,85),(56,10,2,89),(66,11,6,63),(63,11,3,67),(61,11,1,68),(64,11,4,76),(62,11,2,78),(65,11,5,83),(71,12,5,51),(68,12,2,66),(69,12,3,85),(72,12,6,88),(67,12,1,89),(70,12,4,91),(73,13,1,63),(75,13,3,63),(77,13,5,66),(78,13,6,72),(76,13,4,75),(74,13,2,87),(80,14,2,60),(81,14,3,62),(82,14,4,64),(79,14,1,75),(84,14,6,79),(83,14,5,89),(85,15,1,69),(86,15,2,74),(89,15,5,75),(87,15,3,76),(90,15,6,78),(88,15,4,86),(94,16,4,62),(93,16,3,70),(92,16,2,73),(91,16,1,79),(95,16,5,83),(96,16,6,85),(102,17,6,62),(100,17,4,63),(98,17,2,67),(101,17,5,68),(97,17,1,71),(99,17,3,74),(106,18,4,64),(105,18,3,71),(103,18,1,76),(108,18,6,76),(107,18,5,80),(104,18,2,83),(110,19,2,64),(114,19,6,68),(112,19,4,74),(113,19,5,75),(111,19,3,76),(109,19,1,85),(116,20,2,60),(118,20,4,64),(117,20,3,67),(115,20,1,81),(119,20,5,84),(120,20,6,91),(122,21,2,46),(123,21,3,73),(126,21,6,77),(121,21,1,79),(125,21,5,86),(124,21,4,87),(128,22,2,72),(130,22,4,77),(127,22,1,79),(129,22,3,83),(132,22,6,85),(131,22,5,89),(136,23,4,50),(133,23,1,69),(137,23,5,70),(138,23,6,79),(134,23,2,81),(135,23,3,90),(139,24,1,60),(143,24,5,73),(144,24,6,80),(140,24,2,82),(142,24,4,91),(146,25,2,57),(147,25,3,64),(149,25,5,69),(150,25,6,77),(145,25,1,84),(148,25,4,84),(155,26,5,61),(154,26,4,65),(156,26,6,67),(153,26,3,69),(152,26,2,79),(151,26,1,91),(162,27,6,62),(157,27,1,63),(160,27,4,71),(158,27,2,78),(161,27,5,83),(159,27,3,88),(163,28,1,60),(167,28,5,70),(168,28,6,85),(164,28,2,87),(165,28,3,88),(166,28,4,91),(172,29,4,55),(171,29,3,61),(174,29,6,70),(170,29,2,76),(169,29,1,88),(173,29,5,89),(179,30,5,62),(178,30,4,66),(176,30,2,67),(177,30,3,73),(180,30,6,79),(175,30,1,80),(181,31,1,40),(185,31,5,70),(182,31,2,78),(183,31,3,80),(186,31,6,80),(184,31,4,81),(191,32,5,65),(187,32,1,76),(189,32,3,79),(192,32,6,79),(188,32,2,95),(190,32,4,96),(195,33,3,52),(194,33,2,67),(197,33,5,76),(196,33,4,77),(198,33,6,84),(193,33,1,87),(203,34,5,43),(202,34,4,60),(204,34,6,63),(199,34,1,81),(201,34,3,84),(200,34,2,89),(205,35,1,50),(210,35,6,60),(208,35,4,80),(209,35,5,86),(207,35,3,87),(206,35,2,90),(213,36,3,62),(216,36,6,72),(211,36,1,79),(214,36,4,82),(215,36,5,92),(219,37,3,44),(217,37,1,68),(218,37,2,77),(220,37,4,77),(221,37,5,88),(222,37,6,87),(228,38,6,72),(224,38,2,74),(223,38,1,79),(227,38,5,79),(225,38,3,88),(226,38,4,88),(229,39,1,64),(231,39,3,66),(233,39,5,79),(230,39,2,80),(234,39,6,81),(232,39,4,90),(236,40,2,60),(239,40,5,66),(240,40,6,67),(235,40,1,68),(237,40,3,72),(238,40,4,91),(242,41,2,43),(245,41,5,62),(244,41,4,67),(241,41,1,71),(243,41,3,78),(246,41,6,91),(250,42,4,70),(248,42,2,73),(247,42,1,84),(249,42,3,84),(252,42,6,89),(251,42,5,96),(258,43,6,60),(254,43,2,70),(256,43,4,70),(257,43,5,77),(255,43,3,84),(253,43,1,88),(260,44,2,67),(264,44,6,67),(263,44,5,69),(259,44,1,75),(261,44,3,82),(262,44,4,82),(267,45,3,67),(269,45,5,70),(266,45,2,72),(270,45,6,73),(265,45,1,76),(268,45,4,91),(273,46,3,57),(275,46,5,62),(271,46,1,73),(274,46,4,81),(272,46,2,86),(276,46,6,87),(278,47,2,65),(279,47,3,70),(281,47,5,70),(277,47,1,71),(282,47,6,77),(280,47,4,82),(285,48,3,68),(283,48,1,70),(284,48,2,71),(286,48,4,83),(287,48,5,90),(289,49,1,60),(294,49,6,63),(293,49,5,74),(291,49,3,77),(292,49,4,81),(290,49,2,88),(295,50,1,59),(297,50,3,60),(298,50,4,68),(296,50,2,73),(300,50,6,74),(299,50,5,76);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_idx` (`name`),
  KEY `dob_idx` (`dob`),
  KEY `gender_idx` (`gender`),
  KEY `id_idx` (`class_id`),
  CONSTRAINT `id` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `name`, `dob`, `gender`, `class_id`) VALUES (1,'Peter Choi','2003-01-20','M',1),(2,'Paul Cheung','2002-12-23','M',1),(3,'Mary Lau','2003-05-21','F',1),(4,'Sara Law','2003-03-19','F',6),(5,'Jeff Chan','2003-04-05','M',6),(6,'Vincent Chan','2003-07-09','M',1),(7,'Susan Wong','2003-03-05','F',1),(8,'Gigi Kwok','2003-02-01','F',1),(9,'Zoe Leung','2003-04-02','F',1),(10,'Sam Wan','2003-01-02','M',1),(11,'Jason Chow','2003-05-01','M',2),(12,'Larry Law','2003-01-09','M',2),(13,'Peter Chan','2003-07-10','M',2),(14,'Betty Choi','2002-12-10','F',2),(15,'Fanny Yip','2003-01-01','F',2),(16,'Julie Law','2003-03-19','F',2),(17,'Perry Chow','2003-11-01','M',2),(18,'Felix Wong','2002-12-23','M',2),(19,'Elaine Poon','2003-02-02','F',2),(20,'Stephen Lam','2003-06-07','M',2),(21,'Billy Tam','2003-04-01','M',3),(22,'Hayden Ho','2003-02-14','M',3),(23,'Karen Suen','2002-10-08','F',3),(24,'Eric Kwok','2003-01-02','M',3),(25,'Patrick Tse','2003-07-17','M',3),(26,'Joseph Cheung','2003-05-30','M',3),(27,'Annabella Suen','2003-08-08','F',3),(28,'Amy Chiu','2003-07-31','F',3),(29,'Tim Tang','2003-12-18','M',3),(30,'Jeffrey Ng','2003-06-12','M',3),(31,'Linda Siu','2003-06-29','F',4),(32,'Edward Foo','2003-10-10','M',4),(33,'Tristan Wu','2003-11-23','M',4),(34,'James Hui','2003-02-12','M',4),(35,'David Tso','2003-07-07','M',4),(36,'Ryan Lee','2003-01-07','M',4),(37,'Stephanie Tam','2003-03-02','F',4),(38,'Sophie Suen','2002-10-07','F',4),(39,'Emma Chan','2003-02-09','F',4),(40,'Isabella Wong','2003-08-07','F',4),(41,'Chloe Cheung','2003-05-28','F',5),(42,'Nora Ho','2003-07-19','F',5),(43,'Ivy Yip','2003-04-30','F',5),(44,'Cecilia Wu','2003-09-19','F',5),(45,'Esther Kan','2003-06-06','F',5),(46,'Ada Koon','2003-03-02','F',5),(47,'Jack Tam','2003-02-01','M',5),(48,'William Ho','2003-09-18','M',5),(49,'Diana Kim','2003-05-08','F',7),(50,'Ana Wu','2003-11-27','F',7);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passing_score` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` (`id`, `name`, `passing_score`) VALUES (1,'Chinese Language',60),(2,'English Language',60),(3,'Mathematics',60),(4,'Physics',50),(5,'Chemistry',50),(6,'Biology',50);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02 18:26:42