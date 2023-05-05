-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: eticaret
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `eticaret`
--

USE `eticaret`;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ust_id` int(11) DEFAULT NULL,
  `kategori_adi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,NULL,'Kadın Saat','kadınsaat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(2,1,'Kadın Klasik Saat','kadin-klasik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(3,1,'Kadın Spor Saat','kadin-spor','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(4,1,'Çocuk','cocuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(5,NULL,'Erkek Saat','erkeksaat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(6,5,'Erkek Klasik Saat','erkek-klasik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(7,5,'Erkek Spor Saat','erkek-spor','2023-04-16 17:54:56','2023-05-02 10:26:41',NULL),(8,5,'Çocuk Saat','cocuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(9,NULL,'Akıllı Saat ve Bileklik','akilli-saat-bileklik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(10,9,'Akıllı Saat','akilli-saat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(11,9,'Akıllı Bileklik','akilli-bileklik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(12,NULL,'Takı ve Aksesuar','takıveaksesuar','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(13,12,'Parfüm','parfum','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(14,12,'Kolye','kolye','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(15,12,'Küpe','kupe','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(16,12,'Yüzük','yuzuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(17,12,'Charm','charm','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(18,12,'Anahtarlık','anahtarlik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(19,NULL,'deneme','deneme','2023-04-26 14:40:04','2023-04-26 14:40:27','2023-04-26 14:40:27'),(20,12,'Bileklik','bileklik','2023-05-02 10:59:18','2023-05-02 10:59:18',NULL);
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori_urun`
--

DROP TABLE IF EXISTS `kategori_urun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori_urun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` int(10) unsigned NOT NULL,
  `urun_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_urun_kategori_id_foreign` (`kategori_id`),
  KEY `kategori_urun_urun_id_foreign` (`urun_id`),
  CONSTRAINT `kategori_urun_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  CONSTRAINT `kategori_urun_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_urun`
--

LOCK TABLES `kategori_urun` WRITE;
/*!40000 ALTER TABLE `kategori_urun` DISABLE KEYS */;
INSERT INTO `kategori_urun` VALUES (1,1,31),(2,2,31),(7,1,30),(8,2,30),(9,1,29),(10,2,29),(11,1,28),(12,3,28),(13,1,27),(14,3,27),(15,4,26),(16,4,25),(17,5,24),(18,6,24),(19,5,23),(20,6,23),(21,9,26),(22,10,26),(23,5,22),(24,7,22),(25,5,21),(26,7,21),(27,9,21),(28,10,21),(29,1,20),(30,3,20),(31,5,20),(32,7,20),(33,9,20),(34,10,20),(35,12,19),(36,16,19),(37,12,18),(38,20,18),(39,12,17),(40,17,17),(41,12,16),(42,14,16),(43,5,15),(44,6,15),(45,1,14),(46,2,14),(47,1,31),(48,2,31),(49,1,32),(50,3,32),(51,5,32),(52,7,32),(53,9,32),(54,10,32),(55,1,33),(56,3,33),(57,5,33),(58,7,33),(59,9,33),(60,10,33);
/*!40000 ALTER TABLE `kategori_urun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kullanici` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktivasyon_anahtari` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif_mi` tinyint(1) NOT NULL DEFAULT 0,
  `yonetici_mi` tinyint(4) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kullanici_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanici`
--

LOCK TABLES `kullanici` WRITE;
/*!40000 ALTER TABLE `kullanici` DISABLE KEYS */;
INSERT INTO `kullanici` VALUES (1,'can ata tekirdağlı','canatatekirdagli30@gmail.com','$2y$10$lrGnYHlDwTvYvKsrjMxg4O57NCamyn/PYQXIjWQhg1dxWoRrUScfm',NULL,1,1,'hWTFxpwTY90C6XImgqCdFKlorshLiNlFS7gUOr3DD0kc8A9ab81ILpOCLn6x','2023-04-16 14:55:36','2023-05-03 11:49:08',NULL),(2,'Pınar','pinaralatas@gmail.com','$2y$10$eNQsuwXLZR2fwyunW030Ce3.mpgLQ8sPZkxUqmFTtnhdnK0cuMrcu','8hn1ReblSscNzc0NcV1ioBdeXyas06RQzK0qQSjqD4rcbSkQSLdJGQ8Esx5d',0,0,'7PV36euIAbqMVwphi46XeRgyY6zmojKx8BxkyUNtmDtsJVeEtIAz2DYLSrrq','2023-04-17 12:26:41','2023-04-26 14:00:22','2023-04-26 14:00:22'),(3,'Yezdan Tekirdağlı','yezo@gmail.com','$2y$10$5XmAgcuWcK2TJ8y6wMOr1eGCRgH.4HxzNf7sPv0n9y7RV0Oe4g/Re',NULL,1,0,'jdwCXndaou5R7SxDvVvfRmzBEwegg864PvXbGPCMCfibQ6tXFkeDa3xWcu8X','2023-04-26 14:02:43','2023-05-02 13:20:41',NULL),(4,'sdaasdasd','scasdasdas@denemme.test','$2y$10$X5UrgPlQQqNAm0H3FqA.EOb9spU2ld0I6K3gzyJmELrC02jRFESnq',NULL,0,0,NULL,'2023-04-26 14:23:07','2023-04-26 14:23:07',NULL),(5,'Can Ata Tekirdağlı','deneme@gmail.com','$2y$10$zfoq7T78wlnm/i85dKdUB.k1stONevC6Rw3.ZhYV/d05.qAqY1lo.',NULL,0,0,NULL,'2023-04-26 14:23:23','2023-04-26 14:23:23',NULL),(6,'Can Ata Tekirdağlı','denemeee@gmail.com','$2y$10$Dwo3Fbk/v8HIXIl.A6r1luknIhx5JNGfVAwxy5O8ui4tMMiowILgm',NULL,0,0,NULL,'2023-04-26 14:23:42','2023-04-26 14:23:42',NULL),(8,'Can Ata Tekirdağlı','sadsadsadsa@gmail.com','$2y$10$0PLq1edhzSjObIftmzkj.OUk29ml8QDleOmPmLhwG0MZ3pr8xl7Ya',NULL,0,0,NULL,'2023-04-26 14:24:03','2023-04-26 14:24:03',NULL),(10,'Can Ata Tekirdağlı','xd@gmail.com','$2y$10$JXl.IomcMDoz5E/YmD4p8eHiEGxOYdWBZ88Yrk9Jxr6fzoQfwjfr2',NULL,0,0,NULL,'2023-04-26 14:24:23','2023-04-26 14:24:23',NULL),(11,'Can Ata Tekirdağlı','sdfdsfdsfdsfdsf@gmail.com','$2y$10$UPp4skjvs3KB1Gboi07BheQUcEEywWaOakMuFoTpetuLAIfI6gMyu',NULL,0,0,NULL,'2023-04-26 14:24:45','2023-04-26 14:24:45',NULL),(12,'Can Ata Tekirdağlı','fsdfdsfdsfsdf@gmail.com','$2y$10$sjv7oY6J/OqRJ/RnW6Reg.EwoVth.ELHkMPnNBOJPEuEtF/rzeLeG',NULL,1,0,NULL,'2023-04-26 14:25:00','2023-05-01 17:06:29',NULL);
/*!40000 ALTER TABLE `kullanici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanici_detay`
--

DROP TABLE IF EXISTS `kullanici_detay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kullanici_detay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(10) unsigned NOT NULL,
  `adres` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceptelefonu` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kullanici_detay_kullanici_id_foreign` (`kullanici_id`),
  CONSTRAINT `kullanici_detay_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanici_detay`
--

LOCK TABLES `kullanici_detay` WRITE;
/*!40000 ALTER TABLE `kullanici_detay` DISABLE KEYS */;
INSERT INTO `kullanici_detay` VALUES (1,1,'İstanbul','1234567890','0123456789'),(2,2,NULL,NULL,NULL),(3,3,'Ataşehir','0123456789','0123456789'),(4,4,NULL,NULL,NULL),(5,5,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL),(6,6,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL),(7,8,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL),(8,10,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL),(9,11,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL),(10,12,'Çamlık Mahallesi Piri Reis Caddesi VIP Kurtköy sitesi A8 blok Kat 5 Daire 10','05545294939',NULL);
/*!40000 ALTER TABLE `kullanici_detay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(1911) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (19,'2023_03_21_174109_create_kategori_table',1),(20,'2023_03_23_004815_create_urun_table',1),(21,'2023_03_24_150747_create_urun_detay_table',1),(22,'2023_04_11_175539_create_kullanici_table',1),(23,'2023_04_12_174423_create_sepet_table',1),(24,'2023_04_12_174811_create_sepet_urun_table',1),(25,'2023_04_16_154153_create_siparis_table',1),(26,'2023_04_16_155120_create_kullanici_detay_table',1),(27,'2023_03_23_170634_create_kategori_urun_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sepet`
--

DROP TABLE IF EXISTS `sepet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sepet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kullanici_id` int(10) unsigned NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sepet_kullanici_id_foreign` (`kullanici_id`),
  CONSTRAINT `sepet_kullanici_id_foreign` FOREIGN KEY (`kullanici_id`) REFERENCES `kullanici` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepet`
--

LOCK TABLES `sepet` WRITE;
/*!40000 ALTER TABLE `sepet` DISABLE KEYS */;
INSERT INTO `sepet` VALUES (1,1,'2023-04-16 15:04:17','2023-04-16 15:04:17',NULL),(2,1,'2023-04-17 12:26:04','2023-04-17 12:26:04',NULL),(3,1,'2023-04-27 15:01:31','2023-04-27 15:01:31',NULL),(4,1,'2023-05-01 11:21:51','2023-05-01 11:21:51',NULL),(5,1,'2023-05-01 11:22:11','2023-05-01 11:22:11',NULL),(6,1,'2023-05-01 11:22:50','2023-05-01 11:22:50',NULL),(7,1,'2023-05-01 11:23:17','2023-05-01 11:23:17',NULL),(8,1,'2023-05-02 10:06:26','2023-05-02 10:06:26',NULL),(9,3,'2023-05-02 10:17:32','2023-05-02 10:17:32',NULL),(10,1,'2023-05-02 14:07:07','2023-05-02 14:07:07',NULL),(11,1,'2023-05-02 14:09:45','2023-05-02 14:09:45',NULL),(12,1,'2023-05-03 14:22:57','2023-05-03 14:22:57',NULL);
/*!40000 ALTER TABLE `sepet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sepet_urun`
--

DROP TABLE IF EXISTS `sepet_urun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sepet_urun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sepet_id` int(10) unsigned NOT NULL,
  `urun_id` int(10) unsigned NOT NULL,
  `adet` int(11) NOT NULL,
  `fiyati` decimal(7,2) NOT NULL,
  `durum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sepet_urun_sepet_id_foreign` (`sepet_id`),
  KEY `sepet_urun_urun_id_foreign` (`urun_id`),
  CONSTRAINT `sepet_urun_sepet_id_foreign` FOREIGN KEY (`sepet_id`) REFERENCES `sepet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sepet_urun_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepet_urun`
--

LOCK TABLES `sepet_urun` WRITE;
/*!40000 ALTER TABLE `sepet_urun` DISABLE KEYS */;
INSERT INTO `sepet_urun` VALUES (9,8,15,3,2893.50,'Beklemede','2023-05-02 13:59:37','2023-05-02 14:02:56','2023-05-02 14:02:56'),(10,8,15,2,2893.50,'Beklemede','2023-05-02 14:03:01','2023-05-02 14:05:57','2023-05-02 14:05:57'),(11,8,18,1,644.00,'Beklemede','2023-05-02 14:06:04','2023-05-02 14:06:04',NULL),(12,10,14,1,4113.00,'Beklemede','2023-05-02 14:07:07','2023-05-02 14:07:07',NULL),(13,11,15,1,2893.50,'Beklemede','2023-05-02 14:09:45','2023-05-02 14:11:09','2023-05-02 14:11:09'),(14,11,15,1,2893.50,'Beklemede','2023-05-02 14:22:06','2023-05-03 14:22:16',NULL),(15,12,15,1,2893.50,'Beklemede','2023-05-03 14:22:57','2023-05-03 14:22:57',NULL);
/*!40000 ALTER TABLE `sepet_urun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siparis`
--

DROP TABLE IF EXISTS `siparis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siparis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sepet_id` int(10) unsigned NOT NULL,
  `siparis_tutari` decimal(8,2) NOT NULL,
  `durum` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adsoyad` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adres` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceptelefonu` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banka` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taksit_sayisi` int(11) DEFAULT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siparis_sepet_id_unique` (`sepet_id`),
  CONSTRAINT `siparis_sepet_id_foreign` FOREIGN KEY (`sepet_id`) REFERENCES `sepet` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siparis`
--

LOCK TABLES `siparis` WRITE;
/*!40000 ALTER TABLE `siparis` DISABLE KEYS */;
INSERT INTO `siparis` VALUES (6,1,41.00,'Sipariş tamamlandı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-04-16 15:04:56','2023-05-01 09:35:46',NULL),(7,2,11.00,'Kargoya verildi','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-04-17 12:26:12','2023-04-27 15:27:55','2023-04-27 15:27:55'),(8,4,11.00,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:21:59','2023-05-01 11:21:59',NULL),(9,5,40.00,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:22:26','2023-05-01 11:22:26',NULL),(10,6,14.00,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:22:57','2023-05-01 11:22:57',NULL),(11,7,12.00,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:23:24','2023-05-01 11:23:24',NULL),(12,8,644.00,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-02 14:06:10','2023-05-02 14:06:10',NULL),(13,10,4113.00,'Kargoya verildi','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-02 14:09:05','2023-05-02 14:11:37',NULL),(14,11,2893.50,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-03 14:22:25','2023-05-03 14:22:25',NULL),(15,12,2893.50,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-03 14:23:05','2023-05-03 14:23:05',NULL);
/*!40000 ALTER TABLE `siparis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urun`
--

DROP TABLE IF EXISTS `urun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `urun_adi` varchar(1911) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1911) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiyati` decimal(7,2) NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun`
--

LOCK TABLES `urun` WRITE;
/*!40000 ALTER TABLE `urun` DISABLE KEYS */;
INSERT INTO `urun` VALUES (14,'Michael Kors-MK3191 Kadın Kol Saati','michael-kors-mk3191-kadin-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Kadın\r\nMarka: Michael Kors\r\nModel: Darci\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 39 mm\r\nKasa Kalınlığı: 8 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Var\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Altın Rengi\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Altın Tonu\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Çelik\r\nRenk: Altın Rengi\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',4113.00,'2023-05-01 09:35:07','2023-05-02 11:10:56',NULL),(15,'Emporio Armani-AR11135 Erkek Kol Saati','emporio-armani-ar11135-erkek-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Emporio Armani\r\nModel: Luigi\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 43 mm\r\nKasa Kalınlığı: 11 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Rose Gold\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Lacivert\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Deri\r\nRenk: Lacivert\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Evet\r\nAlarm: Yok',2893.50,'2023-05-01 09:35:07','2023-05-02 11:09:27',NULL),(16,'Skagen-SKJ1134-791 Kadın Kolye','skagen-skj1134-791-kadin-kolye','ÜRÜN BİLGİSİ\r\nCinsiyet: Kadın\r\nMarka: Skagen\r\nTakı Kategori: Kolye\r\nTakı Ölçüsü: Yaklaşık 47 cm\r\nGaranti: 2 Yıl\r\nTAKI ÖZELLİKLERİ\r\nZincir Uzunluğu: 45 Cm\r\nMateryal: Çelik\r\nTakı Şekil: Daha Fazlası\r\nTakı Rengi: Rose Gold, Lacivert\r\nTaş: Taşlı',2320.00,'2023-05-01 09:35:07','2023-05-02 11:07:32',NULL),(17,'Swarovski-SWR5437618 Charm','swarovski-swr5437618-charm','ÜRÜN BİLGİSİ\r\nCinsiyet: Kadın\r\nMarka: Swarovski\r\nTakı Kategori: Charm\r\nTAKI ÖZELLİKLERİ\r\nTakı Şekil: Daha Fazlası\r\nTakı Rengi: Rose Gold\r\nTaş: Swarovski',201.60,'2023-05-01 09:35:07','2023-05-02 11:05:27',NULL),(18,'Tommy Hilfiger-THJ2790239S Erkek Bileklik','tommy-hilfiger-thj2790239s-erkek-bileklik','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Tommy Hilfiger\r\nTakı Kategori: Bileklik\r\nTakı Ölçüsü: Yaklaşık 22 cm\r\nTAKI ÖZELLİKLERİ\r\nMateryal: Silikon\r\nTakı Şekil: Daha Fazlası\r\nTakı Rengi: Lacivert\r\nTaş: Sade',644.00,'2023-05-01 09:35:07','2023-05-02 10:59:53',NULL),(19,'Guess-JGUJUMR01315JWSTBK64 Erkek Yüzük (64 mm)','guess-jgujumr01315jwstbk64-erkek-yuzuk-64-mm','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Guess\r\nModel: Lion King\r\nTakı Kategori: Yüzük\r\nTakı Ölçüsü: Çap:20.4 mm\r\nTAKI ÖZELLİKLERİ\r\nMateryal: Çelik\r\nTakı Şekil: Doğa\r\nTakı Rengi: Metalik Gri\r\nTaş: Sade',1130.00,'2023-05-01 09:35:07','2023-05-02 10:57:02',NULL),(20,'Wesse Connect-WWC2010-03 Akıllı Saat','wesse-connect-wwc2010-03-akilli-saat','IOS ve Android uyumlu.\r\nAndroid 5.0 ve üzeri işletim sistemini destekler.\r\niOS 9.0 ve üzeri işletim sistemini destekler.\r\nBatarya: 280 mAH\r\nBluetooth: 5.0\r\nEkran Boyutu: 1.28\'\' IPS Ekran\r\nÇözünürlük: 240x240 pixel\r\nHafıza: 160 KB+64 MB\r\nAdım Ölçer: Var\r\nÇoklu Spor Modu: Var\r\nTelefonumu Bul: Var\r\nUyku Takibi: Var\r\nKalp Ritmi Ölçme: Var\r\nMüzik Kontrolü: Var\r\nKadran Seçenekleri: Var\r\nBildirim Kontrol: Var\r\nHava Durumu: Var\r\nKan Basıncı: Var\r\nKandaki Oksijen: Var\r\nDil Seçenekleri: Var',950.00,'2023-05-01 09:35:07','2023-05-02 10:57:41',NULL),(21,'Wesse Connect-WWC1001-04 Akıllı Saat','wesse-connect-wwc1001-04-akilli-saat','iOS ve Android uyumlu. Android 5.0 ve üzeri işletim sistemini destekler. iOS 9.0 ve üzeri işletim sistemini\r\ndestekler.\r\nCam: 2.5D Gorilla Glass Amoled\r\nToza Dayanıklı: Evet\r\nKayış Uzunluğu: 24 cm\r\nKayış Genişliği:22 mm\r\nBatarya: 140 mAH\r\nBluetooth: VER 4.0\r\nEkran Boyutu: 1.3\'\' TFT HD Ekran\r\nÇözünürlük: 240x240 pixel\r\nHafıza: 128 KB Ram+ 1 MB ROM+32 MB SPI ROM\r\nAdım Ölçer: Var\r\nKalp Ritmi Ölçme: Var\r\nKalori Hesaplama: Var\r\nBildirim Kontrol: Var\r\nHava Durumu: Evet\r\nUyku Takibi: Var\r\nHava Durumu: Var\r\nKan Basıncı: Var\r\nKandaki Oksijen: Var\r\nDil Seçeneği: Var',510.00,'2023-05-01 09:35:07','2023-05-02 10:28:20',NULL),(22,'Guess-GUW0668G5 Erkek Kol Saati','guess-guw0668g5-erkek-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Guess\r\nModel: Atlas\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 45 mm\r\nKasa Kalınlığı: 12 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Spor Saatler\r\nKasa Rengi: Siyah\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Siyah\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Çelik\r\nRenk: Siyah\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Evet\r\nTakvim: Evet\r\nAlarm: Yok',2380.50,'2023-05-01 09:35:07','2023-05-02 10:25:07',NULL),(23,'Diesel-DZ1865 Erkek Kol Saati','diesel-dz1865-erkek-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Diesel\r\nModel: Ms9\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 44 mm\r\nKasa Kalınlığı: 12 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Altın Rengi\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Siyah\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Çelik\r\nRenk: Altın Rengi\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',6.14,'2023-05-01 09:35:07','2023-05-02 10:23:01',NULL),(24,'Emporio Armani-AR1732 Erkek Kol Saati','emporio-armani-ar1732-erkek-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek\r\nMarka: Emporio Armani\r\nModel: Luigi\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 41 mm\r\nKasa Kalınlığı: 11 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Füme\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Siyah\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Deri\r\nRenk: Siyah\r\nÖZELLİKLER\r\nSu Geçirmezlik: 3 ATM\r\nKronometre: Hayır\r\nTakvim: Evet\r\nAlarm: Yok',2871.00,'2023-05-01 09:35:07','2023-05-02 10:21:13',NULL),(25,'Lacoste-LAC2030032 Çocuk Kol Saati','lacoste-lac2030032-cocuk-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Çocuk\r\nMarka: Lacoste\r\nModel: Lacoste.12.12.Kids\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 32 mm\r\nKasa Kalınlığı: 10 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Silikon\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Spor Saatler\r\nKasa Rengi: Siyah\r\n\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Siyah\r\nKadran Taşı: Yok\r\nIşık: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Silikon\r\nRenk: Siyah\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',2120.00,'2023-05-01 09:35:07','2023-05-02 10:15:39',NULL),(26,'TCL-MT42X Mavi Movetime Family Watch','tcl-mt42x-mavi-movetime-family-watch','Ekran: Renkli Dokunmatik Ekran\r\nEkran Boyutu: 1.54” (240*240)， IPS\r\nCam: 2D\r\nPlatform: Unisoc SL8521E\r\nÇekirdek Sayısı: Çift çekirdek\r\nHafıza: RAM 512MB + ROM 4GB\r\nPil: 800mAh\r\nŞarj: Micro USB\r\nKamera: 2MP\r\nSIM: Nano\r\nDayanıklılık: IP65\r\nGörsellik: Çoklu renk uyumu\r\nBluetooth: BT4.2\r\nUygulama: TCL Connect\r\nKonum: Poligon güvenli bölge, yüksek doğruluklu coğrafi konum belirleme, konum geçmişi izleme, gerçek zamanlı konum paylaşımı\r\nSosyallik: \"Arkadaş ekleme, spor aktiviteleri sıralama listesi, sohbet grubu oluşturma, kısa video çekimi\"\r\nMesajlaşma: Sesli mesaj, metin mesajı, emoji (Dinamik ve statik emoji, tam ekran emoji), kısa video ve fotoğraf paylaşımı\r\nSensörler: G-Sensor\r\nServisler: \"Görüntülü görüşme, sticker kamera, gelişmiş TCL kids işletim sistemi, tema dükkanı\"',3299.00,'2023-05-01 09:35:07','2023-05-02 10:14:49',NULL),(27,'Diesel-DZ1436 Kol Saati','diesel-dz1436-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek, Kadın\r\nMarka: Diesel\r\nModel: Double Down\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 44 mm\r\nKasa Kalınlığı: 12 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Spor Saatler\r\nKasa Rengi: Beyaz\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Beyaz\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Silikon\r\nRenk: Beyaz\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',1422.00,'2023-05-01 09:35:07','2023-05-02 10:11:17',NULL),(28,'Diesel-DZ1437 Kol Saati','diesel-dz1437-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Erkek, Kadın\r\nMarka: Diesel\r\nModel: Double Down\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 44 mm\r\nKasa Kalınlığı: 12 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Spor Saatler\r\nKasa Rengi: Siyah\r\n\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Siyah\r\nKadran Taşı: Yok\r\nKAYIŞ YAPISI\r\nKayış Tipi: Silikon\r\nRenk: Siyah\r\nÖZELLİKLER\r\nSu Geçirmezlik: 5 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',1552.50,'2023-05-01 09:35:07','2023-05-02 10:09:59',NULL),(29,'Emporio Armani-AR11404 Kadın Kol Saati','emporio-armani-ar11404-kadin-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Kadın\r\nMarka: Emporio Armani\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 32 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Yok\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Altın Rengi\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Yeşil\r\nKadran Taşı: Var\r\nKAYIŞ YAPISI\r\nKayış Tipi: Deri\r\nRenk: Yeşil\r\nÖZELLİKLER\r\nSu Geçirmezlik: 3 ATM\r\nKronometre: Hayır\r\nTakvim: Hayır\r\nAlarm: Yok',9320.00,'2023-05-01 09:35:07','2023-05-02 10:07:42',NULL),(30,'Guess-GUW1264G2 Pırlantalı Kol Saati','guess-guw1264g2-pirlantali-kol-saati','Sitemizde bulunan tüm Guess Ürün Modelleri TikTak Saat TİCARET A.Ş güvencesi altındadır. Alacağınız bu ürün 2 yıl garanti kapsamındadır. Siparişiniz orijinal kutusu ile anlaşmalı kargo firması (MNG Kargo) tarafından adresinize teslim edilecektir. Distribütörü olduğumuz markalarımızın garanti belgesi dijital ortamda üretilip sms ve mail ile, yetkili satıcısı olduğumuz markalarımız onaylanmış garanti belgesi ile gönderilmektedir.\"Aynı gün Kargoda\" ibaresi yer alan ürünler \"Hızlı Teslimat” seçeneği tercih edildiği takdirde gün içinde teslim edilmektedir. Bu hizmetten 14:00\'a kadar faydalanabilirsiniz. Bunun dışındaki siparişleriniz ortalama 3 iş günü içerisinde kargo yetkilisine teslim edilecektir.',1341.00,'2023-05-01 09:35:07','2023-05-01 19:01:02',NULL),(31,'Michael Kors-MK5353 Kadın Kol Saati','michael-kors-mk5353-kadin-kol-saati','ÜRÜN BİLGİSİ\r\nCinsiyet: Kadın\r\nMarka: Michael Kors\r\nModel: Parker\r\nTeknoloji: Quartz\r\nGaranti: 2 Yıl\r\nKASA YAPISI\r\nKasa Çapı: 39 mm\r\nKasa Kalınlığı: 12 mm\r\nKasa Şekli: Yuvarlak\r\nKasa Materyali: Çelik\r\nKasa Taşı: Var\r\nCam Özellik: Mineral\r\nTarz: Klasik Saatler\r\nKasa Rengi: Metalik Gri\r\nKADRAN YAPISI\r\nKadran Tipi: Analog\r\nKadran Rengi: Gümüş Tonu\r\nKadran Taşı: Var\r\nKAYIŞ YAPISI\r\nKayış Tipi: Çelik\r\nRenk: Metalik Gri\r\nÖZELLİKLER\r\nSu Geçirmezlik: 10 ATM\r\nKronometre: Evet\r\nFonksiyonlar: 24 Saat\r\nTakvim: Evet\r\nAlarm: Yok',4374.00,'2023-05-02 11:13:00','2023-05-02 11:13:22',NULL),(32,'Samsung-SM-R860NZDATUR Galaxy Watch4 40mm Gold Akıllı Saat','samsung-sm-r860nzdatur-galaxy-watch4-40mm-gold-akilli-saat','İşlemci: Exynos W920 (5nm)\r\nİşletim Sistemi: Wear OS Powered by Samsung\r\nEkran: 1.2\", 396x396 piksel, 330 PPI\r\nBoyut: 41.5 x 41.5 x 11.2T\r\nAğırlık: 46.5 g\r\nBellek: 1.5 GB (RAM)\r\nHafıza: 16 GB\r\nSensör: İvmeölçer, Barometre, Gyro Sensörü, Jeomanyetik Sensör, Işık Sensörü, Optik Kalp Atış Hızı Sensörü, Elektrikli Kalp Sensörü, Biyoelektrik Empedans Analiz Sensörü\r\nPil: 247mAh (40hrs)\r\nBağlantı: BT 5.0, A2DP, LE, Wi-Fi 802.11 b/g/n, çift-band\r\nŞarj: WPC based wireless charging\r\nTasarım: 2 Buttons, Digital Bezel\r\nDiğer: 5ATM + IP68 / MIL-STD-810G',3499.00,'2023-05-02 11:14:38','2023-05-02 11:14:55',NULL),(33,'U.S Polo Assn. Connect-USPA3001-04 Akıllı Saat','us-polo-assn-connect-uspa3001-04-akilli-saat','Ürün boyutu: 45.2*38.6*11.4mm\r\nCPU: Realtek8762CK+BK\r\nHafıza: 64Mb\r\nEkran: 1.7” TFT 240*280\r\nDokunmatik ekran: Capacitive touch screen\r\nKalp Atış Sensörü: 3310\r\nAdımsayar: SC7A20\r\nBluetooth: BT5.0\r\nSaat gövdesi: Alaşım\r\nSaat kayışı: Silikon\r\nBatarya: 310mAh Lityum Polimer batarya\r\nBekleme süresi> 20 gün\r\nKulanım süresi> 10 gün\r\nButon: 1 güç düğmesi\r\nŞarj tipi: Manyetik şarj\r\nSuya dayanıklılık: IP67\r\nMikrofon: Evet\r\nHoparlör: Evet\r\nAndroid uyumluluğu: Android 5.0 ve üzeri\r\nIOS uyumluluğu: IOS 9.0 ve üzeri\r\nBluetooth ile arama: Evet\r\nBluetooth ile müzik kontrolü: Evet\r\nAdımsayar: Evet, mesafe ve yakılan kalori\r\nUyku takibi: Evet\r\nZamanlayıcı: Evet\r\nAntrenman: Yürüyüş, Koşu, Bisiklet, İp atlama, Basketbol, Badminton, Futbol\r\nTelefonu bulma: Evet\r\nGelen arama/SMS bildirimleri: Evet\r\nAnlık uygulama bildirimleri: Evet\r\nKalp atışı hızı takibi: Evet\r\nKan basıncı ölçümü: Evet\r\nKandaki oksijen doygunluğu ölçümü: Evet\r\nAnımsatıcılar: Alarm, su anımsatıcı, hareket anımsatıcı, zamanlayıcı (telefon uygulaması üzerinde)\r\nUzaktan fotoğraflama: Evet, uygulama üzerinde\r\nSaat yüzü: 5 yüz\r\nSaat dilleri: İngilizce, Çince, Almanca, Fransızca, İtalyanca, İspanyolca, Lehçe, Türkçe (default)\r\nVeri Senkronizasyonu: Spor verileri ve sağlık bulgusu verileri',1480.00,'2023-05-02 11:16:39','2023-05-02 11:16:55',NULL);
/*!40000 ALTER TABLE `urun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urun_detay`
--

DROP TABLE IF EXISTS `urun_detay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urun_detay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `urun_id` int(10) unsigned NOT NULL,
  `goster_one_cikan` tinyint(1) NOT NULL DEFAULT 0,
  `goster_cok_satan` tinyint(1) NOT NULL DEFAULT 0,
  `goster_indirimli` tinyint(1) NOT NULL DEFAULT 0,
  `urun_resmi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `urun_detay_urun_id_unique` (`urun_id`),
  CONSTRAINT `urun_detay_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun_detay`
--

LOCK TABLES `urun_detay` WRITE;
/*!40000 ALTER TABLE `urun_detay` DISABLE KEYS */;
INSERT INTO `urun_detay` VALUES (14,14,1,0,1,'14-1683036644.jpg'),(15,15,1,1,0,'15-1683036531.jpg'),(16,16,1,0,1,'16-1683036409.jpg'),(17,17,0,0,1,'17-1683036078.jpg'),(18,18,1,1,0,'18-1683035929.jpg'),(19,19,1,0,0,'19-1683035801.jpg'),(20,20,0,1,1,'20-1683035682.jpg'),(21,21,1,1,0,'21-1683034079.jpg'),(22,22,1,0,0,'22-1683033877.jpg'),(23,23,0,0,0,'23-1683033765.jpg'),(24,24,1,1,0,'24-1683033673.jpg'),(25,25,1,0,0,'25-1683033324.jpg'),(26,26,0,0,0,'26-1683033199.jpg'),(27,27,1,1,0,'27-1683033057.jpg'),(28,28,0,0,0,'28-1683032935.jpg'),(29,29,1,1,0,'29-1683032714.jpg'),(30,30,1,0,1,'30-1682955529.jpg'),(31,31,0,1,0,'31-1683036780.jpg'),(32,32,0,0,0,'32-1683036878.jpg'),(33,33,0,0,1,'33-1683036999.jpg');
/*!40000 ALTER TABLE `urun_detay` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 17:56:29
