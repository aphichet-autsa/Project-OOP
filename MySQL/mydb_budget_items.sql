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
-- Table structure for table `budget_items`
--

DROP TABLE IF EXISTS `budget_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budget_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `listname` varchar(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) GENERATED ALWAYS AS ((`quantity` * `price`)) STORED,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `budget_items_ibfk_1` (`userid`),
  CONSTRAINT `budget_items_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budget_items`
--

LOCK TABLES `budget_items` WRITE;
/*!40000 ALTER TABLE `budget_items` DISABLE KEYS */;
INSERT INTO `budget_items` (`id`, `userid`, `listname`, `itemname`, `quantity`, `price`, `created_at`) VALUES (1,1,'งบค่าใช้จ่ายรายวัน','ขนม',3,10.00,'2024-12-30 01:30:00'),(2,4,'งบค่าบ้าน','ค่าน้ำ',1,500.00,'2024-11-05 03:45:00'),(3,5,'งบค่ารถยนต์','ค่าบำรุงรักษา',1,1000.00,'2024-11-15 08:45:00'),(4,1,'งบรายวัน','อาหารเช้า',2,50.00,'2024-12-30 01:15:00'),(5,1,'งบรายวัน','กาแฟ',1,60.00,'2024-12-30 01:30:00'),(6,2,'งบช้อปปิ้ง','เสื้อผ้า',2,300.00,'2024-12-30 02:15:00'),(7,2,'งบช้อปปิ้ง','รองเท้า',1,900.00,'2024-12-30 02:30:00'),(8,3,'งบเดินทาง','ตั๋วรถไฟ',1,250.00,'2024-12-30 03:15:00'),(9,3,'งบเดินทาง','ค่าแท็กซี่',1,200.00,'2024-12-30 03:30:00'),(10,4,'งบซื้อของ','สมุด',5,40.00,'2024-12-30 04:15:00'),(11,4,'งบซื้อของ','ปากกา',10,20.00,'2024-12-30 04:30:00'),(12,5,'งบค่าบ้าน','ค่าน้ำ',1,500.00,'2024-12-30 05:15:00'),(13,5,'งบค่าบ้าน','ค่าไฟ',1,1000.00,'2024-12-30 05:30:00'),(14,6,'งบค่ารถ','ค่าน้ำมัน',1,1500.00,'2024-12-30 06:15:00'),(15,6,'งบค่ารถ','ค่าประกันรถยนต์',1,3500.00,'2024-12-30 06:30:00'),(16,2,'testbudget','budget',1,1500.00,'2024-12-31 08:56:31'),(17,3,'ทดสอบ','เทส',1,1500.00,'2024-12-31 09:44:05'),(18,3,'เทส2','เทส',5,10.00,'2024-12-31 09:46:28'),(19,12,'รายการกำหนดงบ','สินค้า',2,200.00,'2024-12-31 14:57:35'),(20,3,'tes25','1',1,1.00,'2025-01-01 11:33:28'),(21,3,'เทสรายการ','เทส',20,36.00,'2025-01-01 12:08:58'),(22,12,'testttttt','iii',5,2.00,'2025-01-01 13:26:00'),(23,12,'tes2555','rr',8,800.00,'2025-01-01 13:26:29'),(24,12,'test11','ii',1,110.00,'2025-01-01 14:06:55'),(25,12,'test22','iii',20,20.00,'2025-01-01 14:07:34'),(26,12,'test33','iii',33,30.00,'2025-01-01 14:07:55'),(27,12,'tyyy','i',20,2.00,'2025-01-01 14:27:40'),(28,12,'test999','99',9,9.00,'2025-01-01 15:00:20'),(29,1,'งานเลี้ยง','ค่าสถานที',1,1500.00,'2025-01-01 16:34:37'),(30,1,'งานเลี้ยง','น้ำดื่ม',1,400.00,'2025-01-01 16:34:37'),(31,2,'รายการเครื่องดื่ม','ค่าเหล้า',2,500.00,'2025-01-01 17:14:59'),(32,2,'รายการเครื่องดื่ม','น้ำโค๊ก',4,40.00,'2025-01-01 17:14:59'),(33,14,'test2','test2',22,10.00,'2025-01-02 08:31:11'),(34,14,'test2','test2.1',2,122.00,'2025-01-02 08:31:11'),(35,14,'test3','test3',100,1.00,'2025-01-02 08:31:42'),(36,14,'test3','test3',10,100.00,'2025-01-02 08:31:42'),(37,1,'testnewn','i',2,220.00,'2025-01-02 10:36:58'),(38,3,'testdeng','test',200,5.00,'2025-01-02 12:49:05'),(39,14,'testn','ii',2,24.00,'2025-01-02 12:56:14'),(40,14,'test','ip',19,20.00,'2025-01-02 13:01:12'),(41,14,'test20','pp',1,522.00,'2025-01-02 13:06:03'),(42,14,'testlass','i',1,10.00,'2025-01-02 13:16:17'),(43,14,'testlssssssssss','1',11,10.00,'2025-01-02 13:19:05'),(44,2,'test41','1',2,22.00,'2025-01-04 10:36:32'),(45,2,'test41','2',2,2.00,'2025-01-04 10:36:32'),(46,6,'test2','item3',10,10.00,'2025-01-04 10:47:43'),(47,6,'test2','item4',1,30.00,'2025-01-04 10:47:43'),(48,6,'test2222','item3',3,500.00,'2025-01-04 11:13:32'),(49,6,'test2222','item2',2,300.00,'2025-01-04 11:13:32'),(50,1,'วันเกิด2','สินค้า1',2,200.00,'2025-01-07 03:55:13'),(51,1,'วันเกิด2','สินค้า2',2,300.00,'2025-01-07 03:55:13'),(52,16,'ทดสอบรายการครั้งที่2','สินค้า6',3,40.00,'2025-01-09 05:27:19'),(53,16,'ทดสอบรายการครั้งที่2','สินค้า5',2,100.00,'2025-01-09 05:27:19'),(54,16,'ทดสอบรายการครั้งที่2','สินค้า4',2,150.00,'2025-01-09 05:27:19'),(55,16,'เทสรายการ','สินค้า1',1,200.00,'2025-01-09 06:24:40'),(56,16,'เทสรายการ','สินค้า2',1,200.00,'2025-01-09 06:24:40'),(57,16,'เทส2','สินค้า2',1,100.00,'2025-01-09 06:31:07'),(58,17,'testbug','item',1,100.00,'2025-01-10 06:49:22'),(59,17,'testbug','item',2,200.00,'2025-01-10 06:49:22'),(60,17,'ikp','item',6,63.00,'2025-01-10 07:38:07'),(61,17,'ikp','item',2,563.00,'2025-01-10 07:38:07'),(62,18,'ค่ากิน','ก๋วยเตี๋ยว',1,50.00,'2025-01-10 14:04:12'),(63,18,'ค่ากิน','ชานม',1,30.00,'2025-01-10 14:04:12'),(64,18,'ค่ากิน','ข้าวเย็น',1,40.00,'2025-01-10 14:04:12'),(65,18,'ค่ากิน','ก๋วยเตี๋ยว',1,50.00,'2025-01-10 14:04:28'),(66,18,'ค่ากิน','ชานม',1,30.00,'2025-01-10 14:04:28'),(67,18,'ค่ากิน','ข้าวเย็น',1,40.00,'2025-01-10 14:04:28'),(68,18,'ค่ากิน','ก๋วยเตี๋ยว',1,50.00,'2025-01-10 14:04:34'),(69,18,'ค่ากิน','ชานม',1,30.00,'2025-01-10 14:04:34'),(70,18,'ค่ากิน','ข้าวเย็น',1,40.00,'2025-01-10 14:04:34'),(71,18,'ค่ากิน','ชามะนาว',1,25.00,'2025-01-10 14:04:34');
/*!40000 ALTER TABLE `budget_items` ENABLE KEYS */;
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
