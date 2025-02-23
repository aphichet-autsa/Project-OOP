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
-- Table structure for table `budgets`
--

DROP TABLE IF EXISTS `budgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budgets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `budget_name` varchar(100) NOT NULL,
  `total_budget` decimal(10,2) NOT NULL,
  `remaining_budget` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_budget` decimal(10,2) GENERATED ALWAYS AS ((`total_budget` - `remaining_budget`)) STORED,
  PRIMARY KEY (`id`),
  KEY `budgets_ibfk_1` (`userid`),
  CONSTRAINT `budgets_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budgets`
--

LOCK TABLES `budgets` WRITE;
/*!40000 ALTER TABLE `budgets` DISABLE KEYS */;
INSERT INTO `budgets` (`id`, `userid`, `budget_name`, `total_budget`, `remaining_budget`, `created_at`) VALUES (1,1,'งบค่าใช้จ่ายรายวัน',1000.00,680.00,'2024-12-30 00:00:00'),(2,4,'งบค่าบ้าน',10000.00,2000.00,'2024-11-01 02:00:00'),(3,5,'งบค่ารถยนต์',6000.00,500.00,'2024-11-01 02:30:00'),(4,1,'งบรายวัน',1000.00,600.00,'2024-12-30 01:00:00'),(5,2,'งบช้อปปิ้ง',2000.00,1500.00,'2024-12-30 02:00:00'),(6,3,'งบเดินทาง',3000.00,2500.00,'2024-12-30 03:00:00'),(7,4,'งบซื้อของ',4000.00,3200.00,'2024-12-30 04:00:00'),(8,5,'งบค่าบ้าน',5000.00,4500.00,'2024-12-30 05:00:00'),(9,6,'งบค่ารถ',6000.00,5000.00,'2024-12-30 06:00:00'),(11,2,'testbudget',2000.00,500.00,'2024-12-31 08:56:31'),(13,3,'ทดสอบ',2000.00,500.00,'2024-12-31 09:44:05'),(14,3,'เทส2',1222.00,1172.00,'2024-12-31 09:46:28'),(15,12,'รายการกำหนดงบ',1000.00,600.00,'2024-12-31 14:57:35'),(16,3,'tes25',12.00,12.00,'2025-01-01 11:33:06'),(17,3,'tes25',12.00,11.00,'2025-01-01 11:33:28'),(18,3,'เทสรายการ',3000.00,2280.00,'2025-01-01 12:08:58'),(19,12,'testttttt',2000.00,1990.00,'2025-01-01 13:26:00'),(20,12,'tes2555',8000.00,1600.00,'2025-01-01 13:26:29'),(21,12,'test11',1100.00,990.00,'2025-01-01 14:06:55'),(22,12,'test22',2200.00,1800.00,'2025-01-01 14:07:34'),(23,12,'test33',3300.00,2310.00,'2025-01-01 14:07:55'),(24,12,'tyyy',200.00,160.00,'2025-01-01 14:27:40'),(25,12,'test999',99.00,18.00,'2025-01-01 15:00:20'),(26,1,'งานเลี้ยง',2000.00,100.00,'2025-01-01 16:34:37'),(27,2,'รายการเครื่องดื่ม',1500.00,340.00,'2025-01-01 17:14:59'),(28,14,'test2',1200.00,736.00,'2025-01-02 08:31:11'),(29,14,'test3',3000.00,1900.00,'2025-01-02 08:31:42'),(30,1,'testnewn',2000.00,1560.00,'2025-01-02 10:36:58'),(31,3,'testdeng',2000.00,1000.00,'2025-01-02 12:49:05'),(32,14,'testn',200.00,152.00,'2025-01-02 12:56:14'),(33,14,'test',2000.00,1620.00,'2025-01-02 13:01:12'),(34,14,'test20',3000.00,2478.00,'2025-01-02 13:06:03'),(35,14,'testlass',200.00,190.00,'2025-01-02 13:16:17'),(36,14,'testlssssssssss',111.00,1.00,'2025-01-02 13:19:05'),(37,2,'test41',2000.00,1952.00,'2025-01-04 10:36:32'),(38,6,'test2',2000.00,1870.00,'2025-01-04 10:47:43'),(39,6,'test2222',3000.00,900.00,'2025-01-04 11:13:32'),(40,1,'วันเกิด2',3000.00,2000.00,'2025-01-07 03:55:13'),(41,16,'ทดสอบรายการครั้งที่2',600.00,40.00,'2025-01-09 05:27:19'),(42,16,'เทสรายการ',2000.00,1400.00,'2025-01-09 06:24:40'),(43,16,'เทส2',3000.00,2000.00,'2025-01-09 06:31:07'),(44,17,'testbug',3000.00,2500.00,'2025-01-10 06:49:22'),(45,17,'ikp',2000.00,496.00,'2025-01-10 07:38:07'),(46,18,'ค่ากิน',100.00,-20.00,'2025-01-10 14:04:12'),(47,18,'ค่ากิน',150.00,30.00,'2025-01-10 14:04:28'),(48,18,'ค่ากิน',150.00,5.00,'2025-01-10 14:04:34');
/*!40000 ALTER TABLE `budgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-11 22:02:12
