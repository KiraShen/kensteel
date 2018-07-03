

DROP TABLE IF EXISTS `cms_shares`;
CREATE TABLE `cms_shares` (
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


update cms_shares set mode=1 where id>0

alter table cms_shares add `uuid` varchar(16) NOT NULL DEFAULT '' COMMENT 'uuid',--需要倒入uuid

alter table cms_shares add `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优'
