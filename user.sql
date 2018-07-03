

DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `username` varchar(50) NOT NULL UNIQUE COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT '名',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓',
  `last_name_py` varchar(255) NOT NULL DEFAULT '' COMMENT '姓py',
  `first_name_py` varchar(255) NOT NULL DEFAULT '' COMMENT '名py',
  `code` varchar(30) NOT NULL DEFAULT '' COMMENT UNIQUE '身份证',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `address_py` varchar(255) NOT NULL DEFAULT '' COMMENT '地址py',
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

------

alter table cms_user add `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优'
update cms_user set mode=1 where id>0


