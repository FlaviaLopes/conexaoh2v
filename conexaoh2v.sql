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
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_interface_theme` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint unsigned NOT NULL,
  `logo_max_width` smallint unsigned NOT NULL,
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`),
  CONSTRAINT `admin_interface_theme_chk_1` CHECK ((`logo_max_height` >= 0)),
  CONSTRAINT `admin_interface_theme_chk_2` CHECK ((`logo_max_width` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',1,'Administração do Django',1,'admin-interface/logo/logo.png',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1,'default-select',1,0,0,0);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'editor');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,1),(2,1,2),(3,1,4),(4,1,5),(5,1,6),(6,1,8),(7,1,13),(8,1,14),(9,1,16),(10,1,17),(11,1,18),(12,1,20),(13,1,21),(14,1,22),(15,1,24),(16,1,25),(17,1,26),(18,1,28),(19,1,33),(20,1,34),(21,1,36),(22,1,41),(23,1,42),(24,1,44),(25,1,49),(26,1,50),(27,1,52),(28,1,53),(29,1,54),(30,1,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add head tag',1,'add_headtag'),(2,'Can change head tag',1,'change_headtag'),(3,'Can delete head tag',1,'delete_headtag'),(4,'Can view head tag',1,'view_headtag'),(5,'Can add header',2,'add_header'),(6,'Can change header',2,'change_header'),(7,'Can delete header',2,'delete_header'),(8,'Can view header',2,'view_header'),(9,'Can add slider',3,'add_slider'),(10,'Can change slider',3,'change_slider'),(11,'Can delete slider',3,'delete_slider'),(12,'Can view slider',3,'view_slider'),(13,'Can add social',4,'add_social'),(14,'Can change social',4,'change_social'),(15,'Can delete social',4,'delete_social'),(16,'Can view social',4,'view_social'),(17,'Can add nmvv',5,'add_nmvv'),(18,'Can change nmvv',5,'change_nmvv'),(19,'Can delete nmvv',5,'delete_nmvv'),(20,'Can view nmvv',5,'view_nmvv'),(21,'Can add statistic',6,'add_statistic'),(22,'Can change statistic',6,'change_statistic'),(23,'Can delete statistic',6,'delete_statistic'),(24,'Can view statistic',6,'view_statistic'),(25,'Can add service',7,'add_service'),(26,'Can change service',7,'change_service'),(27,'Can delete service',7,'delete_service'),(28,'Can view service',7,'view_service'),(29,'Can add about service',8,'add_aboutservice'),(30,'Can change about service',8,'change_aboutservice'),(31,'Can delete about service',8,'delete_aboutservice'),(32,'Can view about service',8,'view_aboutservice'),(33,'Can add faca parte',9,'add_facaparte'),(34,'Can change faca parte',9,'change_facaparte'),(35,'Can delete faca parte',9,'delete_facaparte'),(36,'Can view faca parte',9,'view_facaparte'),(37,'Can add about team',10,'add_aboutteam'),(38,'Can change about team',10,'change_aboutteam'),(39,'Can delete about team',10,'delete_aboutteam'),(40,'Can view about team',10,'view_aboutteam'),(41,'Can add team',11,'add_team'),(42,'Can change team',11,'change_team'),(43,'Can delete team',11,'delete_team'),(44,'Can view team',11,'view_team'),(45,'Can add about partner',12,'add_aboutpartner'),(46,'Can change about partner',12,'change_aboutpartner'),(47,'Can delete about partner',12,'delete_aboutpartner'),(48,'Can view about partner',12,'view_aboutpartner'),(49,'Can add partner',13,'add_partner'),(50,'Can change partner',13,'change_partner'),(51,'Can delete partner',13,'delete_partner'),(52,'Can view partner',13,'view_partner'),(53,'Can add footer',14,'add_footer'),(54,'Can change footer',14,'change_footer'),(55,'Can delete footer',14,'delete_footer'),(56,'Can view footer',14,'view_footer'),(57,'Can add log entry',15,'add_logentry'),(58,'Can change log entry',15,'change_logentry'),(59,'Can delete log entry',15,'delete_logentry'),(60,'Can view log entry',15,'view_logentry'),(61,'Can add permission',16,'add_permission'),(62,'Can change permission',16,'change_permission'),(63,'Can delete permission',16,'delete_permission'),(64,'Can view permission',16,'view_permission'),(65,'Can add group',17,'add_group'),(66,'Can change group',17,'change_group'),(67,'Can delete group',17,'delete_group'),(68,'Can view group',17,'view_group'),(69,'Can add user',18,'add_user'),(70,'Can change user',18,'change_user'),(71,'Can delete user',18,'delete_user'),(72,'Can view user',18,'view_user'),(73,'Can add content type',19,'add_contenttype'),(74,'Can change content type',19,'change_contenttype'),(75,'Can delete content type',19,'delete_contenttype'),(76,'Can view content type',19,'view_contenttype'),(77,'Can add session',20,'add_session'),(78,'Can change session',20,'change_session'),(79,'Can delete session',20,'delete_session'),(80,'Can view session',20,'view_session'),(81,'Can add Theme',21,'add_theme'),(82,'Can change Theme',21,'change_theme'),(83,'Can delete Theme',21,'delete_theme'),(84,'Can view Theme',21,'view_theme'),(85,'Can add item partner',22,'add_itempartner'),(86,'Can change item partner',22,'change_itempartner'),(87,'Can delete item partner',22,'delete_itempartner'),(88,'Can view item partner',22,'view_itempartner'),(89,'Can add item service',23,'add_itemservice'),(90,'Can change item service',23,'change_itemservice'),(91,'Can delete item service',23,'delete_itemservice'),(92,'Can view item service',23,'view_itemservice'),(93,'Can add item team',24,'add_itemteam'),(94,'Can change item team',24,'change_itemteam'),(95,'Can delete item team',24,'delete_itemteam'),(96,'Can view item team',24,'view_itemteam');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$ksO4SWp3Wsk28fCZKxkALh$63agdALNqWmEW/VmVyOeyqn298hvmJyn+1DLhBnhgPU=','2022-12-20 22:45:11.305094',1,'flavia','','','flavialopesads@gmail.com',1,1,'2022-12-20 16:43:37.112587'),(2,'pbkdf2_sha256$390000$u9nuA7UnbzbawAFX7oHL2o$HDZHQZxYyAo0txRpsOpbhlW+OJODbBkN8eb6jeGAaIo=',NULL,0,'acsa','Acsa','Martins','acsa_martins@yahoo.com.br',1,1,'2022-12-20 22:59:59.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (1,2,1),(2,2,2),(3,2,4),(4,2,5),(5,2,6),(6,2,8),(7,2,13),(8,2,14),(9,2,16),(10,2,17),(11,2,18),(12,2,20),(13,2,21),(14,2,22),(15,2,24),(16,2,25),(17,2,26),(18,2,28),(19,2,33),(20,2,34),(21,2,36),(22,2,41),(23,2,42),(24,2,44),(25,2,49),(26,2,50),(27,2,52),(28,2,53),(29,2,54),(30,2,56);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-20 16:44:26.298321','1','first header teste',1,'[{\"added\": {}}]',2,1),(2,'2022-12-20 16:45:26.998711','1','first slider teste',1,'[{\"added\": {}}]',3,1),(3,'2022-12-20 20:14:00.024398','1','Django',1,'[{\"added\": {}}]',21,1),(4,'2022-12-20 20:46:04.822645','1','first header teste',2,'[{\"added\": {\"name\": \"slider\", \"object\": \"first slider teste\"}}]',2,1),(5,'2022-12-20 20:46:20.408430','2','second slider teste',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',3,1),(6,'2022-12-20 21:19:29.463177','1','Onde atuamos',1,'[{\"added\": {}}, {\"added\": {\"name\": \"service\", \"object\": \"Mentorias\"}}, {\"added\": {\"name\": \"service\", \"object\": \"Cursos\"}}, {\"added\": {\"name\": \"service\", \"object\": \"Divulga\\u00e7\\u00f5es\"}}]',8,1),(7,'2022-12-20 21:27:53.634000','1','Nosso Propósito',1,'[{\"added\": {}}]',5,1),(8,'2022-12-20 21:31:57.676490','1','Faça Parte Conosco',1,'[{\"added\": {}}]',9,1),(9,'2022-12-20 21:32:40.640381','1','projetos de H2V no Brasil',1,'[{\"added\": {}}]',6,1),(10,'2022-12-20 21:34:47.505774','2','de dólares investidos',1,'[{\"added\": {}}]',6,1),(11,'2022-12-20 21:39:27.141704','3','de aumento de vagas',1,'[{\"added\": {}}]',6,1),(12,'2022-12-20 21:39:41.384189','4','na área de H2V são mulheres',1,'[{\"added\": {}}]',6,1),(13,'2022-12-20 21:55:55.889922','1','Equipe',1,'[{\"added\": {}}, {\"added\": {\"name\": \"team\", \"object\": \"ANDRESSA BERGANTIN\"}}, {\"added\": {\"name\": \"team\", \"object\": \"Jade Sim\\u00f5es\"}}, {\"added\": {\"name\": \"team\", \"object\": \"Acsa Martins\"}}]',10,1),(14,'2022-12-20 21:57:31.068883','1','Equipe',2,'[{\"added\": {\"name\": \"team\", \"object\": \"LUIS ENRIQUE ALVAREZ\"}}, {\"added\": {\"name\": \"team\", \"object\": \"Amanda Gomes\"}}, {\"added\": {\"name\": \"team\", \"object\": \"Fl\\u00e1via Lopes\"}}]',10,1),(15,'2022-12-20 22:24:22.732439','1','Parceiros',1,'[{\"added\": {}}, {\"added\": {\"name\": \"item partner\", \"object\": \"Parceiro 1\"}}]',13,1),(16,'2022-12-20 22:25:35.776934','1','Parceiros',2,'[{\"added\": {\"name\": \"item partner\", \"object\": \"Parceiro 2\"}}, {\"added\": {\"name\": \"item partner\", \"object\": \"Parceiro 3\"}}, {\"added\": {\"name\": \"item partner\", \"object\": \"Parceiro 4\"}}]',13,1),(17,'2022-12-20 22:26:03.662831','1','Parceiros',2,'[{\"added\": {\"name\": \"item partner\", \"object\": \"Parceiro 5\"}}]',13,1),(18,'2022-12-20 22:32:20.956292','2','Equipe',3,'',11,1),(19,'2022-12-20 22:32:20.963995','1','Equipe',3,'',11,1),(20,'2022-12-20 22:32:20.971558','6','Equipe',3,'',11,1),(21,'2022-12-20 22:32:20.979680','5','Equipe',3,'',11,1),(22,'2022-12-20 22:32:20.987710','4','Equipe',3,'',11,1),(23,'2022-12-20 22:33:45.191282','3','Equipe',2,'[{\"changed\": {\"fields\": [\"Text\"]}}, {\"added\": {\"name\": \"item team\", \"object\": \"ANDRESSA BERGANTIN\"}}, {\"added\": {\"name\": \"item team\", \"object\": \"Jade Sim\\u00f5es\"}}, {\"added\": {\"name\": \"item team\", \"object\": \"Acsa Martins\"}}]',11,1),(24,'2022-12-20 22:34:32.090204','3','Equipe',2,'[{\"added\": {\"name\": \"item team\", \"object\": \"LUIS ENRIQUE ALVAREZ\"}}, {\"added\": {\"name\": \"item team\", \"object\": \"Amanda Gomes\"}}, {\"added\": {\"name\": \"item team\", \"object\": \"Fl\\u00e1via Lopes\"}}]',11,1),(25,'2022-12-20 22:36:19.961461','1','Av. Tancredo Neves, 6731 - Jardim Itaipu, Foz do Iguaçu - PR, 85867-900',1,'[{\"added\": {}}]',14,1),(26,'2022-12-20 22:40:12.281134','1','first slider teste',2,'[{\"changed\": {\"fields\": [\"Slider title 1\", \"Slider title 2\", \"Slider title 3\", \"Slider link\", \"Slider link text\"]}}]',3,1),(27,'2022-12-20 22:41:39.967237','1','first slider teste',2,'[]',3,1),(28,'2022-12-20 22:45:26.163900','2','second slider teste',2,'[{\"changed\": {\"fields\": [\"Slider link\", \"Slider link text\"]}}]',3,1),(29,'2022-12-20 22:48:12.357839','2','second slider teste',2,'[{\"changed\": {\"fields\": [\"Slider title 1\", \"Slider title 2\"]}}]',3,1),(30,'2022-12-20 22:50:00.597615','3','third-slide-test',1,'[{\"added\": {}}]',3,1),(31,'2022-12-20 22:50:35.773668','2','second slider teste',2,'[{\"changed\": {\"fields\": [\"Slider title 3\"]}}]',3,1),(32,'2022-12-20 22:51:14.752969','3','third-slide-test',2,'[{\"changed\": {\"fields\": [\"Slider title 2\"]}}]',3,1),(33,'2022-12-20 22:53:20.403010','1','Mentorias',1,'[{\"added\": {}}]',23,1),(34,'2022-12-20 22:54:44.787431','1','Onde Atuamos -',2,'[{\"changed\": {\"fields\": [\"Title 2\"]}}]',7,1),(35,'2022-12-20 22:55:03.738845','2','Cursos',1,'[{\"added\": {}}]',23,1),(36,'2022-12-20 22:55:35.858566','3','Divulgação',1,'[{\"added\": {}}]',23,1),(37,'2022-12-20 22:55:47.719677','3','Onde Atuamos',3,'',7,1),(38,'2022-12-20 22:55:47.727546','2','Onde Atuamos',3,'',7,1),(39,'2022-12-20 22:56:03.222030','1','Onde Atuamos',2,'[{\"changed\": {\"fields\": [\"Title 2\"]}}]',7,1),(40,'2022-12-20 22:56:32.001711','1','Onde Atuamos',2,'[{\"changed\": {\"fields\": [\"Text\"]}}]',7,1),(41,'2022-12-20 22:59:59.685759','2','acsa',1,'[{\"added\": {}}]',18,1),(42,'2022-12-20 23:11:23.729921','1','editor',1,'[{\"added\": {}}]',17,1),(43,'2022-12-20 23:11:40.892895','2','acsa',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Groups\", \"User permissions\"]}}]',18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (15,'admin','logentry'),(21,'admin_interface','theme'),(17,'auth','group'),(16,'auth','permission'),(18,'auth','user'),(19,'contenttypes','contenttype'),(12,'landing','aboutpartner'),(8,'landing','aboutservice'),(10,'landing','aboutteam'),(9,'landing','facaparte'),(14,'landing','footer'),(2,'landing','header'),(1,'landing','headtag'),(22,'landing','itempartner'),(23,'landing','itemservice'),(24,'landing','itemteam'),(5,'landing','nmvv'),(13,'landing','partner'),(7,'landing','service'),(3,'landing','slider'),(4,'landing','social'),(6,'landing','statistic'),(11,'landing','team'),(20,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-20 16:27:34.469674'),(2,'auth','0001_initial','2022-12-20 16:27:36.044909'),(3,'admin','0001_initial','2022-12-20 16:27:36.339982'),(4,'admin','0002_logentry_remove_auto_add','2022-12-20 16:27:36.354684'),(5,'admin','0003_logentry_add_action_flag_choices','2022-12-20 16:27:36.370745'),(6,'contenttypes','0002_remove_content_type_name','2022-12-20 16:27:36.534477'),(7,'auth','0002_alter_permission_name_max_length','2022-12-20 16:27:36.659193'),(8,'auth','0003_alter_user_email_max_length','2022-12-20 16:27:36.694745'),(9,'auth','0004_alter_user_username_opts','2022-12-20 16:27:36.710157'),(10,'auth','0005_alter_user_last_login_null','2022-12-20 16:27:36.819990'),(11,'auth','0006_require_contenttypes_0002','2022-12-20 16:27:36.828634'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-20 16:27:36.844706'),(13,'auth','0008_alter_user_username_max_length','2022-12-20 16:27:36.977863'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-20 16:27:37.119889'),(15,'auth','0010_alter_group_name_max_length','2022-12-20 16:27:37.155246'),(16,'auth','0011_update_proxy_permissions','2022-12-20 16:27:37.179680'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-20 16:27:37.317181'),(18,'sessions','0001_initial','2022-12-20 16:27:37.409585'),(19,'landing','0001_initial','2022-12-20 16:35:13.023905'),(20,'admin_interface','0001_initial','2022-12-20 20:10:07.572608'),(21,'admin_interface','0002_add_related_modal','2022-12-20 20:10:07.821673'),(22,'admin_interface','0003_add_logo_color','2022-12-20 20:10:07.891733'),(23,'admin_interface','0004_rename_title_color','2022-12-20 20:10:07.949555'),(24,'admin_interface','0005_add_recent_actions_visible','2022-12-20 20:10:08.020172'),(25,'admin_interface','0006_bytes_to_str','2022-12-20 20:10:08.091764'),(26,'admin_interface','0007_add_favicon','2022-12-20 20:10:08.154559'),(27,'admin_interface','0008_change_related_modal_background_opacity_type','2022-12-20 20:10:08.327828'),(28,'admin_interface','0009_add_enviroment','2022-12-20 20:10:08.545958'),(29,'admin_interface','0010_add_localization','2022-12-20 20:10:08.585572'),(30,'admin_interface','0011_add_environment_options','2022-12-20 20:10:08.819950'),(31,'admin_interface','0012_update_verbose_names','2022-12-20 20:10:08.833505'),(32,'admin_interface','0013_add_related_modal_close_button','2022-12-20 20:10:08.902376'),(33,'admin_interface','0014_name_unique','2022-12-20 20:10:08.953175'),(34,'admin_interface','0015_add_language_chooser_active','2022-12-20 20:10:09.016781'),(35,'admin_interface','0016_add_language_chooser_display','2022-12-20 20:10:09.088426'),(36,'admin_interface','0017_change_list_filter_dropdown','2022-12-20 20:10:09.100445'),(37,'admin_interface','0018_theme_list_filter_sticky','2022-12-20 20:10:09.181488'),(38,'admin_interface','0019_add_form_sticky','2022-12-20 20:10:09.323640'),(39,'admin_interface','0020_module_selected_colors','2022-12-20 20:10:09.481628'),(40,'admin_interface','0021_file_extension_validator','2022-12-20 20:10:09.498667'),(41,'admin_interface','0022_add_logo_max_width_and_height','2022-12-20 20:10:09.804581'),(42,'admin_interface','0023_theme_foldable_apps','2022-12-20 20:10:09.877883'),(43,'admin_interface','0024_remove_theme_css','2022-12-20 20:10:09.935348'),(44,'admin_interface','0025_theme_language_chooser_control','2022-12-20 20:10:10.008059'),(45,'admin_interface','0026_theme_list_filter_highlight','2022-12-20 20:10:10.083198'),(46,'admin_interface','0027_theme_list_filter_removal_links','2022-12-20 20:10:10.156561'),(47,'admin_interface','0028_theme_show_fieldsets_as_tabs_and_more','2022-12-20 20:10:10.311481'),(48,'landing','0002_service_about_service','2022-12-20 21:17:24.433883'),(49,'landing','0003_team_about_team_alter_aboutservice_title_1_and_more','2022-12-20 21:51:08.573231'),(50,'landing','0004_itempartner_itemservice_itemteam_delete_aboutpartner_and_more','2022-12-20 22:20:53.358669'),(51,'landing','0005_alter_footer_email_alter_footer_postal_address','2022-12-20 22:44:48.350520');
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
INSERT INTO `django_session` VALUES ('wh4kuymwlfnx7l99toc30d2adzuwnlzj','.eJxVjDsOwjAQRO_iGln-x6GkzxmstXeNA8iW4qRC3J1ESgHdaN6bebMA21rC1mkJM7Irk-zy20VIT6oHwAfUe-Op1XWZIz8UftLOp4b0up3u30GBXva1BiHcKDUAOeOtwexEVAmczwSkFBgyFAfKkDBm6Uar94R2QOcNWs0-X_tLOOo:1p7lMF:qr-2HY5CGUVLf_o4R9AvT_c1VQGZgm11d4CVUbezjY8','2023-01-03 22:45:11.314447');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
  `background_image` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_facaparte`
--

LOCK TABLES `landing_facaparte` WRITE;
/*!40000 ALTER TABLE `landing_facaparte` DISABLE KEYS */;
INSERT INTO `landing_facaparte` VALUES (1,'O Futuro É Verde','Faça Parte Conosco','Conecte-se a nossa rede de apoiadores e parceiros e contribua para a aceleração do mercado de trabalho em Hidrogênio Verde. Os próximos anos irão requerer pessoas capacitadas para trabalhar na área em vários níveis, de técnico a especialista. Se você é um especialista em energias renováveis e tem disponibilidade para mentorar, cadastre-se como um apoiador. Se você é uma empresa do setor e tem interesse em fechar parceria conosco, entre em contato para ser um parceiro.','#','Apoiador','#','Parceiro','team-text-bg-2.jpg','2022-12-20 21:31:27.000000');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_footer`
--

LOCK TABLES `landing_footer` WRITE;
/*!40000 ALTER TABLE `landing_footer` DISABLE KEYS */;
INSERT INTO `landing_footer` VALUES (1,'Av. Tancredo Neves, 6731 - Jardim Itaipu, Foz do Iguaçu - PR, 85867-900','email@gmail.com','+55 11111-1111','footer-logo_aZvZIek.png','2022-12-20 22:35:12.000000');
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
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_header`
--

LOCK TABLES `landing_header` WRITE;
/*!40000 ALTER TABLE `landing_header` DISABLE KEYS */;
INSERT INTO `landing_header` VALUES (1,'first header teste','logo_Yh0dBic.png','2022-12-20 16:43:54.000000');
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
  `name` varchar(50) NOT NULL,
  `title` varchar(20) NOT NULL,
  `og_url` varchar(200) NOT NULL,
  `og_type` varchar(200) NOT NULL,
  `og_title` varchar(200) NOT NULL,
  `og_description` varchar(200) NOT NULL,
  `og_image` varchar(100) NOT NULL,
  `og_site_name` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL,
  `author` varchar(50) NOT NULL,
  `keywords` varchar(200) NOT NULL,
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
-- Table structure for table `landing_itempartner`
--

DROP TABLE IF EXISTS `landing_itempartner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_itempartner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `partner_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_itempartner_partner_id_1c39af9b_fk_landing_partner_id` (`partner_id`),
  CONSTRAINT `landing_itempartner_partner_id_1c39af9b_fk_landing_partner_id` FOREIGN KEY (`partner_id`) REFERENCES `landing_partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_itempartner`
--

LOCK TABLES `landing_itempartner` WRITE;
/*!40000 ALTER TABLE `landing_itempartner` DISABLE KEYS */;
INSERT INTO `landing_itempartner` VALUES (1,'Parceiro 1','client-img-3_m6SCa3p.png','2022-12-20 22:23:52.000000',1),(2,'Parceiro 2','client-img-3_NZPcJS2.png','2022-12-20 22:25:02.000000',1),(3,'Parceiro 3','client-img-4_P6Rr6Av.png','2022-12-20 22:25:02.000000',1),(4,'Parceiro 4','client-img-4_LwWsBHi.png','2022-12-20 22:25:02.000000',1),(5,'Parceiro 5','client-img-3_1deCnSw.png','2022-12-20 22:25:45.000000',1);
/*!40000 ALTER TABLE `landing_itempartner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_itemservice`
--

DROP TABLE IF EXISTS `landing_itemservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_itemservice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  `text_link` varchar(50) NOT NULL,
  `class_icon` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `service_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_itemservice_service_id_71f3e5f3_fk_landing_service_id` (`service_id`),
  CONSTRAINT `landing_itemservice_service_id_71f3e5f3_fk_landing_service_id` FOREIGN KEY (`service_id`) REFERENCES `landing_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_itemservice`
--

LOCK TABLES `landing_itemservice` WRITE;
/*!40000 ALTER TABLE `landing_itemservice` DISABLE KEYS */;
INSERT INTO `landing_itemservice` VALUES (1,'Mentorias','As mentorias ajudam tanto iniciantes quanto profissionais experientes em transição de carreira. Elas podem ajudar você a decidir se a área de H2V é o que você espera e qual a área que você pode se especializar. Temos alguns segmentos de mentorias que são realizadas de acordo com os perfis dos nossos apoiadores especialistas.','','','flaticon-connection','2022-12-20 22:52:56.000000',1),(2,'Cursos','Temos um catálogo de cursos, de diversos formatos, níveis e durações, que são oferecidos por nossos parceiros e apoiadores. Este é o local onde você poderá encontrar o que é oferecido no Brasil, em relação à capacitação, no setor de Hidrogênio Verde.','','','flaticon-connection','2022-12-20 22:54:51.000000',1),(3,'Divulgação','Sintetizamos as principais informações sobre o setor de H2V e divulgamos nos nossos principais canais de comunicação. Realizamos pesquisas, com destaque para o mercado de trabalho de hidrogênio verde no Brasil.','','','flaticon-connection','2022-12-20 22:55:19.000000',1);
/*!40000 ALTER TABLE `landing_itemservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_itemteam`
--

DROP TABLE IF EXISTS `landing_itemteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_itemteam` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `position` varchar(70) NOT NULL,
  `instagram_link` varchar(50) NOT NULL,
  `linkedin_link` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `team_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_itemteam_team_id_87c65821_fk_landing_team_id` (`team_id`),
  CONSTRAINT `landing_itemteam_team_id_87c65821_fk_landing_team_id` FOREIGN KEY (`team_id`) REFERENCES `landing_team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_itemteam`
--

LOCK TABLES `landing_itemteam` WRITE;
/*!40000 ALTER TABLE `landing_itemteam` DISABLE KEYS */;
INSERT INTO `landing_itemteam` VALUES (1,'ANDRESSA BERGANTIN','UX/UI designer','https://instagram.com/','https://linkedin.com/in/','team-img-2_GT96WyC.jpg','2022-12-20 22:32:54.000000',3),(2,'Jade Simões','Designer Gráfica & UX/UI Design & Front-end','https://instagram.com/','https://linkedin.com/in/','team-img-2_i3skcgv.jpg','2022-12-20 22:32:54.000000',3),(3,'Acsa Martins','Especialista em energia','https://instagram.com/','https://linkedin.com/in/','team-img-2_cC47yfE.jpg','2022-12-20 22:32:54.000000',3),(4,'LUIS ENRIQUE ALVAREZ','Engenheiro Físico','https://instagram.com/','https://linkedin.com/in/','team-img-3_636RBaB.jpg','2022-12-20 22:33:55.000000',3),(5,'Amanda Gomes','RH & Administração & Pessoas & Business Intelligence','https://instagram.com/','https://linkedin.com/in/','team-img-2_RfDTuzR.jpg','2022-12-20 22:33:55.000000',3),(6,'Flávia Lopes','Ciência de Dados & Back-end & Data Analytics','https://instagram.com/','https://linkedin.com/in/','team-img-2_coPpEvp.jpg','2022-12-20 22:33:55.000000',3);
/*!40000 ALTER TABLE `landing_itemteam` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_nmvv`
--

LOCK TABLES `landing_nmvv` WRITE;
/*!40000 ALTER TABLE `landing_nmvv` DISABLE KEYS */;
INSERT INTO `landing_nmvv` VALUES (1,'O futuro é verde','Nosso Propósito','O hidrogênio verde é a peça chave para a descarbonização e o vetor energético que viabilizará a energia obtida de fontes sustentáveis, como solar e eólica. Nós acreditamos que quanto mais pessoas entenderem o que é a tecnologia, os seus desafios e o que ela pode trazer de benefícios para toda a sociedade, mais inovação teremos.','Missão','A [plataforma name] surge com a missão de reunir e conectar talentos para o Hidrogênio Verde no Brasil. Somos uma plataforma que tem o propósito de disseminar o conhecimento sobre o tema de maneira simples para a sociedade, fomentando o debate sobre os desafios e possibilidades que o Hidrogênio Verde traz para o Brasil.','','','Visão','A curto prazo vamos reunir especialistas em Hidrogênio Verde para acelerar e ajudar na migração de carreira de profissionais para esta área. A médio e longo prazo vamos trabalhar para que o setor receba mais talentos na área, contribuindo para fortalecer a rede de profissionais especialistas e técnicos em H2V no Brasil. Temos como propósito ser o catalisador de uma Rede de profissionais engajados com o desenvolvimento e estabelecimento da tecnologia no país.','','','Valores','Nosso trabalho é pautado em comprometimento e transparência com nossos parceiros, apoiadores e clientes. O que nos move é o desejo de contribuir para um mundo mais sustentável e inclusivo, por isso uma de nossas metas é aumentar a participação de mulheres na área de H2V, o objetivo é equilibrar a balança em uma área onde há poucas mulheres atuantes.','','','2022-12-20 21:27:10.000000');
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
  `created_date` datetime(6) NOT NULL,
  `text` longtext NOT NULL DEFAULT (_utf8mb3'text'),
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_partner`
--

LOCK TABLES `landing_partner` WRITE;
/*!40000 ALTER TABLE `landing_partner` DISABLE KEYS */;
INSERT INTO `landing_partner` VALUES (1,'2022-12-20 22:23:52.000000','Nossos parceiros são atuantes na cadeia de hidrogênio verde e estão contribuindo para a aceleração deste mercado no Brasil.','Parceiros');
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
  `text` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `title_1` varchar(50) NOT NULL,
  `title_2` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_service`
--

LOCK TABLES `landing_service` WRITE;
/*!40000 ALTER TABLE `landing_service` DISABLE KEYS */;
INSERT INTO `landing_service` VALUES (1,'Nossa rede de apoiadores especialistas na área de energia renovável e hidrogênio verde ajuda talentos que estão entrando na área através de mentorias. Além disso, também reunimos um catálogo de cursos e informações sobre o setor, em língua portuguesa, para acelerar a absorção do conhecimento necessário.','2022-12-20 21:17:35.000000','Serviços','Onde Atuamos');
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
  `name` varchar(50) NOT NULL,
  `slider_foto` varchar(100) NOT NULL,
  `slider_title_1` varchar(50) NOT NULL,
  `slider_title_2` varchar(50) NOT NULL,
  `slider_title_3` varchar(50) NOT NULL,
  `slider_link` varchar(200) NOT NULL,
  `slider_link_text` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `header_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landing_slider_header_id_4606c73a_fk_landing_header_id` (`header_id`),
  CONSTRAINT `landing_slider_header_id_4606c73a_fk_landing_header_id` FOREIGN KEY (`header_id`) REFERENCES `landing_header` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_slider`
--

LOCK TABLES `landing_slider` WRITE;
/*!40000 ALTER TABLE `landing_slider` DISABLE KEYS */;
INSERT INTO `landing_slider` VALUES (1,'first slider teste','slider-bg-1-1_813sDpi.jpg','Reunir especialistas em H2V','para a entrada de novos talentos no mercado','#conexão','#','faça parte','2022-12-20 16:44:35.000000',1),(2,'second slider teste','slider-bg-1-3_YkMHkDf.jpg','Popularizar o conhecimento','para ampliar o debate na sociedade','#debate','#','faça parte','2022-12-20 20:44:53.000000',1),(3,'third-slide-test','slider-bg-1-3_XifVPXY.jpg','+ mulheres no mercado de H2V','= H2V para todos','#inclusão','#','faça parte','2022-12-20 22:48:12.000000',1);
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
  `value` double NOT NULL,
  `unit` varchar(2) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_statistic`
--

LOCK TABLES `landing_statistic` WRITE;
/*!40000 ALTER TABLE `landing_statistic` DISABLE KEYS */;
INSERT INTO `landing_statistic` VALUES (1,'projetos de H2V no Brasil',300,'','2022-12-20 21:32:32.000000'),(2,'de dólares investidos',1.7,'B','2022-12-20 21:34:26.000000'),(3,'de aumento de vagas',25,'%','2022-12-20 21:39:12.000000'),(4,'na área de H2V são mulheres',19,'%','2022-12-20 21:39:27.000000');
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
  `created_date` datetime(6) NOT NULL,
  `text` longtext NOT NULL DEFAULT (_utf8mb3'text'),
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_team`
--

LOCK TABLES `landing_team` WRITE;
/*!40000 ALTER TABLE `landing_team` DISABLE KEYS */;
INSERT INTO `landing_team` VALUES (3,'2022-12-20 21:54:25.000000','Um time que usa a tecnologia e criatividade para ampliar o conhecimento e debate sobre o mercado de H2V no Brasil.','Equipe');
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

-- Dump completed on 2022-12-20 20:31:58
