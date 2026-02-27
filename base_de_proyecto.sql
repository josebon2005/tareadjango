-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: videojuegos
-- ------------------------------------------------------
-- Server version	8.0.45

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add compra',7,'add_compra'),(26,'Can change compra',7,'change_compra'),(27,'Can delete compra',7,'delete_compra'),(28,'Can view compra',7,'view_compra'),(29,'Can add plataforma',9,'add_plataforma'),(30,'Can change plataforma',9,'change_plataforma'),(31,'Can delete plataforma',9,'delete_plataforma'),(32,'Can view plataforma',9,'view_plataforma'),(33,'Can add reseña',10,'add_reseña'),(34,'Can change reseña',10,'change_reseña'),(35,'Can delete reseña',10,'delete_reseña'),(36,'Can view reseña',10,'view_reseña'),(37,'Can add genero',8,'add_genero'),(38,'Can change genero',8,'change_genero'),(39,'Can delete genero',8,'delete_genero'),(40,'Can view genero',8,'view_genero'),(41,'Can add videojuego',12,'add_videojuego'),(42,'Can change videojuego',12,'change_videojuego'),(43,'Can delete videojuego',12,'delete_videojuego'),(44,'Can view videojuego',12,'view_videojuego'),(45,'Can add usuario',11,'add_usuario'),(46,'Can change usuario',11,'change_usuario'),(47,'Can delete usuario',11,'delete_usuario'),(48,'Can view usuario',11,'view_usuario');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$nAKrE52Kxtpk0djudSveyr$AKJ1LoH3iImIsbxJX0v8ZEQpL8DGDCUp4i7bUiBSIY0=','2026-02-27 00:03:52.956993',1,'root','','','josebosan12@gmail.com',1,1,'2026-02-27 00:02:38.180044');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'tienda','compra'),(8,'tienda','genero'),(9,'tienda','plataforma'),(10,'tienda','reseña'),(11,'tienda','usuario'),(12,'tienda','videojuego');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-02-26 23:58:40.331505'),(2,'auth','0001_initial','2026-02-26 23:58:42.078384'),(3,'admin','0001_initial','2026-02-26 23:58:42.468569'),(4,'admin','0002_logentry_remove_auto_add','2026-02-26 23:58:42.488721'),(5,'admin','0003_logentry_add_action_flag_choices','2026-02-26 23:58:42.510728'),(6,'contenttypes','0002_remove_content_type_name','2026-02-26 23:58:42.782752'),(7,'auth','0002_alter_permission_name_max_length','2026-02-26 23:58:42.949443'),(8,'auth','0003_alter_user_email_max_length','2026-02-26 23:58:43.106421'),(9,'auth','0004_alter_user_username_opts','2026-02-26 23:58:43.124743'),(10,'auth','0005_alter_user_last_login_null','2026-02-26 23:58:43.255833'),(11,'auth','0006_require_contenttypes_0002','2026-02-26 23:58:43.265715'),(12,'auth','0007_alter_validators_add_error_messages','2026-02-26 23:58:43.284461'),(13,'auth','0008_alter_user_username_max_length','2026-02-26 23:58:43.442696'),(14,'auth','0009_alter_user_last_name_max_length','2026-02-26 23:58:43.613024'),(15,'auth','0010_alter_group_name_max_length','2026-02-26 23:58:43.753724'),(16,'auth','0011_update_proxy_permissions','2026-02-26 23:58:43.773168'),(17,'auth','0012_alter_user_first_name_max_length','2026-02-26 23:58:43.920364'),(18,'sessions','0001_initial','2026-02-26 23:58:44.021309'),(19,'tienda','0001_initial','2026-02-27 00:32:23.226291');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('mehxxfhl4aq6rnjnmhmvkl74nt8piy6f','.eJxVjMsOwiAQAP9lz4bIyrNH734DAXaRqoGktCfjv5smPeh1ZjJvCHFba9gGL2EmmEDC6ZelmJ_cdkGP2O5d5N7WZU5iT8Rhh7h14tf1aP8GNY4KE7BWGRWdbbHF6aIVWZdKSZF9wos3Bhm1M1J5KV325J2KFp3ibCyiYfh8AeP6N28:1vvlKi:Zd5UP62gH4DbMdiUoGxBFEIqjQBrk6Gv_bhKl9v6mVs','2026-03-13 00:03:52.972960');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_compra`
--

