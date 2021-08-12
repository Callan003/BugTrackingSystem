CREATE DATABASE  IF NOT EXISTS `bug_tracking_system_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `bug_tracking_system_project`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: bug_tracking_system_project
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `priority` varchar(45) DEFAULT NULL,
  `assignedTo` varchar(45) DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `status` tinyint(8) DEFAULT NULL,
  `projectId` tinyint(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (20,'Change status','Change status of each task using arrows on page. Should work both ways, left and right.','medium','user1',NULL,'04.01.2020 11:42',4,2),(21,'Edit dropbox stay the same','when you edit a task, the dropbox of Priority, Assigned to, and status should take the value from the DB.','low','user1',NULL,'04.01.2020 11:46',4,1),(22,'User login','Fix user login and password','low','user1',NULL,'04.01.2020 11:46',4,2),(23,'Footer','Add footer','low','user1',NULL,'04.01.2020 11:47',4,1),(24,'CSS file and menu ','Use include css file and menu. Dont write the menu and style code on each page','medium','user2',NULL,'04.01.2020 11:47',4,1),(37,'Project','Add project pages, and create the functionality for it!','medium','user1',NULL,'20:30 16.01.2020',4,1),(38,'Projects dropdown menu','Add a project dropdown in the menu and when selected, go to a dashboard page displaying only selected projects','medium','user1',NULL,'23:38 17.01.2020',3,2),(41,'Fix update bug','new update bug. task wont update when you submit the form.','medium','user1',NULL,'02:28 18.01.2020',4,1),(42,'Edit project','Add edit project functionality! \r\n\r\nDAO and controller!','medium','user1',NULL,'10:16 18.01.2020',3,1),(49,'Concedieri','Concedierile pe anul curent','high','user3',NULL,'13:31 18.01.2020',3,21),(51,'Raport','Add new report feature design','medium','user2',NULL,'19:31 28.01.2020',4,2),(53,'Add dropdown select on Report page','Add a dropdown select on the report page with each report available and make the pie chart change on dropdown change','high','user1',NULL,'20:32 31.01.2020',4,2),(54,'Fix edit and delete task error','If you are on a project dashboard (not on the main one) and you try to delete a task it will crash','high','user2',NULL,'20:37 31.01.2020',3,1);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-04 18:01:59
