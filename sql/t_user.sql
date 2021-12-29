/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_user` (
	`uid` int (11),
	`username` varchar (60),
	`password` char (96),
	`salt` char (108),
	`phone` varchar (60),
	`email` varchar (90),
	`gender` int (11),
	`avatar` varchar (150),
	`is_delete` int (11),
	`created_user` varchar (60),
	`created_time` datetime ,
	`modified_user` varchar (60),
	`modified_time` datetime 
); 
