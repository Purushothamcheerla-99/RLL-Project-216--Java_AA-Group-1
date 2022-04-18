-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: drivingschool
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `aemail` varchar(255) DEFAULT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `apassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'pourus99@gmail.com','Purushotham','qwertyu'),(2,'admin1@gmail.com','admin1','12345');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package_details`
--

DROP TABLE IF EXISTS `package_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package_details` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `pstartingdate` date DEFAULT NULL,
  `pstudentattendance` varchar(255) DEFAULT NULL,
  `ptrainerexp` int NOT NULL,
  `ptrainerlocation` varchar(255) DEFAULT NULL,
  `ptrainername` varchar(255) DEFAULT NULL,
  `pvehicle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package_details`
--

LOCK TABLES `package_details` WRITE;
/*!40000 ALTER TABLE `package_details` DISABLE KEYS */;
INSERT INTO `package_details` VALUES (1,'pack1','2022-04-17','15',5,'local','John','maruti800'),(2,'pack2','2022-05-12','10',2,'Remote','ashwin','lambo');
/*!40000 ALTER TABLE `package_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `sage` varchar(255) DEFAULT NULL,
  `semail` varchar(255) DEFAULT NULL,
  `slocation` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `spassword` varchar(255) DEFAULT NULL,
  `pid` int DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `FKsoesbnw67myxd4ph47vw4y4fr` (`pid`),
  CONSTRAINT `FKsoesbnw67myxd4ph47vw4y4fr` FOREIGN KEY (`pid`) REFERENCES `package_details` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (5,'23','qwerty@gmail.com','remote','priyanka','qwertyuiop',2),(6,'23','aswin@gamil.com','remote','ashwin','12345',NULL),(7,'23','student@gmail.com','local','newstudent','newstudent1',NULL),(8,'50','newstudent@email.com','local','newstudent','newstudent1',NULL),(9,'23','adsdjd2gmail.com','local','ashwin','12345',NULL),(10,'23','adsdjd2gmail.com','local','ashwin','12345',NULL),(11,'23','adsdjd2gmail.com','local','ashwin','12345',1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `temail` varchar(255) DEFAULT NULL,
  `tlocation` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'drivingschool'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 11:51:13