DROP TABLE IF EXISTS `tienda_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_compra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_compra` date NOT NULL,
  `usuario_id` bigint NOT NULL,
  `videojuego_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tienda_compra_usuario_id_8000eeaf_fk_tienda_usuario_id` (`usuario_id`),
  KEY `tienda_compra_videojuego_id_7f0d3838_fk_tienda_videojuego_id` (`videojuego_id`),
  CONSTRAINT `tienda_compra_usuario_id_8000eeaf_fk_tienda_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `tienda_usuario` (`id`),
  CONSTRAINT `tienda_compra_videojuego_id_7f0d3838_fk_tienda_videojuego_id` FOREIGN KEY (`videojuego_id`) REFERENCES `tienda_videojuego` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_compra`
--

LOCK TABLES `tienda_compra` WRITE;
/*!40000 ALTER TABLE `tienda_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_genero`
--

DROP TABLE IF EXISTS `tienda_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_genero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_genero`
--

LOCK TABLES `tienda_genero` WRITE;
/*!40000 ALTER TABLE `tienda_genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_plataforma`
--

DROP TABLE IF EXISTS `tienda_plataforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_plataforma` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_plataforma`
--

LOCK TABLES `tienda_plataforma` WRITE;
/*!40000 ALTER TABLE `tienda_plataforma` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_plataforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_reseña`
--

DROP TABLE IF EXISTS `tienda_reseña`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_reseña` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `calificacion` int NOT NULL,
  `comentario` longtext NOT NULL,
  `fecha_reseña` date NOT NULL,
  `usuario_id` bigint NOT NULL,
  `videojuego_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tienda_reseña_usuario_id_acecae8a_fk_tienda_usuario_id` (`usuario_id`),
  KEY `tienda_reseña_videojuego_id_f8d91583_fk_tienda_videojuego_id` (`videojuego_id`),
  CONSTRAINT `tienda_reseña_usuario_id_acecae8a_fk_tienda_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `tienda_usuario` (`id`),
  CONSTRAINT `tienda_reseña_videojuego_id_f8d91583_fk_tienda_videojuego_id` FOREIGN KEY (`videojuego_id`) REFERENCES `tienda_videojuego` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_reseña`
--

LOCK TABLES `tienda_reseña` WRITE;
/*!40000 ALTER TABLE `tienda_reseña` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_reseña` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_usuario`
--

DROP TABLE IF EXISTS `tienda_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_usuario`
--

LOCK TABLES `tienda_usuario` WRITE;
/*!40000 ALTER TABLE `tienda_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda_videojuego`
--

DROP TABLE IF EXISTS `tienda_videojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda_videojuego` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `genero_id` bigint NOT NULL,
  `plataforma_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tienda_videojuego_genero_id_fae54a09_fk_tienda_genero_id` (`genero_id`),
  KEY `tienda_videojuego_plataforma_id_e46ab751_fk_tienda_plataforma_id` (`plataforma_id`),
  CONSTRAINT `tienda_videojuego_genero_id_fae54a09_fk_tienda_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `tienda_genero` (`id`),
  CONSTRAINT `tienda_videojuego_plataforma_id_e46ab751_fk_tienda_plataforma_id` FOREIGN KEY (`plataforma_id`) REFERENCES `tienda_plataforma` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda_videojuego`
--

LOCK TABLES `tienda_videojuego` WRITE;
/*!40000 ALTER TABLE `tienda_videojuego` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda_videojuego` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 20:42:46
