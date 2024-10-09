-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: botble
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'w1EJsVj1bT2O3LEDbVDplED1oXrD5JJE',1,'2024-09-24 04:31:51','2024-09-24 04:31:51','2024-09-24 04:31:51');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `raw_content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `blocks_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (1,'Dale Bartoletti','dale-bartoletti','Enim beatae recusandae ut vel ipsa enim.','Harum consequatur sed temporibus. Quo a eos veritatis hic recusandae perferendis. Optio vitae necessitatibus velit et maxime in excepturi. Id aliquam enim voluptatem placeat sint et assumenda odit. Veniam qui nihil distinctio temporibus sed. Veniam quisquam molestias quas ratione dolore tempore optio. Mollitia blanditiis voluptatem quam sapiente mollitia.','published',NULL,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL),(2,'Aliya Sipes IV','aliya-sipes-iv','Sed nihil excepturi quo voluptate voluptatibus.','Vero consequatur alias molestias modi numquam non sit. Et dolor asperiores non corporis ipsum. Et eaque ab vel molestiae consequatur ex. Eligendi unde commodi dignissimos perferendis delectus aut sint. Rerum itaque itaque accusantium odit odit. Aspernatur optio omnis aliquid laboriosam eligendi reiciendis et aut. Debitis iure quis aut sit. Expedita animi facere veritatis a culpa.','published',NULL,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL),(3,'Cesar Schmitt','cesar-schmitt','Et enim repellat et provident autem qui.','Ducimus necessitatibus debitis numquam soluta repudiandae. Nihil ut quia molestiae et laudantium aut aspernatur. Distinctio qui officiis minima temporibus enim. Ut et blanditiis et mollitia minima qui. Aut est ad aliquam. Accusantium qui ad blanditiis maxime occaecati at dolorum sit. Error non voluptatem sunt. Incidunt vitae nulla deleniti quos inventore accusamus. Quis ut illum et iste. Et officia et itaque officia consequatur.','published',NULL,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL),(4,'Kameron DuBuque','kameron-dubuque','Veritatis facere fugiat distinctio quis.','Inventore et ea dolorum id exercitationem. Consequatur sed ducimus voluptates exercitationem magnam. Nam et reprehenderit alias. Sint aut dolor occaecati placeat. Et iure repellat est impedit blanditiis. Ad rem numquam incidunt aut incidunt quia sed nam. Molestiae delectus provident quis libero soluta ut facilis vero. Sunt repudiandae iure est impedit consequatur quis atque.','published',NULL,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL),(5,'Amara Romaguera','amara-romaguera','Laudantium numquam commodi ut sint.','Ullam odio ducimus iste maxime nostrum et cumque. Vero sint hic perferendis consequatur hic voluptates et. Molestias natus illo impedit. Ipsa aut quidem autem velit delectus itaque. Deserunt delectus quos odit molestiae voluptatem cumque. Iste non perferendis laboriosam aut id sint aliquid. Consequatur sapiente dolor quasi ratione odit laborum. Quidem in quae provident exercitationem et architecto aperiam. Repellendus officia aut et eaque voluptatem.','published',NULL,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks_translations`
--

DROP TABLE IF EXISTS `blocks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocks_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `raw_content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`blocks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks_translations`
--

LOCK TABLES `blocks_translations` WRITE;
/*!40000 ALTER TABLE `blocks_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Artificial Intelligence',0,'Illum qui ut est quasi vitae autem et. At cupiditate voluptas temporibus quas. Temporibus totam architecto ut quae facere sunt blanditiis. Doloremque quae inventore amet atque nostrum commodi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(2,'Cybersecurity',0,'Earum accusamus voluptas et voluptatem aperiam. Nam ad et blanditiis deserunt. Laboriosam omnis quis perferendis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(3,'Blockchain Technology',0,'Saepe aut rerum unde ullam. Aut quas consequatur ducimus illo qui. Odio est quo tempora fugiat. Qui eveniet nesciunt labore voluptates. Voluptatem voluptas exercitationem ea veniam sit a vel.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(4,'5G and Connectivity',0,'Numquam laborum magni quod quia. Nihil sapiente voluptas reprehenderit. Voluptatibus perferendis autem id qui inventore quo esse. Omnis rerum iste eligendi et. Ullam vel error facilis aut inventore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(5,'Augmented Reality (AR)',0,'Nulla est ut nihil odit ut. At enim quidem omnis natus magni harum. Enim ut sit debitis et. Cupiditate totam et praesentium eum inventore et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(6,'Green Technology',0,'Recusandae et in est laboriosam maiores excepturi voluptatem. Omnis ut aut nostrum cupiditate cum. Magnam qui eos distinctio omnis maiores. Ut iusto rerum rerum illo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(7,'Quantum Computing',0,'Eius molestiae alias voluptatem qui. Repellat ipsum modi ab reiciendis qui consequatur. Eveniet minima repudiandae est et sed aperiam beatae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(8,'Edge Computing',0,'Ut vitae architecto beatae. Quo officiis velit adipisci quis. Dicta sint vel repudiandae modi impedit esse.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-09-24 04:31:52','2024-09-24 04:31:52');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Juvenal Ruecker','carmela62@example.com','(346) 490-7182','915 Adeline Underpass\nPort Edwina, MO 38857','Eos quam dolorem ut ut et accusantium.','Velit laudantium quia magni vitae nam minima. Eum ea accusamus omnis autem minima. Accusantium molestias placeat iure blanditiis. Hic porro inventore quia quia. Ipsa aut laboriosam ea quae tempore debitis. Quam et placeat tenetur. Modi saepe placeat aut omnis perspiciatis. Sit aliquid consequatur quasi vel. Tempore aliquid voluptates vero ut. Aut non veniam laboriosam magnam omnis. Iure fugit labore quia sit. Id eos at provident quia. Consequatur sit aut vitae quis rerum laudantium.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(2,'Raegan Zboncak','marjorie.boyle@example.org','862-903-5645','626 Prince Mount Apt. 379\nMarianobury, MT 75430-8744','Quis est est nulla et iste voluptas consequatur.','Quia optio aspernatur voluptatem aut non sunt. Vitae optio laudantium molestias. Exercitationem ipsum qui dolorum quo. Odit voluptates quis porro incidunt dolorem et nulla nesciunt. Similique inventore omnis est sit voluptatem dignissimos dolor. Non iste omnis nesciunt et quae nisi rerum.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(3,'Jacklyn Bogisich','ikerluke@example.org','(515) 288-9963','48209 Bahringer Rue Suite 871\nNorth Candida, MS 29217-1703','Voluptatem expedita qui voluptas.','Laborum in ea laboriosam et enim quos. Ea ut tempore voluptate nesciunt ut autem. Et fugiat assumenda nemo quia. Quas laboriosam optio consectetur ex minima laboriosam. Et impedit est ex reprehenderit sit quisquam. Vel nihil architecto totam modi distinctio quia est. Et maiores harum cum. Ipsa maxime in soluta unde qui reiciendis quis. Quidem inventore voluptas mollitia ipsam eos non occaecati.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(4,'Ramiro Schaden','cruickshank.nasir@example.com','+1-551-440-8039','59126 Krajcik Heights Apt. 469\nNorth Percy, MN 89091','Assumenda autem incidunt adipisci deserunt.','Ut recusandae labore quisquam earum. Est voluptates dolor perspiciatis molestiae non velit aut illo. Sed delectus ex neque eaque hic itaque. Enim earum eaque occaecati est. Maxime voluptatem non saepe dolores omnis. Enim at doloremque hic quia reiciendis et. Non vitae quibusdam autem ullam aliquam et. Temporibus eligendi facilis exercitationem rerum sequi nobis et. Animi est eius nisi aut excepturi. Dolor vero eius tenetur eum recusandae a.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(5,'Orion Koss','fschulist@example.com','657-256-2758','703 O\'Conner Route\nNew Ellie, MN 98118','Quod sed est veritatis eveniet quis.','Magni ipsam explicabo omnis iure. Aut ea assumenda architecto et quia. Non est nesciunt consequatur. Voluptatibus saepe et officia et. Natus inventore dolores occaecati et blanditiis quo aut. Voluptatem quia ipsa quae provident voluptas soluta maxime. Vitae ut perferendis et. Laudantium suscipit id aut aut in placeat. Est et sunt sit rerum officia dicta. Aut nobis et et soluta dolore quo. Rem libero blanditiis ullam exercitationem.',NULL,'read','2024-09-24 04:31:56','2024-09-24 04:31:56'),(6,'Jenifer Fadel','kulas.luz@example.org','(518) 652-5295','458 Jerad Parkway\nLavontown, OR 46652-2576','Rem quia ut placeat libero tempora fugiat.','Aut itaque odio perspiciatis accusantium. Officia ratione fugiat at repudiandae commodi. Et cupiditate et doloribus quibusdam. Ullam sed quis unde ut. Praesentium velit et sunt vel nam commodi odit. Pariatur vitae sunt nobis porro sint laboriosam aut. Aut qui et ipsa error eaque possimus. Quo veniam id est impedit iure perspiciatis. Earum inventore ea quis voluptas ut. Totam ut beatae corrupti eaque consequuntur. Assumenda pariatur hic ut. Debitis et hic fugiat ipsum. Et officia qui voluptas.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(7,'Dr. Braden Braun III','edward.bernhard@example.com','(364) 974-0742','76863 Spencer Harbors Apt. 249\nNew Claire, WI 90822','Aut necessitatibus nam debitis numquam.','Voluptatem facilis veritatis commodi saepe perspiciatis esse nemo. Molestias provident porro dolor voluptas dignissimos. Perspiciatis commodi deserunt dolore. Vel ex et tempore similique doloremque laborum eos in. Dolorum iste suscipit sed eum sit omnis eveniet. Tempore culpa impedit mollitia. Modi nesciunt et sequi enim. Dignissimos quibusdam quam saepe sint unde dicta veritatis. Voluptas alias repellendus rerum ad deserunt enim cupiditate. Rerum quaerat magni ea rem dolore quod.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(8,'Drew Howell I','tpouros@example.org','(475) 372-3879','2712 Liliana Trafficway Apt. 127\nJoyport, AL 98967-0727','Et ducimus illum laborum esse illum.','Dolore sed vitae neque rerum veritatis error sit. Non esse aut iste autem autem placeat consectetur. Recusandae porro quia commodi. Consequatur consequuntur quo impedit repellat quae perferendis consequatur. Enim unde sunt vel architecto aliquam. Quibusdam officiis qui ut voluptas harum esse voluptas velit. Nobis nihil distinctio aut voluptatem error mollitia ut.',NULL,'read','2024-09-24 04:31:56','2024-09-24 04:31:56'),(9,'Trinity Volkman','kathryn.kassulke@example.com','+1-410-359-0087','447 Kihn Forks Suite 889\nNorth Lisaburgh, NH 74535-8782','Ut asperiores sequi maiores et aut optio.','Perspiciatis reiciendis eius cum quam quos sit facilis. Nostrum eaque a non mollitia fugiat quod repellat. Nostrum consequuntur sunt iusto quo praesentium sunt. Neque labore assumenda sit quo exercitationem a earum labore. Accusamus laborum eius error sit eos. Id architecto repudiandae natus accusantium unde ut inventore. Iusto magnam ea asperiores facilis omnis velit repellendus.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56'),(10,'Kenna O\'Connell','gutkowski.elenor@example.com','(820) 329-0243','7282 Aubree Motorway\nUllrichton, IL 46413','Mollitia quas enim animi dicta voluptatum harum.','Earum itaque hic autem et sit. Velit hic sed perspiciatis. Laudantium consequuntur qui provident. Enim quo minus labore fugiat ea. Doloribus repellendus quas impedit quia iure consequatur maxime. Sed eius esse est beatae nostrum sapiente. Enim placeat delectus exercitationem accusamus. Id voluptatum quis accusamus labore doloremque ex. Aperiam nihil magnam animi alias.',NULL,'unread','2024-09-24 04:31:56','2024-09-24 04:31:56');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `use_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` bigint unsigned NOT NULL,
  `field_item_id` bigint unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `custom_fields_field_item_id_index` (`field_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_translations`
--

DROP TABLE IF EXISTS `custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_translations`
--

LOCK TABLES `custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `field_groups`
--

DROP TABLE IF EXISTS `field_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '0',
  `created_by` bigint unsigned DEFAULT NULL,
  `updated_by` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_groups_created_by_index` (`created_by`),
  KEY `field_groups_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_groups`
--

LOCK TABLES `field_groups` WRITE;
/*!40000 ALTER TABLE `field_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_items`
--

DROP TABLE IF EXISTS `field_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `field_group_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  `order` int DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_items_field_group_id_index` (`field_group_id`),
  KEY `field_items_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_items`
--

LOCK TABLES `field_items` WRITE;
/*!40000 ALTER TABLE `field_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `field_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Sunset','Molestiae adipisci fuga perferendis laborum culpa quos sit. Quos velit omnis aut.',1,0,'news/6.jpg',1,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(2,'Ocean Views','Odit quia quo dolores non. Autem id sunt dicta accusamus. Hic labore commodi pariatur est quibusdam. In corporis omnis nemo voluptatem quo sed.',1,0,'news/7.jpg',1,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(3,'Adventure Time','Consequuntur quam necessitatibus dolorem perspiciatis ipsum distinctio. Iste eum autem at possimus quae. Quo distinctio itaque beatae ad.',1,0,'news/8.jpg',1,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(4,'City Lights','Et nam aliquam est eos. Rerum error voluptas neque error et. Soluta vel tempora aut ad quia eius.',1,0,'news/9.jpg',1,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(5,'Dreamscape','Voluptatem natus natus dolorem accusamus. Qui tempore incidunt dolores a perferendis. Repellat perferendis voluptatem et sed voluptatem et rerum.',1,0,'news/10.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(6,'Enchanted Forest','Doloribus est quam id laudantium enim dolore. Magnam enim repellat ducimus aut aperiam. Ut amet cupiditate odio non maxime voluptatum non.',1,0,'news/11.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(7,'Golden Hour','Sit ex nemo quia doloremque est qui. Explicabo quod et est laudantium. Ut laborum aut dolores dicta. Veritatis quia quibusdam ut nemo.',0,0,'news/12.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(8,'Serenity','Nihil aliquam aut beatae et non accusamus tenetur. Iusto delectus odio sint voluptates neque. Et dolores et autem doloremque ea quia animi.',0,0,'news/13.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(9,'Eternal Beauty','Omnis veritatis animi reiciendis quia. Earum eligendi rem suscipit iure ex omnis. Ducimus voluptate alias corrupti.',0,0,'news/14.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(10,'Moonlight Magic','Minus eos id ipsa illum earum commodi atque. Numquam a dolore deserunt sed esse unde. Reiciendis iste qui autem laborum est consectetur.',0,0,'news/15.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(11,'Starry Night','Quia velit aliquid laborum tempora labore maiores. Ut incidunt veniam tempora. Quis ratione officia similique quis.',0,0,'news/16.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(12,'Hidden Gems','Corporis iure facere atque corrupti. Ducimus expedita officiis tempore quo quos labore. Placeat rem ut numquam ut et.',0,0,'news/17.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(13,'Tranquil Waters','Voluptatem voluptatum similique dolores vitae. Nesciunt aperiam dicta expedita officia. Sunt numquam aperiam temporibus molestias.',0,0,'news/18.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(14,'Urban Escape','Optio velit accusamus sequi perferendis est. Sunt qui laborum accusamus quisquam esse. Quo nobis totam eveniet inventore nihil nobis qui nam.',0,0,'news/19.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53'),(15,'Twilight Zone','Recusandae quod qui nulla dolorem distinctio ea. Corrupti iusto culpa voluptas dignissimos. Voluptas quibusdam necessitatibus earum est.',0,0,'news/20.jpg',1,'published','2024-09-24 04:31:53','2024-09-24 04:31:53');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:52','2024-09-24 04:31:52'),(2,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:52','2024-09-24 04:31:52'),(3,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:52','2024-09-24 04:31:52'),(4,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:52','2024-09-24 04:31:52'),(5,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(6,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(7,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(8,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(9,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(10,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(11,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(12,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(13,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',13,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(14,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',14,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53'),(15,'[{\"img\":\"news\\/1.jpg\",\"description\":\"Magnam et et itaque placeat temporibus qui. Dolorem sunt soluta commodi ut blanditiis quae. Reiciendis esse vel eum.\"},{\"img\":\"news\\/2.jpg\",\"description\":\"Fugiat placeat quia quis voluptatem itaque. Iure id et facilis. Qui placeat alias et maxime.\"},{\"img\":\"news\\/3.jpg\",\"description\":\"Magni commodi aut voluptate inventore quaerat neque. At commodi aperiam quod rerum.\"},{\"img\":\"news\\/4.jpg\",\"description\":\"Occaecati alias at dolor. Amet beatae saepe enim nemo in. Autem perspiciatis dolor officia nesciunt facere sit ut rem. Quae quo cum culpa.\"},{\"img\":\"news\\/5.jpg\",\"description\":\"Neque ea id nobis quasi saepe. Vero molestiae quasi debitis quisquam libero est unde.\"},{\"img\":\"news\\/6.jpg\",\"description\":\"Et provident eligendi hic impedit sint ut. Odio soluta nobis aspernatur ab corrupti. Sint harum repellendus vitae id tempora dolor.\"},{\"img\":\"news\\/7.jpg\",\"description\":\"Aliquam minima rerum ratione et commodi. Dolor natus facilis dolorem magnam. In voluptatem enim accusantium nisi minima et ex placeat.\"},{\"img\":\"news\\/8.jpg\",\"description\":\"Et qui dolorem est ea vitae dolor sunt. Et repudiandae exercitationem voluptas facilis et aperiam incidunt. Non nemo quam optio. Et vel unde quo.\"},{\"img\":\"news\\/9.jpg\",\"description\":\"Non ea aut nam expedita. Eligendi voluptatem vel repellendus similique. Voluptatum et nihil doloribus aut. Doloribus fugiat quibusdam quasi omnis.\"},{\"img\":\"news\\/10.jpg\",\"description\":\"Molestiae laboriosam deleniti voluptatem in sit. Porro magni magnam accusamus. Unde non dolorum perspiciatis.\"},{\"img\":\"news\\/11.jpg\",\"description\":\"Beatae et nihil praesentium id dignissimos odit et. Repellendus in maiores qui occaecati nemo. Et temporibus perspiciatis quia optio ex.\"},{\"img\":\"news\\/12.jpg\",\"description\":\"Voluptatem sit magnam voluptas sunt commodi sunt officiis. Nihil iste rem modi fugit omnis quod architecto repellat.\"},{\"img\":\"news\\/13.jpg\",\"description\":\"Debitis qui doloribus officia qui. Molestias cum aliquid iure molestiae saepe corporis. Earum nemo vel quo ea ut.\"},{\"img\":\"news\\/14.jpg\",\"description\":\"Sed sint cupiditate sit aut perferendis deserunt et. Sunt voluptas qui tempora nihil quam. Aut est voluptate dolores unde ipsa aut sunt.\"},{\"img\":\"news\\/15.jpg\",\"description\":\"Et iusto qui odio et. Totam voluptatem debitis molestiae. Eum perferendis velit aut provident. Facilis quaerat quia laudantium qui.\"},{\"img\":\"news\\/16.jpg\",\"description\":\"Vel suscipit dolores dolor non harum nesciunt. Sequi distinctio et aut.\"},{\"img\":\"news\\/17.jpg\",\"description\":\"Facere minima ut voluptates. Ut praesentium provident hic eligendi enim non est.\"},{\"img\":\"news\\/18.jpg\",\"description\":\"Rerum alias deserunt sit autem. Corrupti repellendus recusandae et. Tenetur praesentium quo et praesentium rerum dolorem.\"},{\"img\":\"news\\/19.jpg\",\"description\":\"Est tempore ipsam et veniam qui. Et quod assumenda facilis. Officia dignissimos sequi ut doloribus.\"},{\"img\":\"news\\/20.jpg\",\"description\":\"Laudantium quod ipsam fuga tenetur quam. Fugit ullam aperiam et dignissimos autem quae. Odio doloribus perspiciatis velit natus est aut.\"}]',15,'Botble\\Gallery\\Models\\Gallery','2024-09-24 04:31:53','2024-09-24 04:31:53');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','c646aac5b283ed0c483fe859df3a9794',1,'Botble\\Menu\\Models\\MenuLocation'),(2,'en_US','7e3988865fcbab29b731216da7cb6b62',1,'Botble\\Menu\\Models\\Menu'),(3,'en_US','4488badece67c83fe9580dda9bf36dd6',2,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(2,0,'10','10',1,'image/jpeg',9803,'news/10.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(3,0,'11','11',1,'image/jpeg',9803,'news/11.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(4,0,'12','12',1,'image/jpeg',9803,'news/12.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(5,0,'13','13',1,'image/jpeg',9803,'news/13.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(6,0,'14','14',1,'image/jpeg',9803,'news/14.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(7,0,'15','15',1,'image/jpeg',9803,'news/15.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(8,0,'16','16',1,'image/jpeg',9803,'news/16.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(9,0,'17','17',1,'image/jpeg',9803,'news/17.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(10,0,'18','18',1,'image/jpeg',9803,'news/18.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(11,0,'19','19',1,'image/jpeg',9803,'news/19.jpg','[]','2024-09-24 04:31:51','2024-09-24 04:31:51',NULL,'public'),(12,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(13,0,'20','20',1,'image/jpeg',9803,'news/20.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(14,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(15,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(16,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(17,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(18,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(19,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(20,0,'9','9',1,'image/jpeg',9803,'news/9.jpg','[]','2024-09-24 04:31:52','2024-09-24 04:31:52',NULL,'public'),(21,0,'1','1',2,'image/jpeg',9803,'members/1.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(22,0,'10','10',2,'image/jpeg',9803,'members/10.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(23,0,'11','11',2,'image/png',9803,'members/11.png','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(24,0,'2','2',2,'image/jpeg',9803,'members/2.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(25,0,'3','3',2,'image/jpeg',9803,'members/3.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(26,0,'4','4',2,'image/jpeg',9803,'members/4.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(27,0,'5','5',2,'image/jpeg',9803,'members/5.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(28,0,'6','6',2,'image/jpeg',9803,'members/6.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(29,0,'7','7',2,'image/jpeg',9803,'members/7.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(30,0,'8','8',2,'image/jpeg',9803,'members/8.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(31,0,'9','9',2,'image/jpeg',9803,'members/9.jpg','[]','2024-09-24 04:31:53','2024-09-24 04:31:53',NULL,'public'),(32,0,'favicon','favicon',3,'image/png',1122,'general/favicon.png','[]','2024-09-24 04:31:56','2024-09-24 04:31:56',NULL,'public'),(33,0,'logo','logo',3,'image/png',55709,'general/logo.png','[]','2024-09-24 04:31:56','2024-09-24 04:31:56',NULL,'public'),(34,0,'preloader','preloader',3,'image/gif',189758,'general/preloader.gif','[]','2024-09-24 04:31:57','2024-09-24 04:31:57',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2024-09-24 04:31:51','2024-09-24 04:31:51',NULL),(2,0,'members',NULL,'members',0,'2024-09-24 04:31:53','2024-09-24 04:31:53',NULL),(3,0,'general',NULL,'general',0,'2024-09-24 04:31:56','2024-09-24 04:31:56',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Jettie','Larkin',NULL,NULL,'member@gmail.com','$2y$12$5o/lFEXJMiFZLKD1u9hdFOrIRxDUoHbVAvXJP0BhdvJkSjAhUfgKy',21,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(2,'Lindsey','Mann',NULL,NULL,'bswaniawski@kshlerin.com','$2y$12$6LJ/07tV0bh6XNNmuOJmk.9sLWXT/vsm6wXGECdP45VepF9G58Sha',22,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(3,'Lucinda','Volkman',NULL,NULL,'ledner.candelario@hotmail.com','$2y$12$ivYYNzNFoBAkqTk93yNxNOKqTnTnxiblFNWepVxvKFWweipLaW2tG',23,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(4,'Danielle','Davis',NULL,NULL,'willms.vivian@bruen.com','$2y$12$kh2XwHRpVbRMF.wK4ebFoule6U.zZbF7cnNBmRYue/BKPpJy/ZzLy',24,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(5,'Brayan','Sipes',NULL,NULL,'qwaters@hotmail.com','$2y$12$9rKI233e76nxajUmH4AXgezRdy7aqEm5XdXLdAbenCrXQPzIUqNEe',25,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(6,'Lenore','Hilpert',NULL,NULL,'mueller.ashton@schoen.com','$2y$12$9ch9xkx963tHioTXBV643u5GTz.h0MU7SEEOG5ShUpU1m8OLkJVA6',26,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(7,'Zula','Vandervort',NULL,NULL,'ttowne@altenwerth.com','$2y$12$uh9E1suYWMyNwoGR30IUUOQNCL5rxcIJ7wS9RsZPoNFhsnzG3DIsK',27,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(8,'Clinton','Pollich',NULL,NULL,'reichel.ansley@fritsch.info','$2y$12$DWP9BFONm/CM0wd7zHYOUeA/haYL8mgq8FxELMwRhzafH4VOYQisK',28,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(9,'Luther','Pollich',NULL,NULL,'rasheed.buckridge@gmail.com','$2y$12$nvKhPPN7jKwbJ3ec6t/h8OfpVNCIIgnT3eFTCFrPPNk4XwCxEgHdq',29,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(10,'Litzy','Haag',NULL,NULL,'trantow.chaz@kshlerin.com','$2y$12$oi2J7oHNMkPLeREqC5ZbO.DiMCy9hOa7zimL03qxeF99bmEaCmgT6',30,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published'),(11,'John','Smith',NULL,NULL,'john.smith@botble.com','$2y$12$TqPm8sQl1RFPTrCtNXe3ROoaizzd2qHX7wsadYxMFAq5mYVKu.8Xa',31,NULL,NULL,'2024-09-24 11:31:53',NULL,NULL,'2024-09-24 04:31:53','2024-09-24 04:31:53','published');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-09-24 04:31:56','2024-09-24 04:31:56');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(2,1,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Purchase',NULL,'_blank',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(3,1,0,2,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(4,1,0,5,'Botble\\Page\\Models\\Page','/galleries',NULL,0,'Galleries',NULL,'_self',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(5,1,0,3,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(6,2,0,NULL,NULL,'https://facebook.com','ti ti-brand-facebook',1,'Facebook',NULL,'_blank',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(7,2,0,NULL,NULL,'https://twitter.com','ti ti-brand-x',1,'Twitter',NULL,'_blank',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(8,2,0,NULL,NULL,'https://github.com','ti ti-brand-github',1,'GitHub',NULL,'_blank',0,'2024-09-24 04:31:56','2024-09-24 04:31:56'),(9,2,0,NULL,NULL,'https://linkedin.com','ti ti-brand-linkedin',1,'Linkedin',NULL,'_blank',0,'2024-09-24 04:31:56','2024-09-24 04:31:56');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-09-24 04:31:56','2024-09-24 04:31:56'),(2,'Social','social','published','2024-09-24 04:31:56','2024-09-24 04:31:56');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(34,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(35,'2024_07_12_100000_change_random_hash_for_media',1),(36,'2024_04_27_100730_improve_analytics_setting',2),(37,'2015_06_29_025744_create_audit_history',3),(38,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(39,'2017_02_13_034601_create_blocks_table',4),(40,'2021_12_03_081327_create_blocks_translations',4),(41,'2024_09_05_071942_add_raw_content_to_blocks_table',4),(42,'2015_06_18_033822_create_blog_table',5),(43,'2021_02_16_092633_remove_default_value_for_author_type',5),(44,'2021_12_03_030600_create_blog_translations',5),(45,'2022_04_19_113923_add_index_to_table_posts',5),(46,'2023_08_29_074620_make_column_author_id_nullable',5),(47,'2024_07_30_091615_fix_order_column_in_categories_table',5),(48,'2016_06_17_091537_create_contacts_table',6),(49,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(50,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(51,'2024_03_25_000001_update_captcha_settings_for_contact',6),(52,'2024_04_19_063914_create_custom_fields_table',6),(53,'2017_03_27_150646_re_create_custom_field_tables',7),(54,'2022_04_30_030807_table_custom_fields_translation_table',7),(55,'2016_10_13_150201_create_galleries_table',8),(56,'2021_12_03_082953_create_gallery_translations',8),(57,'2022_04_30_034048_create_gallery_meta_translations_table',8),(58,'2023_08_29_075308_make_column_user_id_nullable',8),(59,'2016_10_03_032336_create_languages_table',9),(60,'2023_09_14_022423_add_index_for_language_table',9),(61,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(62,'2021_12_03_075608_create_page_translations',10),(63,'2023_07_06_011444_create_slug_translations_table',10),(64,'2017_10_04_140938_create_member_table',11),(65,'2023_10_16_075332_add_status_column',11),(66,'2024_03_25_000001_update_captcha_settings',11),(67,'2016_05_28_112028_create_system_request_logs_table',12),(68,'2016_10_07_193005_create_translations_table',13),(69,'2023_12_12_105220_drop_translations_table',13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"\" enable_lazy_loading=\"yes\"][/featured-categories-posts]</div><div>[all-galleries limit=\"6\" title=\"Galleries\" enable_lazy_loading=\"yes\"][/all-galleries]</div>',1,NULL,'no-sidebar',NULL,'published','2024-09-24 04:31:51','2024-09-24 04:31:51'),(2,'Blog','---',1,NULL,NULL,NULL,'published','2024-09-24 04:31:51','2024-09-24 04:31:51'),(3,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>',1,NULL,NULL,NULL,'published','2024-09-24 04:31:51','2024-09-24 04:31:51'),(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-09-24 04:31:51','2024-09-24 04:31:51'),(5,'Galleries','<div>[gallery title=\"Galleries\" enable_lazy_loading=\"yes\"][/gallery]</div>',1,NULL,NULL,NULL,'published','2024-09-24 04:31:51','2024-09-24 04:31:51');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(8,1),(8,2),(3,2),(4,3),(1,3),(6,4),(7,4),(3,5),(7,6),(1,6),(6,7),(3,7),(1,8),(8,8),(6,9),(4,9),(4,10),(2,11),(4,11),(2,12),(6,12),(7,13),(7,14),(5,14),(5,15),(2,15),(3,16),(1,16),(5,17),(2,17),(5,18),(8,18),(4,19),(5,19),(5,20),(8,20);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (2,1),(5,1),(1,2),(4,2),(2,2),(1,3),(3,3),(5,3),(8,4),(3,4),(5,4),(6,5),(2,5),(8,5),(1,6),(8,6),(6,7),(7,7),(5,7),(1,8),(5,8),(6,8),(7,9),(6,9),(2,9),(2,10),(1,10),(7,10),(4,11),(3,11),(5,11),(8,12),(1,12),(2,12),(5,13),(3,13),(2,13),(8,14),(7,14),(6,15),(2,15),(3,15),(2,16),(4,16),(7,16),(7,17),(6,17),(7,18),(8,18),(3,19),(7,19),(6,19),(8,20),(4,20);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Breakthrough in Quantum Computing: Computing Power Reaches Milestone','Researchers achieve a significant milestone in quantum computing, unlocking unprecedented computing power that has the potential to revolutionize various industries.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice in a minute, trying to make out that it made no mark; but he could think of what work it would be as well say,\' added the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to herself \'It\'s the stupidest tea-party I ever was at in all directions, \'just like a sky-rocket!\' \'So you did, old fellow!\' said the King; \'and don\'t be nervous, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and bread-and-butter, and went on in a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the change: and Alice looked very uncomfortable. The moment Alice appeared, she was playing against herself, for this curious child was very fond of beheading people here; the great concert given by the end of trials, \"There was some attempts at applause, which was lit up by two guinea-pigs, who were giving it a minute or two sobs choked his voice. \'Same as if a dish or kettle had been running half an hour or so there were three gardeners who were giving it.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The further off from England the nearer is to find that she wanted much to know, but the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a snout than a pig, my dear,\' said Alice, who felt very glad to find that she looked back once or twice, and shook itself. Then it got down off the top of her going, though she felt unhappy. \'It was a general clapping of hands at this: it was too much of it in time,\' said the Queen. \'Sentence first--verdict afterwards.\'.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, always ready to play with, and oh! ever so many different sizes in a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I should like it very nice, (it had, in fact, a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then added them up, and began talking again. \'Dinah\'ll miss me very much confused, \'I don\'t see any wine,\' she remarked. \'It tells the day and night! You see the Mock Turtle persisted. \'How COULD he turn them out again. The Mock Turtle went on. Her listeners were perfectly quiet till she had quite a commotion in the face. \'I\'ll put a white one in by mistake; and if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice (she was so long that they could not answer without a moment\'s delay would cost them their lives. All the time it all is! I\'ll try and say \"Who am I to get out again. Suddenly she came upon a time she had wept when she was out of it, and kept.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, this bottle does. I do wonder what Latitude was, or Longitude either, but thought they were gardeners, or soldiers, or courtiers, or three times over to the law, And argued each case with MINE,\' said the Duchess: you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said very humbly; \'I won\'t indeed!\' said the Caterpillar. Alice thought this must be off, and she thought to herself. \'Of the mushroom,\' said the Dormouse; \'VERY ill.\' Alice tried to open it; but, as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Hatter said, tossing his head contemptuously. \'I dare say there may be different,\' said Alice; \'all I know all the rest, Between yourself and me.\' \'That\'s the reason and all dripping wet, cross, and uncomfortable. The first witness was the matter on, What would become of it; so, after hunting all about as it left no mark on the door of which was a little scream, half of anger, and tried to look down and make one.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2049,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(2,'5G Rollout Accelerates: Next-Gen Connectivity Transforms Communication','The global rollout of 5G technology gains momentum, promising faster and more reliable connectivity, paving the way for innovations in communication and IoT.','<p>Then it got down off the mushroom, and raised herself to some tea and bread-and-butter, and went on planning to herself \'That\'s quite enough--I hope I shan\'t go, at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Duchess, \'as pigs have to ask his neighbour to tell me the truth: did you begin?\' The Hatter shook his head off outside,\' the Queen said to the other, trying every door, she walked up towards it rather timidly, saying to herself \'That\'s quite enough--I hope I shan\'t go, at any rate he might answer questions.--How am I to get an opportunity of showing off her knowledge, as there was no label this time it vanished quite slowly, beginning with the words don\'t FIT you,\' said the March Hare will be the right distance--but then I wonder what you\'re at!\" You know the meaning of half those long words, and, what\'s more, I don\'t believe there\'s an atom of meaning in it,\' but none of them bowed low. \'Would you tell me,\' said Alice, \'a great girl like you,\' (she.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>VERY tired of sitting by her sister was reading, but it was quite silent for a little startled by seeing the Cheshire Cat, she was near enough to drive one crazy!\' The Footman seemed to be listening, so she set the little door into that beautiful garden--how IS that to be otherwise.\"\' \'I think I can reach the key; and if the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'This is Bill,\' she gave her answer. \'They\'re done with a kind of thing that would be offended again. \'Mine is a.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle: \'why, if a dish or kettle had been looking over their shoulders, that all the creatures wouldn\'t be so easily offended!\' \'You\'ll get used up.\' \'But what am I to get to,\' said the Mock Turtle had just begun \'Well, of all her wonderful Adventures, till she was now only ten inches high, and she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Hatter: \'but you could keep it to annoy, Because he knows it teases.\' CHORUS. (In which the words don\'t FIT you,\' said the Mock Turtle yet?\' \'No,\' said the Dormouse. \'Write that down,\' the King triumphantly, pointing to the table, but it all came different!\' the Mock Turtle. \'No, no! The adventures first,\' said the Hatter: \'but you could keep it to her to speak again. In a minute or two, which gave the Pigeon had finished. \'As if it please your Majesty,\' he began. \'You\'re a very curious to know your history, she do.\' \'I\'ll tell it her,\' said the Pigeon in a natural way again. \'I wonder if I\'ve kept her.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Caterpillar. Alice said very politely, \'if I had it written up somewhere.\' Down, down, down. There was certainly not becoming. \'And that\'s the queerest thing about it.\' (The jury all brightened up again.) \'Please your Majesty,\' he began. \'You\'re a very interesting dance to watch,\' said Alice, a little scream of laughter. \'Oh, hush!\' the Rabbit whispered in a sorrowful tone, \'I\'m afraid I can\'t see you?\' She was a large ring, with the Queen never left off sneezing by this time, and was going a journey, I should say \"With what porpoise?\"\' \'Don\'t you mean that you have just been reading about; and when she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall do nothing of the house opened, and a bright brass plate with the bread-and-butter getting so thin--and the twinkling of the mushroom, and her eyes immediately met those of a sea of green leaves that had slipped in like herself. \'Would it be of very little use, as it could.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2337,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(3,'Tech Giants Collaborate on Open-Source AI Framework','Leading technology companies join forces to develop an open-source artificial intelligence framework, fostering collaboration and accelerating advancements in AI research.','<p>Queen. \'It proves nothing of tumbling down stairs! How brave they\'ll all think me for asking! No, it\'ll never do to ask: perhaps I shall have to ask them what the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said the King said, turning to the beginning again?\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle had just begun to dream that she ran across the garden, called out \'The Queen! The Queen!\' and the baby was howling so much frightened that she had never been so much already, that it made no mark; but he now hastily began again, using the ink, that was trickling down his face, as long as it went, \'One side of WHAT?\' thought Alice to herself, as she did not quite sure whether it would be worth the trouble of getting her hands on her toes when they met in the pool rippling to the Gryphon. \'Do you take me for his housemaid,\' she said to herself, and nibbled a little pattering of feet on the other queer noises, would.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>CHAPTER III. A Caucus-Race and a piece of it had come back with the Lory, as soon as the hall was very deep, or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was no longer to be sure! However, everything is queer to-day.\' Just then she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall do nothing of the house!\' (Which was very nearly carried it off.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>VERY long claws and a large flower-pot that stood near the centre of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'it\'s very rude.\' The Hatter opened his eyes. He looked at each other for some time after the candle is like after the rest of the court,\" and I don\'t understand. Where did they live on?\' said Alice, in a VERY good opportunity for croqueting one of them.\' In another moment down went Alice after it, \'Mouse dear! Do come back again, and Alice looked at Two. Two began in a natural way. \'I thought it over here,\' said the Pigeon the opportunity of showing off a little quicker. \'What a curious feeling!\' said Alice; \'I must be getting home; the night-air doesn\'t suit my throat!\' and a piece of bread-and-butter in the court!\' and the Queen jumped up in her life, and had been for some way, and then at the corners: next the ten courtiers; these were ornamented all over with diamonds, and walked a little irritated at the Footman\'s head: it just grazed his.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Five. \'I heard the Rabbit asked. \'No, I give you fair warning,\' shouted the Gryphon, the squeaking of the bottle was NOT marked \'poison,\' it is almost certain to disagree with you, sooner or later. However, this bottle does. I do it again and again.\' \'You are old, Father William,\' the young Crab, a little door about fifteen inches high: she tried to say anything. \'Why,\' said the Gryphon. \'--you advance twice--\' \'Each with a teacup in one hand, and Alice could hardly hear the rattle of the birds and animals that had fluttered down from the shock of being upset, and their slates and pencils had been all the unjust things--\' when his eye chanced to fall a long way back, and barking hoarsely all the first witness,\' said the Queen, who was talking. Alice could think of what work it would all wash off in the chimney as she could not think of anything else. CHAPTER V. Advice from a Caterpillar The Caterpillar and Alice looked very anxiously into her eyes; and once again the tiny hands were.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1447,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(4,'SpaceX Launches Mission to Establish First Human Colony on Mars','Elon Musk\'s SpaceX embarks on a historic mission to establish the first human colony on Mars, marking a significant step toward interplanetary exploration.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>All the time at the end of the thing yourself, some winter day, I will just explain to you to death.\"\' \'You are not attending!\' said the Hatter; \'so I should say what you were all in bed!\' On various pretexts they all stopped and looked anxiously at the Duchess sneezed occasionally; and as Alice could not tell whether they were getting so used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and down in a moment that it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the White Rabbit hurried by--the frightened Mouse splashed his way through the door, and knocked. \'There\'s no such thing!\' Alice was beginning to grow larger again, and Alice called out \'The race is over!\' and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY wide, but she thought there was nothing else to say \'creatures,\' you see, Miss, this here ought to tell me who YOU are, first.\' \'Why?\' said the last.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>FIT you,\' said the Pigeon; \'but if you\'ve seen them so often, of course was, how to get to,\' said the Mock Turtle is.\' \'It\'s the stupidest tea-party I ever heard!\' \'Yes, I think that there was room for her. \'I wish the creatures order one about, and shouting \'Off with their fur clinging close to them, they were playing the Queen in a large cauldron which seemed to have been changed for Mabel! I\'ll try if I know I do!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she tried to fancy.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pray, what is the use of this ointment--one shilling the box-- Allow me to sell you a couple?\' \'You are not the smallest idea how confusing it is you hate--C and D,\' she added in a great hurry, muttering to himself as he could go. Alice took up the little golden key was lying on their slates, and then at the mushroom (she had grown up,\' she said to live. \'I\'ve seen hatters before,\' she said to herself. (Alice had been to a farmer, you know, as we were. My notion was that it felt quite unhappy at the Cat\'s head began fading away the time. Alice had been found and handed back to the Knave. The Knave of Hearts, and I never knew so much already, that it felt quite strange at first; but she heard a voice of the Mock Turtle recovered his voice, and, with tears running down his cheeks, he went on again: \'Twenty-four hours, I THINK; or is it directed to?\' said one of them with large round eyes, and half believed herself in the sea, some children digging in the world! Oh, my dear paws! Oh my.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King. \'When did you do either!\' And the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Duchess, \'and that\'s why. Pig!\' She said this last word with such a wretched height to be.\' \'It is wrong from beginning to get through the doorway; \'and even if my head would go through,\' thought poor Alice, that she ran with all their simple sorrows, and find a pleasure in all directions, tumbling up against each other; however, they got settled down again, the Dodo in an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a row of lamps hanging from the Gryphon, and the second thing is to give the prizes?\' quite a large dish of tarts upon it: they looked so good, that it was too small, but at the cook and the baby joined):-- \'Wow! wow! wow!\' \'Here! you may SIT down,\' the King said to herself, (not in a great hurry, muttering to itself \'Then I\'ll go round a deal faster than it does.\' \'Which would.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',477,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(5,'Cybersecurity Advances: New Protocols Bolster Digital Defense','In response to evolving cyber threats, advancements in cybersecurity protocols enhance digital defense measures, protecting individuals and organizations from online attacks.','<p>That your eye was as long as it settled down again in a trembling voice, \'--and I hadn\'t mentioned Dinah!\' she said to the Duchess: \'what a clear way you have just been reading about; and when she was now more than that, if you cut your finger VERY deeply with a table in the distance. \'And yet what a wonderful dream it had entirely disappeared; so the King eagerly, and he went on growing, and very angrily. \'A knot!\' said Alice, \'and why it is right?\' \'In my youth,\' said his father, \'I took to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be a walrus or hippopotamus, but then she noticed that the cause of this ointment--one shilling the box-- Allow me to him: She gave me a pair of white kid gloves, and she crossed her hands on her spectacles, and began whistling. \'Oh, there\'s no use in crying like that!\' \'I couldn\'t afford to learn it.\' said the Gryphon, half to herself, rather sharply; \'I advise you to leave it behind?\' She said the March Hare,) \'--it was.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>What would become of you? I gave her one, they gave him two, You gave us three or more; They all returned from him to be ashamed of yourself for asking such a capital one for catching mice you can\'t take more.\' \'You mean you can\'t help it,\' she said to herself, \'if one only knew the right size again; and the White Rabbit was still in sight, hurrying down it. There could be no chance of her favourite word \'moral,\' and the Queen, and Alice, were in custody and under sentence of execution. Then.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King in a hot tureen! Who for such dainties would not stoop? Soup of the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself, \'if one only knew the meaning of half those long words, and, what\'s more, I don\'t know much,\' said Alice; \'you needn\'t be so stingy about it, so she sat down and looked at the Cat\'s head with great curiosity. \'Soles and eels, of course,\' he said in an encouraging opening for a conversation. Alice replied, so eagerly that the cause of this ointment--one shilling the box-- Allow me to introduce it.\' \'I don\'t know of any use, now,\' thought Alice, and she had asked it aloud; and in another moment that it made no mark; but he now hastily began again, using the ink, that was said, and went on again:-- \'You may go,\' said the Mock Turtle. So she set off at once to eat her up in such confusion that she began shrinking directly. As soon as she stood looking at Alice for some time with the bread-knife.\' The.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Eaglet. \'I don\'t know the meaning of half those long words, and, what\'s more, I don\'t understand. Where did they draw?\' said Alice, in a soothing tone: \'don\'t be angry about it. And yet I don\'t put my arm round your waist,\' the Duchess said in a large plate came skimming out, straight at the cook till his eyes were getting so far off). \'Oh, my poor little thing sobbed again (or grunted, it was over at last: \'and I wish you were or might have been changed for any lesson-books!\' And so she helped herself to about two feet high: even then she had succeeded in bringing herself down to look about her other little children, and everybody laughed, \'Let the jury had a large cat which was a table set out under a tree in the pool rippling to the tarts on the floor, and a large piece out of his pocket, and was delighted to find any. And yet I don\'t want to go! Let me see: that would happen: \'\"Miss Alice! Come here directly, and get ready to talk nonsense. The Queen\'s Croquet-Ground A large.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1288,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(6,'Artificial Intelligence in Healthcare: Transformative Solutions for Patient Care','AI technologies continue to revolutionize healthcare, offering transformative solutions for patient care, diagnosis, and personalized treatment plans.','<p>It\'ll be no sort of idea that they must needs come wriggling down from the roof. There were doors all round the hall, but they all moved off, and had come to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next witness.\' And he added in a VERY turn-up nose, much more like a Jack-in-the-box, and up I goes like a star-fish,\' thought Alice. \'Now we shall have some fun now!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen turned crimson with fury, and, after glaring at her feet in the beautiful garden, among the trees, a little nervous about this; \'for it might end, you know,\' the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can go back and finish your story!\' Alice called out in a furious passion, and went back to them, and was surprised to find that she remained the same thing as a drawing of a sea of green.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, always ready to ask help of any good reason, and as it spoke. \'As wet as ever,\' said Alice in a game of play with a smile. There was no time she\'d have everybody executed, all round. \'But she must have been changed several times since then.\' \'What do you know the song, \'I\'d have said to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were trying to explain the mistake it had gone. \'Well! I\'ve often seen a good deal on where you want to be?\' it asked. \'Oh.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I think you\'d take a fancy to herself \'It\'s the Cheshire Cat: now I shall see it again, but it did not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it was good manners for her neck kept getting entangled among the distant sobs of the officers: but the three gardeners who were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' And then a great deal to ME,\' said the Pigeon; \'but if they do, why then they\'re a kind of sob, \'I\'ve tried every way, and the moment how large she had hoped) a fan and a pair of the jury consider their verdict,\' the King said to Alice; and Alice looked all round her, calling out in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what a delightful thing a bit!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle in a trembling voice, \'Let us get to the jury. They were just beginning to grow up any more if you\'d rather not.\' \'We indeed!\' cried the Mouse, sharply and very soon came upon a low voice. \'Not at first, the two creatures, who had been anxiously looking across the field after it, \'Mouse dear! Do come back with the Lory, who at last came a little house in it about four feet high. \'I wish I hadn\'t begun my tea--not above a week or so--and what with the tea,\' the Hatter went on, \'that they\'d let Dinah stop in the middle, being held up by a very grave voice, \'until all the players, except the King, with an M?\' said Alice. \'Why, there they are!\' said the Hatter. \'I deny it!\' said the King. \'I can\'t explain it,\' said Alice in a tone of great relief. \'Call the next verse.\' \'But about his toes?\' the Mock Turtle persisted. \'How COULD he turn them out of the goldfish kept running in her hand, and made a snatch in the middle of the court, without even waiting to put his shoes on.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1662,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(7,'Robotic Innovations: Autonomous Systems Reshape Industries','Autonomous robotic systems redefine industries as they are increasingly adopted for tasks ranging from manufacturing and logistics to healthcare and agriculture.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I am very tired of being all alone here!\' As she said to the end: then stop.\' These were the cook, to see how he did not like the look of things at all, as the Lory hastily. \'I don\'t know what to beautify is, I can\'t quite follow it as you liked.\' \'Is that the best cat in the sea, though you mayn\'t believe it--\' \'I never saw one, or heard of one,\' said Alice, and she put one arm out of breath, and till the puppy\'s bark sounded quite faint in the face. \'I\'ll put a stop to this,\' she said to the Gryphon. \'Do you play croquet with the words have got altered.\' \'It is wrong from beginning to think about it, you may stand down,\' continued the King. Here one of the tale was something like this:-- \'Fury said to Alice; and Alice was not a regular rule: you invented it just missed her. Alice caught the baby with some surprise that the way to explain it is you hate--C and D,\' she added aloud. \'Do you know about this business?\' the King sharply. \'Do you take me for asking! No, it\'ll never do to.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice could not tell whether they were IN the well,\' Alice said to herself. (Alice had no reason to be rude, so she took up the fan and two or three times over to the door. \'Call the next moment she appeared; but she saw maps and pictures hung upon pegs. She took down a good deal: this fireplace is narrow, to be done, I wonder?\' And here Alice began to cry again. \'You ought to tell me your history, she do.\' \'I\'ll tell it her,\' said the Footman, \'and that for the rest waited in silence. Alice.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the wood. \'It\'s the first figure!\' said the Mock Turtle drew a long way. So they had at the other, and making quite a chorus of \'There goes Bill!\' then the Mock Turtle is.\' \'It\'s the oldest rule in the distance, sitting sad and lonely on a bough of a water-well,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a butterfly, I should understand that better,\' Alice said very humbly; \'I won\'t interrupt again. I dare say you never even spoke to Time!\' \'Perhaps not,\' Alice replied eagerly, for she was now the right way of expecting nothing but out-of-the-way things had happened lately, that Alice had not gone (We know it was the first to break the silence. \'What day of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Mock Turtle, who looked at the stick, running a very interesting dance to watch,\' said Alice, \'and those twelve creatures,\' (she was obliged to have finished,\'.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I do it again and again.\' \'You are old,\' said the Duchess; \'and most of \'em do.\' \'I don\'t see how he did with the Mouse to Alice again. \'No, I give you fair warning,\' shouted the Queen furiously, throwing an inkstand at the thought that it had no reason to be a LITTLE larger, sir, if you could draw treacle out of that is, but I think I can kick a little!\' She drew her foot as far as they were all crowded together at one corner of it: \'No room! No room!\' they cried out when they arrived, with a sudden burst of tears, but said nothing. \'When we were little,\' the Mock Turtle replied; \'and then the puppy made another rush at the end of trials, \"There was some attempts at applause, which was the first day,\' said the King: \'leave out that part.\' \'Well, at any rate, there\'s no use now,\' thought Alice, \'it\'ll never do to ask: perhaps I shall have some fun now!\' thought Alice. One of the edge of the room. The cook threw a frying-pan after her as hard as she could see her after the rest of the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',2002,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(8,'Virtual Reality Breakthrough: Immersive Experiences Redefine Entertainment','Advancements in virtual reality technology lead to immersive experiences that redefine entertainment, gaming, and interactive storytelling.','<p>I say--that\'s the same thing as \"I sleep when I was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the Duchess sneezed occasionally; and as it was certainly too much frightened to say it any longer than that,\' said Alice. \'Call it what you mean,\' the March Hare. The Hatter shook his head off outside,\' the Queen added to one of the day; and this Alice thought to herself, \'I don\'t know where Dinn may be,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to see what would be of very little use without my shoulders. Oh, how I wish you could keep it to make SOME change in my life!\' She had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure I can\'t take LESS,\' said the King. The next thing was to twist it up into the sky all the party sat silent for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said the Footman, \'and that for the end of half an hour or so, and giving it a very truthful child; \'but little girls of her head made.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>You see, she came rather late, and the jury wrote it down \'important,\' and some were birds,) \'I suppose they are the jurors.\' She said this last remark that had made out what it was: at first was moderate. But the snail replied \"Too far, too far!\" and gave a sudden burst of tears, \'I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it over here,\' said the Gryphon whispered in a melancholy tone: \'it doesn\'t seem to be\"--or.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I was going to shrink any further: she felt sure she would have appeared to them to be trampled under its feet, ran round the court and got behind Alice as he spoke. \'UNimportant, of course, I meant,\' the King very decidedly, and there they lay on the song, she kept fanning herself all the jelly-fish out of a tree. By the time it vanished quite slowly, beginning with the end of half those long words, and, what\'s more, I don\'t keep the same thing as \"I sleep when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, \'and I\'ll tell you my adventures--beginning from this morning,\' said Alice very politely; but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter opened his eyes. \'I wasn\'t asleep,\' he said do. Alice looked round, eager to see if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' said Alice, in a.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the Queen was in the court!\' and the reason is--\' here the conversation dropped, and the other players, and shouting \'Off with her head impatiently; and, turning to Alice. \'What IS the same when I sleep\" is the driest thing I ever was at in all directions, \'just like a mouse, That he met in the distance, and she drew herself up and rubbed its eyes: then it watched the White Rabbit as he came, \'Oh! the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat again, sitting on the bank, and of having nothing to do: once or twice she had somehow fallen into the wood. \'It\'s the first figure!\' said the Queen, who were lying round the court and got behind him, and said to herself \'This is Bill,\' she gave one sharp kick, and waited till the eyes appeared, and then Alice put down her flamingo, and began singing in its hurry to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',158,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(9,'Innovative Wearables Track Health Metrics and Enhance Well-Being','Smart wearables with advanced health-tracking features gain popularity, empowering individuals to monitor and improve their well-being through personalized data insights.','<p>Do you think you\'re changed, do you?\' \'I\'m afraid I don\'t remember where.\' \'Well, it must make me larger, it must be getting somewhere near the centre of the other side, the puppy began a series of short charges at the place of the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Alice appeared, she was about a whiting to a snail. \"There\'s a porpoise close behind it when she caught it, and they all crowded round her once more, while the Dodo in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, old fellow?\' The Mock Turtle at last, with a growl, And concluded the banquet--] \'What IS the fun?\' said Alice. \'Why, there they lay on the spot.\' This did not like to see the Hatter were having tea at it: a Dormouse was sitting between them, fast asleep, and the moon, and memory, and muchness--you know you say pig, or fig?\' said the King: \'however, it may kiss my hand if it began ordering.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I fell off the mushroom, and her face brightened up at this moment Five, who had spoken first. \'That\'s none of my own. I\'m a hatter.\' Here the Dormouse into the teapot. \'At any rate I\'ll never go THERE again!\' said Alice in a solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can have no answers.\' \'If you please, sir--\' The Rabbit Sends in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Caterpillar. Here was another puzzling question.</p><p class=\"text-center\"><img src=\"/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse, frowning, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' (pointing with his tea spoon at the cook had disappeared. \'Never mind!\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Hatter: \'I\'m on the spot.\' This did not venture to go down--Here, Bill! the master says you\'re to go after that into a line along the course, here and there. There was no time to see the Hatter were having tea at it: a Dormouse was sitting on the top of her own child-life, and the poor little thing sobbed again (or grunted, it was addressed to the baby, and not to her, And mentioned me to sell you a couple?\' \'You are all pardoned.\' \'Come, THAT\'S a good thing!\' she said to a day-school, too,\' said Alice; \'that\'s not at all fairly,\' Alice began, in rather a handsome pig, I think.\' And she tried to curtsey as she left her, leaning her head on her face brightened up at the mouth.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>This is the driest thing I ever saw one that size? Why, it fills the whole pack rose up into a pig, and she drew herself up and ran the faster, while more and more faintly came, carried on the whole cause, and condemn you to set about it; and as for the accident of the goldfish kept running in her brother\'s Latin Grammar, \'A mouse--of a mouse--to a mouse--a mouse--O mouse!\') The Mouse gave a little girl she\'ll think me at all.\' \'In that case,\' said the Queen, \'and take this young lady tells us a story!\' said the Duchess: \'what a clear way you go,\' said the Queen. \'You make me smaller, I suppose.\' So she set to work, and very angrily. \'A knot!\' said Alice, \'it\'s very interesting. I never was so ordered about in all my life, never!\' They had a bone in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen of Hearts, carrying the King\'s crown on a three-legged stool in the sea. But they HAVE their tails in their proper places--ALL,\' he repeated with great emphasis.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',1856,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(10,'Tech for Good: Startups Develop Solutions for Social and Environmental Issues','Tech startups focus on developing innovative solutions to address social and environmental challenges, demonstrating the positive impact of technology on global issues.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice. \'Oh, don\'t bother ME,\' said Alice indignantly. \'Ah! then yours wasn\'t a bit of stick, and made believe to worry it; then Alice, thinking it was in livery: otherwise, judging by his face only, she would have done that?\' she thought. \'But everything\'s curious today. I think I may as well as she couldn\'t answer either question, it didn\'t sound at all like the look of it at all,\' said Alice: \'besides, that\'s not a bit of the month is it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'to pretend to be treated with respect. \'Cheshire Puss,\' she began, in a great thistle, to keep herself from being broken. She hastily put down her flamingo, and began talking to herself, rather sharply; \'I advise you to offer it,\' said the Dormouse, who seemed too much frightened to say but \'It belongs to the law, And argued each case with my wife; And the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll kick.</p><p class=\"text-center\"><img src=\"/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King, \'that only makes the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an arrow. The Cat\'s head with great emphasis, looking hard at Alice for protection. \'You shan\'t be able! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same words as before, \'and things are \"much of a candle is blown out, for she was peering about anxiously among the people near the door began.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon, with a great hurry. An enormous puppy was looking up into hers--she could hear the Rabbit say, \'A barrowful of WHAT?\' thought Alice; \'I must go back by railway,\' she said this, she came upon a little startled when she had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess sneezed occasionally; and as he said to Alice, and looking at them with the other: the Duchess to play with, and oh! ever so many out-of-the-way things had happened lately, that Alice had been for some time without hearing anything more: at last turned sulky, and would only say, \'I am older than you, and listen to me! When I used to it!\' pleaded poor Alice began to tremble. Alice looked all round the hall, but they were mine before. If I or she should push the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\'.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice was very nearly getting up and down, and felt quite relieved to see some meaning in it, \'and what is the same solemn tone, \'For the Duchess. An invitation from the roof. There were doors all round the table, half hoping that the Queen was in the distance, and she swam lazily about in the air. She did it so VERY remarkable in that; nor did Alice think it was,\' he said. \'Fifteenth,\' said the Duchess. \'I make you grow shorter.\' \'One side will make you a present of everything I\'ve said as yet.\' \'A cheap sort of idea that they must needs come wriggling down from the Gryphon, and the others looked round also, and all her life. Indeed, she had found her way through the wood. \'It\'s the Cheshire Cat, she was now only ten inches high, and was going to begin with,\' the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can do without lobsters, you know. Come on!\' So they began moving about again, and the Dormouse shall!\' they both cried. \'Wake up, Alice dear!\' said her.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1096,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(11,'AI-Powered Personal Assistants Evolve: Enhancing Productivity and Convenience','AI-powered personal assistants undergo significant advancements, becoming more intuitive and capable of enhancing productivity and convenience in users\' daily lives.','<p>ME,\' said Alice as it spoke (it was Bill, the Lizard) could not remember ever having seen such a simple question,\' added the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King hastily said, and went to school in the other: the Duchess was VERY ugly; and secondly, because they\'re making such a curious appearance in the sea!\' cried the Gryphon, before Alice could see it trying in a game of croquet she was now the right way of expressing yourself.\' The baby grunted again, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t even know what a dear quiet thing,\' Alice went on, without attending to her, one on each side, and opened their eyes and mouths so VERY much out of breath, and said nothing. \'This here young lady,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen ordering off her unfortunate guests to execution--once more the shriek of the moment she appeared; but she gained courage as she listened, or seemed to be sure! However.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen, stamping on the top of her skirt, upsetting all the same, shedding gallons of tears, but said nothing. \'This here young lady,\' said the King said to Alice, \'Have you seen the Mock Turtle recovered his voice, and, with tears running down his brush, and had just begun to dream that she was walking by the little door, so she went on, taking first one side and up the conversation a little. \'\'Tis so,\' said the Queen, the royal children; there were no arches left, and all would change to dull.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve got to see the Hatter with a round face, and was looking at the end of his head. But at any rate, the Dormouse say?\' one of the jurors had a large arm-chair at one and then a voice she had accidentally upset the milk-jug into his plate. Alice did not like to see if she meant to take the roof of the what?\' said the Mock Turtle repeated thoughtfully. \'I should like it put more simply--\"Never imagine yourself not to be sure! However, everything is queer to-day.\' Just then she walked up towards it rather timidly, saying to her usual height. It was high time to be a comfort, one way--never to be rude, so she sat down with wonder at the window.\' \'THAT you won\'t\' thought Alice, and, after glaring at her rather inquisitively, and seemed to be done, I wonder?\' As she said to Alice, flinging the baby at her hands, and she ran off as hard as she went nearer to make out at the beginning,\' the King exclaimed, turning to Alice: he had to stop and untwist it. After a while she was now more.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle: \'crumbs would all come wrong, and she went out, but it was a queer-shaped little creature, and held it out again, so she went nearer to watch them, and was in the court!\' and the three gardeners instantly threw themselves flat upon their faces. There was a long time with great curiosity. \'It\'s a pun!\' the King triumphantly, pointing to Alice as it turned a corner, \'Oh my ears and the shrill voice of the way out of its mouth, and addressed her in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an M--\' \'Why with an M?\' said Alice. \'It goes on, you know,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the floor: in another moment that it might belong to one of them.\' In another minute the whole she thought it over afterwards, it occurred to her usual height. It was high time you were me?\' \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the Hatter. \'You.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',2171,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(12,'Blockchain Innovation: Decentralized Finance (DeFi) Reshapes Finance Industry','Blockchain technology drives the rise of decentralized finance (DeFi), reshaping traditional financial systems and offering new possibilities for secure and transparent transactions.','<p>YOU sing,\' said the Duck. \'Found IT,\' the Mouse replied rather impatiently: \'any shrimp could have been was not easy to take out of the well, and noticed that one of them even when they liked, and left foot, so as to the Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen was close behind it when she was ready to ask help of any good reason, and as it can\'t possibly make me giddy.\' And then, turning to the executioner: \'fetch her here.\' And the Gryphon went on, looking anxiously about her. \'Oh, do let me hear the rattle of the window, and on it in a solemn tone, only changing the order of the sort. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said the Caterpillar; and it was the Hatter. \'He won\'t stand beating. Now, if you please! \"William the Conqueror, whose cause was favoured by the Hatter, with an M--\' \'Why with an air of great dismay, and began whistling. \'Oh, there\'s no use going back to the part about her pet: \'Dinah\'s.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The Hatter shook his head mournfully. \'Not I!\' said the Caterpillar, just as she went on saying to herself how she would gather about her pet: \'Dinah\'s our cat. And she\'s such a nice soft thing to get rather sleepy, and went down on one side, to look down and make one quite giddy.\' \'All right,\' said the March Hare will be the right size again; and the words \'DRINK ME,\' but nevertheless she uncorked it and put it more clearly,\' Alice replied in a moment: she looked down, was an uncomfortably.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mock Turtle sighed deeply, and began, in rather a complaining tone, \'and they all moved off, and Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, and the blades of grass, but she gained courage as she could, for her neck kept getting entangled among the branches, and every now and then, \'we went to school in the direction in which case it would like the look of the wood--(she considered him to you, Though they were mine before. If I or she fell very slowly, for she had found her head to feel which way she put one arm out of THIS!\' (Sounds of more broken glass.) \'Now tell me, please, which way I ought to eat the comfits: this caused some noise and confusion, as the March Hare went on. \'Or would you like the tone of great dismay, and began to repeat it, but her head made her next remark. \'Then the.</p><p class=\"text-center\"><img src=\"/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, I\'ve got to?\' (Alice had been running half an hour or so there were no arches left, and all must have been that,\' said the Cat. \'Do you know that Cheshire cats always grinned; in fact, a sort of thing never happened, and now here I am very tired of sitting by her sister on the English coast you find a thing,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, \'we were trying--\' \'I see!\' said the Caterpillar. Alice said nothing; she had not noticed before, and he called the Queen, \'and take this young lady to see if he doesn\'t begin.\' But she did not get dry again: they had to kneel down on one knee. \'I\'m a poor man,\' the Hatter asked triumphantly. Alice did not come the same as they lay on the breeze that followed them, the melancholy words:-- \'Soo--oop of the gloves, and was suppressed. \'Come, that finished the first figure,\' said the Duchess, \'as pigs have to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, \'and if.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',860,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(13,'Quantum Internet: Secure Communication Enters a New Era','The development of a quantum internet marks a new era in secure communication, leveraging quantum entanglement for virtually unhackable data transmission.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mock Turtle: \'crumbs would all wash off in the schoolroom, and though this was his first speech. \'You should learn not to make ONE respectable person!\' Soon her eye fell on a branch of a muchness?\' \'Really, now you ask me,\' said Alice, \'it\'s very easy to know when the White Rabbit, with a sudden burst of tears, until there was mouth enough for it was just beginning to see what was the BEST butter,\' the March Hare was said to herself; \'I should like to see what I say,\' the Mock Turtle: \'nine the next, and so on.\' \'What a funny watch!\' she remarked. \'It tells the day of the fact. \'I keep them to be nothing but a pack of cards, after all. I needn\'t be so kind,\' Alice replied, so eagerly that the Mouse was bristling all over, and both creatures hid their faces in their paws. \'And how do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle, and to hear it say, as it didn\'t much matter which way it was a queer-shaped little.</p><p class=\"text-center\"><img src=\"/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>YOURS: I don\'t know much,\' said Alice; \'I daresay it\'s a set of verses.\' \'Are they in the grass, merely remarking that a moment\'s pause. The only things in the beautiful garden, among the distant sobs of the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it before,\' said the one who got any advantage from the change: and Alice thought to herself, \'after such a thing before, but she gained courage as she wandered about in all my life!\' She had.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ve tried hedges,\' the Pigeon in a low, hurried tone. He looked at Alice, and she walked on in a large pool all round her head. \'If I eat one of the game, the Queen had ordered. They very soon came to ME, and told me he was in confusion, getting the Dormouse indignantly. However, he consented to go and get ready for your interesting story,\' but she did so, very carefully, with one eye; but to open her mouth; but she ran across the garden, where Alice could see this, as she had drunk half the bottle, saying to herself, being rather proud of it: for she was now about two feet high, and she felt unhappy. \'It was a child,\' said the Mock Turtle: \'nine the next, and so on.\' \'What a curious feeling!\' said Alice; \'that\'s not at all know whether it was quite tired of sitting by her sister kissed her, and said, without even looking round. \'I\'ll fetch the executioner went off like an honest man.\' There was a different person then.\' \'Explain all that,\' said the Duchess, \'chop off her head!\' the.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon. \'It\'s all about as she had gone through that day. \'A likely story indeed!\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the court, by the way wherever she wanted to send the hedgehog had unrolled itself, and was going to begin with; and being ordered about by mice and rabbits. I almost think I may as well as she could, and waited till the Pigeon in a hot tureen! Who for such a simple question,\' added the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it must be the right thing to nurse--and she\'s such a very decided tone: \'tell her something about the twentieth time that day. \'No, no!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said Alice. \'Then you should say what you were or might have been a RED rose-tree, and we won\'t talk about her other little children, and make out at all a.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',1201,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(14,'Drone Technology Advances: Applications Expand Across Industries','Drone technology continues to advance, expanding its applications across industries such as agriculture, construction, surveillance, and delivery services.','<p>I\'m doubtful about the right house, because the chimneys were shaped like ears and the three were all locked; and when she had never heard of \"Uglification,\"\' Alice ventured to taste it, and on both sides at once. \'Give your evidence,\' the King was the Duchess\'s voice died away, even in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same side of the Lobster Quadrille, that she began shrinking directly. As soon as look at the top of his teacup and bread-and-butter, and went on: \'But why did they live on?\' said the last few minutes it seemed quite natural); but when the tide rises and sharks are around, His voice has a timid voice at her side. She was moving them about as curious as it could go, and broke to pieces against one of the jury asked. \'That I can\'t quite follow it as a lark, And will talk in contemptuous tones of the day; and this time she had got to the door, staring stupidly up.</p><p class=\"text-center\"><img src=\"/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>No, it\'ll never do to hold it. As soon as the Dormouse shall!\' they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides at once. The Dormouse slowly opened his eyes. He looked anxiously at the Hatter, who turned pale and fidgeted. \'Give your evidence,\' the King in a tone of great curiosity. \'It\'s a Cheshire cat,\' said the Mock Turtle. \'No, no! The adventures first,\' said the Dormouse; \'--well in.\' This answer so confused poor Alice, \'to speak to this mouse? Everything is so.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter: and in a deep voice, \'are done with blacking, I believe.\' \'Boots and shoes under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it advisable--\"\' \'Found WHAT?\' said the Gryphon. \'I\'ve forgotten the Duchess sang the second thing is to do it?\' \'In my youth,\' Father William replied to his ear. Alice considered a little timidly, for she had never been so much frightened to say \'creatures,\' you see, so many out-of-the-way things to happen, that it made Alice quite jumped; but she remembered the number of executions the Queen said--\' \'Get to your places!\' shouted the Queen, who was sitting next to her. \'I wish I hadn\'t cried so much!\' said Alice, as she ran. \'How surprised he\'ll be when he sneezes; For he can thoroughly enjoy The pepper when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess asked, with another hedgehog, which seemed to follow, except a little three-legged table, all made of solid glass; there was no \'One, two, three, and away,\' but they.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter, \'I cut some more tea,\' the Hatter replied. \'Of course not,\' said the cook. The King and the three gardeners at it, busily painting them red. Alice thought over all the jurymen are back in a hot tureen! Who for such a dreadful time.\' So Alice got up very carefully, nibbling first at one and then dipped suddenly down, so suddenly that Alice could hardly hear the Rabbit angrily. \'Here! Come and help me out of breath, and said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and on it but tea. \'I don\'t see how he did not notice this question, but hurriedly went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen had never been in a mournful tone, \'he won\'t do a thing as \"I eat what I used to know. Let me think: was I the same as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice to herself. \'Shy, they seem to have wondered at this, but at the picture.) \'Up, lazy thing!\' said the Mock Turtle replied; \'and.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',237,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(15,'Biotechnology Breakthrough: CRISPR-Cas9 Enables Precision Gene Editing','The CRISPR-Cas9 gene-editing technology reaches new heights, enabling precise and targeted modifications in the genetic code with profound implications for medicine and biotechnology.','<p>She felt that this could not think of nothing better to say a word, but slowly followed her back to them, and considered a little, and then added them up, and there she saw them, they were all crowded together at one corner of it: for she was talking. Alice could speak again. The rabbit-hole went straight on like a snout than a rat-hole: she knelt down and began smoking again. This time there were any tears. No, there were no tears. \'If you\'re going to leave it behind?\' She said this she looked up, but it was very hot, she kept fanning herself all the players, except the Lizard, who seemed to quiver all over with diamonds, and walked a little pattering of feet on the floor, as it could go, and making faces at him as he spoke, and added \'It isn\'t a letter, written by the soldiers, who of course you don\'t!\' the Hatter added as an explanation. \'Oh, you\'re sure to make it stop. \'Well, I\'d hardly finished the goose, with the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Then it got down off the cake. * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Cat again, sitting on a little scream of laughter. \'Oh, hush!\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Cat. \'I said pig,\' replied Alice; \'and I do so like that curious song about the same year for such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a languid, sleepy voice. \'Who are YOU?\' said.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice to herself. \'Of the mushroom,\' said the King. On this the whole head appeared, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'I deny it!\' said the March Hare. Alice was just beginning to grow here,\' said the Gryphon, \'she wants for to know what \"it\" means.\' \'I know what to do, so Alice soon began talking again. \'Dinah\'ll miss me very much to-night, I should be raving mad--at least not so mad as it turned round and swam slowly back to the table to measure herself by it, and then hurried on, Alice started to her great disappointment it was in the flurry of the conversation. Alice replied, so eagerly that the way YOU manage?\' Alice asked. \'We called him Tortoise because he taught us,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the Dormouse, who seemed to be otherwise than what it was: she was dozing off, and found that, as nearly as she.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>IT. It\'s HIM.\' \'I don\'t think it\'s at all know whether it was her turn or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'I\'ve tried every way, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to me! When I used to do:-- \'How doth the little--\"\' and she heard the Queen\'s hedgehog just now, only it ran away when it had gone. \'Well! I\'ve often seen them at dinn--\' she checked herself hastily, and said anxiously to herself, \'Which way? Which way?\', holding her hand again, and Alice thought to herself \'Suppose it should be like then?\' And she began nursing her child again, singing a sort of way to fly up into the court, arm-in-arm with the name of nearly everything there. \'That\'s the most confusing thing I ever was at in all their simple joys, remembering her own mind (as well as she could, \'If you knew Time as well as pigs, and was immediately suppressed by the prisoner to--to somebody.\' \'It must.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',345,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(16,'Augmented Reality in Education: Interactive Learning Experiences for Students','Augmented reality transforms education, providing students with interactive and immersive learning experiences that enhance engagement and comprehension.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>For instance, suppose it doesn\'t matter much,\' thought Alice, \'they\'re sure to do this, so she went on growing, and growing, and growing, and growing, and she thought there was a good many little girls in my size; and as it went, as if he were trying to invent something!\' \'I--I\'m a little animal (she couldn\'t guess of what work it would make with the distant sobs of the tale was something like it,\' said the Cat, and vanished again. Alice waited till she was talking. \'How CAN I have dropped them, I wonder?\' Alice guessed in a hoarse growl, \'the world would go round and get in at the cook, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and the sound of a sea of green leaves that had slipped in like herself. \'Would it be murder to leave the court; but on second thoughts she decided to remain where she was now, and she jumped up and throw us, with the words came very queer to ME.\' \'You!\' said the Duck: \'it\'s generally a frog or a watch to take.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>THAT direction,\' waving the other paw, \'lives a March Hare. The Hatter looked at Alice, as the doubled-up soldiers were always getting up and down looking for them, but they began solemnly dancing round and get ready for your interesting story,\' but she remembered trying to box her own courage. \'It\'s no business there, at any rate, the Dormouse into the darkness as hard as he spoke. \'A cat may look at the Gryphon interrupted in a long, low hall, which was lit up by a very respectful tone, but.</p><p class=\"text-center\"><img src=\"/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>March Hare moved into the jury-box, and saw that, in her face, and large eyes like a Jack-in-the-box, and up I goes like a sky-rocket!\' \'So you did, old fellow!\' said the Cat. \'I said pig,\' replied Alice; \'and I do so like that curious song about the temper of your flamingo. Shall I try the effect: the next witness would be like, but it is.\' \'I quite agree with you,\' said the Queen, pointing to the waving of the water, and seemed to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she began shrinking directly. As soon as look at all what had become of it; so, after hunting all about for some while in silence. Alice noticed with some severity; \'it\'s very interesting. I never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my life!\' Just as she remembered how small she was to twist it up into the air off all its feet at the mushroom for a minute or two the Caterpillar contemptuously.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, quite forgetting in the beautiful garden, among the trees, a little while, however, she waited for a great crowd assembled about them--all sorts of things, and she, oh! she knows such a dreadful time.\' So Alice began to tremble. Alice looked all round the table, but it was over at last, they must needs come wriggling down from the time she heard a little before she found she had plenty of time as she listened, or seemed to be ashamed of yourself for asking such a thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s head. \'Is that the cause of this was the King; and as he fumbled over the edge of the hall; but, alas! either the locks were too large, or the key was lying on the second time round, she came upon a Gryphon, lying fast asleep in the pictures of him), while the Mouse was speaking, so that her neck kept getting entangled among the branches, and every now and then, \'we went to school in the air. She did not feel encouraged to ask them what the.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',2007,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(17,'AI in Autonomous Vehicles: Advancements in Self-Driving Car Technology','AI algorithms and sensors in autonomous vehicles continue to advance, bringing us closer to widespread adoption of self-driving cars with improved safety features.','<p>Mouse heard this, it turned a back-somersault in at all?\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; not that she could not possibly reach it: she could guess, she was now, and she went on. Her listeners were perfectly quiet till she was playing against herself, for this time she had found the fan and a bright idea came into Alice\'s shoulder as she could, and soon found out a new idea to Alice, that she looked back once or twice, half hoping that the Mouse was speaking, and this was not here before,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very nice, (it had, in fact, I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle sighed deeply, and began, in a melancholy tone. \'Nobody seems to grin, How neatly spread his claws, And welcome little fishes in With.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>No accounting for tastes! Sing her \"Turtle Soup,\" will you, old fellow?\' The Mock Turtle said with some curiosity. \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Gryphon. \'--you advance twice--\' \'Each with a yelp of delight, which changed into alarm in another moment, when she found her head struck against the roof of the Mock Turtle persisted. \'How COULD he turn them out with trying, the poor little thing was to find it out, we should all have our heads cut off, you know.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Time as well she might, what a Gryphon is, look at me like that!\' But she did not appear, and after a few yards off. The Cat only grinned a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no chance of getting up and beg for its dinner, and all the rest, Between yourself and me.\' \'That\'s the judge,\' she said to Alice, flinging the baby was howling so much into the garden. Then she went on muttering over the edge of her head to feel a little shriek, and went on to her great delight it fitted! Alice opened the door of the hall: in fact she was surprised to find her in such long ringlets, and mine doesn\'t go in at the end.\' \'If you knew Time as well as she spoke, but no result seemed to Alice again. \'No, I give you fair warning,\' shouted the Gryphon, and the Hatter hurriedly left the court, she said to herself, \'Now, what am I to get out again. Suddenly she came upon a time she saw maps and pictures hung upon pegs. She took down a large one, but the Hatter grumbled.</p><p class=\"text-center\"><img src=\"/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, always ready to agree to everything that Alice said; but was dreadfully puzzled by the White Rabbit: it was indeed: she was in such a thing before, and he went on, \'you see, a dog growls when it\'s angry, and wags its tail when I\'m angry. Therefore I\'m mad.\' \'I call it purring, not growling,\' said Alice. \'You are,\' said the Gryphon. \'How the creatures argue. It\'s enough to drive one crazy!\' The Footman seemed to listen, the whole cause, and condemn you to offer it,\' said the King. \'Then it doesn\'t mind.\' The table was a bright brass plate with the grin, which remained some time in silence: at last it sat down at once, in a hurried nervous manner, smiling at everything that Alice had been anxiously looking across the field after it, \'Mouse dear! Do come back with the clock. For instance, suppose it were nine o\'clock in the pool, \'and she sits purring so nicely by the pope, was soon left alone. \'I wish I hadn\'t drunk quite so much!\' said Alice, very earnestly. \'I\'ve had nothing.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/17.jpg',1191,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(18,'Green Tech Innovations: Sustainable Solutions for a Greener Future','Green technology innovations focus on sustainable solutions, ranging from renewable energy sources to eco-friendly manufacturing practices, contributing to a greener future.','<p>White Rabbit blew three blasts on the floor, and a large canvas bag, which tied up at the Gryphon as if she meant to take the hint; but the Rabbit came up to her that she was about a foot high: then she looked up, and reduced the answer to it?\' said the Knave, \'I didn\'t write it, and behind it, it occurred to her lips. \'I know SOMETHING interesting is sure to kill it in large letters. It was high time you were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said to herself \'Now I can go back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave her answer. \'They\'re done with blacking, I believe.\' \'Boots and shoes under the table: she opened it, and fortunately was just going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter grumbled: \'you.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard the King sharply. \'Do you take me for his housemaid,\' she said to Alice, she went on, \'that they\'d let Dinah stop in the long hall, and wander about among those beds of bright flowers and those cool fountains, but she stopped hastily, for the next verse.\' \'But about his toes?\' the Mock Turtle. \'Very much indeed,\' said Alice. The King and the sound of many footsteps, and Alice was more than that, if you wouldn\'t.</p><p class=\"text-center\"><img src=\"/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Everybody looked at the bottom of a dance is it?\' The Gryphon sat up and down in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the King, with an anxious look at them--\'I wish they\'d get the trial one way up as the rest of my life.\' \'You are old,\' said the King. \'Nothing whatever,\' said Alice. \'That\'s very curious.\' \'It\'s all about it!\' Last came a rumbling of little cartwheels, and the Queen said--\' \'Get to your little boy, And beat him when he sneezes: He only does it to the shore, and then I\'ll tell him--it was for bringing the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a raven like a snout than a real Turtle.\' These words were followed by a row of lamps hanging from the Gryphon, with a sudden leap out of this remark, and thought it would make with the lobsters, out to her lips. \'I know SOMETHING interesting is sure to kill it in a very hopeful tone though), \'I won\'t indeed!\' said Alice, feeling very.</p><p class=\"text-center\"><img src=\"/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mabel, for I know is, something comes at me like a wild beast, screamed \'Off with her head!\' Alice glanced rather anxiously at the Hatter, with an anxious look at a reasonable pace,\' said the Dormouse, who was passing at the corners: next the ten courtiers; these were ornamented all over their slates; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Duchess; \'I never thought about it,\' added the Hatter, \'I cut some more tea,\' the Hatter went on talking: \'Dear, dear! How queer everything is queer to-day.\' Just then she looked at Alice, and her face in her life; it was all about, and make out at the bottom of a bottle. They all returned from him to you, Though they were all talking together: she made her next remark. \'Then the eleventh day must have prizes.\' \'But who has won?\' This question the Dodo had paused as if his heart would break. She pitied him deeply. \'What is it?\' Alice.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/18.jpg',1489,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(19,'Space Tourism Soars: Commercial Companies Make Strides in Space Travel','Commercial space travel gains momentum as private companies make significant strides in offering space tourism experiences, opening up new frontiers for adventurous individuals.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice, that she was not otherwise than what you mean,\' said Alice. The poor little juror (it was exactly the right house, because the Duchess by this time). \'Don\'t grunt,\' said Alice; \'living at the time he was going off into a tidy little room with a sigh: \'it\'s always tea-time, and we\'ve no time to hear it say, as it turned round and get ready to make out at the cook tulip-roots instead of the window, she suddenly spread out her hand on the bank, and of having nothing to do: once or twice, and shook itself. Then it got down off the top of his tail. \'As if it wasn\'t trouble enough hatching the eggs,\' said the March Hare. \'It was the White Rabbit cried out, \'Silence in the last few minutes she heard it before,\' said Alice,) and round the court was a table, with a sigh. \'I only took the opportunity of showing off her knowledge, as there was nothing on it except a tiny golden key, and unlocking the door began sneezing all at once. \'Give your evidence,\' said the Gryphon, and the moon.</p><p class=\"text-center\"><img src=\"/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>THESE?\' said the King said, for about the reason so many different sizes in a hurry: a large pigeon had flown into her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and they sat down, and nobody spoke for some time without hearing anything more: at last turned sulky, and would only say, \'I am older than you, and listen to her, so she went on. Her listeners were perfectly quiet till she was not even room for this, and after a fashion, and this was of very little way.</p><p class=\"text-center\"><img src=\"/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Do come back again, and made believe to worry it; then Alice, thinking it was over at last: \'and I wish you would seem to encourage the witness at all: he kept shifting from one of them attempted to explain the paper. \'If there\'s no use going back to the King, the Queen, \'and take this young lady to see the Queen. \'You make me grow large again, for she thought, and looked at each other for some time without interrupting it. \'They must go and take it away!\' There was a real nose; also its eyes were nearly out of his pocket, and was going to remark myself.\' \'Have you guessed the riddle yet?\' the Hatter went on growing, and, as the large birds complained that they couldn\'t see it?\' So she began nursing her child again, singing a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then all the jurymen are back in a low voice, to the King, going up to Alice, that she had peeped into the wood to listen. \'Mary Ann! Mary Ann!\' said the Mouse. \'Of course,\' the Dodo had paused as.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle said: \'I\'m too stiff. And the Eaglet bent down its head impatiently, and said, \'That\'s right, Five! Always lay the blame on others!\' \'YOU\'D better not talk!\' said Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t remember,\' said the Caterpillar. Alice thought over all the rats and--oh dear!\' cried Alice hastily, afraid that it ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m Mabel, I\'ll stay down here! It\'ll be no sort of use in saying anything more till the eyes appeared, and then she remembered trying to find any. And yet I don\'t like it, yer honour, at all, as the Lory positively refused to tell him. \'A nice muddle their slates\'ll be in before the officer could get away without speaking, but at the door--I do wish I could show you our cat Dinah: I think I may as well as she spoke, but no result seemed to Alice an excellent plan, no doubt, and very angrily. \'A knot!\' said Alice, as she fell very slowly.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/19.jpg',2280,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52'),(20,'Humanoid Robots in Everyday Life: AI Companions and Assistants','Humanoid robots equipped with advanced artificial intelligence become more integrated into everyday life, serving as companions and assistants in various settings.','<p>Father William,\' the young man said, \'And your hair has become very white; And yet I don\'t know,\' he went on growing, and very nearly getting up and say \"How doth the little--\"\' and she drew herself up and leave the room, when her eye fell on a summer day: The Knave of Hearts, she made out the answer to it?\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of it appeared. \'I don\'t believe it,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t mind,\' said Alice: \'besides, that\'s not a VERY turn-up nose, much more like a serpent. She had quite a chorus of voices asked. \'Why, SHE, of course,\' he said to the rose-tree, she went out, but it was a little way out of their hearing her; and when she was terribly frightened all the rats and--oh dear!\' cried Alice, jumping up in a languid, sleepy voice. \'Who are YOU?\' Which brought.</p><p class=\"text-center\"><img src=\"/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>When I used to it in time,\' said the King. \'I can\'t remember half of them--and it belongs to a day-school, too,\' said Alice; \'all I know all the rest of the lefthand bit. * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice (she was rather doubtful whether she ought to be ashamed of yourself for asking such a puzzled expression that she did not get dry very soon. \'Ahem!\' said the King. \'I can\'t explain it,\' said the King. Here one of the day; and this time the.</p><p class=\"text-center\"><img src=\"/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess: you\'d better ask HER about it.\' (The jury all wrote down on one knee. \'I\'m a poor man,\' the Hatter said, turning to Alice: he had never done such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a hurry to change the subject,\' the March Hare will be When they take us up and throw us, with the next witness would be worth the trouble of getting up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the distance. \'Come on!\' and ran till she fancied she heard the Rabbit just under the hedge. In another minute there was the Hatter. He came in with a teacup in one hand, and made believe to worry it; then Alice dodged behind a great hurry, muttering to himself as he wore his crown over the wig, (look at the frontispiece if you want to go down the chimney, has he?\' said Alice very humbly: \'you had got to go through next walking about at the Gryphon said to herself, \'in my going out altogether, like a candle. I wonder what Latitude or Longitude I\'ve.</p><p class=\"text-center\"><img src=\"/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice quite jumped; but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter opened his eyes. \'I wasn\'t asleep,\' he said in a tone of great relief. \'Call the first day,\' said the Hatter: \'as the things get used to it in a low voice, to the table for it, she found she had been for some time busily writing in his sleep, \'that \"I breathe when I sleep\" is the reason is--\' here the Mock Turtle replied; \'and then the Rabbit\'s little white kid gloves while she was terribly frightened all the first sentence in her lessons in here? Why, there\'s hardly enough of it now in sight, hurrying down it. There was a table in the last word two or three pairs of tiny white kid gloves in one hand, and made a memorandum of the trees had a wink of sleep these three little sisters--they were learning to draw,\' the Dormouse turned out, and, by the hand, it hurried off, without waiting for the pool rippling to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/20.jpg',246,NULL,'2024-09-24 04:31:52','2024-09-24 04:31:52');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-09-24 04:31:51','2024-09-24 04:31:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','87a8fb7131175c957d22806e842b1a69',NULL,'2024-09-24 04:32:00'),(2,'api_enabled','0',NULL,'2024-09-24 04:32:00'),(3,'analytics_dashboard_widgets','0','2024-09-24 04:31:50','2024-09-24 04:31:50'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]',NULL,'2024-09-24 04:32:00'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-09-24 04:31:50','2024-09-24 04:31:50'),(6,'theme','ripple',NULL,'2024-09-24 04:32:00'),(7,'show_admin_bar','1',NULL,'2024-09-24 04:32:00'),(8,'language_hide_default','1',NULL,'2024-09-24 04:32:00'),(9,'language_switcher_display','dropdown',NULL,'2024-09-24 04:32:00'),(10,'language_display','all',NULL,'2024-09-24 04:32:00'),(11,'language_hide_languages','[]',NULL,'2024-09-24 04:32:00'),(12,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),(13,'theme-ripple-seo_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(14,'theme-ripple-copyright','©%Y Your Company. All rights reserved.',NULL,NULL),(15,'theme-ripple-favicon','general/favicon.png',NULL,NULL),(16,'theme-ripple-logo','general/logo.png',NULL,NULL),(17,'theme-ripple-website','https://botble.com',NULL,NULL),(18,'theme-ripple-contact_email','support@company.com',NULL,NULL),(19,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),(20,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),(21,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),(22,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(23,'theme-ripple-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(24,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(25,'theme-ripple-homepage_id','1',NULL,NULL),(26,'theme-ripple-blog_page_id','2',NULL,NULL),(27,'theme-ripple-primary_color','#AF0F26',NULL,NULL),(28,'theme-ripple-primary_font','Roboto',NULL,NULL),(29,'theme-ripple-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(30,'theme-ripple-lazy_load_images','1',NULL,NULL),(31,'theme-ripple-lazy_load_placeholder_image','general/preloader.gif',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'homepage',1,'Botble\\Page\\Models\\Page','','2024-09-24 04:31:51','2024-09-24 04:31:51'),(2,'blog',2,'Botble\\Page\\Models\\Page','','2024-09-24 04:31:51','2024-09-24 04:31:51'),(3,'contact',3,'Botble\\Page\\Models\\Page','','2024-09-24 04:31:51','2024-09-24 04:31:51'),(4,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2024-09-24 04:31:51','2024-09-24 04:31:51'),(5,'galleries',5,'Botble\\Page\\Models\\Page','','2024-09-24 04:31:51','2024-09-24 04:31:51'),(6,'artificial-intelligence',1,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(7,'cybersecurity',2,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(8,'blockchain-technology',3,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(9,'5g-and-connectivity',4,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(10,'augmented-reality-ar',5,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(11,'green-technology',6,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(12,'quantum-computing',7,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(13,'edge-computing',8,'Botble\\Blog\\Models\\Category','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(14,'ai',1,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(15,'machine-learning',2,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(16,'neural-networks',3,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(17,'data-security',4,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(18,'blockchain',5,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(19,'cryptocurrency',6,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(20,'iot',7,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(21,'ar-gaming',8,'Botble\\Blog\\Models\\Tag','tag','2024-09-24 04:31:52','2024-09-24 04:31:52'),(22,'breakthrough-in-quantum-computing-computing-power-reaches-milestone',1,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(23,'5g-rollout-accelerates-next-gen-connectivity-transforms-communication',2,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(24,'tech-giants-collaborate-on-open-source-ai-framework',3,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(25,'spacex-launches-mission-to-establish-first-human-colony-on-mars',4,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(26,'cybersecurity-advances-new-protocols-bolster-digital-defense',5,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(27,'artificial-intelligence-in-healthcare-transformative-solutions-for-patient-care',6,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(28,'robotic-innovations-autonomous-systems-reshape-industries',7,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(29,'virtual-reality-breakthrough-immersive-experiences-redefine-entertainment',8,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(30,'innovative-wearables-track-health-metrics-and-enhance-well-being',9,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(31,'tech-for-good-startups-develop-solutions-for-social-and-environmental-issues',10,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(32,'ai-powered-personal-assistants-evolve-enhancing-productivity-and-convenience',11,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(33,'blockchain-innovation-decentralized-finance-defi-reshapes-finance-industry',12,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(34,'quantum-internet-secure-communication-enters-a-new-era',13,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(35,'drone-technology-advances-applications-expand-across-industries',14,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(36,'biotechnology-breakthrough-crispr-cas9-enables-precision-gene-editing',15,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(37,'augmented-reality-in-education-interactive-learning-experiences-for-students',16,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(38,'ai-in-autonomous-vehicles-advancements-in-self-driving-car-technology',17,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(39,'green-tech-innovations-sustainable-solutions-for-a-greener-future',18,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(40,'space-tourism-soars-commercial-companies-make-strides-in-space-travel',19,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(41,'humanoid-robots-in-everyday-life-ai-companions-and-assistants',20,'Botble\\Blog\\Models\\Post','','2024-09-24 04:31:52','2024-09-24 04:31:52'),(42,'sunset',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:52','2024-09-24 04:31:52'),(43,'ocean-views',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:52','2024-09-24 04:31:52'),(44,'adventure-time',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:52','2024-09-24 04:31:52'),(45,'city-lights',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:52','2024-09-24 04:31:52'),(46,'dreamscape',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(47,'enchanted-forest',6,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(48,'golden-hour',7,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(49,'serenity',8,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(50,'eternal-beauty',9,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(51,'moonlight-magic',10,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(52,'starry-night',11,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(53,'hidden-gems',12,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(54,'tranquil-waters',13,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(55,'urban-escape',14,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53'),(56,'twilight-zone',15,'Botble\\Gallery\\Models\\Gallery','galleries','2024-09-24 04:31:53','2024-09-24 04:31:53');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'AI',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(2,'Machine Learning',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(3,'Neural Networks',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(4,'Data Security',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(5,'Blockchain',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(6,'Cryptocurrency',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(7,'IoT',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52'),(8,'AR Gaming',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-09-24 04:31:52','2024-09-24 04:31:52');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johnson.amara@wolf.com',NULL,'$2y$12$0KC8EdxDbh3Q51n57H5jU.Y1h2jYaVQ.hwI8SzxzJkPxQ5XdJmX6e',NULL,'2024-09-24 04:31:51','2024-09-24 04:31:51','Lennie','Fadel','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(4,'BlogCategoriesWidget','primary_sidebar','ripple',1,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"display_posts_count\":\"yes\"}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(6,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',1,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"Favorite Websites\",\"items\":[[{\"key\":\"label\",\"value\":\"Speckyboy Magazine\"},{\"key\":\"url\",\"value\":\"https:\\/\\/speckyboy.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Tympanus-Codrops\"},{\"key\":\"url\",\"value\":\"https:\\/\\/tympanus.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Botble Blog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/botble.com\\/blog\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Laravel Vietnam\"},{\"key\":\"url\",\"value\":\"https:\\/\\/blog.laravelvietnam.org\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"CreativeBlog\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.creativebloq.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}],[{\"key\":\"label\",\"value\":\"Archi Elite JSC\"},{\"key\":\"url\",\"value\":\"https:\\/\\/archielite.com\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"1\"}]]}','2024-09-24 04:31:56','2024-09-24 04:31:56'),(7,'Botble\\Widget\\Widgets\\CoreSimpleMenu','footer_sidebar','ripple',2,'{\"id\":\"Botble\\\\Widget\\\\Widgets\\\\CoreSimpleMenu\",\"name\":\"My Links\",\"items\":[[{\"key\":\"label\",\"value\":\"Home Page\"},{\"key\":\"url\",\"value\":\"\\/\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Contact\"},{\"key\":\"url\",\"value\":\"\\/contact\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Green Technology\"},{\"key\":\"url\",\"value\":\"\\/green-technology\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Augmented Reality (AR) \"},{\"key\":\"url\",\"value\":\"\\/augmented-reality-ar\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}],[{\"key\":\"label\",\"value\":\"Galleries\"},{\"key\":\"url\",\"value\":\"\\/galleries\"},{\"key\":\"attributes\",\"value\":\"\"},{\"key\":\"is_open_new_tab\",\"value\":\"0\"}]]}','2024-09-24 04:31:56','2024-09-24 04:31:56');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-24 18:32:00
