

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
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='股票表';


