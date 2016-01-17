/*
SQLyog Ultimate v11.22 (64 bit)
MySQL - 10.1.9-MariaDB : Database - pt_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pt_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pt_db`;

/*Table structure for table `pt_user` */

DROP TABLE IF EXISTS `pt_user`;

CREATE TABLE `pt_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(36) DEFAULT NULL,
  `company` varchar(36) DEFAULT NULL,
  `tell` varchar(36) DEFAULT NULL,
  `qq` varchar(36) DEFAULT NULL,
  `email` varchar(36) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `password` varchar(36) NOT NULL DEFAULT '111111',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `pt_user` */

insert  into `pt_user`(`id`,`name`,`company`,`tell`,`qq`,`email`,`age`,`sex`,`password`) values (18,'sloppy','eray','13671847813','35734786','caozhuhua@gmail.com',32,1,'111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
