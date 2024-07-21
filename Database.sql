-- --------------------------------------------------------
-- Host:                         \\.\pipe\MSSQL$SQLEXPRESS\sql\query
-- Server version:               Microsoft SQL Server 2022 (RTM) - 16.0.1000.6
-- Server OS:                    Windows 10 Pro 10.0 <X64> (Build 19045: ) (Hypervisor)
-- HeidiSQL Version:             12.8.0.6911
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for coursedb
CREATE DATABASE IF NOT EXISTS "coursedb";
USE "coursedb";

-- Dumping structure for table coursedb.Courses
CREATE TABLE IF NOT EXISTS "Courses" (
	"Id" INT NOT NULL,
	"Name" NVARCHAR(150) NOT NULL COLLATE 'Cyrillic_General_CI_AS',
	"Duration" SMALLINT NOT NULL,
	"Price" SMALLMONEY(10,4) NOT NULL,
	"CreationTime" DATETIME NOT NULL,
	"ModificationTime" DATETIME NOT NULL,
	PRIMARY KEY ("Id")
);

-- Dumping data for table coursedb.Courses: 0 rows
/*!40000 ALTER TABLE "Courses" DISABLE KEYS */;
/*!40000 ALTER TABLE "Courses" ENABLE KEYS */;

-- Dumping structure for table coursedb.Students
CREATE TABLE IF NOT EXISTS "Students" (
	"Id" INT NOT NULL,
	"Name" NVARCHAR(150) NOT NULL COLLATE 'Cyrillic_General_CI_AS',
	"Surname" NVARCHAR(150) NOT NULL COLLATE 'Cyrillic_General_CI_AS',
	"BirthDate" DATE NOT NULL,
	"CreationTime" DATETIME NOT NULL,
	"ModificationTime" DATETIME NOT NULL,
	PRIMARY KEY ("Id")
);

-- Dumping data for table coursedb.Students: 0 rows
/*!40000 ALTER TABLE "Students" DISABLE KEYS */;
/*!40000 ALTER TABLE "Students" ENABLE KEYS */;

-- Dumping structure for table coursedb.TeacherCourse
CREATE TABLE IF NOT EXISTS "TeacherCourse" (
	"TeacherID" INT NOT NULL,
	"CourseID" INT NOT NULL,
	FOREIGN KEY INDEX "FK__TeacherCo__Cours__5070F446" ("CourseID"),
	FOREIGN KEY INDEX "FK__TeacherCo__Teach__4F7CD00D" ("TeacherID"),
	PRIMARY KEY ("CourseID", "TeacherID"),
	CONSTRAINT "FK__TeacherCo__Cours__5070F446" FOREIGN KEY ("CourseID") REFERENCES "Courses" ("Id") ON UPDATE NO_ACTION ON DELETE NO_ACTION,
	CONSTRAINT "FK__TeacherCo__Teach__4F7CD00D" FOREIGN KEY ("TeacherID") REFERENCES "Teachers" ("Id") ON UPDATE NO_ACTION ON DELETE NO_ACTION
);

-- Dumping data for table coursedb.TeacherCourse: 0 rows
/*!40000 ALTER TABLE "TeacherCourse" DISABLE KEYS */;
/*!40000 ALTER TABLE "TeacherCourse" ENABLE KEYS */;

-- Dumping structure for table coursedb.Teachers
CREATE TABLE IF NOT EXISTS "Teachers" (
	"Id" INT NOT NULL,
	"Name" NVARCHAR(150) NULL DEFAULT NULL COLLATE 'Cyrillic_General_CI_AS',
	"Surname" NVARCHAR(150) NULL DEFAULT NULL COLLATE 'Cyrillic_General_CI_AS',
	"BirthDate" DATE NULL DEFAULT NULL,
	"Profession" NVARCHAR(150) NULL DEFAULT NULL COLLATE 'Cyrillic_General_CI_AS',
	PRIMARY KEY ("Id")
);

-- Dumping data for table coursedb.Teachers: 0 rows
/*!40000 ALTER TABLE "Teachers" DISABLE KEYS */;
/*!40000 ALTER TABLE "Teachers" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
