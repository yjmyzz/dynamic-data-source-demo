CREATE DATABASE IF NOT EXISTS `dynamic_master` DEFAULT CHARACTER SET utf8;

USE `dynamic_master`;

/*Table structure for table `m_base_code` */

DROP TABLE IF EXISTS `m_base_code`;

CREATE TABLE `m_base_code` (
  `id` BIGINT(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code_type` VARCHAR(64) NOT NULL COMMENT '编码类型',
  `parent_code` VARCHAR(16) NOT NULL DEFAULT '0' COMMENT '父编码',
  `code` VARCHAR(16) DEFAULT NULL COMMENT '编码',
  `code_value` VARCHAR(256) DEFAULT NULL COMMENT '编码值',
  `code_sort` INT(8) DEFAULT NULL COMMENT '排序',
  `office_address` INT(16) NOT NULL DEFAULT '0' COMMENT '城市编码',
  `remark` VARCHAR(256) DEFAULT NULL COMMENT '备注',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='基础数据表';

/*Data for the table `m_base_code` */

INSERT  INTO `m_base_code`(`id`,`code_type`,`parent_code`,`code`,`code_value`,`code_sort`,`office_address`,`remark`,`create_time`,`update_time`)
VALUES
(55,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(56,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(57,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(58,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(59,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(60,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(61,'drop_reason','0','duplicate','重复网签-剔除！',7,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(62,'drop_reason','0','high_creadit','高贷低过-剔除！',8,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(63,'drop_reason','0','policy','70/90政策-剔除！',9,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(64,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(65,'drop_reason','0','other','其它',11,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(66,'drop_reason','0','001','房子仍在售',1,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(67,'drop_reason','0','002','一手房',2,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(68,'drop_reason','0','003','重复协议，当月重复',3,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(69,'drop_reason','0','004','重复协议，与前三月重复',4,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(70,'not_target_reason','0','concentration','集中过户-非作业产品！',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(71,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(72,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(73,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(74,'not_target_reason','0','other','其它',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(75,'not_target_reason','0','001','车库',1,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(76,'not_target_reason','0','002','地下室',2,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(77,'not_target_reason','0','003','法拍',3,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(78,'not_target_reason','0','004','非居住',4,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(79,'not_target_reason','0','005','工业厂房',5,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(80,'not_target_reason','0','006','集中过户',6,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(81,'not_target_reason','0','007','平房',7,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(82,'not_target_reason','0','008','区界范围外',8,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(83,'not_target_reason','0','009','商业',9,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(84,'not_target_reason','0','010','写字楼',10,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(91,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(92,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(93,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(94,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(95,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(96,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(97,'drop_reason','0','duplicate','重复网签-剔除！',7,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(98,'drop_reason','0','high_creadit','高贷低过-剔除！',8,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(99,'drop_reason','0','policy','70/90政策-剔除！',9,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(100,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(101,'drop_reason','0','other','其它',11,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(106,'not_target_reason','0','concentration','集中过户-非作业产品！',1,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(107,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(108,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(109,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(110,'not_target_reason','0','other','其它',1,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(113,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(114,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(115,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(116,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(117,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(118,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(119,'drop_reason','0','duplicate','重复网签-剔除！',7,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(120,'drop_reason','0','high_creadit','高贷低过-剔除！',8,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(121,'drop_reason','0','policy','70/90政策-剔除！',9,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(122,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(123,'drop_reason','0','other','其它',11,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(128,'not_target_reason','0','concentration','集中过户-非作业产品！',1,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(129,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(130,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(131,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(132,'not_target_reason','0','other','其它',1,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(135,'deadline_modify_datetime','0',NULL,'2017-02-01 10:00:00,2017-02-06 18:00:00',1,0,'默认修改数据时间','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(136,'deadline_modify_datetime','0',NULL,'2017-04-01 14:30:00,2017-04-01 17:30:00',1,110000,'北京','2017-03-21 19:24:23','2017-04-01 14:17:20'),
(137,'deadline_modify_datetime','0',NULL,'2017-03-06 14:00:00,2017-03-07 00:00:10',1,131000,'燕郊','2017-03-21 19:24:23','2017-03-21 19:24:23');



CREATE DATABASE IF NOT EXISTS `dynamic_slave` DEFAULT CHARACTER SET utf8;

USE `dynamic_slave`;

/*Table structure for table `m_base_code` */

DROP TABLE IF EXISTS `m_base_code`;

CREATE TABLE `m_base_code` (
  `id` BIGINT(18) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code_type` VARCHAR(64) NOT NULL COMMENT '编码类型',
  `parent_code` VARCHAR(16) NOT NULL DEFAULT '0' COMMENT '父编码',
  `code` VARCHAR(16) DEFAULT NULL COMMENT '编码',
  `code_value` VARCHAR(256) DEFAULT NULL COMMENT '编码值',
  `code_sort` INT(8) DEFAULT NULL COMMENT '排序',
  `office_address` INT(16) NOT NULL DEFAULT '0' COMMENT '城市编码',
  `remark` VARCHAR(256) DEFAULT NULL COMMENT '备注',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='基础数据表';

/*Data for the table `m_base_code` */

INSERT  INTO `m_base_code`(`id`,`code_type`,`parent_code`,`code`,`code_value`,`code_sort`,`office_address`,`remark`,`create_time`,`update_time`)
VALUES
(55,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(56,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(57,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(58,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(59,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(60,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(61,'drop_reason','0','duplicate','重复网签-剔除！',7,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(62,'drop_reason','0','high_creadit','高贷低过-剔除！',8,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(63,'drop_reason','0','policy','70/90政策-剔除！',9,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(64,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(65,'drop_reason','0','other','其它',11,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(66,'drop_reason','0','001','房子仍在售',1,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(67,'drop_reason','0','002','一手房',2,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(68,'drop_reason','0','003','重复协议，当月重复',3,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(69,'drop_reason','0','004','重复协议，与前三月重复',4,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(70,'not_target_reason','0','concentration','集中过户-非作业产品！',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(71,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(72,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(73,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(74,'not_target_reason','0','other','其它',1,110000,'北京','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(75,'not_target_reason','0','001','车库',1,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(76,'not_target_reason','0','002','地下室',2,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(77,'not_target_reason','0','003','法拍',3,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(78,'not_target_reason','0','004','非居住',4,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(79,'not_target_reason','0','005','工业厂房',5,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(80,'not_target_reason','0','006','集中过户',6,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(81,'not_target_reason','0','007','平房',7,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(82,'not_target_reason','0','008','区界范围外',8,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(83,'not_target_reason','0','009','商业',9,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(84,'not_target_reason','0','010','写字楼',10,120000,'天津','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(91,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(92,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(93,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(94,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(95,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(96,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(97,'drop_reason','0','duplicate','重复网签-剔除！',7,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(98,'drop_reason','0','high_creadit','高贷低过-剔除！',8,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(99,'drop_reason','0','policy','70/90政策-剔除！',9,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(100,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(101,'drop_reason','0','other','其它',11,131000,'燕郊剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(106,'not_target_reason','0','concentration','集中过户-非作业产品！',1,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(107,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(108,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(109,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(110,'not_target_reason','0','other','其它',1,131000,'燕郊非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(113,'drop_reason','0','fake_work','虚假成交，仍在租售-剔除-此条网签需回查！',1,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(114,'drop_reason','0','fake_nonexist','虚假成交，物业地址不存在-剔除-此条网签需回查！',2,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(115,'drop_reason','0','fake_made','虚假成交，对手造假网签-剔除-此条网签需回查！',3,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(116,'drop_reason','0','assisn','内部转让-剔除-需提供证据-此条网签需回查！',4,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(117,'drop_reason','0','business','经转商-剔除-此条网签需回查！',5,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(118,'drop_reason','0','mortgage','抵押消费贷-剔除-此条网签需回查！',6,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(119,'drop_reason','0','duplicate','重复网签-剔除！',7,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(120,'drop_reason','0','high_creadit','高贷低过-剔除！',8,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(121,'drop_reason','0','policy','70/90政策-剔除！',9,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(122,'drop_reason','0','real','非重复网签-拿回-此条网签两次都为真实成交，需提供本条交易编号！',10,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(123,'drop_reason','0','other','其它',11,0,'默认剔除原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(128,'not_target_reason','0','concentration','集中过户-非作业产品！',1,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(129,'not_target_reason','0','risk','存在风险，链家无法操作-非作业产品-需交易中心副总签字备书确认！',2,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(130,'not_target_reason','0','out_type','不作业的类型-非作业产品-车库、阁楼、半地下、储藏室、商业性质的房子、工业厂房、平房！',3,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(131,'not_target_reason','0','out_area','远郊，非作业区域-非作业产品！',4,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(132,'not_target_reason','0','other','其它',1,0,'默认非目标原因','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(135,'deadline_modify_datetime','0',NULL,'2017-02-01 10:00:00,2017-02-06 18:00:00',1,0,'默认修改数据时间','2017-03-21 19:24:23','2017-03-21 19:24:23'),
(136,'deadline_modify_datetime','0',NULL,'2017-04-01 14:30:00,2017-04-01 17:30:00',1,110000,'北京','2017-03-21 19:24:23','2017-04-01 14:17:20'),
(137,'deadline_modify_datetime','0',NULL,'2017-03-06 14:00:00,2017-03-07 00:00:10',1,131000,'燕郊','2017-03-21 19:24:23','2017-03-21 19:24:23');