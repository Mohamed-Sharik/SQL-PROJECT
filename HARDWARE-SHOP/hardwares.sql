CREATE DATABASE  IF NOT EXISTS `ecomm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomm`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomm
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `corder`
--

DROP TABLE IF EXISTS `corder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corder` (
  `order_no` int NOT NULL,
  `purch_amt` float NOT NULL,
  `order_date` date DEFAULT NULL,
  `customerid` int DEFAULT NULL,
  `salesmanid` int DEFAULT NULL,
  PRIMARY KEY (`order_no`),
  KEY `customerid` (`customerid`),
  KEY `salesmanid` (`salesmanid`),
  CONSTRAINT `corder_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `corder_ibfk_2` FOREIGN KEY (`salesmanid`) REFERENCES `salesman` (`salesmanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corder`
--

LOCK TABLES `corder` WRITE;
/*!40000 ALTER TABLE `corder` DISABLE KEYS */;
INSERT INTO `corder` VALUES (70001,150.5,'2016-10-05',3005,5002),(70002,65.26,'2016-10-05',3002,5001),(70003,2480.4,'2016-10-10',3009,NULL),(70004,110.5,'2016-08-17',3009,NULL),(70005,2400.6,'2016-07-27',3007,5001),(70007,948.5,'2016-09-10',3005,5002),(70008,5760,'2016-09-10',3002,5001),(70009,270.65,'2016-09-10',3001,NULL),(70010,1983.43,'2016-10-10',3004,5006),(70011,75.29,'2016-08-17',3003,5007),(70012,250.45,'2016-06-27',3008,5002);
/*!40000 ALTER TABLE `corder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerid` int NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT 'Not Mentioned',
  `grade` int DEFAULT NULL,
  `salesmanid` int DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  KEY `salesmanid` (`salesmanid`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`salesmanid`) REFERENCES `salesman` (`salesmanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (3001,'Brad Guzan','Londan',NULL,NULL),(3002,'Nick Rimando','New York',100,5001),(3003,'Jozy Altidor','Morocow',200,5007),(3004,'Fabian Johns','Paris',300,5006),(3005,'Graham Zusi','California',200,5002),(3007,'Brad Davis','New York',200,5001),(3008,'Gulian Green','Londan',300,5002),(3009,'Geoff Camero','Berlin',100,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Widget A',19.99,'A high-quality widget for everyday use','Tools'),(2,'Gizmo B',29.99,'A versatile gizmo with multiple functions','Gadgets'),(3,'Doohickey C',9.99,'A compact doohickey for quick fixes','Tools'),(4,'Gadget D',49.99,'An advanced gadget with smart features','Gadgets'),(5,'Thingamajig E',14.99,'A durable thingamajig for heavy-duty tasks','Tools'),(6,'Contraption F',39.99,'A complex contraption for engineering projects','Gadgets'),(7,'Device G',24.99,'A sleek device with modern design','Electronics'),(8,'Apparatus H',89.99,'A high-tech apparatus for scientific use','Electronics'),(9,'Equipment I',59.99,'Robust equipment for professional use','Tools'),(10,'Instrument J',99.99,'Precision instrument for laboratory work','Electronics'),(11,'Machine K',199.99,'Industrial machine for large-scale operations','Machinery'),(12,'Tool L',11.99,'Handy tool for everyday repairs','Tools'),(13,'Appliance M',79.99,'Energy-efficient appliance for home use','Electronics'),(14,'Mechanism N',34.99,'Intricate mechanism for detailed tasks','Gadgets'),(15,'Device O',44.99,'Portable device with multiple features','Electronics');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesman`
--

DROP TABLE IF EXISTS `salesman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesman` (
  `salesmanid` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT ' ',
  `commission` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`salesmanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesman`
--

LOCK TABLES `salesman` WRITE;
/*!40000 ALTER TABLE `salesman` DISABLE KEYS */;
INSERT INTO `salesman` VALUES (5001,'James Hooq','New York',0.15),(5002,'Nail Knite','Paris',0.13),(5003,'Lauson Hen',' ',0.12),(5005,'Pit Alex','Londan',0.11),(5006,'Mc Lyon','Paris',0.14),(5007,'Paul Adam','Rome',0.13);
/*!40000 ALTER TABLE `salesman` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 12:45:36
