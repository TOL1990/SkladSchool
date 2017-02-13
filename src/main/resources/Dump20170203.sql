CREATE DATABASE  IF NOT EXISTS `stokdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `stokdb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: stokdb
-- ------------------------------------------------------
-- Server version	5.7.13-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id_employee` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Тарас','Олефир','Леонидович','Инженер Електронщик',NULL),(2,'Елена','Чайка','Викторовна','Секретарь',NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_locates`
--

DROP TABLE IF EXISTS `product_locates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_locates` (
  `id_locates` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `shelf` varchar(45) DEFAULT NULL COMMENT 'полка',
  `rack` varchar(45) DEFAULT NULL COMMENT 'стойка, стелаж, шкаф',
  `locate_notes` varchar(45) DEFAULT NULL COMMENT 'Примечания где будет храниться вещь',
  PRIMARY KEY (`id_locates`),
  KEY `ProdToLocatesFK_idx` (`product_id`),
  KEY `StockToLocatesFK_idx` (`stock_id`),
  CONSTRAINT `ProdToLocatesFK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_product`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `StockToLocatesFK` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_locates`
--

LOCK TABLES `product_locates` WRITE;
/*!40000 ALTER TABLE `product_locates` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_locates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_types` (
  `id_product_type` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `notes` varchar(150) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  UNIQUE KEY `id_product_UNIQUE` (`id_product`),
  KEY `ProdTypeToProductsFK_idx` (`type_id`),
  CONSTRAINT `ProdTypeToProductsFK` FOREIGN KEY (`type_id`) REFERENCES `product_types` (`id_product_type`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_list`
--

DROP TABLE IF EXISTS `products_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_list` (
  `id_products_list` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `count` varchar(45) DEFAULT NULL,
  `transaction_id` int(11) NOT NULL,
  PRIMARY KEY (`id_products_list`),
  KEY `ProdListToTransaktFK_idx` (`transaction_id`),
  KEY `ProdListToProductFK_idx` (`product_id`),
  CONSTRAINT `ProdListToProductFK` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_product`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_list`
--

LOCK TABLES `products_list` WRITE;
/*!40000 ALTER TABLE `products_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `id_stock` int(11) NOT NULL AUTO_INCREMENT,
  `employe_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT 'Название склада',
  `notes` varchar(200) DEFAULT NULL COMMENT 'примечания к складу',
  PRIMARY KEY (`id_stock`),
  UNIQUE KEY `id_stock_UNIQUE` (`id_stock`),
  KEY `EmplToStockFK_idx` (`employe_id`),
  CONSTRAINT `EmplToStockFK` FOREIGN KEY (`employe_id`) REFERENCES `employees` (`id_employee`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `from_empl_id` int(11) DEFAULT NULL,
  `to_empl_id` int(11) DEFAULT NULL,
  `prodct_list_id` int(11) DEFAULT NULL,
  `prodcts_list` int(11) NOT NULL,
  PRIMARY KEY (`id_transaction`),
  KEY `ProdListToTransactFK_idx` (`prodcts_list`),
  KEY `StokFromToTransactFK_idx` (`from_empl_id`),
  KEY `StockToToTransactFK_idx` (`to_empl_id`),
  CONSTRAINT `ProdListToTransactFK` FOREIGN KEY (`prodcts_list`) REFERENCES `products_list` (`id_products_list`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `StockFromToTransactFK` FOREIGN KEY (`from_empl_id`) REFERENCES `stocks` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `StockToToTransactFK` FOREIGN KEY (`to_empl_id`) REFERENCES `stocks` (`id_stock`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'stokdb'
--

--
-- Dumping routines for database 'stokdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-03 15:17:37
