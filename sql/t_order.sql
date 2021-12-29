/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 8.0.26 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `t_order` (
	`oid` int (11),
	`uid` int (11),
	`recv_name` varchar (60),
	`recv_phone` varchar (60),
	`recv_province` varchar (45),
	`recv_city` varchar (45),
	`recv_area` varchar (45),
	`recv_address` varchar (150),
	`total_price` bigint (20),
	`status` int (11),
	`order_time` datetime ,
	`pay_time` datetime ,
	`created_user` varchar (60),
	`created_time` datetime ,
	`modified_user` varchar (60),
	`modified_time` datetime 
); 

