
DROP TABLE IF EXISTS `cms_ma_type`;
CREATE TABLE `cms_ma_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL COMMENT '分类名称',
  `money_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额usd',
  `money_rm` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额rm',
  `cost_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '每股金额',
  `shares` int(8) NOT NULL DEFAULT '0' COMMENT '套餐固定股票',
  `value` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定价值',
  `roe` DECIMAL(3,2) NOT NULL DEFAULT '0.00' COMMENT '每月回酬金',
  `num` int(8) NOT NULL DEFAULT '0' COMMENT '月',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '1',
  `package` varchar(32) NOT NULL COMMENT '配套名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='套餐类型表';


-- ----------------------------
-- Records of cms_ma_type
-- ----------------------------
INSERT INTO `cms_ma_type` VALUES ('1','0', 'FLLZ SHARE HOLDER', '0.00','0.00','0.00', '0','0.00','0.00','0','1528782400','0','1','None');
INSERT INTO `cms_ma_type` VALUES ('2','0', 'FLLZ PRIVATE EQUITY', '100.00','440.00','7.00', '15','210.00','0.02','50','1528782400','0','1','None');
-- INSERT INTO `cms_ma_type` VALUES ('10','1', 'FLLZ SHARE HOLDER 100', '100.00','440.00','7.00', '15','210.00','0.00','0','1528782400','0','1','Dealer');
-- INSERT INTO `cms_ma_type` VALUES ('11','1', 'FLLZ SHARE HOLDER 500', '500.00','2200.00','4.60', '108','1500.00','0.00','0','1528782400','0','1','Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('12','1', 'FLLZ SHARE HOLDER 1000', '1000.00','4400.00','3.50', '285','4000.00','0.00','0','1528782400','0','1','Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('13','1', 'FLLZ SHARE HOLDER 5000', '5000.00','22000.00','2.80', '1785','25000.00','0.00','0','1528782400','0','1','Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('14','1', 'FLLZ SHARE HOLDER 10000', '10000.00','44000.00','1.40', '7143','100000.00','0.00','0','1528782400','0','1','Premium Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('15','1', 'FLLZ SHARE HOLDER 20000', '20000.00','88000.00','1.20', '16666','233300.00','0.00','0','1528782400','0','1','Premium Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('16','1', 'FLLZ SHARE HOLDER 50000', '50000.00','132000.00','1.00', '30000','420000.00','0.00','0','1528782400','0','1','Premium Share Holder');
-- INSERT INTO `cms_ma_type` VALUES ('17','2', 'FLLZ PRIVATE EQUITY 500', '500.00','0.00','0.00', '36','500.00','0.02','50','1528782400','0','1','VIP');
-- INSERT INTO `cms_ma_type` VALUES ('18','2', 'FLLZ PRIVATE EQUITY 1500', '1500.00','0.00','0.00', '107','1500.00','0.02','50','1528782400','0','1','VIP');
-- INSERT INTO `cms_ma_type` VALUES ('19','2', 'FLLZ PRIVATE EQUITY 3500', '3500.00','0.00','0.00', '250','3500.00','0.02','50','1528782400','0','1','VIP');
-- INSERT INTO `cms_ma_type` VALUES ('20','2', 'FLLZ PRIVATE EQUITY 5000', '5000.00','0.00','0.00', '536','5000.00','0.02','50','1528782400','0','1','VVIP');
-- INSERT INTO `cms_ma_type` VALUES ('21','2', 'FLLZ PRIVATE EQUITY 15000', '15000.00','0.00','0.00', '1607','15000.00','0.02','50','1528782400','0','1','VVIP');
-- INSERT INTO `cms_ma_type` VALUES ('22','2', 'FLLZ PRIVATE EQUITY 35000', '35000.00','0.00','0.00', '3750','35000.00','0.02','50','1528782400','0','1','VVIP');

DROP TABLE IF EXISTS `cms_ma_holdertype`;
CREATE TABLE `cms_ma_holdertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL COMMENT '分类名称',
  `money_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额usd',
  `money_rm` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额rm',
  `cost_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '每股金额',
  `shares` int(8) NOT NULL DEFAULT '0' COMMENT '套餐固定股票',
  `value` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定价值',
  `roe` DECIMAL(3,2) NOT NULL DEFAULT '0.00' COMMENT '每月回酬金',
  `num` int(8) NOT NULL DEFAULT '0' COMMENT '月',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '1',
  `package` varchar(32) NOT NULL COMMENT '配套名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='套餐类型表';

