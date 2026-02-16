-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Temporary view structure for view `emp_latest_dept_and_manager`
--

DROP TABLE IF EXISTS `emp_latest_dept_and_manager`;
/*!50001 DROP VIEW IF EXISTS `emp_latest_dept_and_manager`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `emp_latest_dept_and_manager` AS SELECT 
 1 AS `e_emp_no`,
 1 AS `e_first_name`,
 1 AS `e_lat_name`,
 1 AS `gender`,
 1 AS `dept_name`,
 1 AS `de_from_date`,
 1 AS `dm_emp_no`,
 1 AS `manager`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `emp_latest_dept_and_manager`
--

/*!50001 DROP VIEW IF EXISTS `emp_latest_dept_and_manager`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `emp_latest_dept_and_manager` AS select `e`.`emp_no` AS `e_emp_no`,`e`.`first_name` AS `e_first_name`,`e`.`last_name` AS `e_lat_name`,`e`.`gender` AS `gender`,`d`.`dept_name` AS `dept_name`,`de`.`from_date` AS `de_from_date`,`dm`.`emp_no` AS `dm_emp_no`,`m`.`first_name` AS `manager` from ((((`employees` `e` join `employees` `m`) join `departments` `d`) join `dept_emp` `de`) join `dept_manager` `dm`) where ((`e`.`emp_no` = `de`.`emp_no`) and (`de`.`to_date` = '9999-01-01') and (`d`.`dept_no` = `de`.`dept_no`) and (`d`.`dept_no` = `dm`.`dept_no`) and (`dm`.`to_date` = '9999-01-01') and (`m`.`emp_no` = `dm`.`emp_no`)) */;
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

-- Dump completed on 2026-02-16 21:51:00
