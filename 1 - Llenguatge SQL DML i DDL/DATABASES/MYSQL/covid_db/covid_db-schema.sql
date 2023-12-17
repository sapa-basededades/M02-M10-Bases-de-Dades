-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 192.168.56.101    Database: covid_db
-- ------------------------------------------------------
-- Server version	8.0.17-8

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE covid_db;

CREATE DATABASE covid_db;

USE covid_db;

--
-- Table structure for table `casos`
--


DROP TABLE IF EXISTS `casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casos` (
  `cas_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `municipi_id` smallint(5) unsigned NOT NULL,
  `tipus_cas_id` tinyint(3) unsigned NOT NULL,
  `sexe` enum('D','H') CHARACTER SET utf8mb4 NOT NULL COMMENT 'Sexe ''D'' Dona, ''H'' Home',
  `data` date NOT NULL,
  `quantitat` smallint(5) unsigned NOT NULL COMMENT 'Quantitat de casos segons el ',
  PRIMARY KEY (`cas_id`),
  UNIQUE KEY `clau_candidata` (`sexe`,`tipus_cas_id`,`municipi_id`,`data`),
  KEY `fk_casos_tipus_casos` (`tipus_cas_id`),
  KEY `fk_casos_municipis` (`municipi_id`) /*!80000 INVISIBLE */,
  KEY `data_idx` (`data`) /*!80000 INVISIBLE */,
  KEY `sexe_idx` (`sexe`),
  CONSTRAINT `fk_casos_municipis1` FOREIGN KEY (`municipi_id`) REFERENCES `municipis` (`municipi_id`),
  CONSTRAINT `fk_casos_tipus_casos` FOREIGN KEY (`tipus_cas_id`) REFERENCES `tipus_casos` (`tipus_cas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=223141 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `centres_educatius`
--

DROP TABLE IF EXISTS `centres_educatius`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centres_educatius` (
  `centre_educatiu_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `municipi_id` smallint(5) unsigned DEFAULT NULL,
  `codi` char(10) DEFAULT NULL,
  `denominacio` varchar(100) DEFAULT NULL,
  `adreca` varchar(100) DEFAULT NULL,
  `codi_postal` char(5) DEFAULT NULL,
  `coord_utm_x` char(10) DEFAULT NULL,
  `coord_utm_y` char(10) DEFAULT NULL,
  `coord_geo_x` char(15) DEFAULT NULL,
  `coord_geo_y` char(15) DEFAULT NULL,
  PRIMARY KEY (`centre_educatiu_id`),
  UNIQUE KEY `codi_UNIQUE` (`codi`),
  KEY `fk_centres_educatius_municipis1_idx` (`municipi_id`),
  CONSTRAINT `fk_centres_educatius_municipis1` FOREIGN KEY (`municipi_id`) REFERENCES `municipis` (`municipi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3817 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `centres_educatius_casos`
--

DROP TABLE IF EXISTS `centres_educatius_casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centres_educatius_casos` (
  `centre_educatiu_cas_id` bigint(19) unsigned NOT NULL AUTO_INCREMENT,
  `centre_educatiu_id` smallint(5) unsigned NOT NULL,
  `data_generacio` date NOT NULL,
  `data_creacio` date NOT NULL,
  `grups_confinats` tinyint(3) unsigned  NOT NULL,
  `alumnes_confinats` tinyint(3) unsigned  NOT NULL,
  `docents_confinats` tinyint(3) unsigned  NOT NULL,
  `alumnes_positius_acum` smallint(5) unsigned  NOT NULL,
  `docents_positius_acum` smallint(5) unsigned  NOT NULL,
  `alumnes_positius_vig11` smallint(5) unsigned  NOT NULL,
  `docents_positius_vig11` smallint(5) unsigned  NOT NULL,
  PRIMARY KEY (`centre_educatiu_cas_id`),
  KEY `fk_centres_educatius_casos_centres_educatius1_idx` (`centre_educatiu_id`),
  CONSTRAINT `fk_centres_educatius_casos_centres_educatius1` FOREIGN KEY (`centre_educatiu_id`) REFERENCES `centres_educatius` (`centre_educatiu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=458863 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comarques`
--

DROP TABLE IF EXISTS `comarques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comarques` (
  `comarca_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `codi` char(3) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `provincia_id` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`comarca_id`),
  UNIQUE KEY `comarca_codi_UNIQUE` (`codi`),
  KEY `fk_comarques_provincies` (`provincia_id`),
  CONSTRAINT `fk_comarques_provincies` FOREIGN KEY (`provincia_id`) REFERENCES `provincies` (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `municipis`
--

DROP TABLE IF EXISTS `municipis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipis` (
  `municipi_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `comarca_id` tinyint(3) unsigned NOT NULL,
  `total_positius` mediumint(20) unsigned DEFAULT NULL,
  `codi` char(5) DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`municipi_id`),
  UNIQUE KEY `comarca_codi_UNIQUE` (`codi`),
  KEY `fk_municipis_comarques1_idx` (`comarca_id`),
  CONSTRAINT `fk_municipis_comarques1` FOREIGN KEY (`comarca_id`) REFERENCES `comarques` (`comarca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=767 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provincies`
--

DROP TABLE IF EXISTS `provincies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincies` (
  `provincia_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `codi` char(2) DEFAULT NULL,
  `nom` char(10) DEFAULT NULL,
  PRIMARY KEY (`provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipus_casos`
--

DROP TABLE IF EXISTS `tipus_casos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipus_casos` (
  `tipus_cas_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Els tipus de casos disponibles són:l\nTR: Positiu per Test Ràpid\nEPID: Epidemiològic\nELISA: Positiu per ELISA\nPCR: Positiu PCR\nTAR: Positiu TAR\n',
  `codi` char(5) NOT NULL COMMENT 'Els tipus de casos disponibles són:l\nTR: Positiu per Test Ràpid\nEPID: Epidemiològic\nELISA: Positiu per ELISA\nPCR: Positiu PCR\nTAR: Positiu TAR',
  `nom` varchar(25) NOT NULL COMMENT 'Els tipus de casos disponibles són:l\nTR: Positiu per Test Ràpid\nEPID: Epidemiològic\nELISA: Positiu per ELISA\nPCR: Positiu PCR\nTAR: Positiu TAR',
  PRIMARY KEY (`tipus_cas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 10:55:08