INSERT INTO `cms_ma_holdertype` VALUES ('10','1', 'FLLZ SHARE HOLDER 100', '100.00','440.00','7.00', '15','210.00','0.00','0','1528782400','0','1','Dealer');
INSERT INTO `cms_ma_holdertype` VALUES ('11','1', 'FLLZ SHARE HOLDER 500', '500.00','2200.00','4.60', '108','1500.00','0.00','0','1528782400','0','1','Share Holder');
INSERT INTO `cms_ma_holdertype` VALUES ('12','1', 'FLLZ SHARE HOLDER 1000', '1000.00','4400.00','3.50', '285','4000.00','0.00','0','1528782400','0','1','Share Holder');
INSERT INTO `cms_ma_holdertype` VALUES ('13','1', 'FLLZ SHARE HOLDER 5000', '5000.00','22000.00','2.80', '1785','25000.00','0.00','0','1528782400','0','1','Share Holder');
INSERT INTO `cms_ma_holdertype` VALUES ('14','1', 'FLLZ SHARE HOLDER 10000', '10000.00','44000.00','1.40', '7143','100000.00','0.00','0','1528782400','0','1','Premium Share Holder');
INSERT INTO `cms_ma_holdertype` VALUES ('15','1', 'FLLZ SHARE HOLDER 20000', '20000.00','88000.00','1.20', '16666','233300.00','0.00','0','1528782400','0','1','Premium Share Holder');
INSERT INTO `cms_ma_holdertype` VALUES ('16','1', 'FLLZ SHARE HOLDER 50000', '50000.00','132000.00','1.00', '30000','420000.00','0.00','0','1528782400','0','1','Premium Share Holder');


DROP TABLE IF EXISTS `cms_ma_equitytype`;
CREATE TABLE `cms_ma_equitytype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL COMMENT '分类名称',
  `money_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额usd',
  `money_rm` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额rm',
  `cost_usd` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '每股金额',
  `shares` int(8) NOT NULL DEFAULT '0' COMMENT '套餐固定股票',
  `value` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定价值',
  `roe` DECIMAL(3,2) NOT NULL DEFAULT '0.00' COMMENT '每月回酬金',
  `num` int(8) NOT NULL DEFAULT '0' COMMENT '月',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '1',
  `package` varchar(32) NOT NULL COMMENT '配套名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='套餐类型表';
INSERT INTO `cms_ma_equitytype` VALUES ('10','2', 'FLLZ PRIVATE EQUITY 500', '500.00','0.00','0.00', '36','500.00','0.02','50','1528782400','0','1','VIP');
INSERT INTO `cms_ma_equitytype` VALUES ('11','2', 'FLLZ PRIVATE EQUITY 1500', '1500.00','0.00','0.00', '107','1500.00','0.02','50','1528782400','0','1','VIP');
INSERT INTO `cms_ma_equitytype` VALUES ('12','2', 'FLLZ PRIVATE EQUITY 3500', '3500.00','0.00','0.00', '250','3500.00','0.02','50','1528782400','0','1','VIP');
INSERT INTO `cms_ma_equitytype` VALUES ('13','2', 'FLLZ PRIVATE EQUITY 5000', '5000.00','0.00','0.00', '536','5000.00','0.02','50','1528782400','0','1','VVIP');
INSERT INTO `cms_ma_equitytype` VALUES ('14','2', 'FLLZ PRIVATE EQUITY 15000', '15000.00','0.00','0.00', '1607','15000.00','0.02','50','1528782400','0','1','VVIP');
INSERT INTO `cms_ma_equitytype` VALUES ('15','2', 'FLLZ PRIVATE EQUITY 35000', '35000.00','0.00','0.00', '3750','35000.00','0.02','50','1528782400','0','1','VVIP');



