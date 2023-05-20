-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: vqueen
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `idmenu` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `description` varchar(600) NOT NULL,
  `ingredients` varchar(111) NOT NULL,
  `allergens` varchar(111) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sales` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idmenu`),
  UNIQUE KEY `idmenu_UNIQUE` (`idmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1109,'Sopaipillas con Pebre','srcassetsImagessopaipilla.png','Sopaipillas con Pebre offers a regal combination of warm, golden sopaipillas and a vibrant salsa. The crispness of the sopaipillas paired with the zesty pebre creates a delightfully royal snack.','sopaipillas, pebre salsa (tomatoes, onions, cilantro, garlic, spices)','gluten (from sopaipillas)',7.00,0),(1110,'Vegan Queen\'s Royale Completo','srcassetsImagescompleto2.jpg','Experience the regal pleasure of a Vegan Completo, a culinary masterpiece where compassion meets excellence. This plant-based delight features a soft bun, savory plant-based sausage, creamy avocado spread, tangy mayo, juicy tomato slices, zesty ketchup, and a delightful sauerkraut crunch. Indulge in the symphony of flavors, fit for royalty.','avocado, vegan sausage, mayonnaise or vegannaise, tomato, ketchup, sauerkraut','soy (tofu or tempeh)',8.00,0),(1111,'Our mouthwatering Chacarero','srcassetsImagessopaipilla.png','Indulging in a Vegan Chacarero is embarking on a regal journey of flavors. Grilled vegetables, seasoned tofu or tempeh, greens, vegan mayo, and homemade salsa elevate this sandwich to greatness.','grilled vegetables, seasoned tofu or tempeh, greens, vegan mayo, homemade salsa','soy (if using tofu or tempeh)',11.00,0);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17 17:23:25
