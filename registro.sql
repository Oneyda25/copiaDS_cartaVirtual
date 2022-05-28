/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - registro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`registro` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `registro`;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(17,0) NOT NULL,
  `imagen` longblob NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productos_users_fk` (`usuario_id`),
  CONSTRAINT `productos_users_fk` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id`,`nombre`,`precio`,`imagen`,`usuario_id`) values 
(3,'chocolisto',21000,'/static/img/lo.png',1),
(7,'arroz',3000,'/static/img/1.jpg',2),
(8,'hotdog',7000,'/static/img/2.jpg',2),
(9,'pizza',7000,'/static/img/pizza.jpg',1),
(10,'club colombia',4500,'/static/img/pan-leche-m.jpg',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` longblob NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`description`,`image`,`phone`,`address`,`email`,`password`,`status`) values 
(1,'edison chicunque','Comida rapida','/static/img/fondo.jpg','3217720626','Barrio Jose Homero','edisonchicunque2020@itp.edu.co','cbaf721fa44c097f9f8b7e674428bfa3',1),
(2,'yobani','Comida vegetariana','/static/img/4cc10f6b-af34-472a-9daf-41917350bbde.jpg','321321','Barrio  los sauces','yobanichicunque@gmail.com','58abf94592ff5604dbed246acae2b5f7',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