DROP TABLE IF EXISTS `cms_ma_agent`;
CREATE TABLE `cms_ma_agent` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `agent_name` varchar(255) NOT NULL DEFAULT '' COMMENT '代理名称',
  `person` varchar(50) NOT NULL DEFAULT '' COMMENT '法人',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT 'email',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '法人手机',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '代理组织机构代码',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '代理地址',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '代理网址',
  `area` varchar(100) NOT NULL DEFAULT '' COMMENT '代理区域',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `agentname` varchar(50) NOT NULL DEFAULT '' UNIQUE COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `more` text COMMENT '扩展属性',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL COMMENT '登录时间',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代理公司表';


CREATE TABLE `cms_ma_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '导航名称',
  `controller_name` varchar(16) DEFAULT NULL COMMENT '控制器名称',
  `action_name` varchar(16) DEFAULT NULL COMMENT '方法名称',
  `pid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '父级id',
  `url` varchar(64) DEFAULT NULL COMMENT '跳转地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `cms_ma_nav` (`id`, `title`, `controller_name`, `action_name`, `pid`, `url`, `sort`, `create_at`, `status`) VALUES
(100, 'Home', 'Index', 'index', 0, 'http://47.98.43.140/index_en.html', NULL, 1529390243, 1),
(101, 'Share Holder', 'Holder', 'index', 0, 'http://47.98.43.140/holder.html', NULL, 1529397076, 1),
(102, 'Private Equity', 'Equity', 'index', 0, 'http://47.98.43.140/equity.html', NULL, 1529397076, 1),
(103, 'My Info', 'Myinfo', 'index', 0, 'http://47.98.43.140/myinfo.html', NULL, 1529397076, 0);




DROP TABLE IF EXISTS `cms_ma_user`;
CREATE TABLE `cms_ma_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `username` varchar(50) NOT NULL UNIQUE COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `code` varchar(30) NOT NULL DEFAULT '' UNIQUE COMMENT  '身份证',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `banknum` varchar(30) NOT NULL DEFAULT '' COMMENT '银行账户',
  `bankinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '银行信息',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';



DROP TABLE IF EXISTS `cms_ma_shares`;
CREATE TABLE `cms_ma_shares` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类型id',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '代理id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `infomark` varchar(255) NOT NULL DEFAULT '' COMMENT '信息记录',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  `uuid` varchar(16) NOT NULL DEFAULT '' COMMENT 'uuid',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='股票表';



DROP TABLE IF EXISTS `cms_ma_equity`;
CREATE TABLE `cms_ma_equity` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类型id',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '代理id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `count` int(8) NOT NULL DEFAULT '0' COMMENT '次数',
  `first_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '还款初始时间',
  `infomark` varchar(255) NOT NULL DEFAULT '' COMMENT '信息记录',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  `uuid` varchar(16) NOT NULL DEFAULT '' COMMENT 'uuid',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='回酬表';

--------------------------------
-- INSERT INTO `cms_ma_nav` (`id`, `title`, `controller_name`, `action_name`, `pid`, `url`, `sort`, `create_at`, `status`) VALUES
-- (104, 'Apply', 'Holder_apply', 'index', 102, 'http://127.0.0.1/holder_apply.html', NULL, 1529397076, 1),
-- (105, 'Info', 'Holder_info', 'index', 102, 'http://127.0.0.1/holder_info.html', NULL, 1529397076, 1),
-- (106, 'Apply', 'Equity_apply', 'index', 103, 'http://127.0.0.1/equity_apply.html', NULL, 1529397076, 1),
-- (107, 'Info', 'Equity_info', 'index', 104, 'http://127.0.0.1/equity_info.html', NULL, 1529397076, 1);


DROP TABLE IF EXISTS `cms_ma_refereetype`;
CREATE TABLE `cms_ma_refereetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `rtype_name` varchar(32) NOT NULL COMMENT '分类名称',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `grade` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:顶级 1:一级 2:二级',
  `max` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最大承载量 顶级:0 一级:5 二级:25',  
  `rebate` DECIMAL(3,2) NOT NULL DEFAULT '0.00' COMMENT '回扣 顶级:0.30 一级:0.26 二级:0.20',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='推荐人类型表';
