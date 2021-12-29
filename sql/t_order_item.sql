/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_order_item` (
	`id` int (11),
	`oid` int (11),
	`pid` int (11),
	`title` varchar (300),
	`image` varchar (1500),
	`price` bigint (20),
	`num` int (11),
	`created_user` varchar (60),
	`created_time` datetime ,
	`modified_user` varchar (60),
	`modified_time` datetime 
); 
