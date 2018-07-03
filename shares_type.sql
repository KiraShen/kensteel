
DROP TABLE IF EXISTS `cms_shares_cate`;
CREATE TABLE `cms_shares_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL COMMENT '分类名称',
  `money` DECIMAL(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额',
  `shares` int(8) NOT NULL DEFAULT '0' COMMENT '套餐固定股票',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) DEFAULT '1',
  `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='套餐类型表';

-- ----------------------------
-- Records of cms_shares_cate
-- ----------------------------
INSERT INTO `cms_shares_cate` VALUES ('1','0', '沸达州套餐内购6w', '60000.00', '6888','1527782400','1');
INSERT INTO `cms_shares_cate` VALUES ('2','0', '沸达州套餐内购12w', '120000.00', '16888','1527782400','1');
INSERT INTO `cms_shares_cate` VALUES ('3','0', '沸达州套餐内购18w', '180000.00', '28888','1527782400','1');

--------
alter table cms_shares_cate add `mode` tinyint(4) DEFAULT '0' COMMENT '0:无模式,1:乐点,2:肯始优'

update cms_shares_cate set mode=1 where id>0