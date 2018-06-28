
-- ----------------------------
-- Table structure for `cms_contact`
-- ----------------------------
DROP TABLE IF EXISTS `cms_contact`;
CREATE TABLE `cms_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cms_contact
-- ----------------------------
INSERT INTO `cms_contact` VALUES ('101', 'site_name', 'Think.Admin Demo', null);
INSERT INTO `cms_contact` VALUES ('102', 'site_copy', '浙江弗达洲电子商务有限公司 © 2014~2017', null);

INSERT INTO `cms_contact` VALUES ('209', 'company_address', '深圳市龙华新区共和花园', null);
INSERT INTO `cms_contact` VALUES ('210', 'company_phone', '020-076412', null);
INSERT INTO `cms_contact` VALUES ('211', 'company_fixed_line', '15820452360', null);
INSERT INTO `cms_contact` VALUES ('212', 'company_qq', '980218641', null);
INSERT INTO `cms_contact` VALUES ('213', 'company_url', 'wwww.93sucai.com', null);
INSERT INTO `cms_contact` VALUES ('214', 'company_email', '980218641@qq.com', null);
INSERT INTO `cms_contact` VALUES ('215', 'company_headquarters', '93网站建设', null);
INSERT INTO `cms_contact` VALUES ('216', 'company_head', 'jonny', null);
INSERT INTO `cms_contact` VALUES ('217', 'company_head_mobile', '15820452360', '1497498198');
INSERT INTO `cms_contact` VALUES ('218', 'company_head_mobile', null, null);


-- ----------------------------
-- Table structure for `cms_aboutus_doc`
-- ----------------------------
DROP TABLE IF EXISTS `cms_aboutus_doc`;
CREATE TABLE `cms_aboutus_doc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '分类',
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '第三方文章地址',
  `content` text NOT NULL COMMENT '文章内容',
  `seo_title` varchar(64) DEFAULT NULL COMMENT 'seo标题',
  `seo_keywords` varchar(128) DEFAULT NULL COMMENT 'seo关键词',
  `seo_description` varchar(255) DEFAULT NULL COMMENT 'seo描述',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cms_aboutus_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_aboutus_cate`;
CREATE TABLE `cms_aboutus_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_aboutus_cate
-- ----------------------------
INSERT INTO `cms_aboutus_cate` VALUES ('1', '0','集团介绍', '0', '1');
INSERT INTO `cms_aboutus_cate` VALUES ('2', '0','公司介绍', '0', '1');
INSERT INTO `cms_aboutus_cate` VALUES ('3', '0','创始人', '0', '1');
INSERT INTO `cms_aboutus_cate` VALUES ('4', '0','管理团队', '0', '1');
INSERT INTO `cms_aboutus_cate` VALUES ('5', '0','大记事', '0', '1');
INSERT INTO `cms_aboutus_cate` VALUES ('6', '0','联系我们', '0', '1');
-----------------------------------------------------------------------

