/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.1.36-MariaDB : Database - hospitaldb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hospitaldb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hospitaldb`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Re_password` varchar(50) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Permission` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `account` */

insert  into `account`(`ID`,`Username`,`Password`,`Re_password`,`Contact`,`Gender`,`Permission`,`Address`,`Date_Created`) values 
(1,'admin','admin1','admin','123123','Male','administrator','Manila','2020-06-07 19:52:18');

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Doctor_Name` varchar(100) NOT NULL,
  `department` varchar(30) NOT NULL,
  `Visit_time` varchar(30) NOT NULL,
  `Leave_time` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`ID`,`Doctor_Name`,`department`,`Visit_time`,`Leave_time`) values 
(1,'JOHNRAY FORNIAS BERNALES','DENTIST','04:00:40 PM','04:47:03 PM'),
(2,'JOHNRAY DAS F','DENTIST','04:52:31 PM','04:56:14 PM'),
(3,'JOHNRAY BERNALES F','DENTIST','07:49:30 PM',' ');

/*Table structure for table `choosepatient` */

DROP TABLE IF EXISTS `choosepatient`;

CREATE TABLE `choosepatient` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Date_Now` date NOT NULL,
  `Time` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `choosepatient` */

insert  into `choosepatient`(`ID`,`Name`,`Date_Now`,`Time`) values 
(1,'YAW','2020-06-06','01:00 PM'),
(2,'JEK','2020-06-05','02:00 PM'),
(3,'MENG','2020-06-07','02:00 PM');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `Doctor_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(255) NOT NULL,
  `Middlename` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `City` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Maritial_Status` varchar(10) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Join_Date` date NOT NULL,
  `Blood_Group` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Date_Created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Doctor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`Doctor_ID`,`Firstname`,`Middlename`,`Lastname`,`Age`,`Contact`,`City`,`Gender`,`Maritial_Status`,`Department`,`Username`,`Password`,`Join_Date`,`Blood_Group`,`Status`,`Date_Created`) values 
(2,'JOHNRAY','BERNALES','F',21,'12345','manila','Female','Married','Dentist','yawskie','admin','2020-05-30','A-','Not Workin','2020-05-30 16:49:27'),
(3,'JOHNRAY','DAS','F',21,'12345','manila','Male','Single','Dentist','yawskie','admin','2020-05-30','A-','Not Workin','2020-05-30 16:49:27'),
(4,'OMAK','ASDF','ASD',21,'12344454','manila','Male','Single','Clinic','gas','gas12','2020-06-06','B','Working','2020-06-06 14:51:22'),
(5,'ASDASD','ASDAD','ASDASD',23,'123123','pasig','Male','Married','Clinic','fasd','1','2020-06-06','A+','Working','2020-06-06 16:30:26');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Bed` varchar(30) NOT NULL,
  `Maritial_status` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`ID`,`Name`,`Age`,`Contact`,`Type`,`Bed`,`Maritial_status`,`Address`) values 
(1,'YAW','21','123456789','Indoor Patient','1','Single','manila'),
(2,'JEK','22','123123','Indoor Patient','2','Single','manila'),
(3,'MENG','23','12313','Indoor Patient','3','Single','manila');

/*Table structure for table `receptionist` */

DROP TABLE IF EXISTS `receptionist`;

CREATE TABLE `receptionist` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `Age` varchar(3) NOT NULL,
  `City` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `receptionist` */

insert  into `receptionist`(`ID`,`Name`,`Contact`,`Age`,`City`,`Gender`) values 
(1,'JOHNRAYS','123','21','MANILA','Male'),
(2,'ASD','123','123','ASD','Female'),
(3,'YAW','123','23','MANILA','Female');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
