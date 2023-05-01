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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `eticaret` /*!40100 DEFAULT CHARACTER SET utf8 */;

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,NULL,'Kadın Saat','kadınsaat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(2,1,'Kadın Klasik Saat','kadin-klasik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(3,1,'Kadın Spor Saat','kadin-spor','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(4,1,'Çocuk','cocuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(5,NULL,'Erkek Saat','erkeksaat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(6,5,'Erkek Klasik Saat','erkek-klasik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(7,5,'Erkek Spor Saat','erkek-klasik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(8,5,'Çocuk Saat','cocuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(9,NULL,'Akıllı Saat ve Bileklik','akilli-saat-bileklik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(10,9,'Akıllı Saat','akilli-saat','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(11,9,'Akıllı Bileklik','akilli-bileklik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(12,NULL,'Takı ve Aksesuar','takıveaksesuar','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(13,12,'Parfüm','parfum','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(14,12,'Kolye','kolye','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(15,12,'Küpe','kupe','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(16,12,'Yüzük','yuzuk','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(17,12,'Charm','charm','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(18,12,'Anahtarlık','anahtarlik','2023-04-16 17:54:56','2023-04-16 17:54:56',NULL),(19,NULL,'deneme','deneme','2023-04-26 14:40:04','2023-04-26 14:40:27','2023-04-26 14:40:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori_urun`
--

LOCK TABLES `kategori_urun` WRITE;
/*!40000 ALTER TABLE `kategori_urun` DISABLE KEYS */;
INSERT INTO `kategori_urun` VALUES (1,1,31),(2,2,31);
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
INSERT INTO `kullanici` VALUES (1,'can ata tekirdağlı','canatatekirdagli30@gmail.com','$2y$10$lrGnYHlDwTvYvKsrjMxg4O57NCamyn/PYQXIjWQhg1dxWoRrUScfm',NULL,1,1,'pHazqaJgBT9BM6s5pDNveoWl3zs2MIGwFOQ9hWLgDhWWJGRCN7cFUrxdzeui','2023-04-16 14:55:36','2023-04-26 13:58:59',NULL),(2,'Pınar','pinaralatas@gmail.com','$2y$10$eNQsuwXLZR2fwyunW030Ce3.mpgLQ8sPZkxUqmFTtnhdnK0cuMrcu','8hn1ReblSscNzc0NcV1ioBdeXyas06RQzK0qQSjqD4rcbSkQSLdJGQ8Esx5d',0,0,'7PV36euIAbqMVwphi46XeRgyY6zmojKx8BxkyUNtmDtsJVeEtIAz2DYLSrrq','2023-04-17 12:26:41','2023-04-26 14:00:22','2023-04-26 14:00:22'),(3,'Yezdan Tekirdağlı','yezo@gmail.com','$2y$10$8Jn4mVLZNueE4nCkBhyEquUS1fO6aKrBSdjgyM02WBDu691FQHlEO',NULL,1,0,NULL,'2023-04-26 14:02:43','2023-04-26 14:02:43',NULL),(4,'sdaasdasd','scasdasdas@denemme.test','$2y$10$X5UrgPlQQqNAm0H3FqA.EOb9spU2ld0I6K3gzyJmELrC02jRFESnq',NULL,0,0,NULL,'2023-04-26 14:23:07','2023-04-26 14:23:07',NULL),(5,'Can Ata Tekirdağlı','deneme@gmail.com','$2y$10$zfoq7T78wlnm/i85dKdUB.k1stONevC6Rw3.ZhYV/d05.qAqY1lo.',NULL,0,0,NULL,'2023-04-26 14:23:23','2023-04-26 14:23:23',NULL),(6,'Can Ata Tekirdağlı','denemeee@gmail.com','$2y$10$Dwo3Fbk/v8HIXIl.A6r1luknIhx5JNGfVAwxy5O8ui4tMMiowILgm',NULL,0,0,NULL,'2023-04-26 14:23:42','2023-04-26 14:23:42',NULL),(8,'Can Ata Tekirdağlı','sadsadsadsa@gmail.com','$2y$10$0PLq1edhzSjObIftmzkj.OUk29ml8QDleOmPmLhwG0MZ3pr8xl7Ya',NULL,0,0,NULL,'2023-04-26 14:24:03','2023-04-26 14:24:03',NULL),(10,'Can Ata Tekirdağlı','xd@gmail.com','$2y$10$JXl.IomcMDoz5E/YmD4p8eHiEGxOYdWBZ88Yrk9Jxr6fzoQfwjfr2',NULL,0,0,NULL,'2023-04-26 14:24:23','2023-04-26 14:24:23',NULL),(11,'Can Ata Tekirdağlı','sdfdsfdsfdsfdsf@gmail.com','$2y$10$UPp4skjvs3KB1Gboi07BheQUcEEywWaOakMuFoTpetuLAIfI6gMyu',NULL,0,0,NULL,'2023-04-26 14:24:45','2023-04-26 14:24:45',NULL),(12,'Can Ata Tekirdağlı','fsdfdsfdsfsdf@gmail.com','$2y$10$sjv7oY6J/OqRJ/RnW6Reg.EwoVth.ELHkMPnNBOJPEuEtF/rzeLeG',NULL,0,0,NULL,'2023-04-26 14:25:00','2023-04-26 14:25:00',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepet`
--

LOCK TABLES `sepet` WRITE;
/*!40000 ALTER TABLE `sepet` DISABLE KEYS */;
INSERT INTO `sepet` VALUES (1,1,'2023-04-16 15:04:17','2023-04-16 15:04:17',NULL),(2,1,'2023-04-17 12:26:04','2023-04-17 12:26:04',NULL),(3,1,'2023-04-27 15:01:31','2023-04-27 15:01:31',NULL),(4,1,'2023-05-01 11:21:51','2023-05-01 11:21:51',NULL),(5,1,'2023-05-01 11:22:11','2023-05-01 11:22:11',NULL),(6,1,'2023-05-01 11:22:50','2023-05-01 11:22:50',NULL),(7,1,'2023-05-01 11:23:17','2023-05-01 11:23:17',NULL);
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
  `fiyati` decimal(5,2) NOT NULL,
  `durum` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sepet_urun_sepet_id_foreign` (`sepet_id`),
  KEY `sepet_urun_urun_id_foreign` (`urun_id`),
  CONSTRAINT `sepet_urun_sepet_id_foreign` FOREIGN KEY (`sepet_id`) REFERENCES `sepet` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sepet_urun_urun_id_foreign` FOREIGN KEY (`urun_id`) REFERENCES `urun` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sepet_urun`
--

LOCK TABLES `sepet_urun` WRITE;
/*!40000 ALTER TABLE `sepet_urun` DISABLE KEYS */;
INSERT INTO `sepet_urun` VALUES (4,4,1,1,11.05,'Beklemede','2023-05-01 11:21:51','2023-05-01 11:21:51',NULL),(5,5,4,1,12.03,'Beklemede','2023-05-01 11:22:11','2023-05-01 11:22:11',NULL),(6,5,7,2,14.02,'Beklemede','2023-05-01 11:22:15','2023-05-01 11:22:18',NULL),(7,6,7,1,14.02,'Beklemede','2023-05-01 11:22:50','2023-05-01 11:22:50',NULL),(8,7,4,1,12.03,'Beklemede','2023-05-01 11:23:17','2023-05-01 11:23:17',NULL);
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
  `siparis_tutari` decimal(10,2) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siparis`
--

LOCK TABLES `siparis` WRITE;
/*!40000 ALTER TABLE `siparis` DISABLE KEYS */;
INSERT INTO `siparis` VALUES (6,1,41.18,'Sipariş tamamlandı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-04-16 15:04:56','2023-05-01 09:35:46',NULL),(7,2,11.07,'Kargoya verildi','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-04-17 12:26:12','2023-04-27 15:27:55','2023-04-27 15:27:55'),(8,4,11.05,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:21:59','2023-05-01 11:21:59',NULL),(9,5,40.07,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:22:26','2023-05-01 11:22:26',NULL),(10,6,14.02,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:22:57','2023-05-01 11:22:57',NULL),(11,7,12.03,'Siparişiniz alındı','can ata tekirdağlı','İstanbul','(123) 456-78-90','(012) 345-67-89','Garanti',1,'2023-05-01 11:23:24','2023-05-01 11:23:24',NULL);
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
  `fiyati` decimal(6,2) NOT NULL,
  `olusturma_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `guncelleme_tarihi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun`
--

LOCK TABLES `urun` WRITE;
/*!40000 ALTER TABLE `urun` DISABLE KEYS */;
INSERT INTO `urun` VALUES (1,'Reva Cove','reva-cove','Quam reiciendis cumque architecto est cum ab. Enim in unde facere soluta dolorem quos. Quia magnam consequuntur repellat delectus quam molestias. Itaque recusandae earum voluptatum consequatur. Quia rerum explicabo adipisci ipsum tenetur omnis minima. Magnam velit aut atque tenetur velit et explicabo. Rerum earum cum voluptatem libero atque. Eos impedit ex magni dolores qui est non amet. Repudiandae dolores non earum. Quisquam et expedita eligendi at. Accusamus ut error laboriosam totam et eos distinctio. Beatae adipisci sequi temporibus eveniet iste. Et explicabo dolorum aspernatur id iure nam. Non consequatur sed distinctio ut voluptates esse dolores. Nobis saepe dicta reiciendis quis assumenda. Reprehenderit tempora enim eum delectus. Corrupti quae similique distinctio et. Dolor non aut doloribus voluptatum nostrum accusantium. Provident alias dignissimos rerum hic iusto ut veritatis. Sunt similique molestias laudantium fuga. Delectus quas corporis omnis quaerat eveniet eligendi repellat. Omnis ipsa quis occaecati ut earum et accusamus. Ut harum omnis sunt est et aperiam et. Veniam sit vel accusantium est placeat quidem rerum. In possimus omnis autem. Ut quo est qui ut. Quo rerum et quis beatae. Perferendis tempore ea fugit autem illo quia incidunt.',11.05,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(2,'Altenwerth Track','altenwerth-track','Iusto a vitae consequatur eum. Aliquid rerum et cupiditate repudiandae debitis. Ad rerum libero animi est placeat corporis similique. Quia explicabo magni eum et rerum impedit. Doloribus eos aut dolorem sint. Qui sunt inventore sequi aut. Id voluptatem officia explicabo aspernatur ut eos eveniet. Nisi nisi quis possimus velit. Explicabo minima eum aut in assumenda ducimus corporis assumenda. Non sunt quam qui aut perferendis. Velit illo aperiam libero praesentium aliquam veniam et. Eos quam ut beatae et mollitia blanditiis quae. Ex qui ad non impedit adipisci officia. Dolor a eaque excepturi et suscipit qui.',1.20,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(3,'Langworth Divide','langworth-divide','Maxime nemo perferendis eius doloremque officiis. Aliquam consectetur quidem voluptatum mollitia eius. Est illo ratione autem sunt. Quo dolores voluptatem numquam eum tenetur. Voluptate rem dolores dignissimos molestiae consequatur. Illo ut aliquam dolorem eum fugiat aspernatur accusamus. Alias rerum saepe non iste eaque aut incidunt. Non suscipit natus neque est. Officiis quos qui nihil aut earum ut nostrum. Illum dignissimos omnis similique hic. Laborum rerum inventore corporis et. Dolores ut quibusdam aut voluptas. Molestias dolorum vel tempora quaerat quia. Et nam minima vitae facilis. Laboriosam qui similique dicta. Et qui cumque asperiores cumque. At reiciendis adipisci qui et necessitatibus voluptatibus odit harum. Repellat voluptatem ea enim voluptatem deleniti nihil quaerat reprehenderit. Vel distinctio in et ea nisi nobis. Dicta unde quos voluptatem dolore harum cumque recusandae. Id vel accusamus fugit dignissimos quidem et et. Repellendus corrupti nesciunt quaerat neque repellat. Ad ut veniam ut omnis est ut. Excepturi nihil enim unde nam fuga.',9.35,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(4,'Annamae Neck','annamae-neck','Enim sed non cum numquam animi ullam. Culpa dolor optio sit odit doloribus quis qui et. Blanditiis corporis veritatis et perspiciatis sequi quidem. Natus et reiciendis voluptatem ad. Non praesentium aperiam fugiat quis explicabo. Ut minus adipisci ipsa sunt. Doloribus labore et molestias laboriosam nam facilis. Exercitationem facere aperiam repudiandae adipisci nam quo. Officia et et et non qui laudantium. Labore qui amet ipsam nemo. Numquam veritatis minus inventore ea fuga laboriosam facilis modi. Sit quisquam alias ratione enim dolores culpa. Eius placeat repellendus eos sunt. Animi ducimus modi quia nostrum deserunt recusandae unde. Aut repellat enim saepe soluta tenetur aspernatur sit. Quod inventore tempora veniam possimus itaque dolores. Accusamus fugiat rerum ipsum laborum facilis in est. Quos non eveniet qui pariatur minima nulla. Repudiandae et quis amet natus repellendus. Delectus voluptatem similique sapiente inventore sit consequatur impedit. Itaque a magnam illum. Iste quos tenetur dolorum ab voluptatum maiores. Eveniet velit officiis ut aperiam et dolorem laboriosam. Velit ipsa occaecati excepturi.',12.03,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(5,'Vickie Skyway','vickie-skyway','Est dignissimos non voluptas vero. Sunt fuga quas incidunt ex ut officia. Iusto et consequuntur delectus quia magni doloremque. Voluptatem quod omnis natus rem fuga nobis minus. Veniam temporibus autem non aspernatur aut ad est. Architecto esse numquam eaque ad suscipit dicta. Quasi laudantium neque voluptatum ex laboriosam perspiciatis. Ut enim expedita provident quibusdam. Ullam autem dolorum incidunt ad. Aut sed quas rerum impedit. Qui dolorum aliquam qui laboriosam. Error modi sunt deleniti non. Officia et voluptas officia. Ea molestias corrupti consequuntur ex. Commodi ipsa voluptatem vero. Praesentium rem voluptatibus qui est a.',6.12,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(6,'Sierra Lock','sierra-lock','Incidunt odio voluptatem est quos dignissimos quia placeat. Nam ullam tempora eos facere natus nam. Odit aut ea mollitia adipisci qui quia distinctio. Aliquid itaque distinctio dolorem ut. Beatae minima rerum animi quam consequatur voluptates possimus. Asperiores officia eveniet qui neque soluta ab. Voluptatum cupiditate est repellendus rerum quo. Aut molestias saepe sunt veritatis necessitatibus repellat. Perspiciatis totam consequatur nisi dolore iusto iure ea. Repellendus rem sunt inventore. Repudiandae omnis aut ea corrupti atque qui. Nostrum et placeat delectus accusamus. Facilis voluptatem soluta possimus ut. Quibusdam ipsam aut cupiditate ea aperiam iste. Eum quo ab natus aut. Perspiciatis laborum accusantium rerum qui omnis voluptatem maxime dolores.',11.87,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(7,'Durgan View','durgan-view','Vero temporibus sed quod hic esse. Enim doloremque ut et accusamus debitis neque. Et nihil accusamus aliquam magnam nemo quo totam. Quae a similique tempora quasi. Ad blanditiis nihil amet vero id. Et non iusto suscipit quia officiis sunt incidunt. Aliquid quibusdam culpa debitis voluptatem. Maxime at molestiae maxime eius cum. Ut ut consequatur at iste nam. Consequuntur deleniti est voluptatum dolor. Voluptate itaque fugiat quae autem. Illum sint dolorem at ducimus ut perferendis in. Neque laudantium sed ea voluptas cum. Ut odio explicabo ut eum quo odio aperiam. Non deleniti asperiores molestias ut consectetur suscipit vitae. Ipsa qui at architecto earum nisi unde. Est perferendis dolores minus id non ea voluptas ipsum. Maxime similique omnis dolorem consectetur ratione voluptatem. Asperiores ut quae ipsam incidunt cupiditate sit at.',14.02,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(8,'Quigley Hollow','quigley-hollow','Consectetur cum qui quidem mollitia inventore explicabo suscipit. Corrupti delectus quo aliquam ut. Dicta sunt qui earum illo. Quisquam asperiores quidem odio corporis est placeat. Ullam harum dolor dolores dolorem qui modi. Quidem ea et rem dolor voluptas. Rerum quo officiis debitis. Molestiae nesciunt distinctio explicabo delectus voluptatibus id vitae. Eum officia totam tempora alias modi veniam. Dolores fugiat sequi saepe vitae assumenda deserunt. Vitae corrupti temporibus esse sit architecto doloribus eos. Rerum et aut ea. Quae enim quia qui ut ut exercitationem quisquam eos. In a facilis ratione velit. Et numquam omnis voluptate ratione. Dolorem neque quidem ipsam amet. Consectetur maiores in et eum molestias ut architecto. Id beatae ullam laudantium aspernatur libero atque.',1.68,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(9,'Jovany Square','jovany-square','Et eum est voluptatibus aut enim ab. Dolores minus ea eum maxime esse reiciendis iste. Et sint ut sit et maiores. Harum eum consequatur veniam voluptas esse. Molestiae totam est vitae et laborum molestiae. Animi et et vel in a harum nihil. Omnis quo eius praesentium dolores quia illo maxime. Quisquam molestias cumque dolore qui eius reprehenderit commodi. Itaque fuga qui accusamus amet nobis voluptas expedita. Maiores qui exercitationem magnam sed omnis. Odio assumenda ea magni repellat possimus odio. Et eaque aperiam dolores. Eligendi nisi itaque aperiam consequatur eos eius.',2.17,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(10,'Hermiston Square','hermiston-square','Qui quibusdam maiores qui quaerat accusantium. Ducimus quia totam praesentium est. Sequi est laborum et doloribus vel cumque et. Et et quas voluptates. Nulla et aspernatur sunt quidem. Dolore error sed quisquam voluptates. Id qui rerum ut quasi. Fuga quo mollitia maiores dolor repudiandae perferendis autem itaque. Dolores labore et iure accusantium voluptatum. Illum qui soluta reprehenderit reprehenderit. Quia dolorem tempora tempora consequuntur atque. Eos assumenda fuga distinctio cumque suscipit. Ut nostrum voluptates beatae qui laudantium et. Ipsa architecto beatae dicta delectus quia velit in. Quis ea suscipit exercitationem corporis ducimus. Quis sed aut nisi deleniti dignissimos. Eaque et ea fugiat corrupti ipsam suscipit laboriosam. Reiciendis pariatur atque libero et. Sint et perferendis officiis accusamus. Dolorum voluptas sed quod id placeat.',8.06,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(11,'O\'Kon Light','okon-light','Earum tempora a sapiente qui. Labore corporis atque unde voluptates. Corporis rerum ullam aut natus incidunt. Libero omnis voluptatem voluptas voluptatem laboriosam asperiores blanditiis. Rerum culpa dolor doloribus iste earum. Dolor autem non ut nostrum sequi accusamus. Consequatur molestiae velit illo doloribus. Pariatur architecto possimus maxime temporibus voluptatem. Nihil et deleniti nostrum alias. Nihil vel sed consequatur. Consequatur rerum tempore reiciendis ut quo beatae unde nihil. Rerum ut eaque quae. Provident rerum neque non. Aut aut tenetur fugiat totam dolor laboriosam. Sed odit excepturi perspiciatis provident ad nobis ea minus. At eos odit voluptatum. Eos ut ipsam doloremque ea aut. Consequatur et beatae recusandae accusantium sint dignissimos ab. Et nihil non est odit. Temporibus aperiam voluptatem adipisci vero. Dolore tempora deleniti voluptas consequuntur tenetur. Dicta id laborum ut aut ut nostrum provident adipisci. Minus cumque voluptatem inventore laborum.',3.54,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(12,'Chet Via','chet-via','Id fugit vel aut molestiae vitae illo sed. Laboriosam consequatur corrupti soluta doloremque alias. Ratione quisquam laboriosam corrupti. Qui aut laboriosam sunt qui rerum non. Laborum et fugit rerum impedit. Ducimus cumque ipsa qui voluptas tenetur non sed voluptates. Ducimus qui suscipit nam ut aut qui velit quo. Praesentium fugiat iusto et facere vel. Nihil nihil molestiae est occaecati hic nesciunt. Quasi voluptas quo adipisci consequatur a repellendus. Nihil nostrum error similique labore illo iste. A in eaque vitae sunt ut fugit eaque. Nihil fuga accusamus ipsam maiores eos non voluptatum. Similique necessitatibus qui sit sit autem hic. Exercitationem modi eum veritatis. Sapiente odio aut sed voluptas optio. Ipsum eaque consequatur rerum quis rerum vero dignissimos. Aut facilis natus animi id delectus animi labore. Recusandae modi ipsa et quia vitae laudantium cumque. Cum eveniet dignissimos omnis voluptatem aperiam. Omnis aut nisi ea nesciunt sit. Asperiores aut impedit libero aspernatur eos ut asperiores modi.',9.86,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(13,'Adaline Islands','adaline-islands','Itaque sed sit ut quidem doloremque labore labore. Eveniet molestias quia doloribus rerum modi nisi. Ad quia sunt iure est. Et autem est voluptate suscipit. Fugiat doloremque maiores fugiat sit. Id laboriosam perferendis aut repudiandae aut voluptates nemo. Aliquid voluptatibus saepe quis quaerat in omnis tempora. Vel quis consequuntur sit quasi autem non. Reiciendis molestiae sit earum cum pariatur. Ut vel iusto beatae. Et eaque voluptas velit est fuga. Amet nihil eos quam impedit ad quis. Voluptatibus consequatur doloribus veniam nesciunt suscipit.',17.12,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(14,'Fadel Villages','fadel-villages','Debitis illo architecto maiores ipsum rerum eaque tempora. Saepe in architecto deleniti est cupiditate. Ea quisquam suscipit sed explicabo explicabo et. Delectus quia quia est molestias. Non culpa delectus minima sunt qui magnam. Adipisci quod molestiae earum sed. Quo quia qui quae eaque iure exercitationem. Debitis assumenda vero quia reiciendis vel quia. Quaerat ut et facere et eum voluptatem magnam. Pariatur omnis expedita quos temporibus temporibus nisi excepturi. Molestiae dolorem harum nostrum quos. Quia iusto quis aperiam necessitatibus mollitia. Sit aut iste quia nemo iste illo fuga. Cupiditate qui ex perspiciatis et in illo. Aut fugiat eum inventore numquam corrupti id. Aliquam qui laboriosam animi aperiam iure. Facere occaecati ut et eius. Et et alias voluptas velit eos non beatae. Quam magni a ut veritatis. Ut voluptas occaecati quam ut vero. Commodi hic ea cumque ipsum sed. Nulla ducimus assumenda sed quidem. Similique necessitatibus odio consequuntur eius. Ut ea eos dolores dolor laboriosam magni. Est sit occaecati qui labore est omnis nobis mollitia.',14.31,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(15,'Pfannerstill Fall','pfannerstill-fall','Unde ipsam alias doloremque officiis dolor. Sunt veritatis ea qui et et quia. Consequatur corrupti sapiente voluptatem. Possimus laudantium cum et laborum. Tempore inventore culpa qui fuga. Voluptatibus est inventore sit sit quia ut illo. Minima ad deleniti itaque culpa enim qui tempore. Quod voluptatibus quaerat tempora distinctio vero quo. Quisquam deleniti mollitia porro et aspernatur ut. Vitae sint itaque mollitia eos dicta. Rerum quia eum quam eos quia eos. Cum provident ab velit et qui quis. Consequatur modi et aliquid ipsam qui. Et blanditiis reprehenderit libero praesentium aspernatur aliquam in numquam. Sit et nulla rerum cumque et qui provident. Accusamus rerum magni ullam earum sed nobis. Quia et vel aut ab assumenda repellendus voluptatem modi. Ut et occaecati voluptas voluptatem fugit blanditiis odio quo.',1.83,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(16,'Betsy Lock','betsy-lock','Cum facilis quo sed autem ullam. Laboriosam est praesentium repudiandae commodi nulla quam. Qui esse ipsa eos dolorem. Rerum fugiat itaque suscipit voluptatem sint quisquam. Placeat ut sit ducimus et non qui atque. Similique qui animi delectus quaerat fuga. Aspernatur ab cumque dolores neque. Quos omnis magnam eum est nemo quis. Provident repellat rerum dolor debitis non autem. Dolorem sint sunt quo explicabo. Eligendi fugiat corrupti libero ipsa. Aut repudiandae repellendus sequi maiores. Aut sit rerum eum ducimus recusandae voluptatem sit blanditiis. Magnam et eaque ut dolores neque autem quos. Saepe id eos animi deleniti. Veritatis unde aut assumenda harum reiciendis rerum. Quisquam autem maiores ducimus voluptatum voluptate cupiditate. Sed ullam laborum perferendis. Blanditiis autem quo doloremque quam fuga necessitatibus accusantium. Eligendi quod dolorem voluptates qui.',6.04,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(17,'Paula Knolls','paula-knolls','Ea ex voluptatem aspernatur repellendus vel voluptatem ut. Pariatur a aut quae sint. Quo deserunt voluptatem inventore repellendus a accusantium rerum. Porro ipsum dolores minima ab. Molestias perspiciatis occaecati eius iure. Libero consectetur autem sit animi rerum et. Modi commodi voluptates quisquam totam placeat sapiente. Et est corporis et laborum molestiae saepe. Animi soluta vitae ratione. Laudantium voluptatem ut dolor veniam qui doloremque. Totam animi reprehenderit recusandae culpa numquam ea officia. Error dolore tenetur asperiores saepe. Ut est eius fugiat inventore sequi dolor blanditiis. Temporibus nisi laudantium maiores quibusdam non. Laboriosam recusandae omnis at quisquam id. Vitae at animi aliquid est suscipit repellendus. Qui nisi quia sapiente sunt. Porro exercitationem dicta itaque est reiciendis. Omnis autem sed dolores qui odio cumque maxime inventore. Rerum vel temporibus eius doloremque nihil. In facilis enim maiores nihil dicta eum. Perferendis unde sequi voluptas quaerat dolores fuga.',3.83,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(18,'Batz Spurs','batz-spurs','Voluptatem accusamus minima tempora est voluptas eum dicta. Voluptate sit aspernatur necessitatibus est labore voluptas magni nesciunt. Sed atque minima labore et. Numquam et molestias placeat qui. Assumenda pariatur non quam et tempora blanditiis. Blanditiis accusantium et quam quo aut dolor veniam. Placeat molestias inventore odit. Ratione voluptates et veritatis quia delectus sed quia. Quas facere nostrum odio sequi reiciendis veritatis officia est. Iure temporibus voluptatem est laudantium. Aperiam est rem deserunt. Eum laborum sit et voluptas minus dolorem. Consequatur eligendi quibusdam deleniti dolorem ut molestiae. Eum ea rerum voluptatibus esse molestias saepe. Magnam deserunt non eius qui deserunt eaque.',19.86,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(19,'Kunde Skyway','kunde-skyway','Repellat similique quisquam velit ut non. Facere aliquid eos illum explicabo praesentium nulla. Facilis aspernatur non aut voluptates quasi velit sunt. Ratione sit aliquid possimus velit quam. Cupiditate sequi vitae soluta. Exercitationem blanditiis ut ipsam quos. Et et voluptatibus voluptatum et. Voluptatem eum voluptas nesciunt pariatur eveniet dolores. Ipsum eligendi et deleniti velit officiis aliquid. Iure rerum quia dolor aut velit repellat velit. Modi sunt quia qui aspernatur. Laudantium magnam recusandae consectetur id rerum dolorem impedit. Aliquid dolorem vel aut vel totam vitae maxime eligendi. Aperiam odit vitae minima doloribus autem aut. Quibusdam consequatur praesentium harum dicta molestiae. Vel voluptas porro eveniet sed. Est itaque quisquam fuga eveniet. Velit corporis accusantium ratione id. Ut reiciendis et vero et harum.',7.64,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(20,'VonRueden Views','vonrueden-views','Qui quam molestiae quo aut. Nisi dolores fugit dolorem sint aut dicta sed. Voluptatem optio quia temporibus ut eos porro. Repellat aut similique illo est vitae. Amet consequuntur porro officia quibusdam cumque fugit. Tempora cum hic earum aut. Velit repellendus commodi occaecati blanditiis eos ut. Error saepe quam consectetur non. Nam eveniet officiis maiores. Assumenda voluptates reprehenderit inventore repellat omnis. Quia earum animi consequatur sunt. Aperiam totam eum minima tenetur laudantium. Corporis dolore quo quis voluptas.',9.96,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(21,'Marks Burgs','marks-burgs','Autem nesciunt eum et. Sit commodi qui rerum id ut. Asperiores non amet facilis commodi. Nesciunt recusandae vero itaque porro animi. Similique aperiam consequatur libero veritatis est sit. Porro corrupti quod ratione cupiditate eum illo explicabo porro. Et officiis ratione eum repudiandae iure voluptas ducimus. Autem ullam eveniet velit tempore natus neque nesciunt. Sed sed architecto ipsa. Eius quod excepturi consequatur quia recusandae modi. Quo enim iure hic ut ducimus architecto quasi. Quae excepturi sit dolor reprehenderit. Ad eaque accusantium adipisci exercitationem illo necessitatibus. Culpa dolor sunt et sint aut quibusdam.',15.25,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(22,'Jane Parkways','jane-parkways','Velit et quos hic nostrum omnis. Quia fugiat occaecati perspiciatis et animi saepe occaecati. Voluptatum optio dolores aliquid molestias et porro dolorem officiis. Dignissimos harum vel enim. Eos sit laboriosam velit autem optio expedita rerum. Quo debitis quo nemo nihil fugiat perferendis. Quo architecto id autem eligendi non. Dolores rem quae nihil eos incidunt voluptas tempora. Suscipit necessitatibus libero dolores provident autem possimus. Quod maiores suscipit aut quam magnam molestiae. Voluptatem rerum vel consequatur et. Aliquid voluptas deserunt et aliquam autem aut dicta. Veniam est minus iste quis eligendi. Corrupti sapiente perferendis fugiat.',2.10,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(23,'Annamarie Prairie','annamarie-prairie','Eveniet distinctio delectus a reiciendis nostrum quod. Fugiat molestiae totam modi autem in quidem adipisci. Non nam in quibusdam laboriosam aliquam ea eum. Nobis inventore natus incidunt pariatur eligendi a. Veniam quae velit est unde iusto voluptatem est. Quia voluptatem sint dolor minus. Dolor blanditiis molestiae aut distinctio. Sed inventore ut qui porro. Aut pariatur eveniet illum. Veniam explicabo nobis corrupti illum est deleniti quod placeat. Labore animi ad quis. Ut neque labore et eum illum voluptas qui aut. Eveniet consequuntur dicta vero vitae aut iure. Et aut modi voluptatem. Ut omnis qui et quas vitae aut atque molestiae. Qui sed est illum molestiae et omnis. Omnis cupiditate ut vero illo. Omnis et voluptatem sed. Amet incidunt numquam eos ad. Porro molestiae ad quas aut ut magnam vel. Et quo consequatur laudantium aut vel quia consectetur. Perferendis aut et natus ducimus alias ex. Voluptatibus veniam quia deserunt autem laboriosam incidunt. Incidunt consectetur temporibus occaecati officiis nesciunt fugit.',6.14,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(24,'Casper Mount','casper-mount','Et quo sint aut dolores totam minus. Minus iusto quia et molestiae velit ab. Sunt expedita sed repellendus vitae. Aut molestiae quia sint quo delectus. Praesentium et id et aut facilis culpa. Pariatur est voluptates sint quia. Ut voluptatem numquam non. Numquam incidunt ullam minima nostrum eum nam enim. Maxime hic minima recusandae nihil et velit. Rerum labore quasi ut velit rerum iste expedita dolor. Ad libero vel et perspiciatis provident. Reprehenderit odit id est hic quis et eos. Autem veniam deleniti qui quia officia omnis id. Aspernatur nihil est animi magnam officia itaque illo. Commodi ea optio numquam praesentium nostrum incidunt. Eligendi quo non officia dolorem. Quisquam assumenda mollitia nihil quidem delectus. Qui vitae facilis laboriosam beatae. Enim quidem nostrum quidem accusantium perspiciatis. Et porro magni maiores voluptatem eum consequatur omnis laboriosam. Laborum ex consectetur est numquam. Voluptatum dolore laboriosam aut et est repellendus excepturi. Ut dolore et unde nemo dolores. Animi perferendis officia cum sit. Sed magnam delectus dignissimos numquam qui qui sapiente. Nihil libero pariatur dicta et.',1.80,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(25,'Ewell Cove','ewell-cove','Aspernatur dolores sed in quia rerum sunt fugit. Provident aspernatur ea dolorem praesentium et magni. Quo enim deleniti facilis quo. Sit fugit aperiam ea debitis. Voluptates corrupti ipsum incidunt sed excepturi autem a. Aut sunt deserunt dolor. Ipsa in ducimus dolorem nisi vero aut ut vel. Id porro quia voluptatem voluptatem sed. Praesentium incidunt aut consequatur aut velit veritatis. Quo reiciendis nihil aut doloremque aut. Magnam dolor voluptas adipisci sit maxime. Maiores doloribus omnis praesentium. Rem non atque accusamus voluptatem. Aut fuga occaecati aut cumque.',11.84,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(26,'Gutmann Well','gutmann-well','Temporibus fugiat cumque est. Expedita voluptatem ipsam quia quaerat. Omnis assumenda laudantium quis eligendi consequatur eos cupiditate doloribus. Sapiente maxime porro voluptas facere. Nam aut consequatur quo totam. Corporis nostrum natus rerum similique voluptatem sed. Sed consequatur sint provident dolorum ex inventore vitae. Magni inventore possimus explicabo quisquam optio ullam quod. Rerum sed nisi cupiditate veritatis odit consequatur sint. Eveniet laudantium quo voluptatem ipsam et. Minus nostrum repellendus omnis et quis. Dolores blanditiis tempore quibusdam quos id laborum. Eius et quia et debitis quod nostrum tempore tempore. Numquam sed quibusdam doloribus quo quibusdam. Eum at nisi sequi consequatur quaerat praesentium omnis. Laudantium ut unde in ratione. Voluptatum ab animi placeat est quam. Officia optio exercitationem dolor illum. Quia quos eos ut voluptate nisi possimus qui.',12.85,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(27,'Addison Stravenue','addison-stravenue','Ut iure nam exercitationem sunt at et. Earum veniam quasi est fuga facere quasi. Ut ea eos cupiditate. In repudiandae accusamus non quam explicabo expedita. Provident et necessitatibus eligendi cum dicta eos dolores. Aut corrupti sit pariatur. Iure veniam nostrum culpa in. Quia officiis fuga dolore magni reiciendis sequi. Officiis quibusdam vitae quia maxime qui ipsa blanditiis. Quisquam vel perspiciatis velit. Magni voluptas ullam unde dicta quia qui est. Amet fugit quisquam itaque velit ipsa. Rem laboriosam distinctio est rem voluptatem. Quia fugiat exercitationem necessitatibus esse est dignissimos ut. Et sapiente dolorem voluptate. Adipisci est repellat praesentium eius eveniet qui. Error asperiores sapiente aperiam fugiat non. Cum doloribus aspernatur non occaecati repellendus doloribus. Aut quis et quibusdam itaque voluptas. Possimus voluptates deleniti hic voluptatem. Eum in quibusdam doloremque ducimus. Eaque veniam explicabo et illum. Velit quod consequatur et consequatur animi. Accusamus nostrum enim vero minus. Velit odit perferendis quo sit commodi exercitationem. Facilis suscipit molestias neque et hic.',18.53,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(28,'Carter Mountain','carter-mountain','Optio minima non excepturi omnis. Numquam blanditiis non a pariatur. Sint amet quo incidunt aliquid vel. Odio est magnam voluptatem qui. Sit tempora voluptatum velit corrupti. Rerum praesentium voluptas quis sint explicabo qui ut. Eos natus iusto non fugit id quia et. Laudantium eaque nihil voluptatem veritatis nulla ut fugiat. Voluptate laudantium molestiae sunt aut. Dolores iure illum ratione omnis ut qui asperiores assumenda. Consequatur ut occaecati et perspiciatis possimus modi ut. Sapiente eligendi enim et est optio in praesentium. Corporis blanditiis expedita aperiam adipisci qui est aut voluptate. Iure est ut eum ab deleniti esse. Minima recusandae eos ut omnis totam enim deleniti nemo. Libero animi minus est aut quia tempora corrupti. Doloremque numquam officia minima libero ut quod. Unde esse laborum libero. Amet aut unde omnis blanditiis rem fuga velit. Quia sit eum quo provident. Tempora aperiam quia voluptas unde aspernatur aspernatur. Sunt quam illum sint quia. Omnis commodi dolorem ea maiores vitae debitis. Consequatur natus saepe quasi in qui.',16.84,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(29,'Pollich Lane','pollich-lane','Adipisci in dignissimos adipisci. Incidunt qui sapiente ut molestias expedita quisquam. Ut natus ipsum est voluptatum qui tenetur. Fuga temporibus et rerum officiis omnis. Cupiditate aut quibusdam architecto rem ipsam enim et. Amet non in unde ipsa. Dolorem eligendi unde sequi et autem labore. Qui ipsam odit aperiam in autem autem. Adipisci ut illum maiores sint dicta sit. Non qui totam deleniti culpa magni officiis. Sequi aut cumque consectetur. Dolorem qui et et vel. Ut nihil qui odio deserunt et id et. Esse earum beatae fuga ut sapiente corporis. Quo rerum eum quis quia explicabo quia et. Deserunt sit doloremque similique quia ut ut ea. Quibusdam autem maxime dolores totam. Blanditiis dolores qui et et sint nihil. Dolore error fuga illo consectetur nisi maiores commodi. Et reprehenderit tempore corporis rem et. Explicabo sint dignissimos est itaque. Minus provident aspernatur sapiente quia. Ad cumque dolore ut fugit optio sint. Architecto vel quis asperiores eos. Ipsa accusamus expedita illo unde id sequi. Assumenda expedita nisi voluptatem dolorum et et. Eveniet necessitatibus porro cupiditate reiciendis et magnam inventore cupiditate.',12.85,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL),(30,'Yessenia Route','yessenia-route','Porro eligendi eum et. Explicabo voluptate odit aut distinctio doloribus iusto ut. Qui aut id totam minus. Fugit quia sapiente perspiciatis explicabo accusantium fuga. Fuga voluptas unde animi recusandae ipsa. Quae provident voluptas dolorem qui ab sint ipsam voluptatibus. Eaque enim dolores nesciunt tempora. Saepe temporibus eligendi veritatis aut consequatur nam adipisci. Est itaque temporibus omnis. Possimus ut voluptas eius labore odit mollitia eos. Voluptas et quod est aut sunt vitae sunt. Veritatis minima hic nihil et voluptatem adipisci eligendi. Consectetur laudantium rerum rem aut deserunt ut. Dolore aut sapiente perferendis ipsam eum aut autem. Autem corrupti velit eos ducimus et a et natus. Aliquam nobis consectetur autem. Necessitatibus voluptatum quis eaque voluptas quas. Possimus inventore voluptas asperiores accusantium provident doloribus ipsam.',13.34,'2023-05-01 09:35:07','2023-05-01 09:35:07',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urun_detay`
--

LOCK TABLES `urun_detay` WRITE;
/*!40000 ALTER TABLE `urun_detay` DISABLE KEYS */;
INSERT INTO `urun_detay` VALUES (1,1,1,1,0,NULL),(2,2,0,0,1,NULL),(3,3,1,0,1,NULL),(4,4,1,0,0,NULL),(5,5,0,0,1,NULL),(6,6,0,0,1,NULL),(7,7,1,1,0,NULL),(8,8,0,0,1,NULL),(9,9,0,0,1,NULL),(10,10,0,0,0,NULL),(11,11,0,1,1,NULL),(12,12,1,0,0,NULL),(13,13,0,0,0,NULL),(14,14,1,0,1,NULL),(15,15,1,1,0,NULL),(16,16,1,0,1,NULL),(17,17,1,0,0,NULL),(18,18,1,1,0,NULL),(19,19,1,0,0,NULL),(20,20,0,1,1,NULL),(21,21,1,1,0,NULL),(22,22,1,0,0,NULL),(23,23,0,0,0,NULL),(24,24,1,1,0,NULL),(25,25,1,0,0,NULL),(26,26,0,0,0,NULL),(27,27,1,1,0,NULL),(28,28,0,0,0,NULL),(29,29,0,1,0,NULL),(30,30,0,0,1,NULL);
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

-- Dump completed on 2023-05-01 17:31:39
