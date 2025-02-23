-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `showlist`
--

DROP TABLE IF EXISTS `showlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `list_name` varchar(255) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `showlist_ibfk_1` (`userid`),
  CONSTRAINT `showlist_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showlist`
--

LOCK TABLES `showlist` WRITE;
/*!40000 ALTER TABLE `showlist` DISABLE KEYS */;
INSERT INTO `showlist` VALUES (1,1,'ค่าอาหาร',500.00,'2024-12-30 01:00:00'),(2,1,'ค่าเดินทาง',200.00,'2024-12-30 05:00:00'),(3,2,'ช้อปปิ้ง',1500.00,'2024-12-30 11:00:00'),(4,3,'ค่าน้ำค่าไฟ',1200.00,'2024-12-30 13:00:00'),(5,4,'ค่าบ้าน',8000.00,'2024-11-05 03:00:00'),(6,5,'ค่ารถยนต์',5500.00,'2024-11-15 08:00:00'),(7,1,'ค่าเบี้ยประกัน',10000.00,'2023-01-15 03:00:00'),(8,2,'ค่าเล่าเรียน',25000.00,'2023-06-10 07:00:00'),(9,2,'ค่าใช้จ่าย',200.00,'2024-12-31 07:18:20'),(10,2,'รายไปโรงเรียน',40.00,'2024-12-31 07:30:29'),(11,2,'test',66.00,'2024-12-31 07:49:40'),(12,1,'test admin',110.00,'2024-12-31 07:50:54'),(13,2,'ค่าขนมปัง',4.00,'2024-12-31 08:12:55'),(14,2,'ทดสอบ',150.00,'2024-12-31 08:24:00'),(15,2,'ทดสอบ',30.00,'2024-12-31 08:40:55'),(16,1,'test',4400.00,'2024-12-31 14:56:06'),(17,12,'test',900.00,'2024-12-31 14:58:08'),(18,12,'test',11.00,'2025-01-01 11:30:25'),(19,3,'test 25',264.00,'2025-01-01 11:32:48'),(26,12,'test2525',4.00,'2025-01-01 12:10:29'),(28,3,'test2555',120.00,'2025-01-01 12:16:32'),(30,12,'tesr258',64.00,'2025-01-01 13:24:39'),(32,12,'teseivp',40.00,'2025-01-01 13:50:16'),(34,12,'test111',11.00,'2025-01-01 14:21:51'),(35,12,'test222',132.00,'2025-01-01 14:22:03'),(36,12,'test333',99.00,'2025-01-01 14:22:25'),(37,12,'tes22',44.00,'2025-01-01 14:23:25'),(39,12,'test2222',4400.00,'2025-01-01 14:24:25'),(41,12,'tesyy',12.00,'2025-01-01 14:27:23'),(43,12,'test99',9801.00,'2025-01-01 14:59:58'),(44,12,'test998',9604.00,'2025-01-01 15:00:39'),(45,1,'งานวันเกิด',300.00,'2025-01-01 16:33:34'),(46,2,'รายการอาหาร',50.00,'2025-01-01 17:13:46'),(48,14,'test1',44.00,'2025-01-02 08:30:40'),(49,14,'test5',280.00,'2025-01-02 08:32:04'),(50,1,'testnew',26.00,'2025-01-02 10:36:35'),(51,15,'งานวันเกิด',2200.00,'2025-01-04 07:24:03'),(52,2,'test',2400.00,'2025-01-04 10:36:48'),(53,6,'testnew',500.00,'2025-01-04 10:46:09'),(54,6,'test1',300.00,'2025-01-04 10:47:17'),(55,6,'testne',700.00,'2025-01-04 11:12:51'),(56,1,'วันเกิด',1000.00,'2025-01-07 03:54:26'),(57,16,'ทดลองการสร้างรายการ1',130.00,'2025-01-09 05:26:23'),(58,16,'testnew',200.00,'2025-01-09 07:08:50'),(59,17,'testlist',42.00,'2025-01-10 06:47:28'),(60,17,'test2',4.00,'2025-01-10 06:48:12'),(61,17,'test55',135.00,'2025-01-10 07:37:34'),(62,1,'สินค้า',600.00,'2025-01-10 13:42:31');
/*!40000 ALTER TABLE `showlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 22:02:11
