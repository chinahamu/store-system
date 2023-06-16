-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'Dashboard','fa-bar-chart','/',NULL,NULL,NULL),(2,0,2,'Admin','fa-tasks','',NULL,NULL,NULL),(3,2,3,'Users','fa-users','auth/users',NULL,NULL,NULL),(4,2,4,'Roles','fa-user','auth/roles',NULL,NULL,NULL),(5,2,5,'Permission','fa-ban','auth/permissions',NULL,NULL,NULL),(6,2,6,'Menu','fa-bars','auth/menu',NULL,NULL,NULL),(7,2,7,'Operation log','fa-history','auth/logs',NULL,NULL,NULL),(8,14,0,'キャスト登録','fa-blind','cast-profiles','*','2023-01-18 11:19:22','2023-01-28 09:22:29'),(9,0,0,'マスター登録','fa-bars',NULL,'*','2023-01-21 12:41:52','2023-01-21 12:41:52'),(10,9,0,'メニューカテゴリ','fa-bars','menu-category-master','*','2023-01-21 12:42:28','2023-01-21 22:57:41'),(11,9,0,'メニュー','fa-bars','menus','*','2023-01-22 02:03:52','2023-01-22 02:03:52'),(12,0,0,'キャストシフト登録','fa-bars','cast-shifts','*','2023-01-22 13:25:06','2023-01-22 13:25:06'),(13,9,0,'キャストプロフィール質問登録','fa-question-circle-o','cast-survey-questions','*','2023-01-28 08:59:40','2023-01-28 08:59:40'),(14,0,0,'キャスト情報登録','fa-bars',NULL,'*','2023-01-28 09:21:53','2023-01-28 09:21:53'),(15,14,0,'キャストアンケート回答登録','fa-adn','cast-survey-answers','*','2023-01-28 09:23:29','2023-01-28 09:23:29'),(16,14,0,'オプション対応可否登録','fa-bars','cast-option-compatibles',NULL,'2023-01-29 11:52:32','2023-01-29 11:52:32'),(17,0,0,'顧客管理','fa-child','customers','*','2023-01-30 13:26:41','2023-01-30 13:26:41'),(18,0,0,'売上管理','fa-money',NULL,'*','2023-02-04 20:23:08','2023-02-08 12:43:51'),(19,18,0,'サマリー','fa-archive','summary',NULL,'2023-02-08 12:45:33','2023-02-08 12:47:09'),(20,18,0,'売上登録','fa-bank','sales','*','2023-02-09 12:02:01','2023-02-09 12:02:01');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=609 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','10.0.2.2','[]','2023-01-18 08:53:11','2023-01-18 08:53:11'),(2,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:14','2023-01-18 11:15:14'),(3,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:43','2023-01-18 11:15:43'),(4,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:43','2023-01-18 11:15:43'),(5,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:45','2023-01-18 11:15:45'),(6,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:45','2023-01-18 11:15:45'),(7,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 11:15:49','2023-01-18 11:15:49'),(8,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u767b\\u9332\",\"icon\":\"fa-blind\",\"uri\":\"\\/master\\/cast\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pi2JEu6ec8DB6FI3N5Vt8g6jZcR4PIpDeBnWx9ux\"}','2023-01-18 11:19:22','2023-01-18 11:19:22'),(9,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-18 11:19:22','2023-01-18 11:19:22'),(10,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-18 11:19:32','2023-01-18 11:19:32'),(11,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-18 11:49:27','2023-01-18 11:49:27'),(12,1,'admin','GET','10.0.2.2','[]','2023-01-18 12:40:58','2023-01-18 12:40:58'),(13,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:41:10','2023-01-18 12:41:10'),(14,1,'admin/auth/menu/8/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:41:14','2023-01-18 12:41:14'),(15,1,'admin/auth/menu/8','PUT','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u767b\\u9332\",\"icon\":\"fa-blind\",\"uri\":\"cast-profiles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"pi2JEu6ec8DB6FI3N5Vt8g6jZcR4PIpDeBnWx9ux\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/auth\\/menu\"}','2023-01-18 12:41:38','2023-01-18 12:41:38'),(16,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-18 12:41:39','2023-01-18 12:41:39'),(17,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:41:41','2023-01-18 12:41:41'),(18,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-18 12:44:52','2023-01-18 12:44:52'),(19,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-18 12:45:30','2023-01-18 12:45:30'),(20,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-18 12:48:59','2023-01-18 12:48:59'),(21,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:51:11','2023-01-18 12:51:11'),(22,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:51:17','2023-01-18 12:51:17'),(23,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-18 12:59:46','2023-01-18 12:59:46'),(24,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-18 12:59:53','2023-01-18 12:59:53'),(25,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u307e\\u3063\\u3064\\u3093\",\"age\":\"30\",\"bust\":\"129\",\"waist\":\"129\",\"hip\":\"129\",\"gender\":\"\\u7537\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"pi2JEu6ec8DB6FI3N5Vt8g6jZcR4PIpDeBnWx9ux\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-18 13:01:16','2023-01-18 13:01:16'),(26,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-18 13:01:17','2023-01-18 13:01:17'),(27,1,'admin','GET','10.0.2.2','[]','2023-01-19 09:18:12','2023-01-19 09:18:12'),(28,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-19 09:18:24','2023-01-19 09:18:24'),(29,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-19 09:20:38','2023-01-19 09:20:38'),(30,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-19 09:20:54','2023-01-19 09:20:54'),(31,1,'admin/cast-profiles/1','PUT','10.0.2.2','{\"name\":\"\\u307e\\u3063\\u3064\\u3093\",\"blad\":\"O\",\"age\":\"30\",\"tall\":\"172\",\"bust\":\"129\",\"waist\":\"129\",\"hip\":\"129\",\"gender\":\"\\u7537\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"h8gTJUFpBxUw8DuvrkhUxiL2akZUmtMgunsgVrQY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-19 10:05:16','2023-01-19 10:05:16'),(32,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-19 10:05:23','2023-01-19 10:05:23'),(33,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-19 11:34:54','2023-01-19 11:34:54'),(34,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u3086\\u3046\\u3053\",\"blad\":\"A\",\"age\":\"22\",\"tall\":\"152\",\"bust\":\"60\",\"waist\":\"50\",\"hip\":\"60\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3053\\u3093\\u306b\\u3061\\u306f\",\"description\":\"\\u3053\\u3093\\u306b\\u3061\\u306f\",\"_token\":\"h8gTJUFpBxUw8DuvrkhUxiL2akZUmtMgunsgVrQY\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-19 11:35:51','2023-01-19 11:35:51'),(35,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-19 11:35:51','2023-01-19 11:35:51'),(36,1,'admin','GET','10.0.2.2','[]','2023-01-20 13:54:54','2023-01-20 13:54:54'),(37,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-20 13:55:03','2023-01-20 13:55:03'),(38,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-20 13:55:10','2023-01-20 13:55:10'),(39,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u3042\\u307f\",\"blad\":\"B\",\"age\":\"021\",\"tall\":\"0\",\"bust\":null,\"waist\":null,\"hip\":null,\"gender\":null,\"one_word\":null,\"description\":null,\"_token\":\"tG7y5HLvigQkmYA0jloHJvB1UcgJ9g5yXGGJFrxL\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-20 13:55:31','2023-01-20 13:55:31'),(40,1,'admin/cast-profiles/create','GET','10.0.2.2','[]','2023-01-20 13:55:34','2023-01-20 13:55:34'),(41,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u3042\\u307f\",\"blad\":\"B\",\"age\":\"21\",\"tall\":\"155\",\"bust\":\"100\",\"waist\":\"100\",\"hip\":\"100\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"tG7y5HLvigQkmYA0jloHJvB1UcgJ9g5yXGGJFrxL\",\"after-save\":\"2\"}','2023-01-20 13:56:29','2023-01-20 13:56:29'),(42,1,'admin/cast-profiles/create','GET','10.0.2.2','[]','2023-01-20 13:56:29','2023-01-20 13:56:29'),(43,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u307e\\u304d\",\"blad\":\"AB\",\"age\":\"25\",\"tall\":\"152\",\"bust\":\"55\",\"waist\":\"55\",\"hip\":\"55\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"tG7y5HLvigQkmYA0jloHJvB1UcgJ9g5yXGGJFrxL\",\"after-save\":\"2\"}','2023-01-20 13:57:23','2023-01-20 13:57:23'),(44,1,'admin/cast-profiles/create','GET','10.0.2.2','[]','2023-01-20 13:57:23','2023-01-20 13:57:23'),(45,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u3061\\u306f\\u308b\",\"blad\":\"O\",\"age\":\"19\",\"tall\":\"165\",\"bust\":\"111\",\"waist\":\"111\",\"hip\":\"111\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"tG7y5HLvigQkmYA0jloHJvB1UcgJ9g5yXGGJFrxL\"}','2023-01-20 13:58:19','2023-01-20 13:58:19'),(46,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-20 13:58:19','2023-01-20 13:58:19'),(47,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 08:32:59','2023-01-21 08:32:59'),(48,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u3081\\u3044\",\"blad\":\"A\",\"age\":\"19\",\"tall\":\"150\",\"bust\":\"60\",\"waist\":\"60\",\"hip\":\"60\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\",\"_token\":\"r5qG1zInDhimnsx9BsylDI5ne0FIDGIbGZpimPoR\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-21 08:34:07','2023-01-21 08:34:07'),(49,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-21 08:34:07','2023-01-21 08:34:07'),(50,1,'admin/cast-profiles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 08:34:19','2023-01-21 08:34:19'),(51,1,'admin/cast-profiles','POST','10.0.2.2','{\"name\":\"\\u307e\\u3044\",\"blad\":\"O\",\"age\":\"20\",\"tall\":\"148\",\"bust\":\"100\",\"waist\":\"100\",\"hip\":\"100\",\"gender\":\"\\u5973\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"r5qG1zInDhimnsx9BsylDI5ne0FIDGIbGZpimPoR\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-21 08:35:22','2023-01-21 08:35:22'),(52,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-21 08:35:22','2023-01-21 08:35:22'),(53,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 12:16:32','2023-01-21 12:16:32'),(54,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 12:41:02','2023-01-21 12:41:02'),(55,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u30de\\u30b9\\u30bf\\u30fc\\u767b\\u9332\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"PScjROx8AkNMOtUwtcoTpjq5jUGQodaXopjwRCKL\"}','2023-01-21 12:41:51','2023-01-21 12:41:51'),(56,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-21 12:41:55','2023-01-21 12:41:55'),(57,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"9\",\"title\":\"\\u6599\\u91d1\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"menu_master\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"PScjROx8AkNMOtUwtcoTpjq5jUGQodaXopjwRCKL\"}','2023-01-21 12:42:28','2023-01-21 12:42:28'),(58,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-21 12:42:31','2023-01-21 12:42:31'),(59,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-21 12:43:38','2023-01-21 12:43:38'),(60,1,'admin/auth/menu/10/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 12:43:51','2023-01-21 12:43:51'),(61,1,'admin/auth/menu/10','PUT','10.0.2.2','{\"parent_id\":\"9\",\"title\":\"\\u6599\\u91d1\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"menu-master\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"PScjROx8AkNMOtUwtcoTpjq5jUGQodaXopjwRCKL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/auth\\/menu\"}','2023-01-21 12:44:06','2023-01-21 12:44:06'),(62,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-21 12:44:09','2023-01-21 12:44:09'),(63,1,'admin/menu-master','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 12:44:17','2023-01-21 12:44:17'),(64,1,'admin/menu-master','GET','10.0.2.2','[]','2023-01-21 22:54:38','2023-01-21 22:54:38'),(65,1,'admin/menu-master','GET','10.0.2.2','[]','2023-01-21 22:55:25','2023-01-21 22:55:25'),(66,1,'admin/menu-master','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 22:55:34','2023-01-21 22:55:34'),(67,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 22:55:50','2023-01-21 22:55:50'),(68,1,'admin/auth/menu/8/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 22:56:00','2023-01-21 22:56:00'),(69,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 22:57:03','2023-01-21 22:57:03'),(70,1,'admin/auth/menu/10/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 22:57:10','2023-01-21 22:57:10'),(71,1,'admin/auth/menu/10','PUT','10.0.2.2','{\"parent_id\":\"9\",\"title\":\"\\u30e1\\u30cb\\u30e5\\u30fc\\u30ab\\u30c6\\u30b4\\u30ea\",\"icon\":\"fa-bars\",\"uri\":\"menu-category-master\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/auth\\/menu\"}','2023-01-21 22:57:41','2023-01-21 22:57:41'),(72,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-21 22:57:41','2023-01-21 22:57:41'),(73,1,'admin/auth/permissions','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 23:31:40','2023-01-21 23:31:40'),(74,1,'admin/auth/permissions','GET','10.0.2.2','[]','2023-01-21 23:32:03','2023-01-21 23:32:03'),(75,1,'admin/menu-category-master','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-21 23:32:11','2023-01-21 23:32:11'),(76,1,'admin/menu-category-master/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 00:27:52','2023-01-22 00:27:52'),(77,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u30b3\\u30fc\\u30b9\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/menu-category-master\"}','2023-01-22 00:29:03','2023-01-22 00:29:03'),(78,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 00:29:13','2023-01-22 00:29:13'),(79,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 00:31:29','2023-01-22 00:31:29'),(80,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 00:32:09','2023-01-22 00:32:09'),(81,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 00:32:09','2023-01-22 00:32:09'),(82,1,'admin/menu-category-master','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 00:32:44','2023-01-22 00:32:44'),(83,1,'admin/menu-category-master','GET','10.0.2.2','[]','2023-01-22 00:42:32','2023-01-22 00:42:32'),(84,1,'admin/menu-category-master/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 00:43:45','2023-01-22 00:43:45'),(85,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u30b3\\u30fc\\u30b9\",\"back-rate\":\"0.4\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/menu-category-master\"}','2023-01-22 00:44:19','2023-01-22 00:44:19'),(86,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 00:44:34','2023-01-22 00:44:34'),(87,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 01:05:42','2023-01-22 01:05:42'),(88,1,'admin/menu-category-master','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 01:05:59','2023-01-22 01:05:59'),(89,1,'admin/menu-category-master/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 01:06:09','2023-01-22 01:06:09'),(90,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 01:07:17','2023-01-22 01:07:17'),(91,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 01:11:36','2023-01-22 01:11:36'),(92,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u30b3\\u30fc\\u30b9\",\"back_rate\":\"40\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 01:12:00','2023-01-22 01:12:00'),(93,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 01:12:11','2023-01-22 01:12:11'),(94,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u6307\\u540d\\u6599\",\"back_rate\":\"100\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 01:12:57','2023-01-22 01:12:57'),(95,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 01:13:02','2023-01-22 01:13:02'),(96,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u30aa\\u30d7\\u30b7\\u30e7\\u30f3\",\"back_rate\":\"50\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 01:13:57','2023-01-22 01:13:57'),(97,1,'admin/menu-category-master/create','GET','10.0.2.2','[]','2023-01-22 01:14:06','2023-01-22 01:14:06'),(98,1,'admin/menu-category-master','POST','10.0.2.2','{\"name\":\"\\u4ea4\\u901a\\u8cbb\",\"back_rate\":\"0\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\"}','2023-01-22 01:14:31','2023-01-22 01:14:31'),(99,1,'admin/menu-category-master','GET','10.0.2.2','[]','2023-01-22 01:14:40','2023-01-22 01:14:40'),(100,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 02:03:03','2023-01-22 02:03:03'),(101,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"9\",\"title\":\"\\u30e1\\u30cb\\u30e5\\u30fc\",\"icon\":\"fa-bars\",\"uri\":\"menus\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\"}','2023-01-22 02:03:51','2023-01-22 02:03:51'),(102,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-22 02:03:57','2023-01-22 02:03:57'),(103,1,'admin/menus','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 02:04:04','2023-01-22 02:04:04'),(104,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:05:04','2023-01-22 02:05:04'),(105,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:08:43','2023-01-22 02:08:43'),(106,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 02:14:08','2023-01-22 02:14:08'),(107,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:14:15','2023-01-22 02:14:15'),(108,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:15:14','2023-01-22 02:15:14'),(109,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 02:15:23','2023-01-22 02:15:23'),(110,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:15:26','2023-01-22 02:15:26'),(111,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:15:58','2023-01-22 02:15:58'),(112,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 02:16:05','2023-01-22 02:16:05'),(113,1,'admin/menus','POST','10.0.2.2','{\"name\":\"60\\u5206\",\"category_id\":\"1\",\"price\":\"28000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/menus\"}','2023-01-22 02:17:08','2023-01-22 02:17:08'),(114,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-22 02:17:11','2023-01-22 02:17:11'),(115,1,'admin/menus','POST','10.0.2.2','{\"name\":\"90\\u5206\",\"category_id\":\"1\",\"price\":\"38000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 02:17:47','2023-01-22 02:17:47'),(116,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-22 02:17:50','2023-01-22 02:17:50'),(117,1,'admin/menus','POST','10.0.2.2','{\"name\":\"120\\u5206\",\"category_id\":\"1\",\"price\":\"48000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 02:18:16','2023-01-22 02:18:16'),(118,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-22 02:18:18','2023-01-22 02:18:18'),(119,1,'admin/menus','POST','10.0.2.2','{\"name\":\"150\\u5206\",\"category_id\":\"1\",\"price\":\"65000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\"}','2023-01-22 02:18:43','2023-01-22 02:18:43'),(120,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-22 02:18:44','2023-01-22 02:18:44'),(121,1,'admin/menus','POST','10.0.2.2','{\"name\":\"180\\u5206\",\"category_id\":\"1\",\"price\":\"82000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\"}','2023-01-22 02:19:22','2023-01-22 02:19:22'),(122,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:19:22','2023-01-22 02:19:22'),(123,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:36:24','2023-01-22 02:36:24'),(124,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:41:28','2023-01-22 02:41:28'),(125,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:42:01','2023-01-22 02:42:01'),(126,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:43:43','2023-01-22 02:43:43'),(127,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:48:41','2023-01-22 02:48:41'),(128,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:50:03','2023-01-22 02:50:03'),(129,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 02:50:48','2023-01-22 02:50:48'),(130,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 03:23:52','2023-01-22 03:23:52'),(131,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u30cd\\u30c3\\u30c8\\u6307\\u540d\",\"category_id\":\"2\",\"price\":\"2000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/menus\"}','2023-01-22 03:24:28','2023-01-22 03:24:28'),(132,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-22 03:24:33','2023-01-22 03:24:33'),(133,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u672c\\u6307\\u540d\",\"category_id\":\"2\",\"price\":\"3000\",\"_token\":\"qBxYGKWKMyz7zNtgDblAZQjdbPfSlglwxYhTJJzT\"}','2023-01-22 03:25:34','2023-01-22 03:25:34'),(134,1,'admin/menus','GET','10.0.2.2','[]','2023-01-22 03:25:34','2023-01-22 03:25:34'),(135,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 12:44:51','2023-01-22 12:44:51'),(136,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 13:24:23','2023-01-22 13:24:23'),(137,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u30b7\\u30d5\\u30c8\\u767b\\u9332\",\"icon\":\"fa-bars\",\"uri\":\"cast-shifts\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"PzIt5nhC9Daymuwr5ElxBC0Z0MB1GB1iIyuDtbu8\"}','2023-01-22 13:25:04','2023-01-22 13:25:04'),(138,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-22 13:25:15','2023-01-22 13:25:15'),(139,1,'admin/cast-shifts','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 13:25:32','2023-01-22 13:25:32'),(140,1,'admin/cast-shifts/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-22 13:26:15','2023-01-22 13:26:15'),(141,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-22 13:34:42','2023-01-22 13:34:42'),(142,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-22 13:35:47','2023-01-22 13:35:47'),(143,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-22 13:39:28','2023-01-22 13:39:28'),(144,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-22 13:40:17','2023-01-22 13:40:17'),(145,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"1\",\"start_datetime\":\"2023-01-24 10:00:00\",\"end_datetime\":\"2023-01-24 18:00:00\",\"_token\":\"PzIt5nhC9Daymuwr5ElxBC0Z0MB1GB1iIyuDtbu8\"}','2023-01-22 13:41:53','2023-01-22 13:41:53'),(146,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-22 13:42:04','2023-01-22 13:42:04'),(147,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-22 13:43:13','2023-01-22 13:43:13'),(148,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-22 13:47:21','2023-01-22 13:47:21'),(149,1,'admin/cast-shifts/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-23 03:31:01','2023-01-23 03:31:01'),(150,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"2\",\"start_datetime\":\"2023-01-24 11:00:00\",\"end_datetime\":\"2023-01-24 22:00:00\",\"_token\":\"nsJgnTuGjLCRDMtoGxYsj9p0KK09B2WhjHLmzIl9\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-shifts\"}','2023-01-23 03:32:52','2023-01-23 03:32:52'),(151,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:32:55','2023-01-23 03:32:55'),(152,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:38:51','2023-01-23 03:38:51'),(153,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:40:47','2023-01-23 03:40:47'),(154,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:41:46','2023-01-23 03:41:46'),(155,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:42:16','2023-01-23 03:42:16'),(156,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:47:23','2023-01-23 03:47:23'),(157,1,'admin/cast-shifts/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-23 03:48:05','2023-01-23 03:48:05'),(158,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"4\",\"start_datetime\":\"2023-01-24 23:00:00\",\"end_datetime\":\"2023-01-25 05:00:00\",\"_token\":\"nsJgnTuGjLCRDMtoGxYsj9p0KK09B2WhjHLmzIl9\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-shifts\"}','2023-01-23 03:49:00','2023-01-23 03:49:00'),(159,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:49:01','2023-01-23 03:49:01'),(160,1,'admin/cast-shifts/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-23 03:49:44','2023-01-23 03:49:44'),(161,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"3\",\"start_datetime\":\"2023-01-25 12:00:00\",\"end_datetime\":\"2023-01-25 14:00:00\",\"_token\":\"nsJgnTuGjLCRDMtoGxYsj9p0KK09B2WhjHLmzIl9\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-shifts\"}','2023-01-23 03:50:36','2023-01-23 03:50:36'),(162,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 03:50:36','2023-01-23 03:50:36'),(163,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 09:06:51','2023-01-23 09:06:51'),(164,1,'admin/cast-shifts','GET','10.0.2.2','[]','2023-01-23 09:06:59','2023-01-23 09:06:59'),(165,1,'admin','GET','10.0.2.2','[]','2023-01-25 12:44:30','2023-01-25 12:44:30'),(166,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 12:44:56','2023-01-25 12:44:56'),(167,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 12:45:08','2023-01-25 12:45:08'),(168,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','[]','2023-01-25 12:49:11','2023-01-25 12:49:11'),(169,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 12:49:55','2023-01-25 12:49:55'),(170,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 12:50:03','2023-01-25 12:50:03'),(171,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:10:18','2023-01-25 13:10:18'),(172,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:10:23','2023-01-25 13:10:23'),(173,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:10:30','2023-01-25 13:10:30'),(174,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','[]','2023-01-25 13:11:19','2023-01-25 13:11:19'),(175,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:12:15','2023-01-25 13:12:15'),(176,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:12:21','2023-01-25 13:12:21'),(177,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:12:28','2023-01-25 13:12:28'),(178,1,'admin/cast-profiles/1','GET','10.0.2.2','[]','2023-01-25 13:24:24','2023-01-25 13:24:24'),(179,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:24:40','2023-01-25 13:24:40'),(180,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:24:44','2023-01-25 13:24:44'),(181,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:24:49','2023-01-25 13:24:49'),(182,1,'admin/cast-profiles/1','GET','10.0.2.2','[]','2023-01-25 13:26:35','2023-01-25 13:26:35'),(183,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-25 13:26:41','2023-01-25 13:26:41'),(184,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','[]','2023-01-26 12:20:18','2023-01-26 12:20:18'),(185,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:20:18','2023-01-26 12:20:18'),(186,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:27:01','2023-01-26 12:27:01'),(187,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:27:19','2023-01-26 12:27:19'),(188,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:27:27','2023-01-26 12:27:27'),(189,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:36:18','2023-01-26 12:36:18'),(190,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:36:27','2023-01-26 12:36:27'),(191,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:36:32','2023-01-26 12:36:32'),(192,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:41:32','2023-01-26 12:41:32'),(193,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:41:40','2023-01-26 12:41:40'),(194,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:41:46','2023-01-26 12:41:46'),(195,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:45:36','2023-01-26 12:45:36'),(196,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:45:47','2023-01-26 12:45:47'),(197,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:45:56','2023-01-26 12:45:56'),(198,1,'admin/cast-profiles/1','PUT','10.0.2.2','{\"name\":\"\\u307e\\u3063\\u3064\\u3093\",\"blad\":\"O\",\"age\":\"30\",\"tall\":\"172\",\"bust\":\"129\",\"waist\":\"129\",\"hip\":\"129\",\"gender\":\"\\u7537\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"Y7iEFuQq1rQw1sMBHcSZ7bcOfgdJDDPVriJdApoe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-26 12:46:17','2023-01-26 12:46:17'),(199,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-26 12:46:18','2023-01-26 12:46:18'),(200,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:46:23','2023-01-26 12:46:23'),(201,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:54:02','2023-01-26 12:54:02'),(202,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:54:49','2023-01-26 12:54:49'),(203,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 12:54:55','2023-01-26 12:54:55'),(204,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 13:03:20','2023-01-26 13:03:20'),(205,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 13:03:26','2023-01-26 13:03:26'),(206,1,'admin/cast-profiles/1/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-26 13:03:33','2023-01-26 13:03:33'),(207,1,'admin/cast-profiles/1','PUT','10.0.2.2','{\"name\":\"\\u307e\\u3063\\u3064\\u3093\",\"blad\":\"O\",\"age\":\"30\",\"tall\":\"172\",\"bust\":\"129\",\"waist\":\"129\",\"hip\":\"129\",\"gender\":\"\\u7537\\u6027\",\"one_word\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"description\":\"\\u3088\\u308d\\u3057\\u304f\\u304a\\u306d\\u304c\\u3044\\u3057\\u307e\\u3059\\u3002\",\"_token\":\"Y7iEFuQq1rQw1sMBHcSZ7bcOfgdJDDPVriJdApoe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-profiles\"}','2023-01-26 13:03:51','2023-01-26 13:03:51'),(208,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-26 13:03:52','2023-01-26 13:03:52'),(209,1,'admin','GET','10.0.2.2','[]','2023-01-28 08:57:48','2023-01-28 08:57:48'),(210,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 08:58:09','2023-01-28 08:58:09'),(211,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"9\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u30d7\\u30ed\\u30d5\\u30a3\\u30fc\\u30eb\\u8cea\\u554f\\u767b\\u9332\",\"icon\":\"fa-question-circle-o\",\"uri\":\"cast-survey-questions\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\"}','2023-01-28 08:59:40','2023-01-28 08:59:40'),(212,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-28 08:59:40','2023-01-28 08:59:40'),(213,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-28 08:59:59','2023-01-28 08:59:59'),(214,1,'admin/cast-survey-questions','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:00:04','2023-01-28 09:00:04'),(215,1,'admin/cast-survey-questions/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:00:11','2023-01-28 09:00:11'),(216,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u597d\\u304d\\u306a\\u7537\\u6027\\u306e\\u30bf\\u30a4\\u30d7\\u306f\\uff1f\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-survey-questions\"}','2023-01-28 09:00:32','2023-01-28 09:00:32'),(217,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:00:32','2023-01-28 09:00:32'),(218,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u8da3\\u5473\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:00:48','2023-01-28 09:00:48'),(219,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:00:48','2023-01-28 09:00:48'),(220,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u30bf\\u30d0\\u30b3\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:00','2023-01-28 09:01:00'),(221,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:00','2023-01-28 09:01:00'),(222,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u597d\\u304d\\u306a\\u30d6\\u30e9\\u30f3\\u30c9\\u306f\\uff1f\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:10','2023-01-28 09:01:10'),(223,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:10','2023-01-28 09:01:10'),(224,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u597d\\u304d\\u306a\\u98df\\u3079\\u7269\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:20','2023-01-28 09:01:20'),(225,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:21','2023-01-28 09:01:21'),(226,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u4f3c\\u3066\\u3044\\u308b\\u82b8\\u80fd\\u4eba\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:29','2023-01-28 09:01:29'),(227,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:29','2023-01-28 09:01:29'),(228,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u304a\\u9152\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:42','2023-01-28 09:01:42'),(229,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:43','2023-01-28 09:01:43'),(230,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u81ea\\u5206\\u306e\\u4f53\\u3067\\u597d\\u304d\\u306a\\u6240\\u306f\\uff1f(\\u30c1\\u30e3\\u30fc\\u30e0\\u30dd\\u30a4\\u30f3\\u30c8)\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:01:52','2023-01-28 09:01:52'),(231,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:01:52','2023-01-28 09:01:52'),(232,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u6027\\u611f\\u5e2f\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:02:02','2023-01-28 09:02:02'),(233,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:02:03','2023-01-28 09:02:03'),(234,1,'admin/cast-survey-questions','POST','10.0.2.2','{\"question\":\"\\u597d\\u304d\\u306a\\u30d7\\u30ec\\u30a4\\u306f\\uff1f\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:02:10','2023-01-28 09:02:10'),(235,1,'admin/cast-survey-questions/create','GET','10.0.2.2','[]','2023-01-28 09:02:10','2023-01-28 09:02:10'),(236,1,'admin/cast-survey-questions','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:02:21','2023-01-28 09:02:21'),(237,1,'admin/cast-survey-questions/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:20:59','2023-01-28 09:20:59'),(238,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:21:04','2023-01-28 09:21:04'),(239,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:21:20','2023-01-28 09:21:20'),(240,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u60c5\\u5831\\u767b\\u9332\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\"}','2023-01-28 09:21:53','2023-01-28 09:21:53'),(241,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-28 09:21:53','2023-01-28 09:21:53'),(242,1,'admin/auth/menu/8/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:22:11','2023-01-28 09:22:11'),(243,1,'admin/auth/menu/8','PUT','10.0.2.2','{\"parent_id\":\"14\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u767b\\u9332\",\"icon\":\"fa-blind\",\"uri\":\"cast-profiles\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/auth\\/menu\"}','2023-01-28 09:22:28','2023-01-28 09:22:28'),(244,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-28 09:22:29','2023-01-28 09:22:29'),(245,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"14\",\"title\":\"\\u30ad\\u30e3\\u30b9\\u30c8\\u30a2\\u30f3\\u30b1\\u30fc\\u30c8\\u56de\\u7b54\\u767b\\u9332\",\"icon\":\"fa-adn\",\"uri\":\"cast-survey-answers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\"}','2023-01-28 09:23:29','2023-01-28 09:23:29'),(246,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-28 09:23:29','2023-01-28 09:23:29'),(247,1,'admin/cast-survey-answers','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:23:35','2023-01-28 09:23:35'),(248,1,'admin/cast-survey-answers','GET','10.0.2.2','[]','2023-01-28 09:28:41','2023-01-28 09:28:41'),(249,1,'admin/cast-survey-answers','GET','10.0.2.2','[]','2023-01-28 09:31:30','2023-01-28 09:31:30'),(250,1,'admin/cast-survey-answers/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:31:37','2023-01-28 09:31:37'),(251,1,'admin/cast-survey-answers','GET','10.0.2.2','[]','2023-01-28 09:31:40','2023-01-28 09:31:40'),(252,1,'admin/cast-survey-answers','GET','10.0.2.2','[]','2023-01-28 09:32:08','2023-01-28 09:32:08'),(253,1,'admin/cast-survey-answers/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:32:14','2023-01-28 09:32:14'),(254,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"1\",\"answer\":\"\\u3042\\u3042\\u3042\\u3042\\u3042\\u3042\\u3042\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-survey-answers\"}','2023-01-28 09:33:24','2023-01-28 09:33:24'),(255,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:33:24','2023-01-28 09:33:24'),(256,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":null,\"question_id\":\"2\",\"answer\":\"\\u3044\\u3044\\u3044\\u3044\\u3044\\u3044\\u3044\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:33:37','2023-01-28 09:33:37'),(257,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:33:38','2023-01-28 09:33:38'),(258,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"2\",\"answer\":\"\\u3044\\u3044\\u3044\\u3044\\u3044\\u3044\\u3044\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:33:47','2023-01-28 09:33:47'),(259,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:33:47','2023-01-28 09:33:47'),(260,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"3\",\"answer\":\"\\u3046\\u3046\\u3046\\u3046\\u3046\\u3046\\u3046\\u3046\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:34:01','2023-01-28 09:34:01'),(261,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:34:01','2023-01-28 09:34:01'),(262,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"4\",\"answer\":\"\\u3048\\u3048\\u3048\\u3048\\u3048\\u3048\\u3048\\u3048\\u3048\\u3048\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:34:14','2023-01-28 09:34:14'),(263,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:34:14','2023-01-28 09:34:14'),(264,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"5\",\"answer\":\"\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\\u304a\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:34:30','2023-01-28 09:34:30'),(265,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:34:30','2023-01-28 09:34:30'),(266,1,'admin/cast-survey-answers','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:34:51','2023-01-28 09:34:51'),(267,1,'admin/cast-survey-answers/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:34:58','2023-01-28 09:34:58'),(268,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":null,\"question_id\":\"6\",\"answer\":\"\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-survey-answers\"}','2023-01-28 09:35:10','2023-01-28 09:35:10'),(269,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:35:12','2023-01-28 09:35:12'),(270,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"6\",\"answer\":\"\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\\u304b\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:35:18','2023-01-28 09:35:18'),(271,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:35:19','2023-01-28 09:35:19'),(272,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"7\",\"answer\":\"\\u304d\\u304d\\u304d\\u304d\\u304d\\u304d\\u304d\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:35:33','2023-01-28 09:35:33'),(273,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:35:33','2023-01-28 09:35:33'),(274,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"8\",\"answer\":\"\\u304f\\u304f\\u304f\\u304f\\u304f\\u304f\\u304f\\u304f\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:35:52','2023-01-28 09:35:52'),(275,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:35:52','2023-01-28 09:35:52'),(276,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"9\",\"answer\":\"\\u3051\\u3051\\u3051\\u3051\\u3051\\u3051\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:36:12','2023-01-28 09:36:12'),(277,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:36:13','2023-01-28 09:36:13'),(278,1,'admin/cast-survey-answers','POST','10.0.2.2','{\"cast_id\":\"1\",\"question_id\":\"10\",\"answer\":\"\\u3053\\u3053\\u3053\\u3053\\u3053\\u3053\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 09:36:30','2023-01-28 09:36:30'),(279,1,'admin/cast-survey-answers/create','GET','10.0.2.2','[]','2023-01-28 09:36:30','2023-01-28 09:36:30'),(280,1,'admin/cast-survey-answers','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 09:36:34','2023-01-28 09:36:34'),(281,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 11:31:32','2023-01-28 11:31:32'),(282,1,'admin/cast-profiles','GET','10.0.2.2','[]','2023-01-28 11:32:49','2023-01-28 11:32:49'),(283,1,'admin/cast-shifts','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 11:36:51','2023-01-28 11:36:51'),(284,1,'admin/cast-shifts/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-28 11:53:18','2023-01-28 11:53:18'),(285,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"1\",\"start_datetime\":\"2023-01-29 11:00:00\",\"end_datetime\":\"2023-01-29 19:00:00\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-shifts\"}','2023-01-28 11:54:12','2023-01-28 11:54:12'),(286,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-28 11:54:12','2023-01-28 11:54:12'),(287,1,'admin/cast-shifts','POST','10.0.2.2','{\"cast_id\":\"1\",\"start_datetime\":\"2023-02-01 20:00:00\",\"end_datetime\":\"2023-01-28 23:00:00\",\"_token\":\"XfnGDpRyssGNCAgN04wjXu14j7a1ampLduDZ3sVy\",\"after-save\":\"2\"}','2023-01-28 11:55:14','2023-01-28 11:55:14'),(288,1,'admin/cast-shifts/create','GET','10.0.2.2','[]','2023-01-28 11:55:14','2023-01-28 11:55:14'),(289,1,'admin','GET','10.0.2.2','[]','2023-01-29 10:41:43','2023-01-29 10:41:43'),(290,1,'admin/menus','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 10:41:53','2023-01-29 10:41:53'),(291,1,'admin/menus/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 10:42:07','2023-01-29 10:42:07'),(292,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u30ed\\u30fc\\u30bf\\u30fc\",\"category_id\":\"3\",\"price\":\"2000\",\"_token\":\"arSR443JNeDwFd8AkkCjhaH7t2P0q84kblzGowPq\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/menus\"}','2023-01-29 10:43:05','2023-01-29 10:43:05'),(293,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-29 10:43:05','2023-01-29 10:43:05'),(294,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u30d1\\u30f3\\u30b9\\u30c8\",\"category_id\":\"3\",\"price\":\"2000\",\"_token\":\"arSR443JNeDwFd8AkkCjhaH7t2P0q84kblzGowPq\",\"after-save\":\"2\"}','2023-01-29 10:43:32','2023-01-29 10:43:32'),(295,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-29 10:43:32','2023-01-29 10:43:32'),(296,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u30d0\\u30a4\\u30d6\",\"category_id\":\"3\",\"price\":\"3000\",\"_token\":\"arSR443JNeDwFd8AkkCjhaH7t2P0q84kblzGowPq\",\"after-save\":\"2\"}','2023-01-29 10:43:54','2023-01-29 10:43:54'),(297,1,'admin/menus/create','GET','10.0.2.2','[]','2023-01-29 10:43:54','2023-01-29 10:43:54'),(298,1,'admin/menus','POST','10.0.2.2','{\"name\":\"\\u96fb\\u30de\",\"category_id\":\"3\",\"price\":\"5000\",\"_token\":\"arSR443JNeDwFd8AkkCjhaH7t2P0q84kblzGowPq\"}','2023-01-29 10:44:10','2023-01-29 10:44:10'),(299,1,'admin/menus','GET','10.0.2.2','[]','2023-01-29 10:44:11','2023-01-29 10:44:11'),(300,1,'admin/cast-profiles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 10:44:47','2023-01-29 10:44:47'),(301,1,'admin/cast-shifts','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 11:11:29','2023-01-29 11:11:29'),(302,1,'admin/menus','GET','10.0.2.2','[]','2023-01-29 11:47:10','2023-01-29 11:47:10'),(303,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 11:47:48','2023-01-29 11:47:48'),(304,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"14\",\"title\":\"\\u30aa\\u30d7\\u30b7\\u30e7\\u30f3\\u5bfe\\u5fdc\\u53ef\\u5426\\u767b\\u9332\",\"icon\":\"fa-bars\",\"uri\":\"cast-option-compatibles\",\"roles\":[null],\"permission\":null,\"_token\":\"arSR443JNeDwFd8AkkCjhaH7t2P0q84kblzGowPq\"}','2023-01-29 11:52:30','2023-01-29 11:52:30'),(305,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-29 11:52:39','2023-01-29 11:52:39'),(306,1,'admin/cast-option-compatibles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 11:52:51','2023-01-29 11:52:51'),(307,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 11:54:35','2023-01-29 11:54:35'),(308,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-29 11:54:45','2023-01-29 11:54:45'),(309,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-29 11:55:37','2023-01-29 11:55:37'),(310,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-29 11:55:54','2023-01-29 11:55:54'),(311,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-29 11:55:57','2023-01-29 11:55:57'),(312,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-29 11:56:35','2023-01-29 11:56:35'),(313,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-29 11:57:32','2023-01-29 11:57:32'),(314,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-29 11:58:59','2023-01-29 11:58:59'),(315,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-29 11:59:24','2023-01-29 11:59:24'),(316,1,'admin','GET','10.0.2.2','[]','2023-01-30 08:02:46','2023-01-30 08:02:46'),(317,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 08:04:09','2023-01-30 08:04:09'),(318,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 08:04:22','2023-01-30 08:04:22'),(319,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 08:04:34','2023-01-30 08:04:34'),(320,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 08:05:32','2023-01-30 08:05:32'),(321,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-30 08:06:04','2023-01-30 08:06:04'),(322,1,'admin/cast-option-compatibles','POST','10.0.2.2','{\"cast_id\":\"1\",\"option_id\":\"8\",\"type\":\"\\u25cb\",\"_token\":\"lxPa96xrb3T55ZFMNJYhZy1tnAn0JolHlTyvdRO3\",\"after-save\":\"2\"}','2023-01-30 08:52:12','2023-01-30 08:52:12'),(323,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-30 08:52:20','2023-01-30 08:52:20'),(324,1,'admin/cast-option-compatibles','POST','10.0.2.2','{\"cast_id\":\"1\",\"option_id\":\"9\",\"type\":\"\\u25cb\",\"_token\":\"lxPa96xrb3T55ZFMNJYhZy1tnAn0JolHlTyvdRO3\",\"after-save\":\"2\"}','2023-01-30 08:52:47','2023-01-30 08:52:47'),(325,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-30 08:52:51','2023-01-30 08:52:51'),(326,1,'admin/cast-option-compatibles','POST','10.0.2.2','{\"cast_id\":\"1\",\"option_id\":\"10\",\"type\":\"\\u25b3\",\"_token\":\"lxPa96xrb3T55ZFMNJYhZy1tnAn0JolHlTyvdRO3\",\"after-save\":\"2\"}','2023-01-30 08:53:09','2023-01-30 08:53:09'),(327,1,'admin/cast-option-compatibles/create','GET','10.0.2.2','[]','2023-01-30 08:53:13','2023-01-30 08:53:13'),(328,1,'admin/cast-option-compatibles','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 08:53:25','2023-01-30 08:53:25'),(329,1,'admin/cast-option-compatibles/2/edit','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 08:53:35','2023-01-30 08:53:35'),(330,1,'admin/cast-option-compatibles/2','PUT','10.0.2.2','{\"cast_id\":\"1\",\"option_id\":\"9\",\"type\":\"\\u2613\",\"_token\":\"lxPa96xrb3T55ZFMNJYhZy1tnAn0JolHlTyvdRO3\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8081\\/admin\\/cast-option-compatibles\"}','2023-01-30 08:53:45','2023-01-30 08:53:45'),(331,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 08:53:49','2023-01-30 08:53:49'),(332,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 08:55:30','2023-01-30 08:55:30'),(333,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 09:59:14','2023-01-30 09:59:14'),(334,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 10:00:01','2023-01-30 10:00:01'),(335,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 10:01:49','2023-01-30 10:01:49'),(336,1,'admin/cast-option-compatibles','GET','10.0.2.2','[]','2023-01-30 10:02:57','2023-01-30 10:02:57'),(337,1,'admin/cast-survey-answers','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 11:30:47','2023-01-30 11:30:47'),(338,1,'admin/cast-survey-answers','GET','10.0.2.2','[]','2023-01-30 12:24:19','2023-01-30 12:24:19'),(339,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 13:05:07','2023-01-30 13:05:07'),(340,1,'admin/auth/menu','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 13:25:25','2023-01-30 13:25:25'),(341,1,'admin/auth/menu','POST','10.0.2.2','{\"parent_id\":\"0\",\"title\":\"\\u9867\\u5ba2\\u7ba1\\u7406\",\"icon\":\"fa-child\",\"uri\":\"customers\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"lxPa96xrb3T55ZFMNJYhZy1tnAn0JolHlTyvdRO3\"}','2023-01-30 13:26:40','2023-01-30 13:26:40'),(342,1,'admin/auth/menu','GET','10.0.2.2','[]','2023-01-30 13:26:46','2023-01-30 13:26:46'),(343,1,'admin/customers','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-30 13:26:56','2023-01-30 13:26:56'),(344,1,'admin','GET','10.0.2.2','{\"_pjax\":\"#pjax-container\"}','2023-01-31 03:58:03','2023-01-31 03:58:03'),(345,1,'admin','GET','172.19.0.1','[]','2023-02-04 01:49:45','2023-02-04 01:49:45'),(346,1,'admin','GET','172.19.0.1','[]','2023-02-04 02:00:53','2023-02-04 02:00:53'),(347,1,'admin/auth/menu','GET','172.19.0.1','[]','2023-02-04 02:01:17','2023-02-04 02:01:17'),(348,1,'admin/auth/menu','GET','172.19.0.1','[]','2023-02-04 02:01:43','2023-02-04 02:01:43'),(349,1,'admin/auth/menu/17/edit','GET','172.19.0.1','[]','2023-02-04 02:02:01','2023-02-04 02:02:01'),(350,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 02:02:59','2023-02-04 02:02:59'),(351,1,'admin','GET','172.19.0.1','[]','2023-02-04 15:47:28','2023-02-04 15:47:28'),(352,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 15:48:10','2023-02-04 15:48:10'),(353,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 16:01:58','2023-02-04 16:01:58'),(354,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 16:03:13','2023-02-04 16:03:13'),(355,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 16:05:02','2023-02-04 16:05:02'),(356,1,'admin/customers','GET','172.19.0.1','[]','2023-02-04 16:06:26','2023-02-04 16:06:26'),(357,1,'admin/customers/create','GET','172.19.0.1','[]','2023-02-04 16:16:14','2023-02-04 16:16:14'),(358,1,'admin','GET','172.23.0.1','[]','2023-02-04 18:08:05','2023-02-04 18:08:05'),(359,1,'admin','GET','172.23.0.1','[]','2023-02-04 18:45:50','2023-02-04 18:45:50'),(360,1,'admin/customers','GET','172.23.0.1','[]','2023-02-04 18:46:10','2023-02-04 18:46:10'),(361,1,'admin/customers','GET','172.24.0.1','[]','2023-02-04 19:29:04','2023-02-04 19:29:04'),(362,1,'admin/customers/create','GET','172.24.0.1','[]','2023-02-04 19:41:57','2023-02-04 19:41:57'),(363,1,'admin/customers','POST','172.24.0.1','{\"name\":\"\\u7267\\u7530\",\"tel\":\"00011112222\",\"address\":\"\\u6771\\u4eac\\u90fd\\u6e2f\\u533a\\u516d\\u672c\\u6728\\uff12\\u4e01\\u76ee\\uff13\\u2212\\uff11\\uff11\",\"mail_address\":\"ktwriter43@gmail.com\",\"ban_flag\":\"\\u901a\\u5e38\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/customers\"}','2023-02-04 19:43:25','2023-02-04 19:43:25'),(364,1,'admin/customers/create','GET','172.24.0.1','[]','2023-02-04 19:43:34','2023-02-04 19:43:34'),(365,1,'admin/customers','GET','172.24.0.1','[]','2023-02-04 19:44:32','2023-02-04 19:44:32'),(366,1,'admin/customers/create','GET','172.24.0.1','[]','2023-02-04 19:44:44','2023-02-04 19:44:44'),(367,1,'admin/customers','POST','172.24.0.1','{\"name\":\"\\u7267\\u7530\",\"tel\":\"11122223333\",\"address\":\"\\u6771\\u4eac\\u90fd\\u6e2f\\u533a\\u516d\\u672c\\u6728\\uff12\\u4e01\\u76ee\\uff13\\u2212\\uff11\\uff11\",\"mail_address\":\"ktwriter43@gmail.com\",\"ban_flag\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/customers\\/\"}','2023-02-04 19:45:19','2023-02-04 19:45:19'),(368,1,'admin/customers/create','GET','172.24.0.1','[]','2023-02-04 19:45:23','2023-02-04 19:45:23'),(369,1,'admin/customers','POST','172.24.0.1','{\"name\":\"\\u6a2a\\u5c71\",\"tel\":\"22233334444\",\"address\":\"\\u30a2\\u30d1\\u30db\\u30c6\\u30eb\\u3008\\u516d\\u672c\\u6728SIX\\u3009\",\"mail_address\":null,\"ban_flag\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\"}','2023-02-04 19:46:30','2023-02-04 19:46:30'),(370,1,'admin/customers/create','GET','172.24.0.1','[]','2023-02-04 19:46:35','2023-02-04 19:46:35'),(371,1,'admin/customers','POST','172.24.0.1','{\"name\":\"\\u98ef\\u7530\",\"tel\":\"33344445555\",\"address\":\"\\u30c0\\u30a4\\u30ef\\u30ed\\u30a4\\u30cd\\u30c3\\u30c8\\u30db\\u30c6\\u30eb \\u897f\\u65b0\\u5bbf\",\"mail_address\":null,\"ban_flag\":\"1\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\"}','2023-02-04 19:47:52','2023-02-04 19:47:52'),(372,1,'admin/customers','GET','172.24.0.1','[]','2023-02-04 19:47:59','2023-02-04 19:47:59'),(373,1,'admin','GET','172.24.0.1','[]','2023-02-04 20:21:43','2023-02-04 20:21:43'),(374,1,'admin/auth/menu','GET','172.24.0.1','[]','2023-02-04 20:22:15','2023-02-04 20:22:15'),(375,1,'admin/auth/menu','POST','172.24.0.1','{\"parent_id\":\"0\",\"title\":\"\\u58f2\\u4e0a\\u7ba1\\u7406\",\"icon\":\"fa-money\",\"uri\":\"sales\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\"}','2023-02-04 20:23:06','2023-02-04 20:23:06'),(376,1,'admin/auth/menu','GET','172.24.0.1','[]','2023-02-04 20:23:14','2023-02-04 20:23:14'),(377,1,'admin','GET','172.24.0.1','[]','2023-02-04 20:24:21','2023-02-04 20:24:21'),(378,1,'admin/auth/menu','GET','172.24.0.1','[]','2023-02-04 20:24:47','2023-02-04 20:24:47'),(379,1,'admin','GET','172.24.0.1','[]','2023-02-04 20:25:17','2023-02-04 20:25:17'),(380,1,'admin','GET','172.24.0.1','[]','2023-02-04 20:25:43','2023-02-04 20:25:43'),(381,1,'admin','GET','172.27.0.1','[]','2023-02-04 20:41:14','2023-02-04 20:41:14'),(382,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:41:47','2023-02-04 20:41:47'),(383,1,'admin/customers','GET','172.27.0.1','[]','2023-02-04 20:42:01','2023-02-04 20:42:01'),(384,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:42:14','2023-02-04 20:42:14'),(385,1,'admin/customers','GET','172.27.0.1','[]','2023-02-04 20:42:23','2023-02-04 20:42:23'),(386,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:44:05','2023-02-04 20:44:05'),(387,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:47:29','2023-02-04 20:47:29'),(388,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:48:38','2023-02-04 20:48:38'),(389,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:57:52','2023-02-04 20:57:52'),(390,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 20:58:04','2023-02-04 20:58:04'),(391,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:58:22','2023-02-04 20:58:22'),(392,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 20:59:10','2023-02-04 20:59:10'),(393,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 20:59:27','2023-02-04 20:59:27'),(394,1,'admin/menus','GET','172.27.0.1','[]','2023-02-04 22:10:23','2023-02-04 22:10:23'),(395,1,'admin/menus/create','GET','172.27.0.1','[]','2023-02-04 22:11:20','2023-02-04 22:11:20'),(396,1,'admin/menus','POST','172.27.0.1','{\"name\":\"\\u65b0\\u5bbf\\u533a\",\"category_id\":\"4\",\"price\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/menus\"}','2023-02-04 22:28:27','2023-02-04 22:28:27'),(397,1,'admin/menus/create','GET','172.27.0.1','[]','2023-02-04 22:28:41','2023-02-04 22:28:41'),(398,1,'admin/menus','POST','172.27.0.1','{\"name\":\"\\u6e0b\\u8c37\\u533a\\u30fb\\u4e2d\\u91ce\\u533a\",\"category_id\":\"4\",\"price\":\"2000\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\"}','2023-02-04 22:29:11','2023-02-04 22:29:11'),(399,1,'admin/menus/create','GET','172.27.0.1','[]','2023-02-04 22:29:18','2023-02-04 22:29:18'),(400,1,'admin/menus','POST','172.27.0.1','{\"name\":\"\\u54c1\\u5ddd\\u533a\\u30fb\\u6749\\u4e26\\u533a\\u30fb\\u4e16\\u7530\\u8c37\\u533a\\u30fb\\u5343\\u4ee3\\u7530\\u533a\\u30fb\\u4e2d\\u592e\\u533a\\u30fb\\u8c4a\\u5cf6\\u533a\\u30fb\\u6587\\u4eac\\u533a\\u30fb\\u6e2f\\u533a\\u30fb\\u76ee\\u9ed2\\u533a\",\"category_id\":\"4\",\"price\":\"2000\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\"}','2023-02-04 22:29:56','2023-02-04 22:29:56'),(401,1,'admin/menus/create','GET','172.27.0.1','[]','2023-02-04 22:30:03','2023-02-04 22:30:03'),(402,1,'admin/menus','POST','172.27.0.1','{\"name\":\"\\u677f\\u6a4b\\u533a\\u30fb\\u53f0\\u6771\\u533a\\u30fb\\u7df4\\u99ac\\u533a\",\"category_id\":\"4\",\"price\":\"3000\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\"}','2023-02-04 22:30:38','2023-02-04 22:30:38'),(403,1,'admin/menus/create','GET','172.27.0.1','[]','2023-02-04 22:30:50','2023-02-04 22:30:50'),(404,1,'admin/menus','POST','172.27.0.1','{\"name\":\"\\u8db3\\u7acb\\u533a\\u30fb\\u6c5f\\u6238\\u5ddd\\u533a\\u30fb\\u5927\\u7530\\u533a\\u30fb\\u845b\\u98fe\\u533a\",\"category_id\":\"4\",\"price\":\"5000\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\"}','2023-02-04 22:33:26','2023-02-04 22:33:26'),(405,1,'admin/menus','GET','172.27.0.1','[]','2023-02-04 22:33:43','2023-02-04 22:33:43'),(406,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 22:35:13','2023-02-04 22:35:13'),(407,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 22:40:47','2023-02-04 22:40:47'),(408,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 22:43:15','2023-02-04 22:43:15'),(409,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"1\",\"course_id\":\"2\",\"option_ids\":[\"8\",\"10\",null],\"transportation_expense\":\"14\",\"commission\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-04 22:49:02','2023-02-04 22:49:02'),(410,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 22:49:21','2023-02-04 22:49:21'),(411,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"1\",\"course_id\":\"2\",\"option_ids\":[\"8\",\"10\",null],\"transportation_expense\":\"14\",\"commission\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\"}','2023-02-04 23:25:34','2023-02-04 23:25:34'),(412,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:25:41','2023-02-04 23:25:41'),(413,1,'admin','GET','172.27.0.1','[]','2023-02-04 23:25:53','2023-02-04 23:25:53'),(414,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 23:26:00','2023-02-04 23:26:00'),(415,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:26:07','2023-02-04 23:26:07'),(416,1,'admin','GET','172.27.0.1','[]','2023-02-04 23:34:17','2023-02-04 23:34:17'),(417,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 23:43:28','2023-02-04 23:43:28'),(418,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:44:03','2023-02-04 23:44:03'),(419,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"1\",\"course_id\":\"3\",\"option_ids\":[\"8\",\"9\",null],\"transportation_expense\":\"13\",\"commission\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-04 23:44:33','2023-02-04 23:44:33'),(420,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:44:38','2023-02-04 23:44:38'),(421,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:46:37','2023-02-04 23:46:37'),(422,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 23:47:04','2023-02-04 23:47:04'),(423,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-04 23:47:09','2023-02-04 23:47:09'),(424,1,'admin/sales','GET','172.27.0.1','[]','2023-02-04 23:47:13','2023-02-04 23:47:13'),(425,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-05 00:34:05','2023-02-05 00:34:05'),(426,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"1\",\"course_id\":\"3\",\"option_ids\":[\"8\",\"9\",null],\"transportation_expense\":\"13\",\"commission\":\"0\",\"_token\":\"3EIgWaD5cygBSdcg9f0Nm09JBJEiaIKsSsDOyxLn\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\\/\"}','2023-02-05 00:34:55','2023-02-05 00:34:55'),(427,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:35:00','2023-02-05 00:35:00'),(428,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:41:02','2023-02-05 00:41:02'),(429,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:43:01','2023-02-05 00:43:01'),(430,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:55:19','2023-02-05 00:55:19'),(431,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:57:03','2023-02-05 00:57:03'),(432,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 00:57:35','2023-02-05 00:57:35'),(433,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 01:09:04','2023-02-05 01:09:04'),(434,1,'admin','GET','172.27.0.1','[]','2023-02-05 18:36:43','2023-02-05 18:36:43'),(435,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:37:04','2023-02-05 18:37:04'),(436,1,'admin','GET','172.27.0.1','[]','2023-02-05 18:37:12','2023-02-05 18:37:12'),(437,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:38:37','2023-02-05 18:38:37'),(438,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:39:49','2023-02-05 18:39:49'),(439,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:40:27','2023-02-05 18:40:27'),(440,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:41:53','2023-02-05 18:41:53'),(441,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:43:00','2023-02-05 18:43:00'),(442,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:46:28','2023-02-05 18:46:28'),(443,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-05 18:48:34','2023-02-05 18:48:34'),(444,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"2\",\"customer_id\":\"2\",\"course_id\":\"4\",\"option_ids\":[null],\"transportation_expense\":\"15\",\"commission\":\"0\",\"_token\":\"0QAu7fnG9yiDV3z7Q1RRhOWzSvulqGu5VNRm4k99\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-05 18:49:07','2023-02-05 18:49:07'),(445,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:49:13','2023-02-05 18:49:13'),(446,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-05 18:50:16','2023-02-05 18:50:16'),(447,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"3\",\"course_id\":\"1\",\"option_ids\":[null],\"transportation_expense\":\"12\",\"commission\":\"0\",\"_token\":\"0QAu7fnG9yiDV3z7Q1RRhOWzSvulqGu5VNRm4k99\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-05 18:50:35','2023-02-05 18:50:35'),(448,1,'admin/sales','GET','172.27.0.1','[]','2023-02-05 18:50:38','2023-02-05 18:50:38'),(449,1,'admin/sales','GET','172.27.0.1','[]','2023-02-06 02:20:26','2023-02-06 02:20:26'),(450,1,'admin','GET','172.27.0.1','[]','2023-02-08 00:26:37','2023-02-08 00:26:37'),(451,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:26:47','2023-02-08 00:26:47'),(452,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:26:50','2023-02-08 00:26:50'),(453,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:27:28','2023-02-08 00:27:28'),(454,1,'admin/customers','GET','172.27.0.1','[]','2023-02-08 00:28:15','2023-02-08 00:28:15'),(455,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:28:22','2023-02-08 00:28:22'),(456,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:28:24','2023-02-08 00:28:24'),(457,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:29:21','2023-02-08 00:29:21'),(458,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:53:52','2023-02-08 00:53:52'),(459,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:54:20','2023-02-08 00:54:20'),(460,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:54:50','2023-02-08 00:54:50'),(461,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 00:59:07','2023-02-08 00:59:07'),(462,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 01:00:47','2023-02-08 01:00:47'),(463,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 01:24:05','2023-02-08 01:24:05'),(464,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:22:27','2023-02-08 02:22:27'),(465,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:22:55','2023-02-08 02:22:55'),(466,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:23:33','2023-02-08 02:23:33'),(467,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:24:44','2023-02-08 02:24:44'),(468,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:26:47','2023-02-08 02:26:47'),(469,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:28:05','2023-02-08 02:28:05'),(470,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:30:51','2023-02-08 02:30:51'),(471,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:32:19','2023-02-08 02:32:19'),(472,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:32:42','2023-02-08 02:32:42'),(473,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:37:45','2023-02-08 02:37:45'),(474,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:39:06','2023-02-08 02:39:06'),(475,1,'admin','GET','172.27.0.1','[]','2023-02-08 02:40:03','2023-02-08 02:40:03'),(476,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 02:40:13','2023-02-08 02:40:13'),(477,1,'admin/auth/menu/18/edit','GET','172.27.0.1','[]','2023-02-08 02:41:19','2023-02-08 02:41:19'),(478,1,'admin','GET','172.27.0.1','[]','2023-02-08 02:41:34','2023-02-08 02:41:34'),(479,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:41:41','2023-02-08 02:41:41'),(480,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:41:44','2023-02-08 02:41:44'),(481,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:43:15','2023-02-08 02:43:15'),(482,1,'admin/sales/3/edit','GET','172.27.0.1','[]','2023-02-08 02:47:49','2023-02-08 02:47:49'),(483,1,'admin/sales/3','PUT','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"3\",\"course_id\":\"1\",\"appoint\":\"7\",\"option_ids\":[null],\"transportation_expense\":\"12\",\"commission\":\"0\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-08 02:48:19','2023-02-08 02:48:19'),(484,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 02:48:22','2023-02-08 02:48:22'),(485,1,'admin/aggregation','GET','172.27.0.1','[]','2023-02-08 03:12:39','2023-02-08 03:12:39'),(486,1,'admin/aggregation','GET','172.27.0.1','[]','2023-02-08 03:14:17','2023-02-08 03:14:17'),(487,1,'admin/aggregation','GET','172.27.0.1','[]','2023-02-08 03:14:57','2023-02-08 03:14:57'),(488,1,'admin/aggregation','GET','172.27.0.1','[]','2023-02-08 03:16:04','2023-02-08 03:16:04'),(489,1,'admin/aggregation','GET','172.27.0.1','[]','2023-02-08 03:16:29','2023-02-08 03:16:29'),(490,1,'admin','GET','172.27.0.1','[]','2023-02-08 03:31:15','2023-02-08 03:31:15'),(491,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 03:31:23','2023-02-08 03:31:23'),(492,1,'admin/sales/1/edit','GET','172.27.0.1','[]','2023-02-08 03:31:50','2023-02-08 03:31:50'),(493,1,'admin','GET','172.27.0.1','[]','2023-02-08 03:33:45','2023-02-08 03:33:45'),(494,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 03:33:53','2023-02-08 03:33:53'),(495,1,'admin/sales/1/edit','GET','172.27.0.1','[]','2023-02-08 03:34:08','2023-02-08 03:34:08'),(496,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 12:36:41','2023-02-08 12:36:41'),(497,1,'admin/sales/1/edit','GET','172.27.0.1','[]','2023-02-08 12:36:53','2023-02-08 12:36:53'),(498,1,'admin/sales/1','PUT','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"1\",\"service_datetime\":\"2023-02-08 10:00:00\",\"course_id\":\"3\",\"appoint\":\"6\",\"option_ids\":[\"8\",\"9\",null],\"transportation_expense\":\"13\",\"commission\":\"0\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-08 12:37:17','2023-02-08 12:37:17'),(499,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 12:37:20','2023-02-08 12:37:20'),(500,1,'admin/sales/3/edit','GET','172.27.0.1','[]','2023-02-08 12:37:41','2023-02-08 12:37:41'),(501,1,'admin/sales/3','PUT','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"3\",\"service_datetime\":\"2023-02-09 12:00:00\",\"course_id\":\"1\",\"appoint\":\"7\",\"option_ids\":[null],\"transportation_expense\":\"12\",\"commission\":\"0\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-08 12:37:58','2023-02-08 12:37:58'),(502,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 12:38:00','2023-02-08 12:38:00'),(503,1,'admin/sales/3/edit','GET','172.27.0.1','[]','2023-02-08 12:38:08','2023-02-08 12:38:08'),(504,1,'admin/sales/3','PUT','172.27.0.1','{\"cast_id\":\"1\",\"customer_id\":\"3\",\"service_datetime\":\"2023-02-09 12:30:00\",\"course_id\":\"1\",\"appoint\":\"7\",\"option_ids\":[null],\"transportation_expense\":\"12\",\"commission\":\"0\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-08 12:38:19','2023-02-08 12:38:19'),(505,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 12:38:22','2023-02-08 12:38:22'),(506,1,'admin/sales/2/edit','GET','172.27.0.1','[]','2023-02-08 12:38:29','2023-02-08 12:38:29'),(507,1,'admin/sales/2','PUT','172.27.0.1','{\"cast_id\":\"2\",\"customer_id\":\"2\",\"service_datetime\":\"2023-02-08 15:00:00\",\"course_id\":\"4\",\"appoint\":\"6\",\"option_ids\":[null],\"transportation_expense\":\"15\",\"commission\":\"0\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-08 12:38:56','2023-02-08 12:38:56'),(508,1,'admin/sales','GET','172.27.0.1','[]','2023-02-08 12:39:01','2023-02-08 12:39:01'),(509,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 12:43:25','2023-02-08 12:43:25'),(510,1,'admin/auth/menu/18/edit','GET','172.27.0.1','[]','2023-02-08 12:43:37','2023-02-08 12:43:37'),(511,1,'admin/auth/menu/18','PUT','172.27.0.1','{\"parent_id\":\"0\",\"title\":\"\\u58f2\\u4e0a\\u7ba1\\u7406\",\"icon\":\"fa-money\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2023-02-08 12:43:51','2023-02-08 12:43:51'),(512,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 12:43:53','2023-02-08 12:43:53'),(513,1,'admin/auth/menu/18/edit','GET','172.27.0.1','[]','2023-02-08 12:44:01','2023-02-08 12:44:01'),(514,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 12:44:10','2023-02-08 12:44:10'),(515,1,'admin/auth/menu','POST','172.27.0.1','{\"parent_id\":\"0\",\"title\":\"\\u30b5\\u30de\\u30ea\\u30fc\",\"icon\":\"fa-archive\",\"uri\":\"summary\",\"roles\":[null],\"permission\":null,\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\"}','2023-02-08 12:45:33','2023-02-08 12:45:33'),(516,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 12:45:36','2023-02-08 12:45:36'),(517,1,'admin/auth/menu/19/edit','GET','172.27.0.1','[]','2023-02-08 12:46:48','2023-02-08 12:46:48'),(518,1,'admin/auth/menu/19','PUT','172.27.0.1','{\"parent_id\":\"18\",\"title\":\"\\u30b5\\u30de\\u30ea\\u30fc\",\"icon\":\"fa-archive\",\"uri\":\"summary\",\"roles\":[null],\"permission\":null,\"_token\":\"1QVtiy4ty72PWdAcZLyqlKtaGLPBU6IrATi2iEbx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}','2023-02-08 12:47:07','2023-02-08 12:47:07'),(519,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-08 12:47:16','2023-02-08 12:47:16'),(520,1,'admin/summary','GET','172.27.0.1','[]','2023-02-08 12:49:10','2023-02-08 12:49:10'),(521,1,'admin/summary','GET','172.27.0.1','[]','2023-02-08 13:10:15','2023-02-08 13:10:15'),(522,1,'admin/summary','GET','172.27.0.1','[]','2023-02-08 13:12:48','2023-02-08 13:12:48'),(523,1,'admin','GET','172.27.0.1','[]','2023-02-09 11:40:43','2023-02-09 11:40:43'),(524,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 11:41:20','2023-02-09 11:41:20'),(525,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 11:42:07','2023-02-09 11:42:07'),(526,1,'admin','GET','172.27.0.1','[]','2023-02-09 11:59:58','2023-02-09 11:59:58'),(527,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-09 12:00:11','2023-02-09 12:00:11'),(528,1,'admin/auth/menu/18/edit','GET','172.27.0.1','[]','2023-02-09 12:00:30','2023-02-09 12:00:30'),(529,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-09 12:00:35','2023-02-09 12:00:35'),(530,1,'admin/auth/menu','POST','172.27.0.1','{\"parent_id\":\"18\",\"title\":\"\\u58f2\\u4e0a\\u767b\\u9332\",\"icon\":\"fa-bank\",\"uri\":\"sales\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"PzDM4i6hto6l0jri8pcX2aTaXnMHVSvI3VqPZapr\"}','2023-02-09 12:02:00','2023-02-09 12:02:00'),(531,1,'admin/auth/menu','GET','172.27.0.1','[]','2023-02-09 12:02:03','2023-02-09 12:02:03'),(532,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:02:10','2023-02-09 12:02:10'),(533,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:24:28','2023-02-09 12:24:28'),(534,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:24:34','2023-02-09 12:24:34'),(535,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:24:54','2023-02-09 12:24:54'),(536,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:25:01','2023-02-09 12:25:01'),(537,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:25:05','2023-02-09 12:25:05'),(538,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:25:35','2023-02-09 12:25:35'),(539,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:25:39','2023-02-09 12:25:39'),(540,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:27:13','2023-02-09 12:27:13'),(541,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:27:21','2023-02-09 12:27:21'),(542,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:27:25','2023-02-09 12:27:25'),(543,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:27:59','2023-02-09 12:27:59'),(544,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:28:01','2023-02-09 12:28:01'),(545,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:33:02','2023-02-09 12:33:02'),(546,1,'admin','GET','172.27.0.1','[]','2023-02-09 12:33:42','2023-02-09 12:33:42'),(547,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:33:49','2023-02-09 12:33:49'),(548,1,'admin/sales/create','GET','172.27.0.1','[]','2023-02-09 12:33:56','2023-02-09 12:33:56'),(549,1,'admin/sales','POST','172.27.0.1','{\"cast_id\":\"3\",\"customer_id\":\"3\",\"service_datetime\":\"2023-02-09 21:00:00\",\"course_id\":\"2\",\"appoint\":\"6\",\"option_ids\":[\"9\",\"10\",null],\"transportation_expense\":\"13\",\"commission\":\"0\",\"_token\":\"PzDM4i6hto6l0jri8pcX2aTaXnMHVSvI3VqPZapr\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/sales\"}','2023-02-09 12:34:30','2023-02-09 12:34:30'),(550,1,'admin/sales','GET','172.27.0.1','[]','2023-02-09 12:34:32','2023-02-09 12:34:32'),(551,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:34:40','2023-02-09 12:34:40'),(552,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:38:55','2023-02-09 12:38:55'),(553,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:42:32','2023-02-09 12:42:32'),(554,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:53:53','2023-02-09 12:53:53'),(555,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:54:29','2023-02-09 12:54:29'),(556,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:54:49','2023-02-09 12:54:49'),(557,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 12:55:09','2023-02-09 12:55:09'),(558,1,'admin/customers','GET','172.27.0.1','[]','2023-02-09 12:59:48','2023-02-09 12:59:48'),(559,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 13:00:01','2023-02-09 13:00:01'),(560,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 13:00:04','2023-02-09 13:00:04'),(561,1,'admin/summary','GET','172.27.0.1','[]','2023-02-09 23:17:54','2023-02-09 23:17:54'),(562,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 03:28:07','2023-02-10 03:28:07'),(563,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 03:29:48','2023-02-10 03:29:48'),(564,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 03:33:25','2023-02-10 03:33:25'),(565,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 03:38:19','2023-02-10 03:38:19'),(566,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 03:38:42','2023-02-10 03:38:42'),(567,1,'admin','GET','172.27.0.1','[]','2023-02-10 13:09:25','2023-02-10 13:09:25'),(568,1,'admin','GET','172.27.0.1','[]','2023-02-10 13:09:26','2023-02-10 13:09:26'),(569,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 13:09:38','2023-02-10 13:09:38'),(570,1,'admin','GET','172.27.0.1','[]','2023-02-10 13:09:44','2023-02-10 13:09:44'),(571,1,'admin','GET','172.27.0.1','[]','2023-02-10 13:13:40','2023-02-10 13:13:40'),(572,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 13:13:47','2023-02-10 13:13:47'),(573,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 13:13:51','2023-02-10 13:13:51'),(574,1,'admin/summary','GET','172.27.0.1','[]','2023-02-10 13:19:06','2023-02-10 13:19:06'),(575,1,'admin','GET','172.27.0.1','[]','2023-02-11 02:32:22','2023-02-11 02:32:22'),(576,1,'admin','GET','172.27.0.1','[]','2023-02-11 02:32:28','2023-02-11 02:32:28'),(577,1,'admin/summary','GET','172.27.0.1','[]','2023-02-11 02:32:48','2023-02-11 02:32:48'),(578,1,'admin/summary','GET','172.27.0.1','[]','2023-02-11 02:32:56','2023-02-11 02:32:56'),(579,1,'admin/sales','GET','172.20.0.1','[]','2023-02-11 05:08:53','2023-02-11 05:08:53'),(580,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:09:12','2023-02-11 05:09:12'),(581,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:09:18','2023-02-11 05:09:18'),(582,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:16:26','2023-02-11 05:16:26'),(583,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:34:51','2023-02-11 05:34:51'),(584,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:38:18','2023-02-11 05:38:18'),(585,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:39:30','2023-02-11 05:39:30'),(586,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:40:12','2023-02-11 05:40:12'),(587,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:40:58','2023-02-11 05:40:58'),(588,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:43:45','2023-02-11 05:43:45'),(589,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:47:11','2023-02-11 05:47:11'),(590,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:48:13','2023-02-11 05:48:13'),(591,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 05:55:02','2023-02-11 05:55:02'),(592,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:17:00','2023-02-11 06:17:00'),(593,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:17:51','2023-02-11 06:17:51'),(594,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:18:50','2023-02-11 06:18:50'),(595,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:28:31','2023-02-11 06:28:31'),(596,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:31:37','2023-02-11 06:31:37'),(597,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:37:26','2023-02-11 06:37:26'),(598,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:39:03','2023-02-11 06:39:03'),(599,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:40:37','2023-02-11 06:40:37'),(600,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:51:36','2023-02-11 06:51:36'),(601,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:53:11','2023-02-11 06:53:11'),(602,1,'admin/auth/menu','GET','172.20.0.1','[]','2023-02-11 06:54:15','2023-02-11 06:54:15'),(603,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:57:19','2023-02-11 06:57:19'),(604,1,'admin/summary','GET','172.20.0.1','[]','2023-02-11 06:57:48','2023-02-11 06:57:48'),(605,1,'admin','GET','172.20.0.1','[]','2023-02-11 06:58:29','2023-02-11 06:58:29'),(606,1,'admin','GET','172.20.0.1','[]','2023-02-11 06:58:38','2023-02-11 06:58:38'),(607,1,'admin/sales','GET','172.20.0.1','[]','2023-02-11 06:58:56','2023-02-11 06:58:56'),(608,1,'admin/sales','GET','172.20.0.1','[]','2023-02-11 10:57:17','2023-02-11 10:57:17');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL),(1,8,NULL,NULL),(1,9,NULL,NULL),(1,10,NULL,NULL),(1,11,NULL,NULL),(1,12,NULL,NULL),(1,13,NULL,NULL),(1,14,NULL,NULL),(1,15,NULL,NULL),(1,17,NULL,NULL),(1,18,NULL,NULL),(1,20,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2023-01-18 08:15:45','2023-01-18 08:15:45');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$yHmwwFM8KtZ295sZqjPBCuOPEMEwl4HKm2beZUzuvJw0vuyC0jhru','Administrator',NULL,'pAlee0GGEx57FJ8O0z2G5oVAZrNh7mzqLr4074ZVPgVqTHbcvnf49ZS1DtVI','2023-01-18 08:15:45','2023-01-18 08:15:45');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_option_compatibles`
--

DROP TABLE IF EXISTS `cast_option_compatibles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_option_compatibles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cast_id` int NOT NULL,
  `option_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_option_compatibles`
--

LOCK TABLES `cast_option_compatibles` WRITE;
/*!40000 ALTER TABLE `cast_option_compatibles` DISABLE KEYS */;
INSERT INTO `cast_option_compatibles` VALUES (1,1,8,'○','2023-01-30 08:52:13','2023-01-30 08:52:13'),(2,1,9,'☓','2023-01-30 08:52:48','2023-01-30 08:53:46'),(3,1,10,'△','2023-01-30 08:53:10','2023-01-30 08:53:10');
/*!40000 ALTER TABLE `cast_option_compatibles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_profile`
--

DROP TABLE IF EXISTS `cast_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_profile` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `bust` int NOT NULL,
  `waist` int NOT NULL,
  `hip` int NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `one_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_profile`
--

LOCK TABLES `cast_profile` WRITE;
/*!40000 ALTER TABLE `cast_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `cast_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_profiles`
--

DROP TABLE IF EXISTS `cast_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `bust` int NOT NULL,
  `waist` int NOT NULL,
  `hip` int NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `one_word` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tall` int NOT NULL,
  `blad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pictures` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_profiles`
--

LOCK TABLES `cast_profiles` WRITE;
/*!40000 ALTER TABLE `cast_profiles` DISABLE KEYS */;
INSERT INTO `cast_profiles` VALUES (1,'まっつん',30,129,129,129,'男性','よろしくおねがいします。','よろしくおねがいします。','2023-01-18 13:01:16','2023-01-26 13:03:52',172,'O','','[\"files\\/65bfd03a2d0226146d22876a6fe02732.png\",\"files\\/7b7009751fbc9e02dc19bbe6701837af.png\",\"files\\/259a65aeacab199e3ad9d28af0365642.jpg\"]',''),(2,'ゆうこ',22,60,50,60,'女性','こんにちは','こんにちは','2023-01-19 11:35:51','2023-01-19 11:35:51',152,'A','','',''),(3,'あみ',21,100,100,100,'女性','よろしくおねがいします。','よろしくおねがいします。','2023-01-20 13:56:29','2023-01-20 13:56:29',155,'B','','',''),(4,'まき',25,55,55,55,'女性','よろしくおねがいします。','よろしくおねがいします。','2023-01-20 13:57:23','2023-01-20 13:57:23',152,'AB','','',''),(5,'ちはる',19,111,111,111,'女性','よろしくおねがいします。','よろしくおねがいします。','2023-01-20 13:58:19','2023-01-20 13:58:19',165,'O','','',''),(6,'めい',19,60,60,60,'女性','よろしくおねがいします。','よろしくおねがいします','2023-01-21 08:34:07','2023-01-21 08:34:07',150,'A','','',''),(7,'まい',20,100,100,100,'女性','よろしくおねがいします。','よろしくおねがいします。','2023-01-21 08:35:22','2023-01-21 08:35:22',148,'O','','','');
/*!40000 ALTER TABLE `cast_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_shifts`
--

DROP TABLE IF EXISTS `cast_shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_shifts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cast_id` int NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_shifts`
--

LOCK TABLES `cast_shifts` WRITE;
/*!40000 ALTER TABLE `cast_shifts` DISABLE KEYS */;
INSERT INTO `cast_shifts` VALUES (1,1,'2023-01-24 10:00:00','2023-01-24 18:00:00','2023-01-22 13:41:55','2023-01-22 13:41:55'),(2,2,'2023-01-24 11:00:00','2023-01-24 22:00:00','2023-01-23 03:32:53','2023-01-23 03:32:53'),(3,4,'2023-01-24 23:00:00','2023-01-25 05:00:00','2023-01-23 03:49:00','2023-01-23 03:49:00'),(4,3,'2023-01-25 12:00:00','2023-01-25 14:00:00','2023-01-23 03:50:36','2023-01-23 03:50:36'),(5,1,'2023-01-29 11:00:00','2023-01-29 19:00:00','2023-01-28 11:54:12','2023-01-28 11:54:12'),(6,1,'2023-02-01 20:00:00','2023-01-28 23:00:00','2023-01-28 11:55:14','2023-01-28 11:55:14');
/*!40000 ALTER TABLE `cast_shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_survey_answers`
--

DROP TABLE IF EXISTS `cast_survey_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_survey_answers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cast_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_survey_answers`
--

LOCK TABLES `cast_survey_answers` WRITE;
/*!40000 ALTER TABLE `cast_survey_answers` DISABLE KEYS */;
INSERT INTO `cast_survey_answers` VALUES (1,1,1,'あああああああ','2023-01-28 09:33:24','2023-01-28 09:33:24'),(2,1,2,'いいいいいいい','2023-01-28 09:33:47','2023-01-28 09:33:47'),(3,1,3,'うううううううう','2023-01-28 09:34:01','2023-01-28 09:34:01'),(4,1,4,'ええええええええええ','2023-01-28 09:34:14','2023-01-28 09:34:14'),(5,1,5,'おおおおおおおおおおお','2023-01-28 09:34:30','2023-01-28 09:34:30'),(6,1,6,'かかかかかかかか','2023-01-28 09:35:18','2023-01-28 09:35:18'),(7,1,7,'ききききききき','2023-01-28 09:35:33','2023-01-28 09:35:33'),(8,1,8,'くくくくくくくく','2023-01-28 09:35:52','2023-01-28 09:35:52'),(9,1,9,'けけけけけけ','2023-01-28 09:36:12','2023-01-28 09:36:12'),(10,1,10,'ここここここ','2023-01-28 09:36:30','2023-01-28 09:36:30');
/*!40000 ALTER TABLE `cast_survey_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_survey_questions`
--

DROP TABLE IF EXISTS `cast_survey_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_survey_questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_survey_questions`
--

LOCK TABLES `cast_survey_questions` WRITE;
/*!40000 ALTER TABLE `cast_survey_questions` DISABLE KEYS */;
INSERT INTO `cast_survey_questions` VALUES (1,'好きな男性のタイプは？','2023-01-28 09:00:32','2023-01-28 09:00:32'),(2,'趣味','2023-01-28 09:00:48','2023-01-28 09:00:48'),(3,'タバコ','2023-01-28 09:01:00','2023-01-28 09:01:00'),(4,'好きなブランドは？','2023-01-28 09:01:10','2023-01-28 09:01:10'),(5,'好きな食べ物','2023-01-28 09:01:21','2023-01-28 09:01:21'),(6,'似ている芸能人','2023-01-28 09:01:29','2023-01-28 09:01:29'),(7,'お酒','2023-01-28 09:01:42','2023-01-28 09:01:42'),(8,'自分の体で好きな所は？(チャームポイント)','2023-01-28 09:01:52','2023-01-28 09:01:52'),(9,'性感帯','2023-01-28 09:02:03','2023-01-28 09:02:03'),(10,'好きなプレイは？','2023-01-28 09:02:10','2023-01-28 09:02:10');
/*!40000 ALTER TABLE `cast_survey_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_flag` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mail_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'牧田','11122223333','東京都港区六本木２丁目３−１１',0,'2023-02-04 19:45:20','2023-02-04 19:45:20','ktwriter43@gmail.com'),(2,'横山','22233334444','アパホテル〈六本木SIX〉',0,'2023-02-04 19:46:31','2023-02-04 19:46:31',NULL),(3,'飯田','33344445555','ダイワロイネットホテル 西新宿',1,'2023-02-04 19:47:52','2023-02-04 19:47:52',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_category_master`
--

DROP TABLE IF EXISTS `menu_category_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_category_master` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_rate` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_category_master`
--

LOCK TABLES `menu_category_master` WRITE;
/*!40000 ALTER TABLE `menu_category_master` DISABLE KEYS */;
INSERT INTO `menu_category_master` VALUES (1,'コース',40.00,'2023-01-22 01:12:01','2023-01-22 01:12:01'),(2,'指名料',100.00,'2023-01-22 01:12:58','2023-01-22 01:12:58'),(3,'オプション',50.00,'2023-01-22 01:13:58','2023-01-22 01:13:58'),(4,'交通費',0.00,'2023-01-22 01:14:32','2023-01-22 01:14:32');
/*!40000 ALTER TABLE `menu_category_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'60分',1,28000,'2023-01-22 02:17:09','2023-01-22 02:17:09'),(2,'90分',1,38000,'2023-01-22 02:17:48','2023-01-22 02:17:48'),(3,'120分',1,48000,'2023-01-22 02:18:16','2023-01-22 02:18:16'),(4,'150分',1,65000,'2023-01-22 02:18:43','2023-01-22 02:18:43'),(5,'180分',1,82000,'2023-01-22 02:19:22','2023-01-22 02:19:22'),(6,'ネット指名',2,2000,'2023-01-22 03:24:29','2023-01-22 03:24:29'),(7,'本指名',2,3000,'2023-01-22 03:25:34','2023-01-22 03:25:34'),(8,'ローター',3,2000,'2023-01-29 10:43:05','2023-01-29 10:43:05'),(9,'パンスト',3,2000,'2023-01-29 10:43:32','2023-01-29 10:43:32'),(10,'バイブ',3,3000,'2023-01-29 10:43:54','2023-01-29 10:43:54'),(11,'電マ',3,5000,'2023-01-29 10:44:11','2023-01-29 10:44:11'),(12,'新宿区',4,0,'2023-02-04 22:28:29','2023-02-04 22:28:29'),(13,'渋谷区・中野区',4,2000,'2023-02-04 22:29:13','2023-02-04 22:29:13'),(14,'品川区・杉並区・世田谷区・千代田区・中央区・豊島区・文京区・港区・目黒区',4,2000,'2023-02-04 22:29:57','2023-02-04 22:29:57'),(15,'板橋区・台東区・練馬区',4,3000,'2023-02-04 22:30:39','2023-02-04 22:30:39'),(16,'足立区・江戸川区・大田区・葛飾区',4,5000,'2023-02-04 22:33:28','2023-02-04 22:33:28');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2019_08_19_000000_create_failed_jobs_table',1),(5,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2023_01_18_091224_create_cast_profile',2),(7,'2023_01_18_091224_create_cast_profiles',3),(8,'2023_01_19_091419_add_tall_blad_cast_profiles',4),(9,'2023_01_21_104814_create_cast_shifts',5),(10,'2023_01_21_115228_create_menus',5),(11,'2023_01_21_120145_create_menu_category_master',6),(12,'2023_01_22_131141_create_cast_shifts',7),(13,'2023_01_25_125402_add_cast_profies_profile_images',8),(14,'2023_01_25_125402_add_pictures',9),(15,'2023_01_28_085012_create_cast_survey_questions',10),(16,'2023_01_28_091656_create_cast_survey_answers',11),(17,'2023_01_28_112853_add_column_shop_comment_cast_profiles',12),(18,'2023_01_29_105302_create_cast_option_compatibles',13),(19,'2023_01_30_130733_create_customers',14),(20,'2023_01_30_131830_add_column_create_customers',15),(21,'2023_02_05_050907_create_table_sales',16),(22,'2023_02_06_113301_add_column_sales_destination',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cast_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `service_datetime` timestamp NULL DEFAULT NULL,
  `course_id` bigint unsigned NOT NULL,
  `appoint` bigint unsigned NOT NULL DEFAULT '6',
  `option_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportation_expense` int NOT NULL,
  `commission` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,1,'2023-02-08 01:00:00',3,6,'8,9',13,0,'2023-02-05 00:34:55','2023-02-08 12:37:18',NULL),(2,2,2,'2023-02-08 06:00:00',4,6,'',15,0,'2023-02-05 18:49:08','2023-02-08 12:38:57',NULL),(3,1,3,'2023-02-09 03:30:00',1,7,'',12,0,'2023-02-05 18:50:36','2023-02-08 12:38:20',NULL),(4,3,3,'2023-02-09 12:00:00',2,6,'9,10',13,0,'2023-02-09 12:34:30','2023-02-09 12:34:30',NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-11 21:51:10