-- ----------------------------
-- Table structure for `cms_product_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_product_cate`;
CREATE TABLE `cms_pruduct_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cms_product`
-- ----------------------------
DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_pruduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '产品分类',
  `cate` varchar(32) NOT NULL COMMENT '分类名称',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '演示地址',
  `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `cms_joinus`
-- ----------------------------
DROP TABLE IF EXISTS `cms_joinus`;
CREATE TABLE `cms_joinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `describ` text DEFAULT NULL COMMENT '描述',
  `require` text DEFAULT NULL COMMENT '需求',
  -- `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;








/*
Navicat MySQL Data Transfer

Source Server         : cms
Source Server Version : 50548
Source Host           : 123.207.26.207:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-06-20 13:40:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_about`
-- ----------------------------
DROP TABLE IF EXISTS `cms_about`;
CREATE TABLE `cms_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `icon` varchar(128) DEFAULT NULL COMMENT '图标',
  `description` varchar(255) DEFAULT NULL,
  `create_at` int(11) NOT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_about
-- ----------------------------
INSERT INTO `cms_about` VALUES ('3', '3', '了解93网', 'http://www.jonnycms.com/static/upload/bfab2f0e61a71c1d/cb0e44fc37bfa799.png', '专注生产高速、稳定、安全的网站', '0', '1');
INSERT INTO `cms_about` VALUES ('4', '3', 'VIP会员服务', 'http://www.jonnycms.com/static/upload/86e21be7b7d55307/8a72b617476ab672.png', '93网客户尊享售后服务，让网站部署更轻松', '0', '1');
INSERT INTO `cms_about` VALUES ('5', '3', '积分商城', 'http://www.jonnycms.com/static/upload/ab9b7b8ad04c97e5/bf57e5c66d280bbc.png', '消费送积分，积分可兑换超值好礼', '0', '1');
INSERT INTO `cms_about` VALUES ('6', '3', '1V1专席秘书服务', 'http://www.jonnycms.com/static/upload/5358de5e33a0fba0/38eecda19174fc51.png', '93网客户尊享1对1专席秘书贴心服务', '0', '1');
INSERT INTO `cms_about` VALUES ('7', '4', '93网站建设服务', 'http://www.jonnycms.com/static/upload/6ac7616e5ae2a62d/50877f935f00ba73.png', '企业品牌官网建设,\r\n电子商城网站建设,\r\n行业分类网站建设,\r\n论坛博客个人网站,\r\n五合一一站式建站', '0', '1');
INSERT INTO `cms_about` VALUES ('8', '4', '93品牌设计服务', 'http://www.jonnycms.com/static/upload/1316a62fbbd3fd20/fe2bcfe59096692e.png', '企业品牌LOGO设计,\r\n网页前端后端设计,\r\n手机网页Ａpp设计,\r\n淘宝详情页面设计,\r\n海报宣传画册设计', '0', '1');
INSERT INTO `cms_about` VALUES ('9', '4', '93ＡＰＰ开发服务', 'http://www.jonnycms.com/static/upload/107fe34796673fe3/99e7b3367ad617f3.png', 'IOS/安卓app定制开发,\r\n网页轻应用生成APP,\r\nAPP页面定制设计服务,\r\n易企秀H5网页制作,\r\n个性定制解决方案', '0', '1');
INSERT INTO `cms_about` VALUES ('10', '4', '93企业增值服务', 'http://www.jonnycms.com/static/upload/fbed5aabaa1af780/67a125b3d363c92d.png', 'SEO网站排名优化,\r\n企点企业营销QQ办理,\r\n400电话移动座机,\r\n云服务器/云主机,\r\n域名企邮注册管理', '0', '1');
INSERT INTO `cms_about` VALUES ('17', '1', '基础运维', 'http://www.jonnycms.com/static/theme/default/img/image.png', '数据迁移、网站设置、软件安装，故障排查、众多运维服务您来选', '0', '1');
INSERT INTO `cms_about` VALUES ('11', '2', '免网站制作费', 'http://www.jonnycms.com/static/upload/29c3f2103577e488/668f7f47594670f2.png', '只收空间域名取成本价', '0', '1');
INSERT INTO `cms_about` VALUES ('12', '2', '快速建站', 'http://www.jonnycms.com/static/upload/b875a58d0ae99415/bda3027e750bfac6.png', '打破传统网站制作工时<br /> 网站制作最快只需1天', '0', '1');
INSERT INTO `cms_about` VALUES ('13', '2', '多合一终端使用', 'http://www.jonnycms.com/static/upload/459bfa5d837ae826/9fc2f795021f8557.png', '多合一终端使用<br />完美响应展示。', '0', '1');
INSERT INTO `cms_about` VALUES ('14', '2', '大数据', 'http://www.jonnycms.com/static/upload/bf7e483e2f131a36/384dcbf1c379097c.png', '主流设计风格，极致交互体验，<br /> 提升品牌价值', '0', '1');
INSERT INTO `cms_about` VALUES ('15', '2', '高端设计', 'http://www.jonnycms.com/static/upload/c4ac88cc1dce8ab8/ffd9aca825f9a28e.png', '主流设计风格，极致交互体验，<br />  提升品牌价值', '0', '1');
INSERT INTO `cms_about` VALUES ('16', '2', '安全稳定', 'http://www.jonnycms.com/static/upload/03dded6f38038bd8/5e4353767af5b274.png', '平台运行于阿里云计算中心<br />多备份容灾保障，安全稳定 ', '0', '1');
INSERT INTO `cms_about` VALUES ('18', '1', '企业部署', 'http://www.jonnycms.com/static/theme/default/img/image.png', '专业工程师帮您部署企业高性能、高可用解决方案', '0', '1');
INSERT INTO `cms_about` VALUES ('19', '1', '安全防护', 'http://www.jonnycms.com/static/theme/default/img/image.png', '  安全联盟护您的企业扬帆起航', '0', '1');
INSERT INTO `cms_about` VALUES ('20', '1', '开发设计', 'http://www.jonnycms.com/static/theme/default/img/image.png', ' 网站设计、软件开发、平面设计、名片海报设计等', '0', '1');
INSERT INTO `cms_about` VALUES ('21', '1', '推广营销', 'http://www.jonnycms.com/static/theme/default/img/image.png', ' 名家高手为您定制网站和企业品牌推广方案', '0', '1');
INSERT INTO `cms_about` VALUES ('22', '1', '更多服务', 'http://www.jonnycms.com/static/theme/default/img/image.png', '更多服务，敬请期待……93网', '0', '1');
INSERT INTO `cms_about` VALUES ('23', '5', '阿里云', 'http://www.jonnycms.com/static/upload/7bb26f8e48a439ff/25ca4ed710fb2072.png', '', '1497408929', '1');
INSERT INTO `cms_about` VALUES ('24', '5', '驻云', 'http://www.jonnycms.com/static/upload/e96400029e966abb/1a8d9eda035c7210.png', '', '1497408956', '1');
INSERT INTO `cms_about` VALUES ('25', '5', '麦田设计', 'http://www.jonnycms.com/static/upload/f33a743f8a4a4c7d/740361c3b9fc5b47.png', '', '1497408975', '1');
INSERT INTO `cms_about` VALUES ('26', '5', '博艺通展览', 'http://www.jonnycms.com/static/upload/4418cab4af66a869/7e832d17fdd6bf37.png', '', '1497408988', '1');
INSERT INTO `cms_about` VALUES ('27', '5', '高斌钟表', 'http://www.jonnycms.com/static/upload/cbeef4f65d14aae5/62e54a47b823c105.png', '', '1497409007', '1');
INSERT INTO `cms_about` VALUES ('28', '1', '高端响应式网站定制', 'http://www.jonnycms.com/static/upload/c5c4d1bebcff3689/b93b9cb6fe0026b4.png', '完美响应各种设备,\r\n高端网站视觉设计,\r\n精湛交互动画体验,\r\n运行稳定安全可靠,\r\n实力定制功能研发\r\n           ', '1497413329', '1');
INSERT INTO `cms_about` VALUES ('29', '1', '响应式电商网站方案', 'http://www.jonnycms.com/static/upload/40a0d00c458edc6e/bb5463f1486316aa.png', '独立自主商城品牌,\r\n跨屏完美购物体验,\r\n微信全面无缝对接,\r\n商城互动营销方案,\r\n手机商城APP整合', '1497413378', '1');
INSERT INTO `cms_about` VALUES ('30', '1', '微信深度定制开发', 'http://www.jonnycms.com/static/upload/4a6242cd55adff58/ad3e23586aa4e4b4.png', '微信深度定制开发,\r\nH5互动解决方案,\r\n微信营销解决方案,\r\n个性定制解决方案', '1497413413', '1');
INSERT INTO `cms_about` VALUES ('31', '1', '网站运营服务1', 'http://www.jonnycms.com/static/upload/a728c0733bc0c932/41134629935f6e6e.png', '设计运维托管服务,\r\nSEO推广优化服务,\r\nSMO互动营销策划,\r\n微信公众平台运营', '1497413446', '1');
INSERT INTO `cms_about` VALUES ('32', '6', '需求沟通', 'http://www.jonnycms.com/static/upload/a6cd3b5e866a5f1e/89dceea7ff5f4b32.png', '倾听客户需求，了解用户使用环境和操作流程', '1497430114', '1');
INSERT INTO `cms_about` VALUES ('33', '6', '项目策划', 'http://www.jonnycms.com/static/upload/fb43c31bbbaec17f/5b90bf000161f65a.png', '头脑风景交互情景模拟原型设计', '1497430161', '1');
INSERT INTO `cms_about` VALUES ('34', '6', '交互设计', 'http://www.jonnycms.com/static/upload/df6d5964e0cac410/cedda2ee16b31121.png', '从用户的角度思考，模拟用户行为', '1497430193', '1');
INSERT INTO `cms_about` VALUES ('35', '6', '视觉创意', 'http://www.jonnycms.com/static/upload/3d44572ac184fd44/41f9747e3bf88f5f.png', '色彩及平面元素设定，结构和布局规范确认', '1497430245', '1');
INSERT INTO `cms_about` VALUES ('36', '6', '前端制作', 'http://www.jonnycms.com/static/upload/b3e7d0a9fccf7413/d718e034309d8e57.png', 'HTML5、CSS3、JS实现页面的动态展示', '1497430274', '1');
INSERT INTO `cms_about` VALUES ('37', '6', '技术开发', 'http://www.jonnycms.com/static/upload/78012108f900b363/026b4cb8265dc824.png', '移动应用数据对接与开发', '1497430310', '1');
INSERT INTO `cms_about` VALUES ('38', '6', '测试反馈', 'http://www.jonnycms.com/static/upload/cf43c6d4af325fb9/df89cca636c2fb26.png', '修改调整，规范完善', '1497430343', '1');
INSERT INTO `cms_about` VALUES ('39', '7', '市场优势', 'http://www.jonnycms.com/static/upload/ea70c2a4c969ade2/a07bb75c858877b1.png', '解决网建市场刚需，顺应时代发展走势', '1497501685', '1');
INSERT INTO `cms_about` VALUES ('40', '7', '界面优势', 'http://www.jonnycms.com/static/upload/867ed1750bb58ac3/3c171aca3235ac38.png', '多界面前沿设计版本持续更新', '1497501762', '1');
INSERT INTO `cms_about` VALUES ('41', '7', '产品优势', 'http://www.jonnycms.com/static/upload/64329928c8d58b8a/93da2c39bc54aded.png', '高大上的完美用户体验', '1497501806', '1');
INSERT INTO `cms_about` VALUES ('42', '7', '客户优势', 'http://www.jonnycms.com/static/upload/d08f23681214ed3b/3941c25ff838653d.png', '品牌提升、企业转型升级提供最佳推广环境', '1497501838', '1');
INSERT INTO `cms_about` VALUES ('43', '7', '市场前景', 'http://www.jonnycms.com/static/upload/ad093e9b1a08b4a1/9bb6c84e8a8d8553.png', '拥有核心响应式技术，破解碎片化市场局势坐拥千亿市场', '1497501879', '1');
INSERT INTO `cms_about` VALUES ('44', '7', '竞争优势', 'http://www.jonnycms.com/static/upload/dbf40d0cb34ec14a/3217c980df967e90.png', '智能响应式建站+全网整合营销+开放生态圈+行业解决方案', '1497501910', '1');
INSERT INTO `cms_about` VALUES ('45', '7', '配套优势', 'http://www.jonnycms.com/static/upload/b3818dd618b6abd0/bf4e6037a2c352ab.png', '设备自主研发，配套自成体系满足用户各种需求', '1497501942', '1');
INSERT INTO `cms_about` VALUES ('46', '7', '战略优势', 'http://www.jonnycms.com/static/upload/97d50fc547e581aa/d674601bf4f4689c.png', '整合优质企业服务商，引入和开发更多切实解决企业需求的应用', '1497501967', '1');
INSERT INTO `cms_about` VALUES ('47', '8', '快速建站', 'http://www.jonnycms.com/static/theme/default/img/image.png', '业内领先的智能模块建站方案，能帮助企业低成本快速建站，为企业提供了多元、高效建站服务', '1497502037', '1');
INSERT INTO `cms_about` VALUES ('48', '8', '营销平台', 'http://www.jonnycms.com/static/theme/default/img/image.png', '融合当今主流的各种的互联网营销工具，结合响应式网站窗口优势，达到高效引流、精准转化的效果', '1497502064', '1');
INSERT INTO `cms_about` VALUES ('49', '8', '开放平台', 'http://www.jonnycms.com/static/theme/default/img/image.png', '整合优质企业服务商，引入和开发更多切实解决企业需求的应用，满足企业各个阶段不同的功能需求', '1497502084', '1');

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL COMMENT '文章分类',
  `title` varchar(32) NOT NULL COMMENT '文章标题',
  `image` varchar(128) DEFAULT NULL COMMENT '文章封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '第三方文章地址',
  `content` text NOT NULL COMMENT '文章内容',
  `seo_title` varchar(64) DEFAULT NULL COMMENT 'seo标题',
  `seo_keywords` varchar(128) DEFAULT NULL COMMENT 'seo关键词',
  `seo_description` varchar(255) DEFAULT NULL COMMENT 'seo描述',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '1', '企业网站应该多长时间备份一次？', 'http://www.jonnycms.com/static/upload/85840294e0d5ee44/e9c225cfbfcfc91e.png', '企业网站应该多长时间备份一次？', 'www.93sucai.com', '<p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/59bef994bee29e44/c971ae5098ef9a35.png\"/></p><p style=\"text-align:center\"></p><p>随着移动互联网的普及，信息的生产和传递速度完全突破了时间和空间限制。每天涌入的大量信息让人们应接不暇，而新闻媒体作为一个帮助人们看世界的窗口，担任了帮助人们进行初步信息筛选，内容优化的重要职责，人们对于新闻类应用的依赖性也越来越高。沿用着物理世界中阅读时与书籍、杂志、文章的交互形式，为用户营造更熟悉自然的阅读体验，优雅的，能较好的突出阅读内容，页面干扰较少，让访问者能快速聚焦。</p><p>所以，只有站在受众角度，将个性化、精选的内容送达用户，精准匹配、促进互动，进而形成自有势能。</p><h2>1、突出作者</h2><p>「人」和人之间最容易产生共鸣，「人」比物更具备血肉和情感，把一款产品的定位和出发点放在「人」这个视角，会更有生命感和存在感。如果一名记者，抑或是一个百姓，其阅历足够便能传递思想，产生炸裂的大脑回路。当一条新闻传达出来的感觉是被人发现，与人分享，找到共性，从本能上就会从一种社交的思路，破冰儿而读。</p><p>如果一个媒体记者或者热心用户能从共鸣和同理性这个角度去报道新闻，Po出视频片段，从某种意义上讲就拉近了读者与作者之间的距离。另外一方面，从众心理学中能看到一种现象，当你关注的人对某类事件感兴趣，或者你关注的人表达某观点后，你会自然而然的去关心和阅读。这就减轻了文字推送后不被用户打开的尴尬。内容的更新有一个固定的时间点，固定的角度和标签，有助于培养用户使用习惯，也确实满足了部分人的需求。</p><p>随着媒体的不断发展，新闻客户端的内容会越来越多，在有限的时间内，用户越来越向专业、权威的传播平台聚拢，迎合用户习惯后将会聚集了大量粉丝和流量。</p><p>参考模型图如下：</p><p style=\"text-align: right;\"><img src=\"http://www.jonnycms.com/static/upload/169e0d3581a68c5e/1b2ac5a2dc6fbe61.png\"/></p><p style=\"text-align:center\"></p><h2>2、突出内容</h2><p>信息爆炸时代，信息过剩严重，资讯内容标题党、同质化、浅薄化等问题日益凸显;而资讯荒流之下，用户却信息饥荒，有价值、高质量内容较少。</p><p>对于具有独家内容源的产品，突出内容本身，一定是最具竞争力的切入点。大胆的展示自己的优势，快速获得优质内容仍是重点方向，内容为王时代，得到内容优势将提升平台变现能力，独家内容源是平台的着力点。当直播新闻内容生产技术普及化的过程中，PGC+UGC能够提供丰富的优质内容&nbsp;。只有如此高频率大范围地发现、调整、细分、共鸣、吸引。</p><p>参考模型图如下：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/7c37cccdddadc0af/30b966370477de93.png\"/></p><p style=\"text-align:center\"></p><h2>3、突出互动</h2><p>新闻客户端的评论质量很重要，评论相对于对新闻内容而言，是二次创造的过程，这是容易产生优质内容的地方。对评论和讨论的阅读反而是一种享受，扩大了见识，同时通过观察对同一事件人们的不同反应让人能看到不同地方人们的不同思维方式。</p><p>互动式的新闻客户端，小Q推荐网易，网易潜伏着一大批回帖粉丝，且回帖质量较高。从界面的右上角醒目的跟帖按钮可见网易新闻对跟帖评论功能的重视与强化。而经典的网友跟帖评论，机智幽默的评论给用户提供了互动的乐趣，体现了网易的产品定位“有态度的新闻门户”。另外，网易新闻是四款应用中唯一有语音评论功能的应用，凭借网易大门户优势，能够实用旗下各款产品的功能进行互补增强和连接产品。</p><p>如图所示：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/d61b1768b373aeac/7259fe5dce8b4141.png\"/></p><p style=\"text-align:center\"></p><p>互动类的新闻详情页，一般会推送某些比较好，或者关注度较高的内容，通过阅读过程，不打扰的方式送达到用户面前。有的时候你会发现，网友的评论会比新闻本身更加有趣。互动类的阅读内容更像是个性化阅读产品。通常情况下，跟贴能够增强你的快乐，也会看到自己的影子，在简单的新闻背后加强内心感受。</p><p>因为有了自媒体的出现，所以用户可以创造新闻，那么互动过程就变成了人 —— 新闻 —— 人的参与。澎湃App，注重用户评论和问答UGC，中国第一个新闻问答产品。并基于评论和问答进行延伸式新闻，以互联网思维寻创新。</p><p>参考模型图如下：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/456131a102a4b072/d794d5c849e070a7.png\"/></p><p style=\"text-align:center\"></p><h2>4、小Q来总结</h2><p>新媒体的使用常态是：资讯信息和娱乐内容获取、自我表达、参与互动等更多元化、个性化、碎片化 。对于用户体验的大军 90 后群体，特别是尚未形成下载新闻资讯APP习惯的 95 后一代，是移动资讯规模未来发展的新动力。</p><p>作者：Mandy权，微信公众号：PMandyQ，一名快乐的产品经理!</p><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('2', '1', '如何选择网站关键词', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">如何选择网站关键词</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('3', '1', '企业建站选择主机和产品服务遇到的问题', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">企业建站选择主机和产品服务遇到的问题</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('4', '1', '企业用网站进行网络宣传的优势', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">企业用网站进行网络宣传的优势</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('5', '1', '什么是伪静态？伪静态有何作用?哪种好？', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">什么是伪静态？伪静态有何作用?哪种好？</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('6', '3', '东莞家具出走湖北？家具业尝试高端规划集聚', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">东莞家具出走湖北？家具业尝试高端规划集聚</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('7', '3', '改良与创新', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">改良与创新</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('8', '3', '如何充分发挥SEO功能', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">如何充分发挥SEO功能</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('9', '3', 'SEO怎么加快文章的收录速度', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">SEO怎么加快文章的收录速度</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('10', '3', 'SEO快速排名算法', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">SEO快速排名算法</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('11', '2', '新媒体编辑一定要知道的55个常用术语', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">新媒体编辑一定要知道的55个常用术语</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('12', '2', '这里有个banner的设计方法，不知当讲不当讲！', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">这里有个banner的设计方法，不知当讲不当讲！</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('13', '2', '解密黑帽SEO蜘蛛池 实现搜索引擎霸屏', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">解密黑帽SEO蜘蛛池&nbsp;实现搜索引擎霸屏</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('14', '2', '怎样引导社区的评论氛围', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">怎样引导社区的评论氛围</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('15', '2', '谷歌发布Android系统年度安全报告，一半的设备一年都没收到安', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">谷歌发布Android系统年度安全报告，一半的设备一年都没收到安</pre><p><br/></p>', null, null, null, '1497407057', null, '1');
INSERT INTO `cms_article` VALUES ('16', '1', 'dsads', '', '', '', '<p>dsada</p>', null, null, null, '1497407057', null, '0');

-- ----------------------------
-- Table structure for `cms_article_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_cate`;
CREATE TABLE `cms_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '文章分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_cate
-- ----------------------------
INSERT INTO `cms_article_cate` VALUES ('1','0', '企业动态', '0', '1');
INSERT INTO `cms_article_cate` VALUES ('2','0', '行业资讯', '0', '1');

