-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: school
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `classname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'history'),(2,'math'),(3,'computers'),(4,'writing'),(5,'band'),(6,'orchestra'),(7,'choir'),(8,'jazz band'),(9,'health'),(10,'gym');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `addressId` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `addressId` (`addressId`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`addressId`) REFERENCES `student_address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Joe','Jameson',1),(2,'John','Joeson',2),(3,'Joe','Jenkins',3),(4,'Jenny','Smith',4),(5,'Mark','Jenkins',3),(6,'Guy','Manson',5),(7,'Matt','Broden',6),(8,'Sydney','Owlson',7),(9,'Archer','Fry',8),(10,'Luke','Skywalker',9),(11,'Samus','Aran',10),(12,'Amy','Jameson',1),(13,'Nick','Jenkins',3),(14,'Boy','Manson',5),(15,'Mike','Jameson',1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street` varchar(15) NOT NULL,
  `num` int NOT NULL,
  `town` varchar(20) NOT NULL,
  `zip` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
INSERT INTO `student_address` VALUES (1,'street road',4,'Berrysville',2244),(2,'ferry lane',17,'Berrysville',2244),(3,'street road',45,'Berrysville',2244),(4,'gary way',333,'Berrysville',2244),(5,'hill road',15,'Berrysville',2244),(6,'gary way',55,'Berrysville',2244),(7,'goon street',4,'Berrysville',2244),(8,'goon street',66,'Berrysville',2244),(9,'horn road',72,'Berrysville',2244),(10,'ferry lane',99,'Berrysville',2244);
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentclassassociation`
--

DROP TABLE IF EXISTS `studentclassassociation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentclassassociation` (
  `studentId` int NOT NULL,
  `classId` int NOT NULL,
  KEY `studentId` (`studentId`),
  KEY `classId` (`classId`),
  CONSTRAINT `studentclassassociation_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `student` (`id`),
  CONSTRAINT `studentclassassociation_ibfk_2` FOREIGN KEY (`classId`) REFERENCES `class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentclassassociation`
--

LOCK TABLES `studentclassassociation` WRITE;
/*!40000 ALTER TABLE `studentclassassociation` DISABLE KEYS */;
INSERT INTO `studentclassassociation` VALUES (1,1),(1,4),(2,6),(2,7),(3,2),(3,10),(4,3),(4,5),(5,8),(6,9),(7,3),(8,6),(9,8),(10,2),(11,4),(12,7),(13,10),(14,5),(15,3),(15,8);
/*!40000 ALTER TABLE `studentclassassociation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-13  1:54:50
