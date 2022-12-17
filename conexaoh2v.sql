-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: conexaoh2v
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add head tag',1,'add_headtag'),(2,'Can change head tag',1,'change_headtag'),(3,'Can delete head tag',1,'delete_headtag'),(4,'Can view head tag',1,'view_headtag'),(5,'Can add social',2,'add_social'),(6,'Can change social',2,'change_social'),(7,'Can delete social',2,'delete_social'),(8,'Can view social',2,'view_social'),(9,'Can add slider',3,'add_slider'),(10,'Can change slider',3,'change_slider'),(11,'Can delete slider',3,'delete_slider'),(12,'Can view slider',3,'view_slider'),(13,'Can add service',4,'add_service'),(14,'Can change service',4,'change_service'),(15,'Can delete service',4,'delete_service'),(16,'Can view service',4,'view_service'),(17,'Can add statistic',5,'add_statistic'),(18,'Can change statistic',5,'change_statistic'),(19,'Can delete statistic',5,'delete_statistic'),(20,'Can view statistic',5,'view_statistic'),(21,'Can add about service',6,'add_aboutservice'),(22,'Can change about service',6,'change_aboutservice'),(23,'Can delete about service',6,'delete_aboutservice'),(24,'Can view about service',6,'view_aboutservice'),(25,'Can add faca parte',7,'add_facaparte'),(26,'Can change faca parte',7,'change_facaparte'),(27,'Can delete faca parte',7,'delete_facaparte'),(28,'Can view faca parte',7,'view_facaparte'),(29,'Can add about team',8,'add_aboutteam'),(30,'Can change about team',8,'change_aboutteam'),(31,'Can delete about team',8,'delete_aboutteam'),(32,'Can view about team',8,'view_aboutteam'),(33,'Can add team',9,'add_team'),(34,'Can change team',9,'change_team'),(35,'Can delete team',9,'delete_team'),(36,'Can view team',9,'view_team'),(37,'Can add about partner',10,'add_aboutpartner'),(38,'Can change about partner',10,'change_aboutpartner'),(39,'Can delete about partner',10,'delete_aboutpartner'),(40,'Can view about partner',10,'view_aboutpartner'),(41,'Can add partner',11,'add_partner'),(42,'Can change partner',11,'change_partner'),(43,'Can delete partner',11,'delete_partner'),(44,'Can view partner',11,'view_partner'),(45,'Can add footer',12,'add_footer'),(46,'Can change footer',12,'change_footer'),(47,'Can delete footer',12,'delete_footer'),(48,'Can view footer',12,'view_footer'),(49,'Can add header',13,'add_header'),(50,'Can change header',13,'change_header'),(51,'Can delete header',13,'delete_header'),(52,'Can view header',13,'view_header'),(53,'Can add nmvv',14,'add_nmvv'),(54,'Can change nmvv',14,'change_nmvv'),(55,'Can delete nmvv',14,'delete_nmvv'),(56,'Can view nmvv',14,'view_nmvv'),(57,'Can add log entry',15,'add_logentry'),(58,'Can change log entry',15,'change_logentry'),(59,'Can delete log entry',15,'delete_logentry'),(60,'Can view log entry',15,'view_logentry'),(61,'Can add permission',16,'add_permission'),(62,'Can change permission',16,'change_permission'),(63,'Can delete permission',16,'delete_permission'),(64,'Can view permission',16,'view_permission'),(65,'Can add group',17,'add_group'),(66,'Can change group',17,'change_group'),(67,'Can delete group',17,'delete_group'),(68,'Can view group',17,'view_group'),(69,'Can add user',18,'add_user'),(70,'Can change user',18,'change_user'),(71,'Can delete user',18,'delete_user'),(72,'Can view user',18,'view_user'),(73,'Can add content type',19,'add_contenttype'),(74,'Can change content type',19,'change_contenttype'),(75,'Can delete content type',19,'delete_contenttype'),(76,'Can view content type',19,'view_contenttype'),(77,'Can add session',20,'add_session'),(78,'Can change session',20,'change_session'),(79,'Can delete session',20,'delete_session'),(80,'Can view session',20,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (15,'admin','logentry'),(17,'auth','group'),(16,'auth','permission'),(18,'auth','user'),(19,'contenttypes','contenttype'),(10,'landing','aboutpartner'),(6,'landing','aboutservice'),(8,'landing','aboutteam'),(7,'landing','facaparte'),(12,'landing','footer'),(13,'landing','header'),(1,'landing','headtag'),(14,'landing','nmvv'),(11,'landing','partner'),(4,'landing','service'),(3,'landing','slider'),(2,'landing','social'),(5,'landing','statistic'),(9,'landing','team'),(20,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-16 18:16:53.863083'),(2,'auth','0001_initial','2022-12-16 18:16:55.582986'),(3,'admin','0001_initial','2022-12-16 18:16:55.927749'),(4,'admin','0002_logentry_remove_auto_add','2022-12-16 18:16:55.945736'),(5,'admin','0003_logentry_add_action_flag_choices','2022-12-16 18:16:55.965153'),(6,'contenttypes','0002_remove_content_type_name','2022-12-16 18:16:56.127568'),(7,'auth','0002_alter_permission_name_max_length','2022-12-16 18:16:56.266336'),(8,'auth','0003_alter_user_email_max_length','2022-12-16 18:16:56.314778'),(9,'auth','0004_alter_user_username_opts','2022-12-16 18:16:56.330040'),(10,'auth','0005_alter_user_last_login_null','2022-12-16 18:16:56.449615'),(11,'auth','0006_require_contenttypes_0002','2022-12-16 18:16:56.458663'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-16 18:16:56.475978'),(13,'auth','0008_alter_user_username_max_length','2022-12-16 18:16:56.612361'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-16 18:16:56.754398'),(15,'auth','0010_alter_group_name_max_length','2022-12-16 18:16:56.791494'),(16,'auth','0011_update_proxy_permissions','2022-12-16 18:16:56.810231'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-16 18:16:56.967214'),(18,'landing','0001_initial','2022-12-16 18:16:57.123206'),(19,'landing','0002_slider','2022-12-16 18:16:57.184958'),(20,'landing','0003_mvv_remove_about_title_about_title_1_about_title_2','2022-12-16 18:16:57.406582'),(21,'landing','0004_dado_alter_mvv_class_icon','2022-12-16 18:16:57.468119'),(22,'landing','0005_alter_dado_title_alter_dado_unit','2022-12-16 18:16:57.498282'),(23,'landing','0006_service_rename_dado_statistic_alter_mvv_link_and_more','2022-12-16 18:16:57.635363'),(24,'landing','0007_aboutservice','2022-12-16 18:16:57.696875'),(25,'landing','0008_facaparte','2022-12-16 18:16:57.762947'),(26,'landing','0009_facaparte_background_image','2022-12-16 18:16:57.833610'),(27,'landing','0010_aboutteam_team','2022-12-16 18:16:57.938728'),(28,'landing','0011_aboutpartner_partner','2022-12-16 18:16:58.054468'),(29,'landing','0012_footer','2022-12-16 18:16:58.126567'),(30,'landing','0013_alter_footer_phone','2022-12-16 18:16:58.241996'),(31,'landing','0014_header_nmvv_delete_about_delete_mvv_and_more','2022-12-16 18:16:58.525154'),(32,'sessions','0001_initial','2022-12-16 18:16:58.616657');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_aboutpartner`
--

DROP TABLE IF EXISTS `landing_aboutpartner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_aboutpartner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_aboutpartner`
--

LOCK TABLES `landing_aboutpartner` WRITE;
/*!40000 ALTER TABLE `landing_aboutpartner` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_aboutpartner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_aboutservice`
--

DROP TABLE IF EXISTS `landing_aboutservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_aboutservice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_1` varchar(50) NOT NULL,
  `title_2` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_aboutservice`
--

LOCK TABLES `landing_aboutservice` WRITE;
/*!40000 ALTER TABLE `landing_aboutservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_aboutservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_aboutteam`
--

DROP TABLE IF EXISTS `landing_aboutteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_aboutteam` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_aboutteam`
--

LOCK TABLES `landing_aboutteam` WRITE;
/*!40000 ALTER TABLE `landing_aboutteam` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_aboutteam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_facaparte`
--

DROP TABLE IF EXISTS `landing_facaparte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_facaparte` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title_1` varchar(50) NOT NULL,
  `title_2` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `link_1` varchar(200) NOT NULL,
  `text_link_1` varchar(50) NOT NULL,
  `link_2` varchar(200) NOT NULL,
  `text_link_2` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_facaparte`
--

LOCK TABLES `landing_facaparte` WRITE;
/*!40000 ALTER TABLE `landing_facaparte` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_facaparte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_footer`
--

DROP TABLE IF EXISTS `landing_footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_footer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `postal_address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_footer`
--

LOCK TABLES `landing_footer` WRITE;
/*!40000 ALTER TABLE `landing_footer` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_header`
--

DROP TABLE IF EXISTS `landing_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_header` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_header`
--

LOCK TABLES `landing_header` WRITE;
/*!40000 ALTER TABLE `landing_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_headtag`
--

DROP TABLE IF EXISTS `landing_headtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_headtag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `og_url` varchar(200) NOT NULL,
  `og_type` varchar(200) NOT NULL,
  `og_title` varchar(200) NOT NULL,
  `og_description` varchar(200) NOT NULL,
  `og_image` varchar(100) NOT NULL,
  `og_site_name` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `author` varchar(20) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `title` varchar(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_headtag`
--

LOCK TABLES `landing_headtag` WRITE;
/*!40000 ALTER TABLE `landing_headtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_headtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_nmvv`
--

DROP TABLE IF EXISTS `landing_nmvv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_nmvv` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `business_title_1` varchar(50) NOT NULL,
  `business_title_2` varchar(50) NOT NULL,
  `business_text` longtext NOT NULL,
  `mission_title` varchar(50) NOT NULL,
  `mission_text` longtext NOT NULL,
  `mission_link` varchar(200) NOT NULL,
  `mission_text_link` varchar(50) NOT NULL,
  `vision_title` varchar(50) NOT NULL,
  `vision_text` longtext NOT NULL,
  `vision_link` varchar(200) NOT NULL,
  `vision_text_link` varchar(50) NOT NULL,
  `values_title` varchar(50) NOT NULL,
  `values_text` longtext NOT NULL,
  `values_link` varchar(200) NOT NULL,
  `values_text_link` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_nmvv`
--

LOCK TABLES `landing_nmvv` WRITE;
/*!40000 ALTER TABLE `landing_nmvv` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_nmvv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_partner`
--

DROP TABLE IF EXISTS `landing_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_partner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_partner`
--

LOCK TABLES `landing_partner` WRITE;
/*!40000 ALTER TABLE `landing_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_service`
--

DROP TABLE IF EXISTS `landing_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_icon` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  `text_link` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_service`
--

LOCK TABLES `landing_service` WRITE;
/*!40000 ALTER TABLE `landing_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_slider`
--

DROP TABLE IF EXISTS `landing_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_slider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slider_foto` varchar(100) NOT NULL,
  `slider_title_1` varchar(50) NOT NULL,
  `slider_title_2` varchar(50) NOT NULL,
  `slider_title_3` varchar(50) NOT NULL,
  `slider_link` varchar(200) NOT NULL,
  `slider_link_text` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_slider`
--

LOCK TABLES `landing_slider` WRITE;
/*!40000 ALTER TABLE `landing_slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_social`
--

DROP TABLE IF EXISTS `landing_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_social` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `social_network_name` varchar(30) NOT NULL,
  `social_network_link` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_social`
--

LOCK TABLES `landing_social` WRITE;
/*!40000 ALTER TABLE `landing_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_statistic`
--

DROP TABLE IF EXISTS `landing_statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_statistic` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `value` varchar(20) NOT NULL,
  `unit` varchar(2) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_statistic`
--

LOCK TABLES `landing_statistic` WRITE;
/*!40000 ALTER TABLE `landing_statistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_team`
--

DROP TABLE IF EXISTS `landing_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_team` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `instagram_link` varchar(50) NOT NULL,
  `linkedin_link` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_team`
--

LOCK TABLES `landing_team` WRITE;
/*!40000 ALTER TABLE `landing_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-16 22:50:54
