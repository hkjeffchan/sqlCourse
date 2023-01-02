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
INSERT INTO `student` (`id`, `name`, `dob`, `gender`, `class_id`) VALUES (1,'Peter Choi','2003-01-20','M',1),(2,'Paul Cheung','2002-12-23','M',1),(3,'Mary Lau','2003-05-21','F',1),(4,'Sara Law','2003-03-19','F',1),(5,'Jeff Chan','2003-04-05','M',1),(6,'Vincent Chan','2003-07-09','M',1),(7,'Susan Wong','2003-03-05','F',1),(8,'Gigi Kwok','2003-02-01','F',1),(9,'Zoe Leung','2003-04-02','F',1),(10,'Sam Wan','2003-01-02','M',1),(11,'Jason Chow','2003-05-01','M',2),(12,'Larry Law','2003-01-09','M',2),(13,'Peter Chan','2003-07-10','M',2),(14,'Betty Choi','2002-12-10','F',2),(15,'Fanny Yip','2003-01-01','F',2),(16,'Julie Law','2003-03-19','F',2),(17,'Perry Chow','2003-11-01','M',2),(18,'Felix Wong','2002-12-23','M',2),(19,'Elaine Poon','2003-02-02','F',2),(20,'Stephen Lam','2003-06-07','M',2),(21,'Billy Tam','2003-04-01','M',3),(22,'Hayden Ho','2003-02-14','M',3),(23,'Karen Suen','2002-10-08','F',3),(24,'Eric Kwok','2003-01-02','M',3),(25,'Patrick Tse','2003-07-17','M',3),(26,'Joseph Cheung','2003-05-30','M',3),(27,'Annabella Suen','2003-08-08','F',3),(28,'Amy Chiu','2003-07-31','F',3),(29,'Tim Tang','2003-12-18','M',3),(30,'Jeffrey Ng','2003-06-12','M',3),(31,'Linda Siu','2003-06-29','F',4),(32,'Edward Foo','2003-10-10','M',4),(33,'Tristan Wu','2003-11-23','M',4),(34,'James Hui','2003-02-12','M',4),(35,'David Tso','2003-07-07','M',4),(36,'Ryan Lee','2003-01-07','M',4),(37,'Stephanie Tam','2003-03-02','F',4),(38,'Sophie Suen','2002-10-07','F',4),(39,'Emma Chan','2003-02-09','F',4),(40,'Isabella Wong','2003-08-07','F',4),(41,'Chloe Cheung','2003-05-28','F',5),(42,'Nora Ho','2003-07-19','F',5),(43,'Ivy Yip','2003-04-30','F',5),(44,'Cecilia Wu','2003-09-19','F',5),(45,'Esther Kan','2003-06-06','F',5),(46,'Ada Koon','2003-03-02','F',5),(47,'Jack Tam','2003-02-01','M',5),(48,'William Ho','2003-09-18','M',5),(49,'Diana Kim','2003-05-08','F',5),(50,'Ana Wu','2003-11-27','F',5);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
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
