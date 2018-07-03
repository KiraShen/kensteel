

DROP TABLE IF EXISTS `cms_agent`;
CREATE TABLE `cms_agent` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `agent_name` varchar(255) NOT NULL DEFAULT '' COMMENT '代理名称',
  `person` varchar(50) NOT NULL DEFAULT '' COMMENT '法人',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '法人手机',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '代理组织机构代码',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '代理地址',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '代理网址',
  `area` varchar(100) NOT NULL DEFAULT '' COMMENT '代理区域',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '公司营业执照',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `agentname` varchar(50) NOT NULL DEFAULT '' UNIQUE COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `more` text COMMENT '扩展属性',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL COMMENT '登录时间',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代理公司表';

---------------
alter table cms_agent add `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优'


update cms_agent set mode=1 where id>0