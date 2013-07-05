-- MySQL dump 10.13  Distrib 5.5.23, for Linux (x86_64)
--
-- Host: localhost    Database: webograp_flowekid
-- ------------------------------------------------------
-- Server version	5.5.23-55

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
-- Current Database: `webograp_flowekid`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `webograp_flowekid` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `webograp_flowekid`;

--
-- Table structure for table `additional_exam_groups`
--

DROP TABLE IF EXISTS `additional_exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `result_published` tinyint(1) DEFAULT '0',
  `students_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_groups`
--

LOCK TABLES `additional_exam_groups` WRITE;
/*!40000 ALTER TABLE `additional_exam_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exam_scores`
--

DROP TABLE IF EXISTS `additional_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `additional_exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exam_scores`
--

LOCK TABLES `additional_exam_scores` WRITE;
/*!40000 ALTER TABLE `additional_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_exams`
--

DROP TABLE IF EXISTS `additional_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `additional_exam_group_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `maximum_marks` int(11) DEFAULT NULL,
  `minimum_marks` int(11) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `weightage` int(11) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_exams`
--

LOCK TABLES `additional_exams` WRITE;
/*!40000 ALTER TABLE `additional_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additional_fields`
--

DROP TABLE IF EXISTS `additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_fields`
--

LOCK TABLES `additional_fields` WRITE;
/*!40000 ALTER TABLE `additional_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apply_leaves`
--

DROP TABLE IF EXISTS `apply_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apply_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_types_id` int(11) DEFAULT NULL,
  `is_half_day` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` tinyint(1) DEFAULT '0',
  `viewed_by_manager` tinyint(1) DEFAULT '0',
  `manager_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apply_leaves`
--

LOCK TABLES `apply_leaves` WRITE;
/*!40000 ALTER TABLE `apply_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `apply_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_additional_details`
--

DROP TABLE IF EXISTS `archived_employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_additional_details`
--

LOCK TABLES `archived_employee_additional_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_bank_details`
--

DROP TABLE IF EXISTS `archived_employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `bank_field_id` int(11) DEFAULT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_bank_details`
--

LOCK TABLES `archived_employee_bank_details` WRITE;
/*!40000 ALTER TABLE `archived_employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employee_salary_structures`
--

DROP TABLE IF EXISTS `archived_employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employee_salary_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employee_salary_structures`
--

LOCK TABLES `archived_employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `archived_employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_employees`
--

DROP TABLE IF EXISTS `archived_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_category_id` int(11) DEFAULT NULL,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_position_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `reporting_manager_id` int(11) DEFAULT NULL,
  `employee_grade_id` int(11) DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_detail` text COLLATE utf8_unicode_ci,
  `experience_year` int(11) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `children_count` int(11) DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `husband_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `home_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_country_id` int(11) DEFAULT NULL,
  `home_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_country_id` int(11) DEFAULT NULL,
  `office_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `former_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `library_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_employees`
--

LOCK TABLES `archived_employees` WRITE;
/*!40000 ALTER TABLE `archived_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_exam_scores`
--

DROP TABLE IF EXISTS `archived_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_archived_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_exam_scores`
--

LOCK TABLES `archived_exam_scores` WRITE;
/*!40000 ALTER TABLE `archived_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_guardians`
--

DROP TABLE IF EXISTS `archived_guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_guardians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_guardians`
--

LOCK TABLES `archived_guardians` WRITE;
/*!40000 ALTER TABLE `archived_guardians` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archived_students`
--

DROP TABLE IF EXISTS `archived_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archived_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `immediate_contact_id` int(11) DEFAULT NULL,
  `is_sms_enabled` tinyint(1) DEFAULT '1',
  `former_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `library_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archived_students`
--

LOCK TABLES `archived_students` WRITE;
/*!40000 ALTER TABLE `archived_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `archived_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment_scores`
--

DROP TABLE IF EXISTS `assessment_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assessment_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `grade_points` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `descriptive_indicator_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `score_index` (`student_id`,`batch_id`,`descriptive_indicator_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment_scores`
--

LOCK TABLES `assessment_scores` WRITE;
/*!40000 ALTER TABLE `assessment_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `assessment_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `is_inactive` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `period_table_entry_id` int(11) DEFAULT NULL,
  `forenoon` tinyint(1) DEFAULT '0',
  `afternoon` tinyint(1) DEFAULT '0',
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_date` date DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attendances_on_month_date_and_batch_id` (`month_date`,`batch_id`),
  KEY `index_attendances_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` VALUES (1,2,NULL,1,1,'ill','2012-10-29',1);
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_fields`
--

DROP TABLE IF EXISTS `bank_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_fields`
--

LOCK TABLES `bank_fields` WRITE;
/*!40000 ALTER TABLE `bank_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_events`
--

DROP TABLE IF EXISTS `batch_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_batch_events_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_events`
--

LOCK TABLES `batch_events` WRITE;
/*!40000 ALTER TABLE `batch_events` DISABLE KEYS */;
INSERT INTO `batch_events` VALUES (1,1,1,'2012-10-28 11:04:27','2012-10-28 11:04:27'),(2,2,1,'2012-10-28 11:43:21','2012-10-28 11:43:21'),(3,3,1,'2012-10-28 12:24:57','2012-10-28 12:24:57');
/*!40000 ALTER TABLE `batch_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_groups`
--

DROP TABLE IF EXISTS `batch_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_groups`
--

LOCK TABLES `batch_groups` WRITE;
/*!40000 ALTER TABLE `batch_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_students`
--

DROP TABLE IF EXISTS `batch_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_students` (
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  KEY `index_batch_students_on_batch_id_and_student_id` (`batch_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_students`
--

LOCK TABLES `batch_students` WRITE;
/*!40000 ALTER TABLE `batch_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `employee_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_batches_on_is_deleted_and_is_active_and_course_id_and_name` (`is_deleted`,`is_active`,`course_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batches`
--

LOCK TABLES `batches` WRITE;
/*!40000 ALTER TABLE `batches` DISABLE KEYS */;
INSERT INTO `batches` VALUES (1,'1st A',1,'2012-07-01 00:00:00','2013-07-01 00:00:00',1,0,NULL),(2,'B',2,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,1,NULL),(3,'C',3,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,1,NULL),(4,'B',3,'2012-07-01 00:00:00','2013-07-01 00:00:00',1,1,NULL),(5,'C',3,'2012-07-01 00:00:00','2013-07-01 00:00:00',1,1,NULL),(6,'1st B',1,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(7,'1ST C',1,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(8,'1ST D',1,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(9,'2ND A',4,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(10,'2ND B',4,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(11,'2ND C',4,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(12,'2ND D',4,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(13,'2ND E',4,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(14,'3RD A',5,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(15,'3RD B',5,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(16,'3RD C',5,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(17,'3RD D',5,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(18,'4TH A',6,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(19,'4TH B',6,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(20,'4TH C',6,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(21,'5TH A',7,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(22,'5TH B',7,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(23,'5TH C',7,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(24,'6TH A',8,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(25,'6TH B',8,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(26,'6TH C',8,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(27,'7TH A',9,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(28,'7TH B',9,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(29,'C',9,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(30,'7TH D',9,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(31,'8TH A',10,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(32,'8TH B',10,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(33,'8TH C',10,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(34,'9TH A',11,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(35,'9TH B',11,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(36,'NUR A',12,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(37,'NUR B',12,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(38,'K.G.A',13,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(39,'K.G.B',13,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(40,'Prep A',14,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(41,'Prep B',14,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(42,'Prep C',14,'2012-07-01 00:00:00','2013-07-31 00:00:00',1,0,NULL),(43,'BATCH',15,'2012-10-28 00:00:00','2013-10-28 00:00:00',1,1,NULL),(44,'E',16,'2012-10-28 00:00:00','2013-10-28 00:00:00',1,1,NULL);
/*!40000 ALTER TABLE `batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_movements`
--

DROP TABLE IF EXISTS `book_movements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_movements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_book_movements_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_movements`
--

LOCK TABLES `book_movements` WRITE;
/*!40000 ALTER TABLE `book_movements` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_movements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_reservations`
--

DROP TABLE IF EXISTS `book_reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `reserved_on` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_book_reservations_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_reservations`
--

LOCK TABLES `book_reservations` WRITE;
/*!40000 ALTER TABLE `book_reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `book_movement_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'available',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_books_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_services`
--

DROP TABLE IF EXISTS `bus_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bus_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `driver_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conduct_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL,
  `bus_allocated_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bus_start_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bus_end_point` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `contact_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_services`
--

LOCK TABLES `bus_services` WRITE;
/*!40000 ALTER TABLE `bus_services` DISABLE KEYS */;
INSERT INTO `bus_services` VALUES (1,'Vidhyanagar','001','','',NULL,'001','vidhyanagar','vidhyanagar','2012-10-28 11:35:33','2012-10-28 11:35:33',NULL),(2,'somebody','123','raju','kaju',NULL,'321','PARDA MATAJI','BIJOLA','2012-10-30 14:49:16','2012-10-30 14:49:16',2147483647);
/*!40000 ALTER TABLE `bus_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_settings`
--

DROP TABLE IF EXISTS `bus_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starting_year` date DEFAULT NULL,
  `ending_year` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_charge` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_settings`
--

LOCK TABLES `bus_settings` WRITE;
/*!40000 ALTER TABLE `bus_settings` DISABLE KEYS */;
INSERT INTO `bus_settings` VALUES (1,NULL,NULL,200,'Default',1,'2012-10-25 06:48:42','2012-10-25 06:48:42'),(2,'2012-07-01','2013-07-01',1200,'AARA',0,'2012-10-25 07:48:00','2012-10-25 07:48:00'),(3,'2012-07-01','2013-07-01',1350,'AMBADA',0,'2012-10-25 07:49:52','2012-10-25 07:49:52'),(4,'2012-07-01','2012-07-15',1350,'BADGI',0,'2012-10-28 11:30:52','2012-10-28 11:30:52'),(5,'2012-07-01','2012-07-15',1650,'BHASOR',0,'2012-10-28 11:31:16','2012-10-28 11:31:16'),(6,'2012-07-01','2012-07-15',1800,'BHEMAI',0,'2012-10-28 11:31:40','2012-10-28 11:31:40'),(7,'2012-07-01','2012-07-15',1050,'BHIMDARI',0,'2012-10-28 11:32:02','2012-10-28 11:32:02'),(8,'2012-07-01','2012-07-15',1800,'BIJOLA',0,'2012-10-28 11:32:22','2012-10-28 11:32:22'),(9,'2012-07-01','2012-07-15',1800,'CHADOLI ',0,'2012-10-28 11:32:41','2012-10-28 11:32:41'),(10,'2012-07-01','2012-07-15',1950,'CHIKHALI ',0,'2012-10-28 11:33:09','2012-10-28 11:33:09'),(11,'2012-07-01','2012-07-15',1350,'CHITRI ',0,'2012-10-28 12:20:48','2012-10-28 12:20:48'),(12,'2012-07-01','2012-07-15',1050,'DAIYANA ',0,'2012-10-28 12:21:15','2012-10-28 12:21:15'),(13,'2012-07-01','2012-07-15',1500,'DIWDA BADA ',0,'2012-10-28 12:21:40','2012-10-28 12:21:40');
/*!40000 ALTER TABLE `bus_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_exam_categories`
--

DROP TABLE IF EXISTS `cce_exam_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_exam_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_exam_categories`
--

LOCK TABLES `cce_exam_categories` WRITE;
/*!40000 ALTER TABLE `cce_exam_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_exam_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grade_sets`
--

DROP TABLE IF EXISTS `cce_grade_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_grade_sets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_grade_sets`
--

LOCK TABLES `cce_grade_sets` WRITE;
/*!40000 ALTER TABLE `cce_grade_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grade_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_grades`
--

DROP TABLE IF EXISTS `cce_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade_point` float DEFAULT NULL,
  `cce_grade_set_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cce_grades_on_cce_grade_set_id` (`cce_grade_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_grades`
--

LOCK TABLES `cce_grades` WRITE;
/*!40000 ALTER TABLE `cce_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_reports`
--

DROP TABLE IF EXISTS `cce_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `observable_id` int(11) DEFAULT NULL,
  `observable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `grade_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cce_report_join_index` (`observable_id`,`student_id`,`batch_id`,`exam_id`,`observable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_reports`
--

LOCK TABLES `cce_reports` WRITE;
/*!40000 ALTER TABLE `cce_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages`
--

DROP TABLE IF EXISTS `cce_weightages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_weightages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weightage` int(11) DEFAULT NULL,
  `criteria_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cce_exam_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_weightages`
--

LOCK TABLES `cce_weightages` WRITE;
/*!40000 ALTER TABLE `cce_weightages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cce_weightages_courses`
--

DROP TABLE IF EXISTS `cce_weightages_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cce_weightages_courses` (
  `cce_weightage_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  KEY `index_cce_weightages_courses_on_cce_weightage_id` (`cce_weightage_id`),
  KEY `index_cce_weightages_courses_on_course_id` (`course_id`),
  KEY `index_for_join_table_cce_weightage_courses` (`course_id`,`cce_weightage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cce_weightages_courses`
--

LOCK TABLES `cce_weightages_courses` WRITE;
/*!40000 ALTER TABLE `cce_weightages_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cce_weightages_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_designations`
--

DROP TABLE IF EXISTS `class_designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_designations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cgpa` decimal(15,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `marks` decimal(15,2) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_designations`
--

LOCK TABLES `class_designations` WRITE;
/*!40000 ALTER TABLE `class_designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_timings`
--

DROP TABLE IF EXISTS `class_timings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_timings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_break` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_class_timings_on_batch_id_and_start_time_and_end_time` (`batch_id`,`start_time`,`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_timings`
--

LOCK TABLES `class_timings` WRITE;
/*!40000 ALTER TABLE `class_timings` DISABLE KEYS */;
/*!40000 ALTER TABLE `class_timings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_configurations_on_config_key` (`config_key`(10)),
  KEY `index_configurations_on_config_value` (`config_value`(10))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurations`
--

LOCK TABLES `configurations` WRITE;
/*!40000 ALTER TABLE `configurations` DISABLE KEYS */;
INSERT INTO `configurations` VALUES (1,'InstitutionName',''),(2,'InstitutionAddress',''),(3,'InstitutionPhoneNo',''),(4,'StudentAttendanceType','Daily'),(5,'CurrencyType','INR'),(6,'Locale','en'),(7,'AdmissionNumberAutoIncrement','1'),(8,'EmployeeNumberAutoIncrement','1'),(9,'TotalSmsCount','0'),(10,'NetworkState','Online'),(11,'FinancialYearStartDate','2012-04-01'),(12,'FinancialYearEndDate','2013-03-31'),(13,'AutomaticLeaveReset','0'),(14,'LeaveResetPeriod','4'),(15,'LastAutoLeaveReset',NULL),(16,'GPA','0'),(17,'CWA','0'),(18,'CCE','1'),(19,'DefaultCountry','76'),(20,'AvailableModules','HR'),(21,'AvailableModules','Finance'),(22,'EnableNewsCommentModeration','0'),(23,'TimeZone','9');
/*!40000 ALTER TABLE `configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua & Deps'),(7,'Argentina'),(8,'Armenia'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bhutan'),(21,'Bolivia'),(22,'Bosnia Herzegovina'),(23,'Botswana'),(24,'Brazil'),(25,'Brunei'),(26,'Bulgaria'),(27,'Burkina'),(28,'Burundi'),(29,'Cambodia'),(30,'Cameroon'),(31,'Canada'),(32,'Cape Verde'),(33,'Central African Rep'),(34,'Chad'),(35,'Chile'),(36,'China'),(37,'Colombia'),(38,'Comoros'),(39,'Congo'),(40,'Congo {Democratic Rep}'),(41,'Costa Rica'),(42,'Croatia'),(43,'Cuba'),(44,'Cyprus'),(45,'Czech Republic'),(46,'Denmark'),(47,'Djibouti'),(48,'Dominica'),(49,'Dominican Republic'),(50,'East Timor'),(51,'Ecuador'),(52,'Egypt'),(53,'El Salvador'),(54,'Equatorial Guinea'),(55,'Eritrea'),(56,'Estonia'),(57,'Ethiopia'),(58,'Fiji'),(59,'Finland'),(60,'France'),(61,'Gabon'),(62,'Gambia'),(63,'Georgia'),(64,'Germany'),(65,'Ghana'),(66,'Greece'),(67,'Grenada'),(68,'Guatemala'),(69,'Guinea'),(70,'Guinea-Bissau'),(71,'Guyana'),(72,'Haiti'),(73,'Honduras'),(74,'Hungary'),(75,'Iceland'),(76,'India'),(77,'Indonesia'),(78,'Iran'),(79,'Iraq'),(80,'Ireland {Republic}'),(81,'Israel'),(82,'Italy'),(83,'Ivory Coast'),(84,'Jamaica'),(85,'Japan'),(86,'Jordan'),(87,'Kazakhstan'),(88,'Kenya'),(89,'Kiribati'),(90,'Korea North'),(91,'Korea South'),(92,'Kosovo'),(93,'Kuwait'),(94,'Kyrgyzstan'),(95,'Laos'),(96,'Latvia'),(97,'Lebanon'),(98,'Lesotho'),(99,'Liberia'),(100,'Libya'),(101,'Liechtenstein'),(102,'Lithuania'),(103,'Luxembourg'),(104,'Macedonia'),(105,'Madagascar'),(106,'Malawi'),(107,'Malaysia'),(108,'Maldives'),(109,'Mali'),(110,'Malta'),(111,'Montenegro'),(112,'Marshall Islands'),(113,'Mauritania'),(114,'Mauritius'),(115,'Mexico'),(116,'Micronesia'),(117,'Moldova'),(118,'Monaco'),(119,'Mongolia'),(120,'Morocco'),(121,'Mozambique'),(122,'Myanmar, {Burma}'),(123,'Namibia'),(124,'Nauru'),(125,'Nepal'),(126,'Netherlands'),(127,'New Zealand'),(128,'Nicaragua'),(129,'Niger'),(130,'Nigeria'),(131,'Norway'),(132,'Oman'),(133,'Pakistan'),(134,'Palau'),(135,'Panama'),(136,'Papua New Guinea'),(137,'Paraguay'),(138,'Peru'),(139,'Philippines'),(140,'Poland'),(141,'Portugal'),(142,'Qatar'),(143,'Romania'),(144,'Russian Federation'),(145,'Rwanda'),(146,'St Kitts & Nevis'),(147,'St Lucia'),(148,'Saint Vincent & the Grenadines'),(149,'Samoa'),(150,'San Marino'),(151,'Sao Tome & Principe'),(152,'Saudi Arabia'),(153,'Senegal'),(154,'Serbia'),(155,'Seychelles'),(156,'Sierra Leone'),(157,'Singapore'),(158,'Slovakia'),(159,'Slovenia'),(160,'Solomon Islands'),(161,'Somalia'),(162,'South Africa'),(163,'Spain'),(164,'Sri Lanka'),(165,'Sudan'),(166,'Suriname'),(167,'Swaziland'),(168,'Sweden'),(169,'Switzerland'),(170,'Syria'),(171,'Taiwan'),(172,'Tajikistan'),(173,'Tanzania'),(174,'Thailand'),(175,'Togo'),(176,'Tonga'),(177,'Trinidad & Tobago'),(178,'Tunisia'),(179,'Turkey'),(180,'Turkmenistan'),(181,'Tuvalu'),(182,'Uganda'),(183,'Ukraine'),(184,'United Arab Emirates'),(185,'United Kingdom'),(186,'United States'),(187,'Uruguay'),(188,'Uzbekistan'),(189,'Vanuatu'),(190,'Vatican City'),(191,'Venezuea'),(192,'Vietnam'),(193,'Yemen'),(194,'Zambia'),(195,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `grading_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_courses_on_grading_type` (`grading_type`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'1ST','1ST','',0,'2012-10-25 12:55:59','2012-10-25 12:55:59','0'),(2,'1st','1ST-B','',1,'2012-10-26 02:46:20','2012-10-26 08:26:39','0'),(3,'1ST','1ST-C','',1,'2012-10-26 02:47:02','2012-10-26 08:33:58','0'),(4,'2ND ','2ND','',0,'2012-10-26 09:07:38','2012-10-28 11:40:32','0'),(5,'3rd','3rd','',0,'2012-10-26 09:17:39','2012-10-26 09:17:39','0'),(6,'4TH','4TH','',0,'2012-10-26 09:19:42','2012-10-26 09:19:42','0'),(7,'5TH','5TH','',0,'2012-10-26 09:22:18','2012-10-26 09:22:18','0'),(8,'6TH','6TH','',0,'2012-10-26 09:28:11','2012-10-26 09:28:11','0'),(9,'7TH','7TH','',0,'2012-10-26 09:29:34','2012-10-26 09:29:34','0'),(10,'8TH','8TH','',0,'2012-10-26 09:31:00','2012-10-26 09:31:00','0'),(11,'9TH','9TH','',0,'2012-10-26 09:31:58','2012-10-26 09:31:58','0'),(12,'Nursary','Nursary','',0,'2012-10-26 09:48:56','2012-10-26 09:48:56','0'),(13,'K.G','K.G','',0,'2012-10-26 09:49:42','2012-10-26 09:49:42','0'),(14,'Prep','Prep','',0,'2012-10-26 09:50:24','2012-10-26 09:50:24','0'),(15,'My Courses','SECTETIO','FIRST',1,'2012-10-28 13:19:19','2012-10-30 13:12:11','0'),(16,'1','EASS','',1,'2012-10-28 13:21:51','2012-10-28 13:26:40','0');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_observation_groups`
--

DROP TABLE IF EXISTS `courses_observation_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses_observation_groups` (
  `course_id` int(11) DEFAULT NULL,
  `observation_group_id` int(11) DEFAULT NULL,
  KEY `index_courses_observation_groups_on_observation_group_id` (`observation_group_id`),
  KEY `index_courses_observation_groups_on_course_id` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_observation_groups`
--

LOCK TABLES `courses_observation_groups` WRITE;
/*!40000 ALTER TABLE `courses_observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text COLLATE utf8_unicode_ci,
  `last_error` text COLLATE utf8_unicode_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_delayed_jobs_on_locked_by` (`locked_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptive_indicators`
--

DROP TABLE IF EXISTS `descriptive_indicators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descriptive_indicators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `describable_id` int(11) DEFAULT NULL,
  `describable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `describable_index` (`describable_id`,`describable_type`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptive_indicators`
--

LOCK TABLES `descriptive_indicators` WRITE;
/*!40000 ALTER TABLE `descriptive_indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `descriptive_indicators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elective_groups`
--

DROP TABLE IF EXISTS `elective_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elective_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elective_groups`
--

LOCK TABLES `elective_groups` WRITE;
/*!40000 ALTER TABLE `elective_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `elective_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electives`
--

DROP TABLE IF EXISTS `electives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elective_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electives`
--

LOCK TABLES `electives` WRITE;
/*!40000 ALTER TABLE `electives` DISABLE KEYS */;
/*!40000 ALTER TABLE `electives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_additional_details`
--

DROP TABLE IF EXISTS `employee_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_additional_details`
--

LOCK TABLES `employee_additional_details` WRITE;
/*!40000 ALTER TABLE `employee_additional_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_attendances`
--

DROP TABLE IF EXISTS `employee_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_type_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_half_day` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_attendances`
--

LOCK TABLES `employee_attendances` WRITE;
/*!40000 ALTER TABLE `employee_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bank_details`
--

DROP TABLE IF EXISTS `employee_bank_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_bank_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `bank_field_id` int(11) DEFAULT NULL,
  `bank_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bank_details`
--

LOCK TABLES `employee_bank_details` WRITE;
/*!40000 ALTER TABLE `employee_bank_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_bank_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_categories`
--

DROP TABLE IF EXISTS `employee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_categories`
--

LOCK TABLES `employee_categories` WRITE;
/*!40000 ALTER TABLE `employee_categories` DISABLE KEYS */;
INSERT INTO `employee_categories` VALUES (1,'System Admin','Admin',1);
/*!40000 ALTER TABLE `employee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_department_events`
--

DROP TABLE IF EXISTS `employee_department_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_department_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_department_events`
--

LOCK TABLES `employee_department_events` WRITE;
/*!40000 ALTER TABLE `employee_department_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_department_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_departments`
--

DROP TABLE IF EXISTS `employee_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_departments`
--

LOCK TABLES `employee_departments` WRITE;
/*!40000 ALTER TABLE `employee_departments` DISABLE KEYS */;
INSERT INTO `employee_departments` VALUES (1,'Admin','System Admin',1);
/*!40000 ALTER TABLE `employee_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_grades`
--

DROP TABLE IF EXISTS `employee_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `max_hours_day` int(11) DEFAULT NULL,
  `max_hours_week` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_grades`
--

LOCK TABLES `employee_grades` WRITE;
/*!40000 ALTER TABLE `employee_grades` DISABLE KEYS */;
INSERT INTO `employee_grades` VALUES (1,'System Admin',0,1,NULL,NULL);
/*!40000 ALTER TABLE `employee_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leave_types`
--

DROP TABLE IF EXISTS `employee_leave_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leave_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `max_leave_count` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `carry_forward` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leave_types`
--

LOCK TABLES `employee_leave_types` WRITE;
/*!40000 ALTER TABLE `employee_leave_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leave_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_leaves`
--

DROP TABLE IF EXISTS `employee_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `employee_leave_type_id` int(11) DEFAULT NULL,
  `leave_count` decimal(5,1) DEFAULT '0.0',
  `leave_taken` decimal(5,1) DEFAULT '0.0',
  `reset_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_leaves`
--

LOCK TABLES `employee_leaves` WRITE;
/*!40000 ALTER TABLE `employee_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_positions`
--

DROP TABLE IF EXISTS `employee_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_category_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_positions`
--

LOCK TABLES `employee_positions` WRITE;
/*!40000 ALTER TABLE `employee_positions` DISABLE KEYS */;
INSERT INTO `employee_positions` VALUES (1,'System Admin',1,1);
/*!40000 ALTER TABLE `employee_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_salary_structures`
--

DROP TABLE IF EXISTS `employee_salary_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_salary_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_salary_structures`
--

LOCK TABLES `employee_salary_structures` WRITE;
/*!40000 ALTER TABLE `employee_salary_structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_salary_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_category_id` int(11) DEFAULT NULL,
  `employee_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_position_id` int(11) DEFAULT NULL,
  `employee_department_id` int(11) DEFAULT NULL,
  `reporting_manager_id` int(11) DEFAULT NULL,
  `employee_grade_id` int(11) DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experience_detail` text COLLATE utf8_unicode_ci,
  `experience_year` int(11) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `marital_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `children_count` int(11) DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `husband_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `home_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_country_id` int(11) DEFAULT NULL,
  `home_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_country_id` int(11) DEFAULT NULL,
  `office_pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `home_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `library_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_on_employee_number` (`employee_number`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,1,'admin','2012-10-25','Admin',NULL,'User',NULL,NULL,1,1,NULL,1,NULL,NULL,NULL,NULL,1,NULL,'2011-10-26',NULL,NULL,NULL,NULL,NULL,NULL,76,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'info@udgamsolutions.in',NULL,NULL,NULL,NULL,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,1,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_subjects`
--

DROP TABLE IF EXISTS `employees_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_employees_subjects_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_subjects`
--

LOCK TABLES `employees_subjects` WRITE;
/*!40000 ALTER TABLE `employees_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_common` tinyint(1) DEFAULT '0',
  `is_holiday` tinyint(1) DEFAULT '0',
  `is_exam` tinyint(1) DEFAULT '0',
  `is_due` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `origin_id` int(11) DEFAULT NULL,
  `origin_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_is_common_and_is_holiday_and_is_exam` (`is_common`,`is_holiday`,`is_exam`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Fees Due','School Fee','2012-07-15 00:00:00','2012-07-15 00:00:00',0,0,0,1,'2012-10-28 11:04:27','2012-10-28 11:04:27',1,'FinanceFeeCollection'),(2,'Fees Due','school fee','2012-10-28 00:00:00','2012-10-28 00:00:00',0,0,0,1,'2012-10-28 11:43:21','2012-10-28 11:43:21',2,'FinanceFeeCollection'),(3,'Fees Due','school fee','2012-10-28 00:00:00','2012-10-28 00:00:00',0,0,0,1,'2012-10-28 12:24:57','2012-10-28 12:24:57',3,'FinanceFeeCollection');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_groups`
--

DROP TABLE IF EXISTS `exam_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `exam_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT '0',
  `result_published` tinyint(1) DEFAULT '0',
  `exam_date` date DEFAULT NULL,
  `is_final_exam` tinyint(1) NOT NULL DEFAULT '0',
  `cce_exam_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_groups`
--

LOCK TABLES `exam_groups` WRITE;
/*!40000 ALTER TABLE `exam_groups` DISABLE KEYS */;
INSERT INTO `exam_groups` VALUES (1,'FA',1,'MarksAndGrades',0,0,'2012-10-26',0,NULL);
/*!40000 ALTER TABLE `exam_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_scores`
--

DROP TABLE IF EXISTS `exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_scores`
--

LOCK TABLES `exam_scores` WRITE;
/*!40000 ALTER TABLE `exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `maximum_marks` decimal(10,2) DEFAULT NULL,
  `minimum_marks` decimal(10,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `weightage` int(11) DEFAULT '0',
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_exams_on_exam_group_id_and_subject_id` (`exam_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_criterias`
--

DROP TABLE IF EXISTS `fa_criterias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_criterias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fa_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fa_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_fa_criterias_on_fa_group_id` (`fa_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_criterias`
--

LOCK TABLES `fa_criterias` WRITE;
/*!40000 ALTER TABLE `fa_criterias` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_criterias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups`
--

DROP TABLE IF EXISTS `fa_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `cce_exam_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cce_grade_set_id` int(11) DEFAULT NULL,
  `max_marks` float DEFAULT '100',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_groups`
--

LOCK TABLES `fa_groups` WRITE;
/*!40000 ALTER TABLE `fa_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fa_groups_subjects`
--

DROP TABLE IF EXISTS `fa_groups_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fa_groups_subjects` (
  `subject_id` int(11) DEFAULT NULL,
  `fa_group_id` int(11) DEFAULT NULL,
  KEY `index_fa_groups_subjects_on_subject_id` (`subject_id`),
  KEY `index_fa_groups_subjects_on_fa_group_id` (`fa_group_id`),
  KEY `score_index` (`fa_group_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fa_groups_subjects`
--

LOCK TABLES `fa_groups_subjects` WRITE;
/*!40000 ALTER TABLE `fa_groups_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `fa_groups_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_discounts`
--

DROP TABLE IF EXISTS `fee_collection_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `finance_fee_collection_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `is_amount` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_discounts`
--

LOCK TABLES `fee_collection_discounts` WRITE;
/*!40000 ALTER TABLE `fee_collection_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_collection_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_collection_particulars`
--

DROP TABLE IF EXISTS `fee_collection_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_collection_particulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(12,2) DEFAULT NULL,
  `finance_fee_collection_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_collection_particulars`
--

LOCK TABLES `fee_collection_particulars` WRITE;
/*!40000 ALTER TABLE `fee_collection_particulars` DISABLE KEYS */;
INSERT INTO `fee_collection_particulars` VALUES (1,'Admission fee','new admission',1300.00,1,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(2,'Annual Fee','For all the students',3000.00,1,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(3,'Tution Fee','For all the students',7200.00,1,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(4,'Admission fee','new admission',1300.00,2,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(5,'Annual Fee','For all the students',3000.00,2,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(6,'Tution Fee','For all the students',7200.00,2,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(7,'Admission fee','new admission',1300.00,3,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(8,'Annual Fee','For all the students',3000.00,3,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(9,'Tution Fee','For all the students',7200.00,3,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10');
/*!40000 ALTER TABLE `fee_collection_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_discounts`
--

DROP TABLE IF EXISTS `fee_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `finance_fee_category_id` int(11) DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT NULL,
  `is_amount` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_discounts`
--

LOCK TABLES `fee_discounts` WRITE;
/*!40000 ALTER TABLE `fee_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fee_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_donations`
--

DROP TABLE IF EXISTS `finance_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_donations`
--

LOCK TABLES `finance_donations` WRITE;
/*!40000 ALTER TABLE `finance_donations` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_categories`
--

DROP TABLE IF EXISTS `finance_fee_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_master` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_categories`
--

LOCK TABLES `finance_fee_categories` WRITE;
/*!40000 ALTER TABLE `finance_fee_categories` DISABLE KEYS */;
INSERT INTO `finance_fee_categories` VALUES (1,'FEE','FEE',36,0,1,'2012-10-26 09:52:10','2012-10-26 09:52:10'),(2,'FEE','FEE',37,0,1,'2012-10-26 09:52:10','2012-10-26 09:52:10'),(3,'FEE','FEE',40,0,1,'2012-10-26 09:52:10','2012-10-26 09:52:10'),(4,'FEE','FEE',41,0,1,'2012-10-26 09:52:10','2012-10-26 09:52:10'),(5,'FEE','FEE',42,0,1,'2012-10-26 09:52:10','2012-10-26 09:52:10'),(6,'fee','fee',1,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(7,'fee','fee',6,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(8,'fee','fee',7,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(9,'fee','fee',8,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(10,'fee','fee',9,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(11,'fee','fee',10,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(12,'fee','fee',11,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(13,'fee','fee',12,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(14,'fee','fee',13,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(15,'fee','fee',14,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(16,'fee','fee',15,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(17,'fee','fee',16,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(18,'fee','fee',17,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(19,'fee','fee',18,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(20,'fee','fee',19,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(21,'fee','fee',20,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(22,'fee','fee',21,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(23,'fee','fee',22,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(24,'fee','fee',23,0,1,'2012-10-28 10:47:08','2012-10-28 10:47:08'),(25,'fee','total fee',24,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(26,'fee','total fee',25,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(27,'fee','total fee',26,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(28,'fee','total fee',27,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(29,'fee','total fee',28,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(30,'fee','total fee',29,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(31,'fee','total fee',30,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(32,'fee','total fee',31,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(33,'fee','total fee',32,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(34,'fee','total fee',33,0,1,'2012-10-28 10:49:51','2012-10-28 10:49:51'),(35,'Fee','total fee',34,0,1,'2012-10-28 10:56:11','2012-10-28 10:56:11'),(36,'Fee','total fee',35,0,1,'2012-10-28 10:56:11','2012-10-28 10:56:11');
/*!40000 ALTER TABLE `finance_fee_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_collections`
--

DROP TABLE IF EXISTS `finance_fee_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_finance_fee_collections_on_fee_category_id` (`fee_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_collections`
--

LOCK TABLES `finance_fee_collections` WRITE;
/*!40000 ALTER TABLE `finance_fee_collections` DISABLE KEYS */;
INSERT INTO `finance_fee_collections` VALUES (1,'School Fee','2012-07-01','2012-07-15','2012-07-15',6,1,1),(2,'school fee','2012-10-28','2012-10-28','2012-10-28',6,1,0),(3,'school fee','2012-10-28','2012-10-28','2012-10-28',6,1,0);
/*!40000 ALTER TABLE `finance_fee_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_particulars`
--

DROP TABLE IF EXISTS `finance_fee_particulars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_particulars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` decimal(15,2) DEFAULT NULL,
  `finance_fee_category_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_particulars`
--

LOCK TABLES `finance_fee_particulars` WRITE;
/*!40000 ALTER TABLE `finance_fee_particulars` DISABLE KEYS */;
INSERT INTO `finance_fee_particulars` VALUES (1,'Admission Fee','Admission Fee',1200.00,1,NULL,NULL,NULL,0,'2012-10-26 09:52:39','2012-10-26 09:52:39'),(2,'Admission Fee','Admission Fee',1200.00,2,NULL,NULL,NULL,0,'2012-10-26 09:52:39','2012-10-26 09:52:39'),(3,'Admission Fee','Admission Fee',1200.00,3,NULL,NULL,NULL,0,'2012-10-26 09:52:39','2012-10-26 09:52:39'),(4,'Admission Fee','Admission Fee',1200.00,4,NULL,NULL,NULL,0,'2012-10-26 09:52:39','2012-10-26 09:52:39'),(5,'Admission Fee','Admission Fee',1200.00,5,NULL,NULL,NULL,0,'2012-10-26 09:52:39','2012-10-26 09:52:39'),(6,'Annual Fee','Annual Fee',2000.00,1,NULL,NULL,NULL,0,'2012-10-26 09:52:59','2012-10-26 09:52:59'),(7,'Annual Fee','Annual Fee',2000.00,2,NULL,NULL,NULL,0,'2012-10-26 09:52:59','2012-10-26 09:52:59'),(8,'Annual Fee','Annual Fee',2000.00,3,NULL,NULL,NULL,0,'2012-10-26 09:52:59','2012-10-26 09:52:59'),(9,'Annual Fee','Annual Fee',2000.00,4,NULL,NULL,NULL,0,'2012-10-26 09:52:59','2012-10-26 09:52:59'),(10,'Annual Fee','Annual Fee',2000.00,5,NULL,NULL,NULL,0,'2012-10-26 09:52:59','2012-10-26 09:52:59'),(11,'Tution Fee','Tution Fee',4800.00,1,NULL,NULL,NULL,0,'2012-10-26 09:53:17','2012-10-26 09:53:17'),(12,'Tution Fee','Tution Fee',4800.00,2,NULL,NULL,NULL,0,'2012-10-26 09:53:17','2012-10-26 09:53:17'),(13,'Tution Fee','Tution Fee',4800.00,3,NULL,NULL,NULL,0,'2012-10-26 09:53:17','2012-10-26 09:53:17'),(14,'Tution Fee','Tution Fee',4800.00,4,NULL,NULL,NULL,0,'2012-10-26 09:53:17','2012-10-26 09:53:17'),(15,'Tution Fee','Tution Fee',4800.00,5,NULL,NULL,NULL,0,'2012-10-26 09:53:17','2012-10-26 09:53:17'),(16,'Admission fee','new admission',1300.00,6,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(17,'Admission fee','new admission',1300.00,7,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(18,'Admission fee','new admission',1300.00,8,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(19,'Admission fee','new admission',1300.00,9,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(20,'Admission fee','new admission',1300.00,10,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(21,'Admission fee','new admission',1300.00,11,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(22,'Admission fee','new admission',1300.00,12,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(23,'Admission fee','new admission',1300.00,13,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(24,'Admission fee','new admission',1300.00,14,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(25,'Admission fee','new admission',1300.00,15,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(26,'Admission fee','new admission',1300.00,16,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(27,'Admission fee','new admission',1300.00,17,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(28,'Admission fee','new admission',1300.00,18,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(29,'Admission fee','new admission',1300.00,19,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(30,'Admission fee','new admission',1300.00,20,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(31,'Admission fee','new admission',1300.00,21,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(32,'Admission fee','new admission',1300.00,22,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(33,'Admission fee','new admission',1300.00,23,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(34,'Admission fee','new admission',1300.00,24,NULL,NULL,NULL,0,'2012-10-28 10:48:59','2012-10-28 10:48:59'),(35,'Admission fee','new admission',1400.00,25,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(36,'Admission fee','new admission',1400.00,26,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(37,'Admission fee','new admission',1400.00,27,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(38,'Admission fee','new admission',1400.00,28,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(39,'Admission fee','new admission',1400.00,29,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(40,'Admission fee','new admission',1400.00,30,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(41,'Admission fee','new admission',1400.00,31,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(42,'Admission fee','new admission',1400.00,32,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(43,'Admission fee','new admission',1400.00,33,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(44,'Admission fee','new admission',1400.00,34,NULL,NULL,NULL,0,'2012-10-28 10:50:40','2012-10-28 10:50:40'),(45,'Annual Fee','For all the students',3000.00,6,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(46,'Annual Fee','For all the students',3000.00,7,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(47,'Annual Fee','For all the students',3000.00,8,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(48,'Annual Fee','For all the students',3000.00,9,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(49,'Annual Fee','For all the students',3000.00,10,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(50,'Annual Fee','For all the students',3000.00,11,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(51,'Annual Fee','For all the students',3000.00,12,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(52,'Annual Fee','For all the students',3000.00,13,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(53,'Annual Fee','For all the students',3000.00,14,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(54,'Annual Fee','For all the students',3000.00,15,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(55,'Annual Fee','For all the students',3000.00,16,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(56,'Annual Fee','For all the students',3000.00,17,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(57,'Annual Fee','For all the students',3000.00,18,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(58,'Annual Fee','For all the students',3000.00,19,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(59,'Annual Fee','For all the students',3000.00,20,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(60,'Annual Fee','For all the students',3000.00,21,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(61,'Annual Fee','For all the students',3000.00,22,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(62,'Annual Fee','For all the students',3000.00,23,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(63,'Annual Fee','For all the students',3000.00,24,NULL,NULL,NULL,0,'2012-10-28 10:51:36','2012-10-28 10:51:36'),(64,'Tution Fee','For all the students',7200.00,6,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(65,'Tution Fee','For all the students',7200.00,7,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(66,'Tution Fee','For all the students',7200.00,8,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(67,'Tution Fee','For all the students',7200.00,9,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(68,'Tution Fee','For all the students',7200.00,10,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(69,'Tution Fee','For all the students',7200.00,11,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(70,'Tution Fee','For all the students',7200.00,12,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(71,'Tution Fee','For all the students',7200.00,13,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(72,'Tution Fee','For all the students',7200.00,14,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(73,'Tution Fee','For all the students',7200.00,15,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(74,'Tution Fee','For all the students',7200.00,16,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(75,'Tution Fee','For all the students',7200.00,17,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(76,'Tution Fee','For all the students',7200.00,18,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(77,'Tution Fee','For all the students',7200.00,19,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(78,'Tution Fee','For all the students',7200.00,20,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(79,'Tution Fee','For all the students',7200.00,21,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(80,'Tution Fee','For all the students',7200.00,22,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(81,'Tution Fee','For all the students',7200.00,23,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(82,'Tution Fee','For all the students',7200.00,24,NULL,NULL,NULL,0,'2012-10-28 10:53:10','2012-10-28 10:53:10'),(83,'Annual Fee','For all the students',4000.00,25,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(84,'Annual Fee','For all the students',4000.00,26,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(85,'Annual Fee','For all the students',4000.00,27,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(86,'Annual Fee','For all the students',4000.00,28,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(87,'Annual Fee','For all the students',4000.00,29,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(88,'Annual Fee','For all the students',4000.00,30,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(89,'Annual Fee','For all the students',4000.00,31,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(90,'Annual Fee','For all the students',4000.00,32,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(91,'Annual Fee','For all the students',4000.00,33,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(92,'Annual Fee','For all the students',4000.00,34,NULL,NULL,NULL,0,'2012-10-28 10:54:26','2012-10-28 10:54:26'),(93,'Admission fee','new admission',1500.00,35,NULL,NULL,NULL,0,'2012-10-28 10:56:54','2012-10-28 10:56:54'),(94,'Admission fee','new admission',1500.00,36,NULL,NULL,NULL,0,'2012-10-28 10:56:54','2012-10-28 10:56:54'),(95,'Annual Fee','For all the students',5000.00,35,NULL,NULL,NULL,0,'2012-10-28 10:57:43','2012-10-28 10:57:43'),(96,'Annual Fee','For all the students',5000.00,36,NULL,NULL,NULL,0,'2012-10-28 10:57:43','2012-10-28 10:57:43'),(97,'Tution Fee','For all the students',14400.00,35,NULL,NULL,NULL,0,'2012-10-28 10:58:26','2012-10-28 10:58:26'),(98,'Tution Fee','For all the students',14400.00,36,NULL,NULL,NULL,0,'2012-10-28 10:58:26','2012-10-28 10:58:26');
/*!40000 ALTER TABLE `finance_fee_particulars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fee_structure_elements`
--

DROP TABLE IF EXISTS `finance_fee_structure_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fee_structure_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `fee_collection_id` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fee_structure_elements`
--

LOCK TABLES `finance_fee_structure_elements` WRITE;
/*!40000 ALTER TABLE `finance_fee_structure_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_fee_structure_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_fees`
--

DROP TABLE IF EXISTS `finance_fees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fee_collection_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_finance_fees_on_fee_collection_id_and_student_id` (`fee_collection_id`,`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_fees`
--

LOCK TABLES `finance_fees` WRITE;
/*!40000 ALTER TABLE `finance_fees` DISABLE KEYS */;
INSERT INTO `finance_fees` VALUES (1,1,NULL,2,0),(2,1,NULL,3,0),(3,1,NULL,4,0),(4,2,'2,3,4,5',2,1),(5,2,NULL,3,0),(6,2,'12',4,1),(7,3,'6,7,8,9,10',2,1),(8,3,'11',3,1),(9,3,NULL,4,0),(10,3,'1',5,1),(11,3,NULL,6,0),(12,3,NULL,7,0);
/*!40000 ALTER TABLE `finance_fees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_categories`
--

DROP TABLE IF EXISTS `finance_transaction_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_income` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_categories`
--

LOCK TABLES `finance_transaction_categories` WRITE;
/*!40000 ALTER TABLE `finance_transaction_categories` DISABLE KEYS */;
INSERT INTO `finance_transaction_categories` VALUES (1,'Salary',' ',0,0),(2,'Donation',' ',1,0),(3,'Fee',' ',1,0),(4,'Library','Library Module for Fedena',1,0);
/*!40000 ALTER TABLE `finance_transaction_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transaction_triggers`
--

DROP TABLE IF EXISTS `finance_transaction_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transaction_triggers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finance_category_id` int(11) DEFAULT NULL,
  `percentage` decimal(8,2) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transaction_triggers`
--

LOCK TABLES `finance_transaction_triggers` WRITE;
/*!40000 ALTER TABLE `finance_transaction_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `finance_transaction_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finance_transactions`
--

DROP TABLE IF EXISTS `finance_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finance_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `fine_included` tinyint(1) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `finance_fees_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `fine_amount` decimal(10,2) DEFAULT '0.00',
  `master_transaction_id` int(11) DEFAULT '0',
  `finance_id` int(11) DEFAULT NULL,
  `finance_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payee_id` int(11) DEFAULT NULL,
  `payee_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voucher_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finance_transactions`
--

LOCK TABLES `finance_transactions` WRITE;
/*!40000 ALTER TABLE `finance_transactions` DISABLE KEYS */;
INSERT INTO `finance_transactions` VALUES (1,'Receipt No. F10',NULL,12700.00,0,3,NULL,NULL,'2012-10-28 14:06:58','2012-10-28 14:06:58','2012-10-28',0.00,0,10,'FinanceFee',5,'Student','1',NULL),(2,'Receipt No. F4',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:35:26','2012-10-29 02:35:26','2012-10-29',0.00,0,4,'FinanceFee',2,'Student','2',NULL),(3,'Receipt No. F4',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:35:27','2012-10-29 02:35:27','2012-10-29',0.00,0,4,'FinanceFee',2,'Student','3',NULL),(4,'Receipt No. F4',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:35:28','2012-10-29 02:35:28','2012-10-29',0.00,0,4,'FinanceFee',2,'Student','4',NULL),(5,'Receipt No. F4',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:35:29','2012-10-29 02:35:29','2012-10-29',0.00,0,4,'FinanceFee',2,'Student','5',NULL),(6,'Receipt No. F7',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:36:03','2012-10-29 02:36:03','2012-10-29',0.00,0,7,'FinanceFee',2,'Student','6',NULL),(7,'Receipt No. F7',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:36:04','2012-10-29 02:36:04','2012-10-29',0.00,0,7,'FinanceFee',2,'Student','7',NULL),(8,'Receipt No. F7',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:36:06','2012-10-29 02:36:06','2012-10-29',0.00,0,7,'FinanceFee',2,'Student','8',NULL),(9,'Receipt No. F7',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:36:06','2012-10-29 02:36:06','2012-10-29',0.00,0,7,'FinanceFee',2,'Student','9',NULL),(10,'Receipt No. F7',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:36:06','2012-10-29 02:36:06','2012-10-29',0.00,0,7,'FinanceFee',2,'Student','10',NULL),(11,'Receipt No. F8',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 02:37:49','2012-10-29 02:37:49','2012-10-29',0.00,0,8,'FinanceFee',3,'Student','11',NULL),(12,'Receipt No. F6',NULL,11500.00,0,3,NULL,NULL,'2012-10-29 07:20:34','2012-10-29 07:20:34','2012-10-29',0.00,0,6,'FinanceFee',4,'Student','12',NULL);
/*!40000 ALTER TABLE `finance_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grading_levels`
--

DROP TABLE IF EXISTS `grading_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grading_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `min_score` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `credit_points` decimal(15,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grading_levels_on_batch_id_and_is_deleted` (`batch_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grading_levels`
--

LOCK TABLES `grading_levels` WRITE;
/*!40000 ALTER TABLE `grading_levels` DISABLE KEYS */;
INSERT INTO `grading_levels` VALUES (1,'A',NULL,90,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL),(2,'B',NULL,80,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL),(3,'C',NULL,70,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL),(4,'D',NULL,60,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL),(5,'E',NULL,50,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL),(6,'F',NULL,0,NULL,0,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL,NULL);
/*!40000 ALTER TABLE `grading_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_batches`
--

DROP TABLE IF EXISTS `grouped_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_group_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grouped_batches_on_batch_group_id` (`batch_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_batches`
--

LOCK TABLES `grouped_batches` WRITE;
/*!40000 ALTER TABLE `grouped_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exam_reports`
--

DROP TABLE IF EXISTS `grouped_exam_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_exam_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `marks` decimal(15,2) DEFAULT NULL,
  `score_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `by_batch_student_and_score_type` (`batch_id`,`student_id`,`score_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_exam_reports`
--

LOCK TABLES `grouped_exam_reports` WRITE;
/*!40000 ALTER TABLE `grouped_exam_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exam_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grouped_exams`
--

DROP TABLE IF EXISTS `grouped_exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grouped_exams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_group_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `weightage` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_grouped_exams_on_batch_id` (`batch_id`),
  KEY `index_grouped_exams_on_batch_id_and_exam_group_id` (`batch_id`,`exam_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grouped_exams`
--

LOCK TABLES `grouped_exams` WRITE;
/*!40000 ALTER TABLE `grouped_exams` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouped_exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardians`
--

DROP TABLE IF EXISTS `guardians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardians` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `office_address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardians`
--

LOCK TABLES `guardians` WRITE;
/*!40000 ALTER TABLE `guardians` DISABLE KEYS */;
INSERT INTO `guardians` VALUES (1,2,'rajasthan','','father','','','','','','','','',76,NULL,'','','','2012-10-26 11:44:48','2012-10-26 11:44:48',NULL);
/*!40000 ALTER TABLE `guardians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostels`
--

DROP TABLE IF EXISTS `hostels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostels`
--

LOCK TABLES `hostels` WRITE;
/*!40000 ALTER TABLE `hostels` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual_payslip_categories`
--

DROP TABLE IF EXISTS `individual_payslip_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_payslip_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT NULL,
  `salary_date` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deduction` tinyint(1) DEFAULT NULL,
  `include_every_month` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual_payslip_categories`
--

LOCK TABLES `individual_payslip_categories` WRITE;
/*!40000 ALTER TABLE `individual_payslip_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual_payslip_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liabilities`
--

DROP TABLE IF EXISTS `liabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `is_solved` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liabilities`
--

LOCK TABLES `liabilities` WRITE;
/*!40000 ALTER TABLE `liabilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `liabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_card_settings`
--

DROP TABLE IF EXISTS `library_card_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_card_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `books_issueable` int(11) DEFAULT NULL,
  `time_period` int(11) DEFAULT '30',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_library_card_settings_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_card_settings`
--

LOCK TABLES `library_card_settings` WRITE;
/*!40000 ALTER TABLE `library_card_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_card_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_service_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
INSERT INTO `memberships` VALUES (1,1,1,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(2,1,2,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(3,1,3,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(4,1,9,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(5,1,19,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(6,1,24,'2012-10-28 14:04:46','2012-10-28 14:04:46'),(7,2,41,'2012-10-30 14:49:16','2012-10-30 14:49:16');
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_payslips`
--

DROP TABLE IF EXISTS `monthly_payslips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_payslips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salary_date` date DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `approver_id` int(11) DEFAULT NULL,
  `is_rejected` tinyint(1) NOT NULL DEFAULT '0',
  `rejector_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_payslips`
--

LOCK TABLES `monthly_payslips` WRITE;
/*!40000 ALTER TABLE `monthly_payslips` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_payslips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_comments`
--

DROP TABLE IF EXISTS `news_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `news_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_comments`
--

LOCK TABLES `news_comments` WRITE;
/*!40000 ALTER TABLE `news_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation_groups`
--

DROP TABLE IF EXISTS `observation_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observation_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cce_grade_set_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `observation_kind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_marks` float DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observation_groups`
--

LOCK TABLES `observation_groups` WRITE;
/*!40000 ALTER TABLE `observation_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observations`
--

DROP TABLE IF EXISTS `observations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `observation_group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_observations_on_observation_group_id` (`observation_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observations`
--

LOCK TABLES `observations` WRITE;
/*!40000 ALTER TABLE `observations` DISABLE KEYS */;
/*!40000 ALTER TABLE `observations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payroll_categories`
--

DROP TABLE IF EXISTS `payroll_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payroll_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `payroll_category_id` int(11) DEFAULT NULL,
  `is_deduction` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payroll_categories`
--

LOCK TABLES `payroll_categories` WRITE;
/*!40000 ALTER TABLE `payroll_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `payroll_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `period_entries`
--

DROP TABLE IF EXISTS `period_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `period_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_date` date DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_period_entries_on_month_date_and_batch_id` (`month_date`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period_entries`
--

LOCK TABLES `period_entries` WRITE;
/*!40000 ALTER TABLE `period_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `period_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `previous_exam_scores`
--

DROP TABLE IF EXISTS `previous_exam_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `previous_exam_scores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `marks` decimal(7,2) DEFAULT NULL,
  `grading_level_id` int(11) DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_failed` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_previous_exam_scores_on_student_id_and_exam_id` (`student_id`,`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous_exam_scores`
--

LOCK TABLES `previous_exam_scores` WRITE;
/*!40000 ALTER TABLE `previous_exam_scores` DISABLE KEYS */;
/*!40000 ALTER TABLE `previous_exam_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges`
--

DROP TABLE IF EXISTS `privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges`
--

LOCK TABLES `privileges` WRITE;
/*!40000 ALTER TABLE `privileges` DISABLE KEYS */;
INSERT INTO `privileges` VALUES (1,'ExaminationControl','2012-10-25 06:48:38','2012-10-25 06:48:38','examination_control_privilege'),(2,'EnterResults','2012-10-25 06:48:38','2012-10-25 06:48:38','enter_results_privilege'),(3,'ViewResults','2012-10-25 06:48:38','2012-10-25 06:48:38','view_results_privilege'),(4,'Admission','2012-10-25 06:48:38','2012-10-25 06:48:38','admission_privilege'),(5,'StudentsControl','2012-10-25 06:48:38','2012-10-25 06:48:38','students_control_privilege'),(6,'ManageNews','2012-10-25 06:48:38','2012-10-25 06:48:38','manage_news_privilege'),(7,'ManageTimetable','2012-10-25 06:48:38','2012-10-25 06:48:38','manage_timetable_privilege'),(8,'StudentAttendanceView','2012-10-25 06:48:38','2012-10-25 06:48:38','student_attendance_view_privilege'),(9,'HrBasics','2012-10-25 06:48:38','2012-10-25 06:48:38','hr_basics_privilege'),(10,'AddNewBatch','2012-10-25 06:48:38','2012-10-25 06:48:38','add_new_batch_privilege'),(11,'SubjectMaster','2012-10-25 06:48:38','2012-10-25 06:48:38','subject_master_privilege'),(12,'EventManagement','2012-10-25 06:48:38','2012-10-25 06:48:38','event_management_privilege'),(13,'GeneralSettings','2012-10-25 06:48:38','2012-10-25 06:48:38','general_settings_privilege'),(14,'FinanceControl','2012-10-25 06:48:38','2012-10-25 06:48:38','finance_control_privilege'),(15,'TimetableView','2012-10-25 06:48:38','2012-10-25 06:48:38','timetable_view_privilege'),(16,'StudentAttendanceRegister','2012-10-25 06:48:38','2012-10-25 06:48:38','student_attendance_register_privilege'),(17,'EmployeeAttendance','2012-10-25 06:48:38','2012-10-25 06:48:38','employee_attendance_privilege'),(18,'PayslipPowers','2012-10-25 06:48:38','2012-10-25 06:48:38','payslip_powers_privilege'),(19,'EmployeeSearch','2012-10-25 06:48:38','2012-10-25 06:48:38','employee_search_privilege'),(20,'SMSManagement','2012-10-25 06:48:38','2012-10-25 06:48:38','sms_management_privilege'),(21,'StudentView','2012-10-25 06:48:40','2012-10-25 06:48:41','student_view_privilege'),(22,'Librarian','2012-10-25 06:48:43','2012-10-25 06:48:43','librarian_privilege');
/*!40000 ALTER TABLE `privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privileges_users`
--

DROP TABLE IF EXISTS `privileges_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privileges_users` (
  `user_id` int(11) DEFAULT NULL,
  `privilege_id` int(11) DEFAULT NULL,
  KEY `index_privileges_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privileges_users`
--

LOCK TABLES `privileges_users` WRITE;
/*!40000 ALTER TABLE `privileges_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `privileges_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_levels`
--

DROP TABLE IF EXISTS `ranking_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ranking_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gpa` decimal(15,2) DEFAULT NULL,
  `marks` decimal(15,2) DEFAULT NULL,
  `subject_count` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `full_course` tinyint(1) DEFAULT '0',
  `course_id` int(11) DEFAULT NULL,
  `subject_limit_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marks_limit_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_levels`
--

LOCK TABLES `ranking_levels` WRITE;
/*!40000 ALTER TABLE `ranking_levels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reasons`
--

DROP TABLE IF EXISTS `reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reasons`
--

LOCK TABLES `reasons` WRITE;
/*!40000 ALTER TABLE `reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `is_read` tinyint(1) DEFAULT '0',
  `is_deleted_by_sender` tinyint(1) DEFAULT '0',
  `is_deleted_by_recipient` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_reminders_on_recipient` (`recipient`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (1,1,2,'Exam Scheduled','FA has been scheduled   Please view calendar for more details',0,0,0,'2012-10-26 02:30:26','2012-10-26 02:30:26'),(2,1,3,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-07-01 \n End Date :2012-07-15 \n  Due Date :2012-07-15 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:04:36','2012-10-28 11:04:36'),(3,1,4,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-07-01 \n End Date :2012-07-15 \n  Due Date :2012-07-15 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:04:36','2012-10-28 11:04:36'),(4,1,5,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-07-01 \n End Date :2012-07-15 \n  Due Date :2012-07-15 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:04:36','2012-10-28 11:04:36'),(5,1,3,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:43:29','2012-10-28 11:43:29'),(6,1,4,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:43:29','2012-10-28 11:43:29'),(7,1,5,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 11:43:29','2012-10-28 11:43:29'),(8,1,3,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05'),(9,1,4,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05'),(10,1,5,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05'),(11,1,6,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05'),(12,1,7,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05'),(13,1,8,'Fees submission date','Fee submission date for FEE has been published \n\n\n  Start Date : 2012-10-28 \n End Date :2012-10-28 \n  Due Date :2012-10-28 \n\n\n  check your  Fee structure',0,0,0,'2012-10-28 12:25:05','2012-10-28 12:25:05');
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sr_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_per_room` int(11) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `room_occupied` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'AARA','2012-10-28 11:35:54','2012-10-28 11:35:54','',NULL,NULL,NULL),(2,'AMBADA ','2012-10-28 11:36:01','2012-10-28 11:36:01','',NULL,NULL,NULL),(3,'BADGI ','2012-10-28 11:36:08','2012-10-28 11:36:08','',NULL,NULL,NULL),(4,'BHASOR ','2012-10-28 11:57:17','2012-10-28 11:57:17','',NULL,NULL,NULL),(5,'BHEMAI ','2012-10-28 11:57:31','2012-10-28 11:57:31','',NULL,NULL,NULL),(6,'BHIMDARI ','2012-10-28 11:57:46','2012-10-28 11:57:46','',NULL,NULL,NULL),(7,'BIJOLA ','2012-10-28 11:58:03','2012-10-28 11:58:03','',NULL,NULL,NULL),(8,'CHADOLI ','2012-10-28 11:58:18','2012-10-28 11:58:18','',NULL,NULL,NULL),(9,'CHIKHALI ','2012-10-28 11:58:33','2012-10-28 11:58:33','',NULL,NULL,NULL),(10,'CHITRI ','2012-10-28 11:58:47','2012-10-28 11:58:47','',NULL,NULL,NULL),(11,'DAIYANA ','2012-10-28 11:58:58','2012-10-28 11:58:58','',NULL,NULL,NULL),(12,'DIWDA BADA ','2012-10-28 11:59:09','2012-10-28 11:59:09','',NULL,NULL,NULL),(13,'DIWDA CHHOTA ','2012-10-28 11:59:24','2012-10-28 11:59:24','',NULL,NULL,NULL),(14,'GADA JASRAJPUR ','2012-10-28 11:59:39','2012-10-28 11:59:39','',NULL,NULL,NULL),(15,'GAMDA BRAHMNIYA ','2012-10-28 11:59:54','2012-10-28 11:59:54','',NULL,NULL,NULL),(16,'GARIYATA ','2012-10-28 12:00:16','2012-10-28 12:00:16','',NULL,NULL,NULL),(17,'GHATA KA GOAN ','2012-10-28 12:00:30','2012-10-28 12:00:30','',NULL,NULL,NULL),(18,'GHOTAD ','2012-10-28 12:00:41','2012-10-28 12:00:41','',NULL,NULL,NULL),(19,'GOWADI ','2012-10-28 12:00:53','2012-10-28 12:00:53','',NULL,NULL,NULL),(20,'JASELA ','2012-10-28 12:01:04','2012-10-28 12:01:04','',NULL,NULL,NULL),(21,'JETHANA ','2012-10-28 12:01:17','2012-10-28 12:01:17','',NULL,NULL,NULL),(22,'JOGPUR ','2012-10-28 12:01:30','2012-10-28 12:01:30','',NULL,NULL,NULL),(23,'JHOSAWA ','2012-10-28 12:01:45','2012-10-28 12:01:45','',NULL,NULL,NULL),(24,'KARADA ','2012-10-28 12:01:58','2012-10-28 12:01:58','',NULL,NULL,NULL),(25,'KHADAGDA ','2012-10-28 12:02:09','2012-10-28 12:02:09','',NULL,NULL,NULL),(26,'KHUMANPUR ','2012-10-28 12:02:21','2012-10-28 12:02:21','',NULL,NULL,NULL),(27,'KOKAPUR ','2012-10-28 12:02:31','2012-10-28 12:02:31','',NULL,NULL,NULL),(28,'KUNWA ','2012-10-28 12:02:52','2012-10-28 12:02:52','',NULL,NULL,NULL),(29,'LAXMAN PURA ','2012-10-28 12:03:10','2012-10-28 12:03:10','',NULL,NULL,NULL),(30,'LIMDI ','2012-10-28 12:03:22','2012-10-28 12:03:22','',NULL,NULL,NULL),(31,'MANDAV ','2012-10-28 12:03:33','2012-10-28 12:03:33','',NULL,NULL,NULL),(32,'MOVAI ','2012-10-28 12:03:45','2012-10-28 12:03:45','',NULL,NULL,NULL),(33,'NADIA ','2012-10-28 12:03:58','2012-10-28 12:03:58','',NULL,NULL,NULL),(34,'NANDOR ','2012-10-28 12:04:10','2012-10-28 12:04:10','',NULL,NULL,NULL),(35,'NAYA GAON ','2012-10-28 12:04:23','2012-10-28 12:04:23','',NULL,NULL,NULL),(36,'NOGAMA ','2012-10-28 12:04:35','2012-10-28 12:04:35','',NULL,NULL,NULL),(37,'OOD ','2012-10-28 12:04:47','2012-10-28 12:04:47','',NULL,NULL,NULL),(38,'P.C. SAGWARA ','2012-10-28 12:04:59','2012-10-28 12:04:59','',NULL,NULL,NULL),(39,'PADRA ','2012-10-28 12:05:11','2012-10-28 12:05:11','',NULL,NULL,NULL),(40,'PADWA ','2012-10-28 12:05:22','2012-10-28 12:05:22','',NULL,NULL,NULL),(41,'PARDA MATAJI ','2012-10-28 12:05:42','2012-10-28 12:05:42','',NULL,NULL,NULL),(42,'Parda Saroda ','2012-10-28 12:05:55','2012-10-28 12:05:55','',NULL,NULL,NULL),(43,'RANOLI ','2012-10-28 12:06:07','2012-10-28 12:06:07','',NULL,NULL,NULL),(44,'RANTHOR ','2012-10-28 12:06:19','2012-10-28 12:06:19','',NULL,NULL,NULL),(45,'RATDIYA ','2012-10-28 12:06:31','2012-10-28 12:06:31','',NULL,NULL,NULL),(46,'SAGWARA ','2012-10-28 12:06:43','2012-10-28 12:06:43','',NULL,NULL,NULL),(47,'SAKODRA ','2012-10-28 12:06:54','2012-10-28 12:06:54','',NULL,NULL,NULL),(48,'SILOHI ','2012-10-28 12:07:06','2012-10-28 12:07:06','',NULL,NULL,NULL),(49,'SAMALIYA ','2012-10-28 12:07:19','2012-10-28 12:07:19','',NULL,NULL,NULL),(50,'SARODA ','2012-10-28 12:07:38','2012-10-28 12:07:38','',NULL,NULL,NULL),(51,'SHIVRAJ PUR ','2012-10-28 12:07:52','2012-10-28 12:07:52','',NULL,NULL,NULL),(52,'TITWA ','2012-10-28 12:08:08','2012-10-28 12:08:08','',NULL,NULL,NULL),(53,'UDAIPURA MAFI ','2012-10-28 12:08:24','2012-10-28 12:08:24','',NULL,NULL,NULL),(54,'VANDARVED ','2012-10-28 12:08:45','2012-10-28 12:08:45','',NULL,NULL,NULL),(55,'VANIAP ','2012-10-28 12:08:57','2012-10-28 12:08:57','',NULL,NULL,NULL),(56,'VANORI ','2012-10-28 12:09:09','2012-10-28 12:09:09','',NULL,NULL,NULL),(57,'VARSINGPUR ','2012-10-28 12:09:21','2012-10-28 12:09:21','',NULL,NULL,NULL),(58,'UBLI ','2012-10-28 12:09:37','2012-10-28 12:09:37','',NULL,NULL,NULL),(59,'Vadliya ','2012-10-28 12:09:49','2012-10-28 12:09:49','',NULL,NULL,NULL),(60,'SEMLIYA GHATA ','2012-10-28 12:10:00','2012-10-28 12:10:00','',NULL,NULL,NULL),(61,'BARBODNIYA ','2012-10-28 12:17:52','2012-10-28 12:17:52','',NULL,NULL,NULL),(62,'GALIYAKOT ','2012-10-28 12:18:09','2012-10-28 12:18:09','',NULL,NULL,NULL),(63,'VIRAT  ','2012-10-28 12:18:42','2012-10-28 12:18:42','',NULL,NULL,NULL),(64,'JETPURA  ','2012-10-28 12:18:54','2012-10-28 12:18:54','',NULL,NULL,NULL),(65,'DECHA  ','2012-10-28 12:19:10','2012-10-28 12:19:10','',NULL,NULL,NULL),(66,'DHUNDI ','2012-10-28 12:19:23','2012-10-28 12:19:23','',NULL,NULL,NULL),(67,'RAMSOR ','2012-10-28 12:19:34','2012-10-28 12:19:34','',NULL,NULL,NULL),(68,'UBLI GHATI  ','2012-10-28 12:19:46','2012-10-28 12:19:46','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090622100004'),('20090622102004'),('20090622104053'),('20090622104054'),('20090622114927'),('20090622115927'),('20090703074822'),('20090706170408'),('20090715234257'),('20090715234258'),('20090717124241'),('20090717126241'),('20090718050113'),('20090718050453'),('20090718050921'),('20090718052749'),('20090731092833'),('20090818045411'),('20090818050018'),('20090904071048'),('20090904071548'),('20090904071642'),('20090904071905'),('20090904071906'),('20090904071907'),('20090904071908'),('20090904071909'),('20090910062751'),('20090914095002'),('20090914114212'),('20090916052300'),('20090917052349'),('20090917065256'),('20090924081520'),('20090926071527'),('20091009093746'),('20091026065251'),('20091202050910'),('20091202053600'),('20091202104818'),('20091207084711'),('20091207085849'),('20091207090412'),('20091217191652'),('20091217201118'),('20091224063502'),('20100403073735'),('20100403092229'),('20100403093355'),('20100412105036'),('20100412105116'),('20100422110336'),('20100426094532'),('20100429093616'),('20100505075459'),('20100515063157'),('20100515063814'),('20100520073311'),('20100524093457'),('20100525055716'),('20100602115152'),('20100604103435'),('20100604103916'),('20100604104308'),('20100604104759'),('20100609073016'),('20100609074544'),('20100730092747'),('20100731053458'),('20100731054033'),('20100731055437'),('20101019100229'),('20101019100810'),('20101022064802'),('20101026093826'),('20101027060122'),('20101129085525'),('20101209063633'),('20110221051223'),('20110510121550'),('20110511053223'),('20110516110336'),('20110706114907'),('20110711100500'),('20110721122326'),('20110728115723'),('20110729055539'),('20110730100503'),('20110805072425'),('20110810052138'),('20110912062640'),('20110928054502'),('20111015111840'),('20111020074717'),('20111105052819'),('20120320044605'),('20120321065124'),('20120326114112'),('20120404051019'),('20120404051814'),('20120404052524'),('20120410081920'),('20120413090231'),('20120420085643'),('20120421061939'),('20120421062319'),('20120421062549'),('20120421062750'),('20120421062917'),('20120421063035'),('20120423061415'),('20120423100037'),('20120424092335'),('20120425052412'),('20120427102307'),('20120503062405'),('20120503112304'),('20120504123001'),('20120507064439'),('20120508085619'),('20120510070334'),('20120514050238'),('20120514050318'),('20120514050339'),('20120514050353'),('20120514050415'),('20120514050433'),('20120514050455'),('20120514050500'),('20120514050522'),('20120514050548'),('20120514050603'),('20120514063103'),('20120514063142'),('20120516052659'),('20120517112833'),('20120517122038'),('20120518091221'),('20120521120315'),('20120522065318'),('20120522065410'),('20120525100324'),('20120528060855'),('20120530120325'),('20120602095356'),('20120606050404'),('20120606050437'),('20120608090107'),('20120608090126'),('20120613063621'),('20120613070054'),('20120614092829'),('20120615084815'),('20120615085346'),('20120615103301'),('20120618053150'),('20120618102301'),('20120625072331'),('20120625073818'),('20120626082424'),('20120702062719'),('20120704103545'),('20120706090514'),('20120706103712'),('20120710054428'),('20120816045034'),('20120915085143'),('20120915095719'),('20120916031102'),('20120916031205'),('20120917165626'),('20120918182800'),('20120918183207'),('20120919135547'),('20120920064718'),('20120922063353'),('20120922063747'),('20120922104129'),('20120922113251'),('20121017171144'),('20121017171957'),('20121023202523');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_details`
--

DROP TABLE IF EXISTS `school_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `school_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_details`
--

LOCK TABLES `school_details` WRITE;
/*!40000 ALTER TABLE `school_details` DISABLE KEYS */;
INSERT INTO `school_details` VALUES (1,NULL,NULL,NULL,NULL,'2012-10-25 07:35:57','2012-10-25 07:35:57');
/*!40000 ALTER TABLE `school_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_logs`
--

DROP TABLE IF EXISTS `sms_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gateway_response` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_message_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_logs`
--

LOCK TABLES `sms_logs` WRITE;
/*!40000 ALTER TABLE `sms_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_messages`
--

DROP TABLE IF EXISTS `sms_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_messages`
--

LOCK TABLES `sms_messages` WRITE;
/*!40000 ALTER TABLE `sms_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_settings`
--

DROP TABLE IF EXISTS `sms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_settings`
--

LOCK TABLES `sms_settings` WRITE;
/*!40000 ALTER TABLE `sms_settings` DISABLE KEYS */;
INSERT INTO `sms_settings` VALUES (1,'ApplicationEnabled',1),(2,'ParentSmsEnabled',0),(3,'EmployeeSmsEnabled',0),(4,'StudentSmsEnabled',0),(5,'ResultPublishEnabled',0),(6,'StudentAdmissionEnabled',0),(7,'ExamScheduleResultEnabled',0),(8,'AttendanceEnabled',0),(9,'NewsEventsEnabled',0);
/*!40000 ALTER TABLE `sms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_details`
--

DROP TABLE IF EXISTS `student_additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `additional_field_id` int(11) DEFAULT NULL,
  `additional_info` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_details`
--

LOCK TABLES `student_additional_details` WRITE;
/*!40000 ALTER TABLE `student_additional_details` DISABLE KEYS */;
INSERT INTO `student_additional_details` VALUES (1,4,1,''),(2,4,1,''),(3,7,1,''),(4,7,1,'');
/*!40000 ALTER TABLE `student_additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_additional_fields`
--

DROP TABLE IF EXISTS `student_additional_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_additional_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_additional_fields`
--

LOCK TABLES `student_additional_fields` WRITE;
/*!40000 ALTER TABLE `student_additional_fields` DISABLE KEYS */;
INSERT INTO `student_additional_fields` VALUES (1,'Manad Sadasya',1);
/*!40000 ALTER TABLE `student_additional_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_categories`
--

LOCK TABLES `student_categories` WRITE;
/*!40000 ALTER TABLE `student_categories` DISABLE KEYS */;
INSERT INTO `student_categories` VALUES (1,'General',0),(2,'OBC',0),(3,'ST',0),(4,'SC',0);
/*!40000 ALTER TABLE `student_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_datas`
--

DROP TABLE IF EXISTS `student_previous_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_datas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `course` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_datas`
--

LOCK TABLES `student_previous_datas` WRITE;
/*!40000 ALTER TABLE `student_previous_datas` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_previous_subject_marks`
--

DROP TABLE IF EXISTS `student_previous_subject_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_previous_subject_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_previous_subject_marks`
--

LOCK TABLES `student_previous_subject_marks` WRITE;
/*!40000 ALTER TABLE `student_previous_subject_marks` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_previous_subject_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admission_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_roll_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_category_id` int(11) DEFAULT NULL,
  `address_line1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `immediate_contact_id` int(11) DEFAULT NULL,
  `is_sms_enabled` tinyint(1) DEFAULT '1',
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_data` mediumblob,
  `status_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `has_paid_fees` tinyint(1) DEFAULT '0',
  `photo_file_size` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bus_service_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `bus_fee_paid` tinyint(1) DEFAULT '0',
  `hostel_fee_paid` tinyint(1) DEFAULT '0',
  `caste` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `library_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_on_admission_no` (`admission_no`(10)),
  KEY `index_students_on_first_name_and_middle_name_and_last_name` (`first_name`(10),`middle_name`(10),`last_name`(10)),
  KEY `index_students_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'1111',NULL,'2012-10-26','abcds','','',1,'2007-10-26','m','','',76,'','',NULL,'','','','','',76,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2012-10-26 11:44:07','2012-10-26 11:44:07',0,NULL,3,NULL,NULL,NULL,0,0,'jain',NULL),(3,'1112',NULL,'2012-10-27','Virendra','Mohan','Negi',1,'2007-10-27','m','O+','India',76,'','',NULL,'Hanuman Compund N.S.S Road','Asalfa Ghatkopar West','','','',76,'','','',NULL,1,'lens1582478_spongebob_2.jpeg','image/jpeg',NULL,'transfer',0,0,'2012-10-26 20:32:43','2012-10-30 14:49:16',0,6727,4,2,NULL,NULL,0,0,'Hindu ',NULL),(4,'1113',NULL,'2012-10-27','chirag','','',1,'2007-10-27','m','','',76,'','',1,'','','','','',76,'','','',NULL,1,NULL,NULL,NULL,'sg',0,0,'2012-10-27 14:04:54','2012-10-28 11:37:36',0,NULL,5,NULL,NULL,NULL,0,0,'SHARMA',NULL),(5,'1114',NULL,'2012-10-28','nehat','','',1,'2007-10-28','m','','',76,'','',1,'','','','','',76,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2012-10-28 12:22:18','2012-10-28 14:06:58',0,NULL,6,1,NULL,NULL,1,0,'SHARMA',NULL),(6,'1115',NULL,'2012-10-28','nehat','','',1,'2007-10-28','m','','',76,'','',1,'','','','','',76,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2012-10-28 12:22:42','2012-10-28 12:22:42',0,NULL,7,NULL,1,NULL,0,0,'SHARMA',NULL),(7,'1116',NULL,'2012-10-28','nehat','','',1,'2007-10-28','m','','',76,'','',1,'','','','','',76,'','','',NULL,1,NULL,NULL,NULL,NULL,1,0,'2012-10-28 12:23:21','2012-10-28 12:23:21',0,NULL,8,NULL,1,NULL,0,0,'SHARMA',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_subjects`
--

DROP TABLE IF EXISTS `students_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_students_subjects_on_student_id_and_subject_id` (`student_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_subjects`
--

LOCK TABLES `students_subjects` WRITE;
/*!40000 ALTER TABLE `students_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `students_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_leaves`
--

DROP TABLE IF EXISTS `subject_leaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_leaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `month_date` date DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subject_leaves_on_month_date_and_subject_id_and_batch_id` (`month_date`,`subject_id`,`batch_id`),
  KEY `index_subject_leaves_on_student_id_and_batch_id` (`student_id`,`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_leaves`
--

LOCK TABLES `subject_leaves` WRITE;
/*!40000 ALTER TABLE `subject_leaves` DISABLE KEYS */;
/*!40000 ALTER TABLE `subject_leaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `no_exams` tinyint(1) DEFAULT '0',
  `max_weekly_classes` int(11) DEFAULT NULL,
  `elective_group_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `credit_hours` decimal(15,2) DEFAULT NULL,
  `prefer_consecutive` tinyint(1) DEFAULT '0',
  `amount` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_subjects_on_batch_id_and_elective_group_id_and_is_deleted` (`batch_id`,`elective_group_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'ORAL','OL',1,0,6,NULL,1,'2012-10-26 02:42:18','2012-10-26 08:36:35',NULL,0,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type` (`taggable_id`,`taggable_type`),
  KEY `index_taggings_on_school_id` (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Reference Book',NULL);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time_zones`
--

DROP TABLE IF EXISTS `time_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `difference_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_difference` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_zones`
--

LOCK TABLES `time_zones` WRITE;
/*!40000 ALTER TABLE `time_zones` DISABLE KEYS */;
INSERT INTO `time_zones` VALUES (1,'Greenwich Mean Time','GMT','+',0,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(2,'European Central Time','ECT','+',3600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(3,'Eastern European Time','EET','+',7200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(4,'Arabic Standard Time','ART','+',7200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(5,'Eastern African Time','EAT','+',10800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(6,'Middle East Time','MET','+',12600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(7,'Near East Time','NET','+',14400,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(8,'Pakistan Lahore Time','PLT','+',18000,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(9,'Indian Standard Time','IST','+',19800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(10,'Bangladesh Standard Time','BST','+',21600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(11,'Vietnam Standard Time','VST','+',25200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(12,'China Taiwan Time','CTT','+',28800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(13,'Japan Standard Time','JST','+',32400,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(14,'Australia Central Time','ACT','+',34200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(15,'Australia Eastern Time','AET','+',36000,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(16,'Solomon Standard Time','SST','+',39600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(17,'New Zealand Standard Time','NST','+',43200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(18,'Midway Islands Time','MIT','-',39600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(19,'Hawaii Standard Time','HST','-',36000,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(20,'Alaska Standard Time','AST','-',32400,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(21,'Pacific Standard Time','PST','-',28800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(22,'Phoenix Standard Time','PNT','-',25200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(23,'Mountain Standard Time','MST','-',25200,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(24,'Central Standard Time','CST','-',21600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(25,'Eastern Standard Time','EST','-',18000,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(26,'Indiana Eastern Standard Time','IET','-',18000,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(27,'Puerto Rico and US Virgin Islands Time','PRT','-',14400,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(28,'Canada Newfoundland Time','CNT','-',12600,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(29,'Argentina Standard Time','AGT','-',10800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(30,'Brazil Eastern Time','BET','-',10800,'2012-10-25 06:48:40','2012-10-25 06:48:40'),(31,'Central African Time','CAT','-',3600,'2012-10-25 06:48:40','2012-10-25 06:48:40');
/*!40000 ALTER TABLE `time_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_entries`
--

DROP TABLE IF EXISTS `timetable_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `weekday_id` int(11) DEFAULT NULL,
  `class_timing_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `timetable_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_timetable_entries_on_timetable_id` (`timetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_entries`
--

LOCK TABLES `timetable_entries` WRITE;
/*!40000 ALTER TABLE `timetable_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetable_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetables`
--

DROP TABLE IF EXISTS `timetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `by_start_and_end` (`start_date`,`end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetables`
--

LOCK TABLES `timetables` WRITE;
/*!40000 ALTER TABLE `timetables` DISABLE KEYS */;
/*!40000 ALTER TABLE `timetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_events`
--

LOCK TABLES `user_events` WRITE;
/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `student` tinyint(1) DEFAULT NULL,
  `employee` tinyint(1) DEFAULT NULL,
  `hashed_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code_until` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_username` (`username`(10))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Admin','User','info@udgamsolutions.in',1,0,0,'a7844c582aee3f91575a4214d0443253f4020c63','cPYFgiMK',NULL,NULL,'2012-10-25 06:48:41','2012-10-25 06:48:41',NULL),(3,'1111','abcds','','',0,1,0,'b2273710bc3b0b45a2f5d596f14fdf6024dcfa2a','ifCzw2th',NULL,NULL,'2012-10-26 11:44:07','2012-10-26 11:44:07',NULL),(4,'1112','Virendra','Negi','',0,1,0,'27f2b1e9f803823bbc487e34c563f78d46b7b5c4','toIrjNBh',NULL,NULL,'2012-10-26 20:32:43','2012-10-26 20:32:43',NULL),(5,'1113','chirag','','',0,1,0,'eb05939f602082759d47796c96d25aa26447f8f2','NE17wsx7',NULL,NULL,'2012-10-27 14:04:54','2012-10-27 14:04:54',NULL),(6,'1114','nehat','','',0,1,0,'7ca6cbc1c6dea7b1d9025070d9366db4ebd79f08','Q4eGMBOX',NULL,NULL,'2012-10-28 12:22:18','2012-10-28 12:22:18',NULL),(7,'1115','nehat','','',0,1,0,'0fe965e2630fa0794f7f944be87399d7387ec3d0','n0u62KJr',NULL,NULL,'2012-10-28 12:22:42','2012-10-28 12:22:42',NULL),(8,'1116','nehat','','',0,1,0,'55d70dfb53698e9dcf2322168e1e812bef010058','dC9PbpT8',NULL,NULL,'2012-10-28 12:23:21','2012-10-28 12:23:21',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekdays`
--

DROP TABLE IF EXISTS `weekdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekdays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_id` int(11) DEFAULT NULL,
  `weekday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_weekdays_on_batch_id` (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekdays`
--

LOCK TABLES `weekdays` WRITE;
/*!40000 ALTER TABLE `weekdays` DISABLE KEYS */;
INSERT INTO `weekdays` VALUES (1,NULL,'1',NULL,NULL,1,0),(2,NULL,'2',NULL,NULL,2,0),(3,NULL,'3',NULL,NULL,3,0),(4,NULL,'4',NULL,NULL,4,0),(5,NULL,'5',NULL,NULL,5,0);
/*!40000 ALTER TABLE `weekdays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-31 14:07:13
