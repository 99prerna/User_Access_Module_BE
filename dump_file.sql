-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: UAM_DB
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
INSERT INTO `Sessions` VALUES ('0yArBBBz3bdGxkrT9q4FNDKpOVPZemdO','2024-10-17 19:15:47','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:47.159Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:47','2024-10-16 19:15:47'),('7vTw2N8jXYYfC62D9mzYauowIwNK9fnM','2024-10-17 19:15:22','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:22.277Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:22','2024-10-16 19:15:22'),('CQ-cDiROHTnWYin5fIvn_AD27Z3Zq44p','2024-10-17 19:15:20','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:20.262Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:20','2024-10-16 19:15:20'),('hEalsgudGY-9I8_QQkCRPY4M3dzU_Q7T','2024-10-17 19:15:21','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:21.821Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:21','2024-10-16 19:15:21'),('LpFREIv348JEfJqi0wGF_D_uxLHWbDJX','2024-10-17 19:10:08','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:10:08.311Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:10:08','2024-10-16 19:10:08'),('OC8oN8G5_svJlOEt6ufAfAsCY0hbxqrJ','2024-10-17 19:15:21','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:21.960Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:21','2024-10-16 19:15:21'),('ONhlP-hLA3JEdI0zxlTUkEOjX8DwI2LZ','2024-10-17 19:15:22','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:22.432Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:22','2024-10-16 19:15:22'),('Rv4H_cFXOivanXadcOF5Z2q8W5TZtOqG','2024-10-17 19:15:22','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:15:22.120Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:15:22','2024-10-16 19:15:22'),('wdcFoj176uU5s0tpaPqVLiF9mpyFxG2P','2024-10-17 19:10:44','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:10:44.943Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:10:44','2024-10-16 19:10:44'),('xwT8JURpmrERMBLlp93o0u0TB9LyaydL','2024-10-17 19:21:43','{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2024-10-17T19:21:43.817Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"username\":\"nikhil\",\"role\":\"hr1\"}','2024-10-16 19:21:43','2024-10-16 19:21:43');
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `createdBy` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20 16:48:35