-----------------------------------------------------------------------

-- ----------------------------
-- Table structure for `cms_case`
-- ----------------------------
DROP TABLE IF EXISTS `cms_case`;
CREATE TABLE `cms_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_id` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '案例名称',
  `logo` varchar(128) NOT NULL COMMENT '案例logo',
  `url` varchar(32) NOT NULL COMMENT '案例地址',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `create_at` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_case
-- ----------------------------
INSERT INTO `cms_case` VALUES ('1', '1', '93网络网络建站网站案例：潮连旅游网', 'http://www.jonnycms.com/static/upload/c5164b8af10868b0/8a7f8a836427abef.png', '#', '这是一个简介这是一个简介这是一个简介这是一个简介', '0', '1');
INSERT INTO `cms_case` VALUES ('2', '1', '探长网络网络建站网站案例：东泉展览官网', 'http://www.jonnycms.com/static/upload/5a139c55c7b874dc/b19ac7113b9e8dec.png', '#', '这是一个简介', '1497432757', '1');
INSERT INTO `cms_case` VALUES ('3', '1', '探长网络网络建站网站案例：佰亮照明', 'http://www.jonnycms.com/static/upload/432d788ea8809bce/125f145e92f8241a.png', '#', '这是一个简介', '1497432777', '1');
INSERT INTO `cms_case` VALUES ('4', '1', '探长网络网络建站网站案例：如艺照明', 'http://www.jonnycms.com/static/upload/a26cd181e75d6978/a09fda103bda3a33.png', '#', '这是一个简介', '1497432796', '1');

