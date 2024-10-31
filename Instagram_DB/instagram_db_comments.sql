-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: instagram_db
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` char(36) NOT NULL DEFAULT (uuid()),
  `post_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_by` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('eaadc670-97d9-11ef-aa44-6fb230d7a8c2','1c52e058-97d9-11ef-aa44-6fb230d7a8c2','c35014f8-97d8-11ef-aa44-6fb230d7a8c2','Great post!','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaade4ca-97d9-11ef-aa44-6fb230d7a8c2','1c52e058-97d9-11ef-aa44-6fb230d7a8c2','c3501818-97d8-11ef-aa44-6fb230d7a8c2','Thanks for sharing!','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaade740-97d9-11ef-aa44-6fb230d7a8c2','1c52ec74-97d9-11ef-aa44-6fb230d7a8c2','c3500c2e-97d8-11ef-aa44-6fb230d7a8c2','Interesting perspective.','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaade89e-97d9-11ef-aa44-6fb230d7a8c2','1c52ec74-97d9-11ef-aa44-6fb230d7a8c2','c3501a48-97d8-11ef-aa44-6fb230d7a8c2','I agree with you.','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaadea1a-97d9-11ef-aa44-6fb230d7a8c2','1c52ee54-97d9-11ef-aa44-6fb230d7a8c2','c3501c50-97d8-11ef-aa44-6fb230d7a8c2','Amazing!','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaadebdc-97d9-11ef-aa44-6fb230d7a8c2','1c52ef58-97d9-11ef-aa44-6fb230d7a8c2','c3501e4e-97d8-11ef-aa44-6fb230d7a8c2','Very nice!','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL),('eaaded26-97d9-11ef-aa44-6fb230d7a8c2','1c52f05c-97d9-11ef-aa44-6fb230d7a8c2','c3502024-97d8-11ef-aa44-6fb230d7a8c2','Love it!','2024-10-31 22:46:07','2024-10-31 22:46:07',NULL,NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01  1:17:57