INSERT INTO `cms_ma_refereetype` VALUES ('10','0', 'General Level Agent', '0','0','0', '0.3','1528782400','0');
INSERT INTO `cms_ma_refereetype` VALUES ('11','0', 'Frist Level Agent', '1','1','5', '0.26','1528782400','0');
INSERT INTO `cms_ma_refereetype` VALUES ('12','0', 'Second Level Agent', '1','2','25', '0.2','1528782400','0');



DROP TABLE IF EXISTS `cms_ma_referee`;
CREATE TABLE `cms_ma_referee` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rtid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rrid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `raid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `rusername` varchar(50) NOT NULL UNIQUE COMMENT '用户登录名',
  `rpassword` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `rname` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `rrname` varchar(255) NOT NULL DEFAULT '' COMMENT '上级姓名',
  `rcode` varchar(30) NOT NULL DEFAULT '' UNIQUE COMMENT  '身份证',
  `raddress` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `rphone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `remail` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `rurl` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `rremark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `rbanknum` varchar(30) NOT NULL DEFAULT '' COMMENT '银行账户',
  `rbankinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '银行信息',
  `rmode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='推荐人表';
INSERT INTO `cms_ma_referee` (`id`, `rtid`,`rrid`, `raid`, `status`, `create_at`, `update_at`, `rusername`, `rpassword`, `rname`,`rrname`, `rcode`, `raddress`, `rphone`, `remail`, `rurl`, `rremark`, `rbanknum`, `rbankinfo`, `rmode`) VALUES
(0, 10, 0, 0, 0, 1533010548, 0, 'self', '', 'self','self','', '', '', '', '', '', '', '', 0 );

-- alter table cms_ma_referee add `rrname` varchar(55) NOT NULL DEFAULT '' COMMENT '上级姓名';
-- alter table cms_ma_agent add `abanknum` varchar(30) NOT NULL DEFAULT '' COMMENT '银行账户';
-- alter table cms_ma_agent add `abankinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '银行信息';

alter table cms_ma_equity add `rid` int(10) UNSIGNED NOT NULL DEFAULT '0';
alter table cms_ma_equity add `paied` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;0:未支付,1:支付';

alter table cms_ma_shares add `rid` int(10) UNSIGNED NOT NULL DEFAULT '0';
alter table cms_ma_shares add `paied` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '状态;0:未支付,1:支付';


------2018.8.15
alter table cms_ma_agent add `abankaccount` varchar(64) NOT NULL DEFAULT '' COMMENT '银行账户';
alter table cms_ma_agent add `abankname` varchar(255) NOT NULL DEFAULT '' COMMENT '银行名称';
alter table cms_ma_agent add `abankaddress` varchar(128) NOT NULL DEFAULT '' COMMENT '银行地址or代号';
alter table cms_ma_agent add `rid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '推荐人类型';


alter table cms_ma_user add `bankaccount` varchar(64) NOT NULL DEFAULT '' COMMENT '银行账户';
alter table cms_ma_user add `bankname` varchar(255) NOT NULL DEFAULT '' COMMENT '银行名称';
alter table cms_ma_user add `bankaddress` varchar(128) NOT NULL DEFAULT '' COMMENT '银行地址or代号';

-- alter table cms_ma_nav add `controller_namecn` varchar(64) DEFAULT NULL COMMENT '控制器名称';
alter table cms_ma_nav add `urlcn` varchar(50) NOT NULL DEFAULT '' COMMENT '网址';
alter table cms_ma_nav add `titlecn` varchar(64) NOT NULL DEFAULT '' COMMENT '导航名称';





