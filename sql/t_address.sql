/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_address` (
	`aid` int (11),
	`uid` int (11),
	`name` varchar (60),
	`province_name` varchar (45),
	`province_code` char (18),
	`city_name` varchar (45),
	`city_code` char (18),
	`area_name` varchar (45),
	`area_code` char (18),
	`zip` char (18),
	`address` varchar (150),
	`phone` varchar (60),
	`tel` varchar (60),
	`tag` varchar (18),
	`is_default` int (11),
	`created_user` varchar (60),
	`created_time` datetime ,
	`modified_user` varchar (60),
	`modified_time` datetime 
); 

