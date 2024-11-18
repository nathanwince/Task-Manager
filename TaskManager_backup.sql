-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: TaskManager
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
-- Table structure for table `bookmarks`
--

DROP TABLE IF EXISTS `bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `task_id` int DEFAULT NULL,
  `quote_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`),
  KEY `quote_id` (`quote_id`),
  CONSTRAINT `bookmarks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `bookmarks_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  CONSTRAINT `bookmarks_ibfk_3` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`),
  CONSTRAINT `bookmarks_chk_1` CHECK (((`task_id` is not null) or (`quote_id` is not null)))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarks`
--

LOCK TABLES `bookmarks` WRITE;
/*!40000 ALTER TABLE `bookmarks` DISABLE KEYS */;
INSERT INTO `bookmarks` VALUES (1,1,4,1,'2024-11-14 14:59:55');
/*!40000 ALTER TABLE `bookmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'Dreams','i had a dream where i was in the Arcane Show and i was trying to show Ekko stuff',1,'2024-11-14 14:57:36');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quotes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `author` varchar(100) DEFAULT 'Unknown',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (1,'Believe you can and you\'re halfway there.','Theodore Roosevelt'),(2,'Don\'t watch the clock; do what it does. Keep going.','Sam Levenson'),(3,'The future belongs to those who believe in the beauty of their dreams.','Eleanor Roosevelt');
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `priority` int DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ix_tasks_id` (`id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (3,'Canada Trip','visit friends at vancouver bc',0,'2024-11-14 02:29:22',1,'2024-11-19 07:43:04',2),(4,'Jazz Recital','rehearse',1,'2024-11-14 02:31:49',1,NULL,2),(6,'Hot Ones Eating Competition','practice eating hot wings before competition',0,'2024-11-14 14:08:10',1,'2024-11-20 19:04:43',1),(7,'Kiefer Task 1','Complete the Flutter module.',1,'2024-11-08 20:54:47',2,'2024-11-15 00:00:00',1),(8,'Kiefer Task 2','Prepare for presentation.',0,'2024-11-08 20:54:47',2,'2024-11-15 00:00:00',2),(9,'Kiefer Task 3','Buy groceries.',0,'2024-11-08 20:54:47',2,'2024-11-16 00:00:00',3),(10,'Nathan Task 1','Write project report.',1,'2024-11-08 20:54:47',3,'2024-11-15 00:00:00',1),(11,'Nathan Task 2','Read technical article.',1,'2024-11-08 20:54:47',3,'2024-11-15 00:00:00',1),(12,'Nathan Task 3','Clean workspace.',0,'2024-11-08 20:54:47',3,'2024-11-17 00:00:00',2),(13,'Jacopo Task 1','Plan weekend trip.',0,'2024-11-08 20:54:47',4,'2024-11-15 00:00:00',1),(14,'Jacopo Task 2','Fix bug in code.',1,'2024-11-08 20:54:47',4,'2024-11-15 00:00:00',2),(15,'Jacopo Task 3','Call client.',0,'2024-11-08 20:54:47',4,'2024-11-18 00:00:00',3);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `streak_count` int DEFAULT '0',
  `longest_streak` int DEFAULT '0',
  `tasks_completed` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_users_email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`),
  KEY `ix_users_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'audy','audy@rollcall.com','1234567890','$2b$12$hu/eatx5ZT.sZ2C1AEzS/uiD6GtQwn1chaZ.RbmMwDh3FYLm2wxkq','2024-11-08 20:54:47',0,0,0),(2,'kiefer','kiefer@rollcall.com','2345678901','$2b$12$K9JmAVSYlGVV9Z/nspN/6O4zhII1HJekPYjd9xCG9Bs3sGR5keYkC','2024-11-08 20:54:47',0,0,0),(3,'nathan','nathan@rollcall.com','3456789012','$2b$12$5P9wf2COY4O9aksdL7zf6OIYYVD7CC5hyOZ73aDZbsgIZCkAGGWti','2024-11-08 20:54:47',1,1,0),(4,'jacopo','jacopo@rollcall.com','4567890123','$2b$12$dS4RPx/sK2L0Jf2smmTh1e2tV7QAdDKLef8PEscg/Mc/WLtoWQCzK','2024-11-08 20:54:47',0,0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 22:08:51