-- ----------------------------
-- Table structure for `cms_case_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cms_case_cate`;
CREATE TABLE `cms_case_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `status` tinyint(4) DEFAULT '1',
  `create_at` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_case_cate
-- ----------------------------
INSERT INTO `cms_case_cate` VALUES ('1', '品牌展示型官网', '1', null);
INSERT INTO `cms_case_cate` VALUES ('2', '五合一网站案例', '1', null);
INSERT INTO `cms_case_cate` VALUES ('4', '电子商城购物网站', '1', '1497488693');
INSERT INTO `cms_case_cate` VALUES ('5', '博客 论坛 个人网站', '1', '1497488706');
INSERT INTO `cms_case_cate` VALUES ('6', '平面设计类作品', '1', '1497488720');

-- ----------------------------
-- Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '网站名称',
  `url` varchar(64) DEFAULT NULL COMMENT 'url地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '93素材网', 'www.93sucai.com', null, '1');
INSERT INTO `cms_link` VALUES ('2', '友情链接1', '#', '1497408214', '1');
INSERT INTO `cms_link` VALUES ('3', '友情链接2', '#', '1497408223', '1');

-- ----------------------------
-- Table structure for `cms_nav`
-- ----------------------------
DROP TABLE IF EXISTS `cms_nav`;
CREATE TABLE `cms_nav` (
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
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_nav
-- ----------------------------
INSERT INTO `cms_nav` VALUES ('9', '首页', 'Index', 'index', '0', 'http://www.jonnycms.com/', null, '1497434121', '1');
INSERT INTO `cms_nav` VALUES ('10', '服务与产品', 'Services', 'index', '0', 'http://www.jonnycms.com/service.html', null, '1497434134', '1');
INSERT INTO `cms_nav` VALUES ('11', '新闻资讯', 'Article', 'index', '0', 'http://www.jonnycms.com/news.html', null, '1497434088', '1');
INSERT INTO `cms_nav` VALUES ('12', '客户案例', 'Cases', 'index', '0', 'http://www.jonnycms.com/cases.html', null, '1497434108', '1');
INSERT INTO `cms_nav` VALUES ('13', '关于我们', 'About', 'index', '0', 'http://www.jonnycms.com/about.html', null, '1497434151', '1');
INSERT INTO `cms_nav` VALUES ('14', '联系我们', 'Contact', 'index', '0', 'http://www.jonnycms.com/contact.html', null, '1497434163', '1');

-- ----------------------------
-- Table structure for `cms_shuff`
-- ----------------------------
DROP TABLE IF EXISTS `cms_shuff`;
CREATE TABLE `cms_shuff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `type` char(4) DEFAULT 'text' COMMENT '轮播类型',
  `textcontent` varchar(64) DEFAULT NULL COMMENT '文本内容',
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL COMMENT '跳转地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_shuff
-- ----------------------------
INSERT INTO `cms_shuff` VALUES ('1', '轮播图1', 'imag', null, 'http://www.jonnycms.com/static/upload/85840294e0d5ee44/e9c225cfbfcfc91e.png', '#', null, '1');
INSERT INTO `cms_shuff` VALUES ('2', '打破传统-企业免网站制作费', 'text', '找jonny做网站价格比淘宝优惠，价格比外包低', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', null, '1');
INSERT INTO `cms_shuff` VALUES ('3', '全能五合一响应式网站', 'text', '一个网站就能自动适应PC端+平板端+手机端+安卓/苹果APP+微信使用', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', null, '1');
INSERT INTO `cms_shuff` VALUES ('4', '为企业所想 满足企业需求', 'text', '升级以您的需求为导向,提升以您的价值为目标', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', null, '1');

-- ----------------------------
-- Table structure for `cms_type`
-- ----------------------------
DROP TABLE IF EXISTS `cms_type`;
CREATE TABLE `cms_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `create_at` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_type
-- ----------------------------
INSERT INTO `cms_type` VALUES ('1', '服务', null);
INSERT INTO `cms_type` VALUES ('2', '优势', null);
INSERT INTO `cms_type` VALUES ('3', '功能', null);
INSERT INTO `cms_type` VALUES ('4', '产品', null);
INSERT INTO `cms_type` VALUES ('5', '合作伙伴', '1497408877');
INSERT INTO `cms_type` VALUES ('6', '流程', '1497430017');
INSERT INTO `cms_type` VALUES ('7', '市场优势', '1497501614');
INSERT INTO `cms_type` VALUES ('8', '平台', '1497502019');

-- ----------------------------
-- Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------
INSERT INTO `system_auth` VALUES ('1', '客服', '1', '0', 'sada', '0', '1497933664');

-- ----------------------------
-- Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('148', 'site_name', 'Kensteel1.0Bate', null);
INSERT INTO `system_config` VALUES ('149', 'site_copy', 'kensteel © 2014~2018', null);
INSERT INTO `system_config` VALUES ('164', 'storage_type', 'local', null);
INSERT INTO `system_config` VALUES ('165', 'storage_qiniu_is_https', '1', null);
INSERT INTO `system_config` VALUES ('166', 'storage_qiniu_bucket', 'static', null);
INSERT INTO `system_config` VALUES ('167', 'storage_qiniu_domain', 'static.ctolog.com', null);
INSERT INTO `system_config` VALUES ('168', 'storage_qiniu_access_key', '', null);
INSERT INTO `system_config` VALUES ('169', 'storage_qiniu_secret_key', '', null);
INSERT INTO `system_config` VALUES ('170', 'storage_qiniu_region', '华东', null);
INSERT INTO `system_config` VALUES ('173', 'app_name', 'JonnyAdmin', null);
INSERT INTO `system_config` VALUES ('174', 'app_version', 'V1.0', null);
INSERT INTO `system_config` VALUES ('176', 'browser_icon', 'https://think.ctolog.com/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png', null);
INSERT INTO `system_config` VALUES ('184', 'wechat_appid', '', null);
INSERT INTO `system_config` VALUES ('185', 'wechat_appsecret', '', null);
INSERT INTO `system_config` VALUES ('186', 'wechat_token', '', null);
INSERT INTO `system_config` VALUES ('187', 'wechat_encodingaeskey', '', null);
INSERT INTO `system_config` VALUES ('188', 'wechat_mch_id', '', null);
INSERT INTO `system_config` VALUES ('189', 'wechat_partnerkey', '', null);
INSERT INTO `system_config` VALUES ('194', 'wechat_cert_key', '', null);
INSERT INTO `system_config` VALUES ('196', 'wechat_cert_cert', '', null);
INSERT INTO `system_config` VALUES ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f', null);
INSERT INTO `system_config` VALUES ('198', 'tongji_cnzz_key', '1261854404', null);
INSERT INTO `system_config` VALUES ('199', 'storage_oss_bucket', '', null);
INSERT INTO `system_config` VALUES ('200', 'storage_oss_keyid', '', null);
INSERT INTO `system_config` VALUES ('201', 'storage_oss_secret', '', null);
INSERT INTO `system_config` VALUES ('202', 'storage_oss_domain', '', null);
INSERT INTO `system_config` VALUES ('203', 'storage_oss_is_https', '1', null);
INSERT INTO `system_config` VALUES ('204', 'web_site_close', '1', null);
INSERT INTO `system_config` VALUES ('205', 'seo_title', 'jonnycms', null);
INSERT INTO `system_config` VALUES ('206', 'seo_keywords', '11111111111', null);
INSERT INTO `system_config` VALUES ('207', 'seo_description', '1111', null);
INSERT INTO `system_config` VALUES ('208', 'web_site_icp', '浙江ICP备16094197', null);
INSERT INTO `system_config` VALUES ('209', 'company_address', '乌镇', null);
INSERT INTO `system_config` VALUES ('210', 'company_phone', '020-076412', null);
INSERT INTO `system_config` VALUES ('211', 'company_fixed_line', '15820452360', null);
INSERT INTO `system_config` VALUES ('212', 'company_qq', '980218641', null);
INSERT INTO `system_config` VALUES ('213', 'company_url', 'wwww.93sucai.com', null);
INSERT INTO `system_config` VALUES ('214', 'company_email', 'kensteel@qq.com', null);
INSERT INTO `system_config` VALUES ('215', 'company_headquarters', '网站建设', null);
INSERT INTO `system_config` VALUES ('216', 'company_head', 'jonny', null);
INSERT INTO `system_config` VALUES ('217', 'company_head_mobile', '15820452360', '1497498198');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', '0');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('17', '27.38.4.10', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('18', '27.38.4.10', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '0');
INSERT INTO `system_log` VALUES ('19', '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');
INSERT INTO `system_log` VALUES ('20', '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '0');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '1000', '1', '0', '2015');
INSERT INTO `system_menu` VALUES ('3', '4', '后台首页', '', 'fa fa-fw fa-tachometer', 'admin/index/main', '', '_self', '10', '1', '0', '2015');
INSERT INTO `system_menu` VALUES ('4', '2', '系统配置', '', '', '#', '', '_self', '100', '1', '0', '2016');
INSERT INTO `system_menu` VALUES ('5', '4', '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', '20', '1', '0', '2016');
INSERT INTO `system_menu` VALUES ('6', '4', '文件存储', '', 'fa fa-hdd-o', 'admin/config/file', '', '_self', '30', '1', '0', '2016');
INSERT INTO `system_menu` VALUES ('9', '20', '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', '50', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('19', '20', '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', '20', '1', '0', '2015');
INSERT INTO `system_menu` VALUES ('20', '2', '系统权限', '', '', '#', '', '_self', '200', '1', '0', '2016');
INSERT INTO `system_menu` VALUES ('21', '20', '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', '30', '1', '0', '2015');
INSERT INTO `system_menu` VALUES ('22', '20', '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', '10', '1', '0', '2015');
INSERT INTO `system_menu` VALUES ('29', '20', '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', '40', '1', '0', '2016');
INSERT INTO `system_menu` VALUES ('61', '0', '微信管理', '', '', '#', '', '_self', '2000', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('62', '61', '微信对接配置', '', '', '#', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('63', '62', '微信接口配置\r\n', '', 'fa fa-usb', 'wechat/config/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('64', '62', '微信支付配置', '', 'fa fa-paypal', 'wechat/config/pay', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('65', '61', '微信粉丝管理', '', '', '#', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('66', '65', '粉丝标签', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('67', '65', '已关注粉丝', '', 'fa fa-wechat', 'wechat/fans/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('68', '61', '微信订制', '', '', '#', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('69', '68', '微信菜单定制', '', 'glyphicon glyphicon-phone', 'wechat/menu/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('70', '68', '关键字管理', '', 'fa fa-paw', 'wechat/keys/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('71', '68', '关注自动回复', '', 'fa fa-commenting-o', 'wechat/keys/subscribe', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('81', '68', '无配置默认回复', '', 'fa fa-commenting-o', 'wechat/keys/defaults', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('82', '61', '素材资源管理', '', '', '#', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('83', '82', '添加图文', '', 'fa fa-folder-open-o', 'wechat/news/add?id=1', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('85', '82', '图文列表', '', 'fa fa-file-pdf-o', 'wechat/news/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('86', '65', '粉丝黑名单', '', 'fa fa-reddit-alien', 'wechat/fans/back', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('87', '0', '内容管理', '', 'fa fa-credit-card', '#', '', '_self', '1100', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('89', '87', '前台管理', '', '', '#', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('91', '89', '导航列表', '', 'fa fa-bars', 'cms/nav/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('92', '89', '轮播列表', '', '', 'cms/shuff/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('93', '89', '友情链接', '', '', 'cms/link/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('94', '87', '案例管理', '', '', '#', '', '_self', '2', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('95', '94', '案例列表', '', '', 'cms/cases/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('96', '94', '案例分类', '', '', 'cms/cases/index_cate', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('97', '87', '文章管理', '', '', '#', '', '_self', '1', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('98', '97', '分类列表', '', '', 'cms/article/index_cate', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('99', '97', '文章列表', '', '', 'cms/article/index', '', '_self', '0', '1', '0', '2017');
INSERT INTO `system_menu` VALUES ('100', '102', '关于我们', '', '', 'cms/about/index', '', '_self', '0', '1', '0', '0');
INSERT INTO `system_menu` VALUES ('101', '102', '类型列表', '', '', 'cms/types/index', '', '_self', '0', '1', '0', '0');
INSERT INTO `system_menu` VALUES ('102', '87', '产品与服务', '', '', '#', '', '_self', '3', '1', '0', '1497499886');

-- ----------------------------
-- Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('3', 'admin', '系统管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('4', 'admin/menu/add', '添加菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('5', 'admin/config', '系统配置', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('6', 'admin/config/index', '网站配置', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('7', 'admin/config/file', '文件配置', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('8', 'admin/config/mail', '邮件配置', '0', '0', '2017');
INSERT INTO `system_node` VALUES ('9', 'admin/config/sms', '短信配置', '0', '0', '2017');
INSERT INTO `system_node` VALUES ('10', 'admin/menu/index', '菜单列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('11', 'admin/node/index', '节点列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('12', 'admin/node/save', '节点更新', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('13', 'store/menu/index', '菜单列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('14', 'store/menu/add', '添加菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('15', 'store/menu/edit', '编辑菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('16', 'store/menu/del', '删除菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('17', 'admin/index/index', '', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('18', 'admin/index/main', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('19', 'admin/index/pass', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('20', 'admin/index/info', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('21', 'store/menu/tagmove', '移动标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('22', 'store/menu/tagedit', '编辑标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('23', 'store/menu/tagdel', '删除标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('24', 'store/menu/resume', '启用菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('25', 'store/menu/forbid', '禁用菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('26', 'store/menu/tagadd', '添加标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('27', 'store/menu/hot', '设置热卖', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('28', 'admin/index', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('29', 'store/order/index', '订单列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('30', 'store/index/qrcimg', '店铺二维码', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('31', 'store/index/edit', '编辑店铺', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('32', 'store/index/qrc', '二维码列表', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('33', 'store/index/add', '添加店铺', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('34', 'store/index/index', '我的店铺', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('35', 'store/api/delcache', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('36', 'store/api/getcache', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('37', 'store/api/setcache', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('38', 'store/api/response', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('39', 'store/api/auth', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('40', 'admin/user/resume', '启用用户', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('41', 'admin/user/forbid', '禁用用户', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('42', 'admin/user/del', '删除用户', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('43', 'admin/user/pass', '密码修改', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('44', 'admin/user/edit', '编辑用户', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('45', 'admin/user/index', '用户列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('46', 'admin/user/auth', '用户授权', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('47', 'admin/user/add', '新增用户', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('48', 'admin/plugs/icon', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('49', 'admin/plugs/upload', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('50', 'admin/plugs/upfile', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('51', 'admin/plugs/upstate', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('52', 'admin/menu/resume', '菜单启用', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('53', 'admin/menu/forbid', '菜单禁用', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('54', 'admin/login/index', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('55', 'admin/login/out', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('56', 'admin/menu/edit', '编辑菜单', '0', '0', '2017');
INSERT INTO `system_node` VALUES ('57', 'admin/menu/del', '菜单删除', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('58', 'store/menu', '菜谱管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('59', 'store/index', '店铺管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('60', 'store', '店铺管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('61', 'store/order', '订单管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('62', 'admin/user', '用户管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('63', 'admin/node', '节点管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('64', 'admin/menu', '菜单管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('65', 'admin/auth', '权限管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('66', 'admin/auth/index', '权限列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('67', 'admin/auth/apply', '权限节点', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('68', 'admin/auth/add', '添加权', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('69', 'admin/auth/edit', '编辑权限', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('70', 'admin/auth/forbid', '禁用权限', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('71', 'admin/auth/resume', '启用权限', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('72', 'admin/auth/del', '删除权限', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('73', 'admin/log/index', '日志列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('74', 'admin/log/del', '删除日志', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('75', 'admin/log', '系统日志', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('76', 'wechat', '微信管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('77', 'wechat/article', '微信文章', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('78', 'wechat/article/index', '文章列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('79', 'wechat/config', '微信配置', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('80', 'wechat/config/index', '微信接口配置', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('81', 'wechat/config/pay', '微信支付配置', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('82', 'wechat/fans', '微信粉丝', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('83', 'wechat/fans/index', '粉丝列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('84', 'wechat/index', '微信主页', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('85', 'wechat/index/index', '微信主页', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('86', 'wechat/keys', '微信关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('87', 'wechat/keys/index', '关键字列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('88', 'wechat/keys/subscribe', '关键自动回复', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('89', 'wechat/keys/defaults', '默认自动回复', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('90', 'wechat/menu', '微信菜单管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('91', 'wechat/menu/index', '微信菜单', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('92', 'wechat/news', '微信图文管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('93', 'wechat/news/index', '图文列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('94', 'wechat/notify/index', '', '0', '0', '2017');
INSERT INTO `system_node` VALUES ('95', 'wechat/api/index', '', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('96', 'wechat/api', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('97', 'wechat/notify', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('98', 'wechat/fans/sync', '同步粉丝', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('99', 'wechat/menu/edit', '编辑微信菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('100', 'wechat/menu/cancel', '取消微信菜单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('101', 'wechat/keys/edit', '编辑关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('102', 'wechat/keys/add', '添加关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('103', 'wechat/review/index', null, '0', '1', '2017');
INSERT INTO `system_node` VALUES ('104', 'wechat/review', '', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('105', 'wechat/keys/del', '删除关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('106', 'wechat/news/add', '添加图文', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('107', 'wechat/news/select', '图文选择器', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('108', 'wechat/keys/resume', '启用关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('109', 'wechat/news/edit', '编辑图文', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('110', 'wechat/news/push', '推送图文', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('111', 'wechat/news/del', '删除图文', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('112', 'wechat/keys/forbid', '禁用关键字', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('113', 'wechat/tags/index', '标签列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('114', 'wechat/tags/add', '添加标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('115', 'wechat/tags/edit', '编辑标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('116', 'wechat/tags/sync', '同步标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('117', 'wechat/tags', '粉丝标签管理', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('118', 'wechat/fans/backdel', '移除粉丝黑名单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('119', 'wechat/fans/backadd', '移入粉丝黑名单', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('120', 'wechat/fans/back', '粉丝黑名单列表', '1', '1', '2017');
INSERT INTO `system_node` VALUES ('121', 'wechat/fans/tagadd', '添加粉丝标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('122', 'wechat/fans/tagdel', '删除粉丝标签', '0', '1', '2017');
INSERT INTO `system_node` VALUES ('123', 'cms', 'cms网站管理', '0', '1', '1497499500');
INSERT INTO `system_node` VALUES ('124', 'cms/about', '产品与服务', '0', '1', '1497499508');
INSERT INTO `system_node` VALUES ('125', 'cms/article', '文章管理', '0', '1', '1497499526');
INSERT INTO `system_node` VALUES ('126', 'cms/about/index', '列表页', '1', '1', '1497499526');
INSERT INTO `system_node` VALUES ('127', 'cms/article/index', '文章列表', '1', '1', '1497499550');
INSERT INTO `system_node` VALUES ('128', 'cms/article/add', '添加文章', '0', '1', '1497499557');
INSERT INTO `system_node` VALUES ('129', 'cms/article/edit', '编辑文章', '0', '1', '1497499560');
INSERT INTO `system_node` VALUES ('130', 'cms/article/forbid', '文章禁用', '0', '1', '1497499602');
INSERT INTO `system_node` VALUES ('131', 'cms/article/resume', '文章启用', '0', '1', '1497499605');
INSERT INTO `system_node` VALUES ('132', 'cms/article/del', '删除文章', '0', '1', '1497499612');
INSERT INTO `system_node` VALUES ('133', 'cms/article/index_cate', '文章分类列表', '1', '1', '1497499612');
INSERT INTO `system_node` VALUES ('134', 'cms/article/add_cate', '添加分类', '0', '1', '1497499616');
INSERT INTO `system_node` VALUES ('135', 'cms/article/edit_cate', '编辑分类', '0', '1', '1497499617');
INSERT INTO `system_node` VALUES ('136', 'cms/article/del_cate', '删除分类', '0', '1', '1497499618');
INSERT INTO `system_node` VALUES ('137', 'cms/cases', '案例管理', '0', '1', '1497499651');
INSERT INTO `system_node` VALUES ('138', 'cms/cases/index', '案例列表', '1', '1', '1497499656');
INSERT INTO `system_node` VALUES ('139', 'cms/cases/add', '添加案例', '0', '1', '1497499661');
INSERT INTO `system_node` VALUES ('140', 'cms/cases/edit', '编辑案例', '0', '1', '1497499664');
INSERT INTO `system_node` VALUES ('141', 'cms/cases/forbid', '禁用案例', '0', '1', '1497499669');
INSERT INTO `system_node` VALUES ('142', 'cms/cases/resume', '启用案例', '0', '1', '1497499672');
INSERT INTO `system_node` VALUES ('143', 'cms/cases/del', '删除案例', '0', '1', '1497499677');
INSERT INTO `system_node` VALUES ('144', 'cms/cases/index_cate', '案例分类列表', '0', '1', '1497499682');
INSERT INTO `system_node` VALUES ('145', 'cms/cases/add_cate', '添加案例分类', '0', '1', '1497499686');
INSERT INTO `system_node` VALUES ('146', 'cms/cases/edit_cate', '编辑案例分类', '0', '1', '1497499690');
INSERT INTO `system_node` VALUES ('147', 'cms/cases/del_cate', '删除案例分类', '0', '1', '1497499705');
INSERT INTO `system_node` VALUES ('148', 'cms/about/add', '添加', '0', '1', '1497499714');
INSERT INTO `system_node` VALUES ('149', 'cms/about/edit', '编辑', '0', '1', '1497499715');
INSERT INTO `system_node` VALUES ('150', 'cms/about/del', '删除', '0', '1', '1497499717');
INSERT INTO `system_node` VALUES ('151', 'cms/config/index', '', '0', '1', '1497499742');
INSERT INTO `system_node` VALUES ('152', 'cms/link', '友情链接', '0', '1', '1497499755');
INSERT INTO `system_node` VALUES ('153', 'cms/link/index', '友情链接列表', '1', '1', '1497499763');
INSERT INTO `system_node` VALUES ('154', 'cms/link/add', '添加', '0', '1', '1497499768');
INSERT INTO `system_node` VALUES ('155', 'cms/link/edit', '编辑', '0', '1', '1497499774');
INSERT INTO `system_node` VALUES ('156', 'cms/link/forbid', '禁用', '0', '1', '1497499780');
INSERT INTO `system_node` VALUES ('157', 'cms/link/resume', '启用', '0', '1', '1497499784');
INSERT INTO `system_node` VALUES ('158', 'cms/nav', '导航管理', '0', '1', '1497499791');
INSERT INTO `system_node` VALUES ('159', 'cms/nav/index', '导航列表', '1', '1', '1497499793');
INSERT INTO `system_node` VALUES ('160', 'cms/nav/add', '添加导航', '0', '1', '1497499806');
INSERT INTO `system_node` VALUES ('161', 'cms/nav/edit', '编辑导航', '0', '1', '1497499809');
INSERT INTO `system_node` VALUES ('162', 'cms/nav/forbid', '禁用导航', '0', '1', '1497499815');
INSERT INTO `system_node` VALUES ('163', 'cms/nav/resume', '启用导航', '0', '1', '1497499817');
INSERT INTO `system_node` VALUES ('164', 'cms/nav/del', '删除导航', '0', '1', '1497499823');
INSERT INTO `system_node` VALUES ('165', 'cms/shuff', '轮播管理', '0', '1', '1497500183');
INSERT INTO `system_node` VALUES ('166', 'cms/shuff/index', '轮播列表', '1', '1', '1497500247');
INSERT INTO `system_node` VALUES ('167', 'cms/shuff/add', '添加轮播', '0', '1', '1497500254');
INSERT INTO `system_node` VALUES ('168', 'cms/shuff/edit', '编辑轮播', '0', '1', '1497500257');
INSERT INTO `system_node` VALUES ('169', 'cms/shuff/forbid', '禁用轮播', '0', '1', '1497500266');
INSERT INTO `system_node` VALUES ('170', 'cms/shuff/resume', '启用轮播', '0', '1', '1497500273');
INSERT INTO `system_node` VALUES ('171', 'cms/types', '类型管理', '0', '1', '1497500281');
INSERT INTO `system_node` VALUES ('172', 'cms/types/index', '类型列表', '1', '1', '1497500285');
INSERT INTO `system_node` VALUES ('173', 'cms/types/add', '添加', '0', '1', '1497500289');
INSERT INTO `system_node` VALUES ('174', 'cms/types/edit', '编辑', '0', '1', '1497500292');
INSERT INTO `system_node` VALUES ('175', 'cms/types/del', '删除', '0', '1', '1497500294');

-- ----------------------------
-- Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------
INSERT INTO `system_sequence` VALUES ('1', 'WECHAT-PAY-TEST', '1278911425', '0');
INSERT INTO `system_sequence` VALUES ('2', 'WXPAY-OUTER-NO', '943572063331662367', '0');

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '670b14728ad9902aecba32e22fa4f6bd', '22222222', '11111@qq.com', '13823822233', '<script>alert(\"a\")</script>', '12611', '2017-06-20 11:23:42', '1', '47,49', '0', null, '2015');

-- ----------------------------
-- Table structure for `wechat_fans`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans`;
CREATE TABLE `wechat_fans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '粉丝表ID',
  `appid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '公众号Appid',
  `groupid` bigint(20) unsigned DEFAULT NULL COMMENT '分组ID',
  `tagid_list` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '标签id',
  `is_back` tinyint(1) unsigned DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '用户是否订阅该公众号,0：未关注,1：已关注',
  `openid` char(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '用户的昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在国家',
  `province` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在省份',
  `city` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在城市',
  `language` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户头像',
  `subscribe_time` bigint(20) unsigned DEFAULT NULL COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `unionid` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'unionid',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `expires_in` bigint(20) unsigned DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '刷新token',
  `access_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '访问token',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  KEY `index_wechat_fans_openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=sjis COMMENT='微信粉丝';

-- ----------------------------
-- Records of wechat_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_fans_tags`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_fans_tags`;
CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) unsigned NOT NULL COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) unsigned DEFAULT NULL COMMENT '总数',
  `create_at` int(11) DEFAULT '0' COMMENT '创建日期',
  KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信会员标签';

-- ----------------------------
-- Records of wechat_fans_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_keys`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_keys`;
CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `type` varchar(20) DEFAULT NULL COMMENT '类型,text 文件消息,image 图片消息,news 图文消息',
  `keys` varchar(100) DEFAULT NULL COMMENT '关键字',
  `content` text COMMENT '文本内容',
  `image_url` varchar(255) DEFAULT NULL COMMENT '图片链接',
  `voice_url` varchar(255) DEFAULT NULL COMMENT '语音链接',
  `music_title` varchar(100) DEFAULT NULL COMMENT '音乐标题',
  `music_url` varchar(255) DEFAULT NULL COMMENT '音乐链接',
  `music_image` varchar(255) DEFAULT NULL COMMENT '音乐缩略图链接',
  `music_desc` varchar(255) DEFAULT NULL COMMENT '音乐描述',
  `video_title` varchar(100) DEFAULT NULL COMMENT '视频标题',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频URL',
  `video_desc` varchar(255) DEFAULT NULL COMMENT '视频描述',
  `news_id` bigint(20) unsigned DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '0 禁用,1 启用',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 微信关键字';

-- ----------------------------
-- Records of wechat_keys
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_menu`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_menu`;
CREATE TABLE `wechat_menu` (
  `id` bigint(16) unsigned NOT NULL AUTO_INCREMENT,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '文字内容',
  `sort` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `wechat_menu_pid` (`pindex`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1507 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wechat_menu
-- ----------------------------
INSERT INTO `wechat_menu` VALUES ('1502', '1', '0', 'text', '关键字', '2234123413', '0', '1', '0', '2017');
INSERT INTO `wechat_menu` VALUES ('1503', '11', '1', 'keys', '图片', '图片', '0', '1', '0', '2017');
INSERT INTO `wechat_menu` VALUES ('1504', '12', '1', 'keys', '音乐', '音乐', '1', '1', '0', '2017');
INSERT INTO `wechat_menu` VALUES ('1505', '2', '0', 'event', '事件类', 'pic_weixin', '1', '1', '0', '2017');
INSERT INTO `wechat_menu` VALUES ('1506', '3', '0', 'view', '微信支付', 'index/wap/payjs', '2', '1', '0', '2017');

-- ----------------------------
-- Table structure for `wechat_news`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news`;
CREATE TABLE `wechat_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT NULL COMMENT '关联图文ID,用,号做分割',
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '是否删除',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`),
  KEY `index_wechat_new_artcle_id` (`article_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信图文表';

-- ----------------------------
-- Records of wechat_news
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_article`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_article`;
CREATE TABLE `wechat_news_article` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) unsigned DEFAULT '0' COMMENT '是否显示封面 0不显示,1 显示',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `digest` varchar(300) DEFAULT NULL COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT NULL COMMENT '图文消息原文地址',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_article
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_image`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_image`;
CREATE TABLE `wechat_news_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信服务器图片';

-- ----------------------------
-- Records of wechat_news_image
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_news_media`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_news_media`;
CREATE TABLE `wechat_news_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `type` varchar(20) DEFAULT NULL COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- ----------------------------
-- Records of wechat_news_media
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_pay_notify`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_pay_notify`;
CREATE TABLE `wechat_pay_notify` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL COMMENT '公众号Appid',
  `bank_type` varchar(50) DEFAULT NULL COMMENT '银行类型',
  `cash_fee` bigint(20) DEFAULT NULL COMMENT '现金价',
  `fee_type` char(20) DEFAULT NULL COMMENT '币种,1人民币',
  `is_subscribe` char(1) DEFAULT 'N' COMMENT '是否关注,Y为关注,N为未关注',
  `mch_id` varchar(50) DEFAULT NULL COMMENT '商户MCH_ID',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机串',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信用户openid',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '支付平台退款交易号',
  `sign` varchar(100) DEFAULT NULL COMMENT '签名',
  `time_end` int(11) DEFAULT NULL COMMENT '结束时间',
  `result_code` varchar(10) DEFAULT NULL,
  `return_code` varchar(10) DEFAULT NULL,
  `total_fee` varchar(11) DEFAULT NULL COMMENT '支付总金额,单位为分',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '支付方式',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '订单号',
  `create_at` int(11) DEFAULT '0' COMMENT '本地系统时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_pay_notify_openid` (`openid`) USING BTREE,
  KEY `index_wechat_pay_notify_out_trade_no` (`out_trade_no`) USING BTREE,
  KEY `index_wechat_pay_notify_transaction_id` (`transaction_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='支付日志表';

-- ----------------------------
-- Records of wechat_pay_notify
-- ----------------------------

-- ----------------------------
-- Table structure for `wechat_pay_prepayid`
-- ----------------------------
DROP TABLE IF EXISTS `wechat_pay_prepayid`;
CREATE TABLE `wechat_pay_prepayid` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `from` char(32) DEFAULT 'shop' COMMENT '支付来源',
  `fee` bigint(20) unsigned DEFAULT NULL COMMENT '支付费用(分)',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `order_no` varchar(50) DEFAULT NULL COMMENT '内部订单号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '外部订单号',
  `prepayid` varchar(500) DEFAULT NULL COMMENT '预支付码',
  `expires_in` bigint(20) unsigned DEFAULT NULL COMMENT '有效时间',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '微信平台订单号',
  `is_pay` tinyint(1) unsigned DEFAULT '0' COMMENT '1已支付,0未支退款',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `is_refund` tinyint(1) unsigned DEFAULT '0' COMMENT '是否退款,退款单号(T+原来订单)',
  `refund_at` int(11) NOT NULL COMMENT '退款时间',
  `create_at` int(11) NOT NULL COMMENT '本地系统时间',
  PRIMARY KEY (`id`),
  KEY `index_wechat_pay_prepayid_outer_no` (`out_trade_no`) USING BTREE,
  KEY `index_wechat_pay_prepayid_order_no` (`order_no`) USING BTREE,
  KEY `index_wechat_pay_is_pay` (`is_pay`) USING BTREE,
  KEY `index_wechat_pay_is_refund` (`is_refund`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单号对应表';

-- ----------------------------
-- Records of wechat_pay_prepayid
-- ----------------------------
