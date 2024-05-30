CREATE DATABASE  IF NOT EXISTS `emp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `emp`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: emp
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
-- Table structure for table `dep`
--

DROP TABLE IF EXISTS `dep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dep` (
  `depid` int NOT NULL,
  `dep_name` varchar(50) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `manager_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`depid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dep`
--

LOCK TABLES `dep` WRITE;
/*!40000 ALTER TABLE `dep` DISABLE KEYS */;
INSERT INTO `dep` VALUES (441101,'Sales',401,'Ayesha Khan','Tirunelveli'),(441102,'Marketing',402,'Ravi Kumar','Trichy'),(441103,'HR',403,'Sana Ali','Tirunelveli'),(441104,'Finance',404,'Anil Mehta','Tirunelveli'),(441105,'IT',405,'Karthik Reddy','Trichy'),(441106,'Operations',406,'Pooja Sharma','Tirunelveli'),(441107,'Customer Support',707,'Soorah Mehta','Chennai'),(441108,'Research and Development',203,'Srinivasan','Bangalore');
/*!40000 ALTER TABLE `dep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depbp`
--

DROP TABLE IF EXISTS `depbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depbp` (
  `depid` int NOT NULL,
  `dep_name` varchar(50) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  `manager_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depbp`
--

LOCK TABLES `depbp` WRITE;
/*!40000 ALTER TABLE `depbp` DISABLE KEYS */;
INSERT INTO `depbp` VALUES (441101,'Sales',401,'Ayesha Khan','Tirunelveli'),(441102,'Marketing',402,'Ravi Kumar','Trichy'),(441103,'HR',403,'Sana Ali','Tirunelveli'),(441104,'Finance',404,'Anil Mehta','Tirunelveli'),(441105,'IT',405,'Karthik Reddy','Trichy'),(441106,'Operations',406,'Pooja Sharma','Tirunelveli'),(441107,'Customer Support',707,'Soorah Mehta','Chennai'),(441108,'Research and Development',203,'Srinivasan','Bangalore');
/*!40000 ALTER TABLE `depbp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empl`
--

DROP TABLE IF EXISTS `empl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empl` (
  `Emp_ID` int DEFAULT NULL,
  `F_name` varchar(30) DEFAULT NULL,
  `L_name` varchar(30) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Location` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Dept_ID` int DEFAULT NULL,
  KEY `id` (`Emp_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empl`
--

LOCK TABLES `empl` WRITE;
/*!40000 ALTER TABLE `empl` DISABLE KEYS */;
INSERT INTO `empl` VALUES (401,'Mohamed','Munaseer',23000,'Tirunelveli','mona401@gmail.com',441101),(402,'Mohamed','Baasil',25000,'Trichy','baasilbas402@gmail.com',441102),(403,'Mohamed','Sulaiman',30000,'Tirunelveli','sulai403@gmail.com',441103),(404,'Mohamed','Sharik',20000,'Tirunelveli','sharikmd404@gmail.com',441104),(405,'Mohamed','Bayas',25000,'Trichy','mdbayas405@gmail.com',441105),(406,'Mohamed','Rahumathulla',22000,'Tirunelveli','rahumathulla406@gmail.com',441106),(407,'Mohamed','Ashfaq',40000,'Trichy','ashfaqash407@gmail.com',441103),(408,'Mohamed','Saibullah',35000,'Kanyakumari','saib408@gmail.com',441105),(409,'Mohamed','Riyas',35000,'Tirunelveli','riyaskhan409@gmail.com',441102),(410,'Mohamed','Irfan',22000,'Trichy','irfani410@gmail.com',441104),(411,'Mohamed','Ishaq',40000,'Kanyakumari','isha411@gmail.com',441101),(412,'Mohamed','Muzammil',22000,'Trichy','muzammilmuz412@gmail.com',441103),(413,'Mohamed','Mujeeb',18000,'Madurai','mujeeb413@gmail.com',441103),(414,'Mohamed','Nagoor',60000,'Madurai','nagoor414@gmail.com',441105),(415,'Mohamed','Nazir',18000,'Kanyakumari','nazzirr415@gmail.com',441106),(416,'Mohamed','Jabir',60000,'Madurai','jabir416@gmail.com',441106),(417,'Mohamed','Zubair',30000,'Kanyakumari','zubair417@gmail.com',441102),(419,'Mohamed','Salman',30000,'Mumbai','salmani403@gmail.com',441101),(420,'Priya','Patel',35000,'New Delhi','priya.patel@example.com',441102),(421,'Rahul','Sharma',32000,'Bangalore','rahul.sharma@example.com',441103),(422,'Aishwarya','Singh',40000,'Chennai','aishwarya.singh@example.com',441104),(423,'Vivek','Kumar',38000,'Kolkata','vivek.kumar@example.com',441105),(424,'Anjali','Gupta',33000,'Hyderabad','anjali.gupta@example.com',441106),(425,'Sandeep','Verma',37000,'Pune','sandeep.verma@example.com',441101),(426,'Neha','Yadav',34000,'Ahmedabad','neha.yadav@example.com',441102),(427,'Rajesh','Rao',36000,'Surat','rajesh.rao@example.com',441103),(428,'Shreya','Mishra',31000,'Jaipur','shreya.mishra@example.com',441104),(429,'Arun','Shah',39000,'Lucknow','arun.shah@example.com',441105),(430,'Pooja','Reddy',37000,'Kanpur','pooja.reddy@example.com',441106),(431,'Kiran','Jain',32000,'Nagpur','kiran.jain@example.com',441101),(432,'Rohit','Deshpande',38000,'Indore','rohit.deshpande@example.com',441102),(433,'Neha','Pillai',35000,'Thane','neha.pillai@example.com',441103),(434,'Vikram','Menon',33000,'Bhopal','vikram.menon@example.com',441104),(435,'Ananya','Chatterjee',39000,'Visakhapatnam','ananya.chatterjee@example.com',441105),(436,'Sachin','Nair',31000,'Patna','sachin.nair@example.com',441106),(437,'Aditi','Kulkarni',40000,'Ludhiana','aditi.kulkarni@example.com',441101),(438,'Pranav','Dube',38000,'Agra','pranav.dube@example.com',441102);
/*!40000 ALTER TABLE `empl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emplbp`
--

DROP TABLE IF EXISTS `emplbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emplbp` (
  `Emp_ID` int DEFAULT NULL,
  `F_name` varchar(30) DEFAULT NULL,
  `L_name` varchar(30) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `Location` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Dept_ID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emplbp`
--

LOCK TABLES `emplbp` WRITE;
/*!40000 ALTER TABLE `emplbp` DISABLE KEYS */;
INSERT INTO `emplbp` VALUES (401,'Mohamed','Munaseer',20000,'Tirunelveli','mona401@gmail.com',441101),(402,'Mohamed','Baasil',25000,'Trichy','baasilbas402@gmail.com',441102),(403,'Mohamed','Sulaiman',30000,'Tirunelveli','sulai403@gmail.com',441103),(404,'Mohamed','Sharik',20000,'Tirunelveli','sharikmd404@gmail.com',441104),(405,'Mohamed','Bayas',25000,'Trichy','mdbayas405@gmail.com',441105),(406,'Mohamed','Rahumathulla',22000,'Tirunelveli','rahumathulla406@gmail.com',441106),(407,'Mohamed','Ashfaq',40000,'Trichy','ashfaqash407@gmail.com',441103),(408,'Mohamed','Saibullah',35000,'Kanyakumari','saib408@gmail.com',441105),(409,'Mohamed','Riyas',35000,'Tirunelveli','riyaskhan409@gmail.com',441102),(410,'Mohamed','Irfan',22000,'Trichy','irfani410@gmail.com',441104),(411,'Mohamed','Ishaq',40000,'Kanyakumari','isha411@gmail.com',441101),(412,'Mohamed','Muzammil',22000,'Trichy','muzammilmuz412@gmail.com',441103),(413,'Mohamed','Mujeeb',18000,'Madurai','mujeeb413@gmail.com',441103),(414,'Mohamed','Nagoor',60000,'Madurai','nagoor414@gmail.com',441105),(415,'Mohamed','Nazir',18000,'Kanyakumari','nazzirr415@gmail.com',441106),(416,'Mohamed','Jabir',60000,'Madurai','jabir416@gmail.com',441106),(417,'Mohamed','Zubair',30000,'Kanyakumari','zubair417@gmail.com',441102),(419,'Mohamed','Salman',30000,'Mumbai','salmani403@gmail.com',441101),(420,'Priya','Patel',35000,'New Delhi','priya.patel@example.com',441102),(421,'Rahul','Sharma',32000,'Bangalore','rahul.sharma@example.com',441103),(422,'Aishwarya','Singh',40000,'Chennai','aishwarya.singh@example.com',441104),(423,'Vivek','Kumar',38000,'Kolkata','vivek.kumar@example.com',441105),(424,'Anjali','Gupta',33000,'Hyderabad','anjali.gupta@example.com',441106),(425,'Sandeep','Verma',37000,'Pune','sandeep.verma@example.com',441101),(426,'Neha','Yadav',34000,'Ahmedabad','neha.yadav@example.com',441102),(427,'Rajesh','Rao',36000,'Surat','rajesh.rao@example.com',441103),(428,'Shreya','Mishra',31000,'Jaipur','shreya.mishra@example.com',441104),(429,'Arun','Shah',39000,'Lucknow','arun.shah@example.com',441105),(430,'Pooja','Reddy',37000,'Kanpur','pooja.reddy@example.com',441106),(431,'Kiran','Jain',32000,'Nagpur','kiran.jain@example.com',441101),(432,'Rohit','Deshpande',38000,'Indore','rohit.deshpande@example.com',441102),(433,'Neha','Pillai',35000,'Thane','neha.pillai@example.com',441103),(434,'Vikram','Menon',33000,'Bhopal','vikram.menon@example.com',441104),(435,'Ananya','Chatterjee',39000,'Visakhapatnam','ananya.chatterjee@example.com',441105),(436,'Sachin','Nair',31000,'Patna','sachin.nair@example.com',441106),(437,'Aditi','Kulkarni',40000,'Ludhiana','aditi.kulkarni@example.com',441101),(438,'Pranav','Dube',38000,'Agra','pranav.dube@example.com',441102);
/*!40000 ALTER TABLE `emplbp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `emplvr`
--

DROP TABLE IF EXISTS `emplvr`;
/*!50001 DROP VIEW IF EXISTS `emplvr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `emplvr` AS SELECT 
 1 AS `Emp_ID`,
 1 AS `F_name`,
 1 AS `L_name`,
 1 AS `Salary`,
 1 AS `Location`,
 1 AS `Email`,
 1 AS `Dept_ID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `inc`
--

DROP TABLE IF EXISTS `inc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inc` (
  `emp_id` int NOT NULL,
  `old_salary` decimal(10,2) DEFAULT NULL,
  `increment_amount` decimal(10,2) DEFAULT NULL,
  `new_salary` decimal(10,2) DEFAULT NULL,
  `increment_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inc`
--

LOCK TABLES `inc` WRITE;
/*!40000 ALTER TABLE `inc` DISABLE KEYS */;
INSERT INTO `inc` VALUES (401,20000.00,3000.00,23000.00,NULL),(402,25000.00,NULL,NULL,NULL),(403,30000.00,NULL,NULL,NULL),(404,20000.00,NULL,NULL,NULL),(405,25000.00,NULL,NULL,NULL),(406,22000.00,NULL,NULL,NULL),(407,40000.00,NULL,NULL,NULL),(408,35000.00,NULL,NULL,NULL),(409,35000.00,NULL,NULL,NULL),(410,22000.00,NULL,NULL,NULL),(411,40000.00,NULL,NULL,NULL),(412,22000.00,NULL,NULL,NULL),(413,18000.00,NULL,NULL,NULL),(414,60000.00,NULL,NULL,NULL),(415,18000.00,NULL,NULL,NULL),(416,60000.00,NULL,NULL,NULL),(417,30000.00,NULL,NULL,NULL),(419,30000.00,NULL,NULL,NULL),(420,35000.00,NULL,NULL,NULL),(421,32000.00,NULL,NULL,NULL),(422,40000.00,NULL,NULL,NULL),(423,38000.00,NULL,NULL,NULL),(424,33000.00,NULL,NULL,NULL),(425,37000.00,NULL,NULL,NULL),(426,34000.00,NULL,NULL,NULL),(427,36000.00,NULL,NULL,NULL),(428,31000.00,NULL,NULL,NULL),(429,39000.00,NULL,NULL,NULL),(430,37000.00,NULL,NULL,NULL),(431,32000.00,NULL,NULL,NULL),(432,38000.00,NULL,NULL,NULL),(433,35000.00,NULL,NULL,NULL),(434,33000.00,NULL,NULL,NULL),(435,39000.00,NULL,NULL,NULL),(436,31000.00,NULL,NULL,NULL),(437,40000.00,NULL,NULL,NULL),(438,38000.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inc` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_increment_update` BEFORE UPDATE ON `inc` FOR EACH ROW BEGIN
    -- Update the new_salary in the inc table
    SET NEW.new_salary = NEW.old_salary + NEW.increment_amount;

    -- Update the salary in the empl table
    UPDATE empl
    SET salary = NEW.new_salary
    WHERE emp_id = NEW.emp_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `incbp`
--

DROP TABLE IF EXISTS `incbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incbp` (
  `emp_id` int NOT NULL,
  `old_salary` decimal(10,2) DEFAULT NULL,
  `increment_amount` decimal(10,2) DEFAULT NULL,
  `new_salary` decimal(10,2) DEFAULT NULL,
  `increment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incbp`
--

LOCK TABLES `incbp` WRITE;
/*!40000 ALTER TABLE `incbp` DISABLE KEYS */;
INSERT INTO `incbp` VALUES (401,20000.00,NULL,NULL,NULL),(402,25000.00,NULL,NULL,NULL),(403,30000.00,NULL,NULL,NULL),(404,20000.00,NULL,NULL,NULL),(405,25000.00,NULL,NULL,NULL),(406,22000.00,NULL,NULL,NULL),(407,40000.00,NULL,NULL,NULL),(408,35000.00,NULL,NULL,NULL),(409,35000.00,NULL,NULL,NULL),(410,22000.00,NULL,NULL,NULL),(411,40000.00,NULL,NULL,NULL),(412,22000.00,NULL,NULL,NULL),(413,18000.00,NULL,NULL,NULL),(414,60000.00,NULL,NULL,NULL),(415,18000.00,NULL,NULL,NULL),(416,60000.00,NULL,NULL,NULL),(417,30000.00,NULL,NULL,NULL),(419,30000.00,NULL,NULL,NULL),(420,35000.00,NULL,NULL,NULL),(421,32000.00,NULL,NULL,NULL),(422,40000.00,NULL,NULL,NULL),(423,38000.00,NULL,NULL,NULL),(424,33000.00,NULL,NULL,NULL),(425,37000.00,NULL,NULL,NULL),(426,34000.00,NULL,NULL,NULL),(427,36000.00,NULL,NULL,NULL),(428,31000.00,NULL,NULL,NULL),(429,39000.00,NULL,NULL,NULL),(430,37000.00,NULL,NULL,NULL),(431,32000.00,NULL,NULL,NULL),(432,38000.00,NULL,NULL,NULL),(433,35000.00,NULL,NULL,NULL),(434,33000.00,NULL,NULL,NULL),(435,39000.00,NULL,NULL,NULL),(436,31000.00,NULL,NULL,NULL),(437,40000.00,NULL,NULL,NULL),(438,38000.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `incbp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'emp'
--

--
-- Dumping routines for database 'emp'
--
/*!50003 DROP PROCEDURE IF EXISTS `office_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `office_info`()
begin
select * from dep where location in ('Tirunelveli');
select location,count(location) as TOTAL from empl group by location;
select salary,location,count(*) as Total from empl group by salary,location;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `emplvr`
--

/*!50001 DROP VIEW IF EXISTS `emplvr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emplvr` AS select `empl`.`Emp_ID` AS `Emp_ID`,`empl`.`F_name` AS `F_name`,`empl`.`L_name` AS `L_name`,`empl`.`Salary` AS `Salary`,`empl`.`Location` AS `Location`,`empl`.`Email` AS `Email`,`empl`.`Dept_ID` AS `Dept_ID` from `empl` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 20:20:39
