-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2018 at 11:11 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_about`
--

DROP TABLE IF EXISTS `cms_about`;
CREATE TABLE `cms_about` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '类型',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `icon` varchar(128) DEFAULT NULL COMMENT '图标',
  `description` varchar(255) DEFAULT NULL,
  `create_at` int(11) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_about`
--

INSERT INTO `cms_about` (`id`, `type`, `title`, `icon`, `description`, `create_at`, `status`) VALUES
(3, 3, '了解93网', 'http://www.jonnycms.com/static/upload/bfab2f0e61a71c1d/cb0e44fc37bfa799.png', '专注生产高速、稳定、安全的网站', 0, 1),
(4, 3, 'VIP会员服务', 'http://www.jonnycms.com/static/upload/86e21be7b7d55307/8a72b617476ab672.png', '93网客户尊享售后服务，让网站部署更轻松', 0, 1),
(5, 3, '积分商城', 'http://www.jonnycms.com/static/upload/ab9b7b8ad04c97e5/bf57e5c66d280bbc.png', '消费送积分，积分可兑换超值好礼', 0, 1),
(6, 3, '1V1专席秘书服务', 'http://www.jonnycms.com/static/upload/5358de5e33a0fba0/38eecda19174fc51.png', '93网客户尊享1对1专席秘书贴心服务', 0, 1),
(7, 4, '93网站建设服务', 'http://www.jonnycms.com/static/upload/6ac7616e5ae2a62d/50877f935f00ba73.png', '企业品牌官网建设,\r\n电子商城网站建设,\r\n行业分类网站建设,\r\n论坛博客个人网站,\r\n五合一一站式建站', 0, 1),
(8, 4, '93品牌设计服务', 'http://www.jonnycms.com/static/upload/1316a62fbbd3fd20/fe2bcfe59096692e.png', '企业品牌LOGO设计,\r\n网页前端后端设计,\r\n手机网页Ａpp设计,\r\n淘宝详情页面设计,\r\n海报宣传画册设计', 0, 1),
(9, 4, '93ＡＰＰ开发服务', 'http://www.jonnycms.com/static/upload/107fe34796673fe3/99e7b3367ad617f3.png', 'IOS/安卓app定制开发,\r\n网页轻应用生成APP,\r\nAPP页面定制设计服务,\r\n易企秀H5网页制作,\r\n个性定制解决方案', 0, 1),
(10, 4, '93企业增值服务', 'http://www.jonnycms.com/static/upload/fbed5aabaa1af780/67a125b3d363c92d.png', 'SEO网站排名优化,\r\n企点企业营销QQ办理,\r\n400电话移动座机,\r\n云服务器/云主机,\r\n域名企邮注册管理', 0, 1),
(17, 1, '基础运维', 'http://www.jonnycms.com/static/theme/default/img/image.png', '数据迁移、网站设置、软件安装，故障排查、众多运维服务您来选', 0, 1),
(11, 2, '免网站制作费', 'http://www.jonnycms.com/static/upload/29c3f2103577e488/668f7f47594670f2.png', '只收空间域名取成本价', 0, 1),
(12, 2, '快速建站', 'http://www.jonnycms.com/static/upload/b875a58d0ae99415/bda3027e750bfac6.png', '打破传统网站制作工时<br /> 网站制作最快只需1天', 0, 1),
(13, 2, '多合一终端使用', 'http://www.jonnycms.com/static/upload/459bfa5d837ae826/9fc2f795021f8557.png', '多合一终端使用<br />完美响应展示。', 0, 1),
(14, 2, '大数据', 'http://www.jonnycms.com/static/upload/bf7e483e2f131a36/384dcbf1c379097c.png', '主流设计风格，极致交互体验，<br /> 提升品牌价值', 0, 1),
(15, 2, '高端设计', 'http://www.jonnycms.com/static/upload/c4ac88cc1dce8ab8/ffd9aca825f9a28e.png', '主流设计风格，极致交互体验，<br />  提升品牌价值', 0, 1),
(16, 2, '安全稳定', 'http://www.jonnycms.com/static/upload/03dded6f38038bd8/5e4353767af5b274.png', '平台运行于阿里云计算中心<br />多备份容灾保障，安全稳定 ', 0, 1),
(18, 1, '企业部署', 'http://www.jonnycms.com/static/theme/default/img/image.png', '专业工程师帮您部署企业高性能、高可用解决方案', 0, 1),
(19, 1, '安全防护', 'http://www.jonnycms.com/static/theme/default/img/image.png', '  安全联盟护您的企业扬帆起航', 0, 1),
(20, 1, '开发设计', 'http://www.jonnycms.com/static/theme/default/img/image.png', ' 网站设计、软件开发、平面设计、名片海报设计等', 0, 1),
(21, 1, '推广营销', 'http://www.jonnycms.com/static/theme/default/img/image.png', ' 名家高手为您定制网站和企业品牌推广方案', 0, 1),
(22, 1, '更多服务', 'http://www.jonnycms.com/static/theme/default/img/image.png', '更多服务，敬请期待……93网', 0, 1),
(23, 5, '阿里云', 'http://www.jonnycms.com/static/upload/7bb26f8e48a439ff/25ca4ed710fb2072.png', '', 1497408929, 1),
(24, 5, '驻云', 'http://www.jonnycms.com/static/upload/e96400029e966abb/1a8d9eda035c7210.png', '', 1497408956, 1),
(25, 5, '麦田设计', 'http://www.jonnycms.com/static/upload/f33a743f8a4a4c7d/740361c3b9fc5b47.png', '', 1497408975, 1),
(26, 5, '博艺通展览', 'http://www.jonnycms.com/static/upload/4418cab4af66a869/7e832d17fdd6bf37.png', '', 1497408988, 1),
(27, 5, '高斌钟表', 'http://www.jonnycms.com/static/upload/cbeef4f65d14aae5/62e54a47b823c105.png', '', 1497409007, 1),
(28, 1, '高端响应式网站定制', 'http://www.jonnycms.com/static/upload/c5c4d1bebcff3689/b93b9cb6fe0026b4.png', '完美响应各种设备,\r\n高端网站视觉设计,\r\n精湛交互动画体验,\r\n运行稳定安全可靠,\r\n实力定制功能研发\r\n           ', 1497413329, 1),
(29, 1, '响应式电商网站方案', 'http://www.jonnycms.com/static/upload/40a0d00c458edc6e/bb5463f1486316aa.png', '独立自主商城品牌,\r\n跨屏完美购物体验,\r\n微信全面无缝对接,\r\n商城互动营销方案,\r\n手机商城APP整合', 1497413378, 1),
(30, 1, '微信深度定制开发', 'http://www.jonnycms.com/static/upload/4a6242cd55adff58/ad3e23586aa4e4b4.png', '微信深度定制开发,\r\nH5互动解决方案,\r\n微信营销解决方案,\r\n个性定制解决方案', 1497413413, 1),
(31, 1, '网站运营服务1', 'http://www.jonnycms.com/static/upload/a728c0733bc0c932/41134629935f6e6e.png', '设计运维托管服务,\r\nSEO推广优化服务,\r\nSMO互动营销策划,\r\n微信公众平台运营', 1497413446, 1),
(32, 6, '需求沟通', 'http://www.jonnycms.com/static/upload/a6cd3b5e866a5f1e/89dceea7ff5f4b32.png', '倾听客户需求，了解用户使用环境和操作流程', 1497430114, 1),
(33, 6, '项目策划', 'http://www.jonnycms.com/static/upload/fb43c31bbbaec17f/5b90bf000161f65a.png', '头脑风景交互情景模拟原型设计', 1497430161, 1),
(34, 6, '交互设计', 'http://www.jonnycms.com/static/upload/df6d5964e0cac410/cedda2ee16b31121.png', '从用户的角度思考，模拟用户行为', 1497430193, 1),
(35, 6, '视觉创意', 'http://www.jonnycms.com/static/upload/3d44572ac184fd44/41f9747e3bf88f5f.png', '色彩及平面元素设定，结构和布局规范确认', 1497430245, 1),
(36, 6, '前端制作', 'http://www.jonnycms.com/static/upload/b3e7d0a9fccf7413/d718e034309d8e57.png', 'HTML5、CSS3、JS实现页面的动态展示', 1497430274, 1),
(37, 6, '技术开发', 'http://www.jonnycms.com/static/upload/78012108f900b363/026b4cb8265dc824.png', '移动应用数据对接与开发', 1497430310, 1),
(38, 6, '测试反馈', 'http://www.jonnycms.com/static/upload/cf43c6d4af325fb9/df89cca636c2fb26.png', '修改调整，规范完善', 1497430343, 1),
(39, 7, '市场优势', 'http://www.jonnycms.com/static/upload/ea70c2a4c969ade2/a07bb75c858877b1.png', '解决网建市场刚需，顺应时代发展走势', 1497501685, 1),
(40, 7, '界面优势', 'http://www.jonnycms.com/static/upload/867ed1750bb58ac3/3c171aca3235ac38.png', '多界面前沿设计版本持续更新', 1497501762, 1),
(41, 7, '产品优势', 'http://www.jonnycms.com/static/upload/64329928c8d58b8a/93da2c39bc54aded.png', '高大上的完美用户体验', 1497501806, 1),
(42, 7, '客户优势', 'http://www.jonnycms.com/static/upload/d08f23681214ed3b/3941c25ff838653d.png', '品牌提升、企业转型升级提供最佳推广环境', 1497501838, 1),
(43, 7, '市场前景', 'http://www.jonnycms.com/static/upload/ad093e9b1a08b4a1/9bb6c84e8a8d8553.png', '拥有核心响应式技术，破解碎片化市场局势坐拥千亿市场', 1497501879, 1),
(44, 7, '竞争优势', 'http://www.jonnycms.com/static/upload/dbf40d0cb34ec14a/3217c980df967e90.png', '智能响应式建站+全网整合营销+开放生态圈+行业解决方案', 1497501910, 1),
(45, 7, '配套优势', 'http://www.jonnycms.com/static/upload/b3818dd618b6abd0/bf4e6037a2c352ab.png', '设备自主研发，配套自成体系满足用户各种需求', 1497501942, 1),
(46, 7, '战略优势', 'http://www.jonnycms.com/static/upload/97d50fc547e581aa/d674601bf4f4689c.png', '整合优质企业服务商，引入和开发更多切实解决企业需求的应用', 1497501967, 1),
(47, 8, '快速建站', 'http://www.jonnycms.com/static/theme/default/img/image.png', '业内领先的智能模块建站方案，能帮助企业低成本快速建站，为企业提供了多元、高效建站服务', 1497502037, 1),
(48, 8, '营销平台', 'http://www.jonnycms.com/static/theme/default/img/image.png', '融合当今主流的各种的互联网营销工具，结合响应式网站窗口优势，达到高效引流、精准转化的效果', 1497502064, 1),
(49, 8, '开放平台', 'http://www.jonnycms.com/static/theme/default/img/image.png', '整合优质企业服务商，引入和开发更多切实解决企业需求的应用，满足企业各个阶段不同的功能需求', 1497502084, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_aboutus_cate`
--

DROP TABLE IF EXISTS `cms_aboutus_cate`;
CREATE TABLE `cms_aboutus_cate` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_aboutus_cate`
--

INSERT INTO `cms_aboutus_cate` (`id`, `pid`, `name`, `create_at`, `status`) VALUES
(1, 0, '集团介绍', 0, 1),
(2, 0, '公司介绍', 0, 1),
(3, 0, '创始人', 0, 1),
(4, 0, '管理团队', 0, 1),
(5, 0, '大记事', 0, 1),
(6, 0, '联系我们', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_aboutus_doc`
--

DROP TABLE IF EXISTS `cms_aboutus_doc`;
CREATE TABLE `cms_aboutus_doc` (
  `id` int(11) NOT NULL,
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
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_agent`
--

CREATE TABLE `cms_agent` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `agent_name` varchar(255) NOT NULL DEFAULT '' COMMENT '代理名称',
  `person` varchar(50) NOT NULL DEFAULT '' COMMENT '法人',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '代理组织机构代码',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '代理地址',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '代理网址',
  `area` varchar(100) NOT NULL DEFAULT '' COMMENT '代理区域',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '公司营业执照',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `more` text COMMENT '扩展属性',
  `pid` int(10) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT '法人手机',
  `agentname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `login_num` bigint(20) UNSIGNED DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='代理公司表';

--
-- Dumping data for table `cms_agent`
--

INSERT INTO `cms_agent` (`id`, `status`, `create_at`, `update_at`, `agent_name`, `person`, `code`, `address`, `url`, `area`, `image`, `remark`, `more`, `pid`, `phone`, `agentname`, `password`, `login_num`, `login_at`) VALUES
(101,1,1529370965,0,'湖州方瓯大数据科技有限公司','金方瓯','','','','湖州','','',NULL,0,'','hzfo','123456',0,NULL),
(102,1,1529370965,0,'湖州何萍网络科技有限公司','何萍','','','','湖州','','',NULL,0,'','hzhp','123456',0,NULL),
(103,1,1529370965,0,'湖州敏艺掌尚网络科技有限公司','徐敏','','','','湖州','','',NULL,0,'','hzmy','123456',0,NULL),
(104,1,1529370965,0,'湖州娟芳掌尚网络科技有限公司','顾建芬','','','','湖州','','',NULL,0,'','hzjf','123456',0,NULL),
(105,1,1529370965,0,'湖州唐虹网络科技有限公司','唐国萍','','','','湖州','','',NULL,0,'','hzth','123456',0,NULL),
(106,1,1529370965,0,'庆元沸达洲电子商务有限公司','陈孟忠','','','','庆元','','',NULL,0,'','qyfdz','123456',0,NULL),
(107,1,1529370965,0,'庆元伟嘉掌尚网络科技有限公司','吴立娟','','','','庆元','','',NULL,0,'','qywj','123456',0,NULL),
(108,1,1529370965,0,'绍兴沸腾电子商务有限公司','李小红','','','','绍兴','','',NULL,0,'','sxft','123456',0,NULL),
(109,1,1529370965,0,'湖州市沸一洲网络科技有限公司','陈凤美','','','','湖州','','',NULL,0,'','hzfyz','123456',0,NULL),
(110,1,1529370965,0,'蚌埠有佳沸达洲网络科技有限公司','郭辰鑫','','','','蚌埠','','',NULL,0,'','bbyj','123456',0,NULL),
(111,1,1529370965,0,'蚌埠鑫达洲网络科技有限公司','郭传喜','','','','蚌埠','','',NULL,0,'','bbxdz','123456',0,NULL),
(112,1,1529370965,0,'兰溪沸达洲电子商务有限公司','陈银仙','','','','兰溪','','',NULL,0,'','lxfdz','123456',0,NULL),
(113,1,1529370965,0,'永康市沸中电子商务有限公司','胡玉琴','','','','永康','','',NULL,0,'','ykfz','123456',0,NULL),
(114,1,1529370965,0,'永康市沸达洲电子商务有限公司','俞丽君','','','','永康','','',NULL,0,'','ykfdz','123456',0,NULL),
(115,1,1529370965,0,'永康市沸鼎电子商务有限公司','程英姿','','','','永康','','',NULL,0,'','ykfd','123456',0,NULL),
(116,1,1529370965,0,'永康市沸久电子商务有限公司','郑梦江','','','','永康','','',NULL,0,'','ykfj','123456',0,NULL),
(117,1,1529370965,0,'永康市沸乐电子商务有限公司','童丽红','','','','永康','','',NULL,0,'','ykfl','123456',0,NULL),
(118,1,1529370965,0,'永康市沸球电子商务有限公司','成菊平','','','','永康','','',NULL,0,'','ykfq','123456',0,NULL),
(119,1,1529370965,0,'永康市嘉诚软件开发有限公司','童海浪','','','','永康','','',NULL,0,'','ykjc','123456',0,NULL),
(120,1,1529370965,0,'上海前祥网络科技有限公司','徐晨红','','','','上海','','',NULL,0,'','shqx','123456',0,NULL),
(121,1,1529370965,0,'杭州墩辉网络科技有限公司','马德芳','','','','杭州','','',NULL,0,'','hzdh','123456',0,NULL),
(122,1,1529370965,0,'桐乡市尚酷网络科技有限公司','郁高建','','','','桐乡','','',NULL,0,'','txsk','123456',0,NULL),
(123,1,1529370965,0,'桐乡市同益网络科技有限公司','郁高建','','','','桐乡','','',NULL,0,'','txty','123456',0,NULL),
(124,1,1529370965,0,'湖州沸乐电子商务有限公司','陆玥','','','','湖州','','',NULL,0,'','hzfl','123456',0,NULL),
(125,1,1529370965,0,'湖州讯达网络科技有限公司','陆玥','','','','湖州','','',NULL,0,'','hzxd','123456',0,NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_article`
--

CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL,
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
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_article`
--

INSERT INTO `cms_article` (`id`, `cate_id`, `title`, `image`, `brief`, `url`, `content`, `seo_title`, `seo_keywords`, `seo_description`, `create_at`, `update_at`, `status`) VALUES
(1, 1, '企业网站应该多长时间备份一次？', 'http://www.jonnycms.com/static/upload/85840294e0d5ee44/e9c225cfbfcfc91e.png', '企业网站应该多长时间备份一次？', 'www.93sucai.com', '<p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/59bef994bee29e44/c971ae5098ef9a35.png\"/></p><p style=\"text-align:center\"></p><p>随着移动互联网的普及，信息的生产和传递速度完全突破了时间和空间限制。每天涌入的大量信息让人们应接不暇，而新闻媒体作为一个帮助人们看世界的窗口，担任了帮助人们进行初步信息筛选，内容优化的重要职责，人们对于新闻类应用的依赖性也越来越高。沿用着物理世界中阅读时与书籍、杂志、文章的交互形式，为用户营造更熟悉自然的阅读体验，优雅的，能较好的突出阅读内容，页面干扰较少，让访问者能快速聚焦。</p><p>所以，只有站在受众角度，将个性化、精选的内容送达用户，精准匹配、促进互动，进而形成自有势能。</p><h2>1、突出作者</h2><p>「人」和人之间最容易产生共鸣，「人」比物更具备血肉和情感，把一款产品的定位和出发点放在「人」这个视角，会更有生命感和存在感。如果一名记者，抑或是一个百姓，其阅历足够便能传递思想，产生炸裂的大脑回路。当一条新闻传达出来的感觉是被人发现，与人分享，找到共性，从本能上就会从一种社交的思路，破冰儿而读。</p><p>如果一个媒体记者或者热心用户能从共鸣和同理性这个角度去报道新闻，Po出视频片段，从某种意义上讲就拉近了读者与作者之间的距离。另外一方面，从众心理学中能看到一种现象，当你关注的人对某类事件感兴趣，或者你关注的人表达某观点后，你会自然而然的去关心和阅读。这就减轻了文字推送后不被用户打开的尴尬。内容的更新有一个固定的时间点，固定的角度和标签，有助于培养用户使用习惯，也确实满足了部分人的需求。</p><p>随着媒体的不断发展，新闻客户端的内容会越来越多，在有限的时间内，用户越来越向专业、权威的传播平台聚拢，迎合用户习惯后将会聚集了大量粉丝和流量。</p><p>参考模型图如下：</p><p style=\"text-align: right;\"><img src=\"http://www.jonnycms.com/static/upload/169e0d3581a68c5e/1b2ac5a2dc6fbe61.png\"/></p><p style=\"text-align:center\"></p><h2>2、突出内容</h2><p>信息爆炸时代，信息过剩严重，资讯内容标题党、同质化、浅薄化等问题日益凸显;而资讯荒流之下，用户却信息饥荒，有价值、高质量内容较少。</p><p>对于具有独家内容源的产品，突出内容本身，一定是最具竞争力的切入点。大胆的展示自己的优势，快速获得优质内容仍是重点方向，内容为王时代，得到内容优势将提升平台变现能力，独家内容源是平台的着力点。当直播新闻内容生产技术普及化的过程中，PGC+UGC能够提供丰富的优质内容&nbsp;。只有如此高频率大范围地发现、调整、细分、共鸣、吸引。</p><p>参考模型图如下：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/7c37cccdddadc0af/30b966370477de93.png\"/></p><p style=\"text-align:center\"></p><h2>3、突出互动</h2><p>新闻客户端的评论质量很重要，评论相对于对新闻内容而言，是二次创造的过程，这是容易产生优质内容的地方。对评论和讨论的阅读反而是一种享受，扩大了见识，同时通过观察对同一事件人们的不同反应让人能看到不同地方人们的不同思维方式。</p><p>互动式的新闻客户端，小Q推荐网易，网易潜伏着一大批回帖粉丝，且回帖质量较高。从界面的右上角醒目的跟帖按钮可见网易新闻对跟帖评论功能的重视与强化。而经典的网友跟帖评论，机智幽默的评论给用户提供了互动的乐趣，体现了网易的产品定位“有态度的新闻门户”。另外，网易新闻是四款应用中唯一有语音评论功能的应用，凭借网易大门户优势，能够实用旗下各款产品的功能进行互补增强和连接产品。</p><p>如图所示：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/d61b1768b373aeac/7259fe5dce8b4141.png\"/></p><p style=\"text-align:center\"></p><p>互动类的新闻详情页，一般会推送某些比较好，或者关注度较高的内容，通过阅读过程，不打扰的方式送达到用户面前。有的时候你会发现，网友的评论会比新闻本身更加有趣。互动类的阅读内容更像是个性化阅读产品。通常情况下，跟贴能够增强你的快乐，也会看到自己的影子，在简单的新闻背后加强内心感受。</p><p>因为有了自媒体的出现，所以用户可以创造新闻，那么互动过程就变成了人 —— 新闻 —— 人的参与。澎湃App，注重用户评论和问答UGC，中国第一个新闻问答产品。并基于评论和问答进行延伸式新闻，以互联网思维寻创新。</p><p>参考模型图如下：</p><p style=\"text-align: center;\"><img src=\"http://www.jonnycms.com/static/upload/456131a102a4b072/d794d5c849e070a7.png\"/></p><p style=\"text-align:center\"></p><h2>4、小Q来总结</h2><p>新媒体的使用常态是：资讯信息和娱乐内容获取、自我表达、参与互动等更多元化、个性化、碎片化 。对于用户体验的大军 90 后群体，特别是尚未形成下载新闻资讯APP习惯的 95 后一代，是移动资讯规模未来发展的新动力。</p><p>作者：Mandy权，微信公众号：PMandyQ，一名快乐的产品经理!</p><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(2, 1, '如何选择网站关键词', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">如何选择网站关键词</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(3, 1, '企业建站选择主机和产品服务遇到的问题', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">企业建站选择主机和产品服务遇到的问题</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(4, 1, '企业用网站进行网络宣传的优势', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">企业用网站进行网络宣传的优势</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(5, 1, '什么是伪静态？伪静态有何作用?哪种好？', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">什么是伪静态？伪静态有何作用?哪种好？</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(6, 3, '东莞家具出走湖北？家具业尝试高端规划集聚', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">东莞家具出走湖北？家具业尝试高端规划集聚</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(7, 3, '改良与创新', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">改良与创新</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(8, 3, '如何充分发挥SEO功能', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">如何充分发挥SEO功能</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(9, 3, 'SEO怎么加快文章的收录速度', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">SEO怎么加快文章的收录速度</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(10, 3, 'SEO快速排名算法', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">SEO快速排名算法</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(11, 2, '新媒体编辑一定要知道的55个常用术语', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">新媒体编辑一定要知道的55个常用术语</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(12, 2, '这里有个banner的设计方法，不知当讲不当讲！', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">这里有个banner的设计方法，不知当讲不当讲！</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(13, 2, '解密黑帽SEO蜘蛛池 实现搜索引擎霸屏', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">解密黑帽SEO蜘蛛池&nbsp;实现搜索引擎霸屏</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(14, 2, '怎样引导社区的评论氛围', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">怎样引导社区的评论氛围</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(15, 2, '谷歌发布Android系统年度安全报告，一半的设备一年都没收到安', '', '', '', '<pre style=\"font-family: 宋体; font-size: 9pt; background-color: rgb(255, 255, 255);\">谷歌发布Android系统年度安全报告，一半的设备一年都没收到安</pre><p><br/></p>', NULL, NULL, NULL, 1497407057, NULL, 1),
(16, 1, 'dsads', '', '', '', '<p>dsada</p>', NULL, NULL, NULL, 1497407057, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_article_cate`
--

CREATE TABLE `cms_article_cate` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '文章分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_article_cate`
--

INSERT INTO `cms_article_cate` (`id`, `pid`, `name`, `create_at`, `status`) VALUES
(1, 0, '企业动态', 0, 1),
(2, 0, '行业资讯', 0, 1),
(10, 0, '体育新闻', 1529338022, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_case`
--

CREATE TABLE `cms_case` (
  `id` int(11) NOT NULL,
  `cate_id` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '案例名称',
  `logo` varchar(128) NOT NULL COMMENT '案例logo',
  `url` varchar(32) NOT NULL COMMENT '案例地址',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `create_at` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_case`
--

INSERT INTO `cms_case` (`id`, `cate_id`, `name`, `logo`, `url`, `brief`, `create_at`, `status`) VALUES
(1, 1, '93网络网络建站网站案例：潮连旅游网', 'http://www.jonnycms.com/static/upload/c5164b8af10868b0/8a7f8a836427abef.png', '#', '这是一个简介这是一个简介这是一个简介这是一个简介', 0, 1),
(2, 1, '探长网络网络建站网站案例：东泉展览官网', 'http://www.jonnycms.com/static/upload/5a139c55c7b874dc/b19ac7113b9e8dec.png', '#', '这是一个简介', 1497432757, 1),
(3, 1, '探长网络网络建站网站案例：佰亮照明', 'http://www.jonnycms.com/static/upload/432d788ea8809bce/125f145e92f8241a.png', '#', '这是一个简介', 1497432777, 1),
(4, 1, '探长网络网络建站网站案例：如艺照明', 'http://www.jonnycms.com/static/upload/a26cd181e75d6978/a09fda103bda3a33.png', '#', '这是一个简介', 1497432796, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_case_cate`
--

CREATE TABLE `cms_case_cate` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `status` tinyint(4) DEFAULT '1',
  `create_at` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_case_cate`
--

INSERT INTO `cms_case_cate` (`id`, `name`, `status`, `create_at`) VALUES
(1, '品牌展示型官网', 1, NULL),
(2, '五合一网站案例', 1, NULL),
(4, '电子商城购物网站', 1, 1497488693),
(5, '博客 论坛 个人网站', 1, 1497488706),
(6, '平面设计类作品', 1, 1497488720);

-- --------------------------------------------------------

--
-- Table structure for table `cms_contact`
--

CREATE TABLE `cms_contact` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_contact`
--

INSERT INTO `cms_contact` (`id`, `name`, `value`, `create_at`) VALUES
(101, 'site_name', 'Think.Admin Demo', NULL),
(102, 'site_copy', '浙江弗达洲电子商务有限公司 © 2014~2017', NULL),
(209, 'company_address', '深圳市龙华新区共和花园', NULL),
(210, 'company_phone', '020-076412', NULL),
(211, 'company_fixed_line', '15820452360', NULL),
(212, 'company_qq', '980218641', NULL),
(213, 'company_url', 'wwww.93sucai.com', NULL),
(214, 'company_email', '980218641@qq.com', NULL),
(215, 'company_headquarters', '93网站建设', NULL),
(216, 'company_head', 'jonny', NULL),
(217, 'company_head_mobile', '15820452360', 1497498198),
(218, 'company_head_mobile', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_joinus`
--

CREATE TABLE `cms_joinus` (
  `id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `describ` text COMMENT '描述',
  `require` text COMMENT '需求',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_link`
--

CREATE TABLE `cms_link` (
  `id` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL COMMENT '网站名称',
  `url` varchar(64) DEFAULT NULL COMMENT 'url地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_link`
--

INSERT INTO `cms_link` (`id`, `title`, `url`, `create_at`, `status`) VALUES
(1, '93素材网', 'www.93sucai.com', NULL, 0),
(2, '友情链接1', '#', 1497408214, 0),
(3, '友情链接2', '#', 1497408223, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_nav`
--

CREATE TABLE `cms_nav` (
  `id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '导航名称',
  `controller_name` varchar(16) DEFAULT NULL COMMENT '控制器名称',
  `action_name` varchar(16) DEFAULT NULL COMMENT '方法名称',
  `pid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '父级id',
  `url` varchar(64) DEFAULT NULL COMMENT '跳转地址',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_nav`
--

INSERT INTO `cms_nav` (`id`, `title`, `controller_name`, `action_name`, `pid`, `url`, `sort`, `create_at`, `status`) VALUES
(9, '首页', 'Index', 'index', 0, 'http://127.0.0.1', NULL, 1497434121, 1),
(10, '服务与产品', 'Services', 'index', 0, 'http://www.jonnycms.com/service.html', NULL, 1497434134, 0),
(11, '新闻资讯', 'Article', 'index', 0, 'http://www.jonnycms.com/news.html', NULL, 1497434088, 0),
(12, '客户案例', 'Cases', 'index', 0, 'http://www.jonnycms.com/cases.html', NULL, 1497434108, 0),
(13, '关于我们', 'About', 'index', 0, 'http://www.jonnycms.com/about.html', NULL, 1497434151, 0),
(14, '联系我们', 'Contact', 'index', 0, 'http://www.jonnycms.com/contact.html', NULL, 1497434163, 0),
(123, '新的加盟', 'Franchisee', 'index', 0, 'http://127.0.0.1/franchisee.html', NULL, 1529390243, 1),
(124, '加盟信息', 'Fllzinfo', 'index', 0, 'http://127.0.0.1/fllzinfo.html', NULL, 1529397076, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pruduct`
--

CREATE TABLE `cms_pruduct` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL COMMENT '产品分类',
  `cate` varchar(32) NOT NULL COMMENT '分类名称',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `image` varchar(128) DEFAULT NULL COMMENT '封面',
  `brief` varchar(255) DEFAULT NULL COMMENT '简介',
  `url` varchar(32) DEFAULT NULL COMMENT '演示地址',
  `content` text NOT NULL COMMENT '文章内容',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pruduct_cate`
--

CREATE TABLE `cms_pruduct_cate` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL COMMENT '分类名称',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cms_shares`
--

CREATE TABLE `cms_shares` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户id',
  `tid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '类型id',
  `aid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '代理id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `more` text COMMENT '扩展属性',
  `infomark` varchar(255) NOT NULL DEFAULT '' COMMENT '信息记录',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='股票表';

--
-- Dumping data for table `cms_shares`
--

INSERT INTO `cms_shares` (`id`, `pid`, `tid`,`aid`, `status`, `create_at`, `update_at`, `remark`, `more`, `infomark`, `create_time`, `update_time`) VALUES
(101,101,1,101,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(102,102,1,102,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(103,103,1,102,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(104,104,1,102,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(105,105,1,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(106,106,1,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(107,107,3,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(108,108,2,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(109,109,3,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(110,104,1,103,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(111,110,1,104,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(112,111,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(113,112,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(114,113,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(115,114,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(116,115,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(117,116,2,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(118,117,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(119,118,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(120,119,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(121,120,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(122,121,1,105,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(123,122,3,106,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(124,123,3,106,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(125,124,1,106,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(126,125,3,106,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(127,126,1,107,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(128,127,1,107,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(129,128,1,107,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(130,129,1,107,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(131,130,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(132,131,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(133,132,2,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(134,133,3,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(135,134,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(136,135,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(137,136,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(138,137,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(139,138,1,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(140,139,2,108,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(141,140,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(142,141,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(143,142,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(144,143,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(145,144,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(146,145,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(147,146,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(148,147,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(149,148,1,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(150,149,3,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(151,150,3,109,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(152,151,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(153,152,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(154,153,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(155,154,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(156,155,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(157,156,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(158,156,1,110,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(159,157,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(160,158,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(161,159,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(162,160,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(163,161,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(164,162,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(165,156,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(166,156,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(167,156,1,111,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(168,163,1,112,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(169,164,1,112,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(170,165,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(171,166,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(172,167,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(173,168,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(174,169,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(175,170,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(176,171,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(177,172,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(178,173,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(179,174,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(180,175,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(181,176,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(182,177,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(183,178,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(184,179,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(185,180,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(186,181,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(187,182,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(188,183,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(189,184,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(190,185,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(191,186,1,113,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(192,187,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(193,188,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(194,189,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(195,190,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(196,191,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(197,192,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(198,193,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(199,194,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(200,195,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(201,196,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(202,197,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(203,198,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(204,199,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(205,200,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(206,201,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(207,202,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(208,187,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(209,203,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(210,204,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(211,205,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(212,206,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(213,207,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(214,208,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(215,209,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(216,210,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(217,211,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(218,212,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(219,213,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(220,214,1,114,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(221,215,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(222,216,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(223,217,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(224,218,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(225,219,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(226,220,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(227,221,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(228,222,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(229,223,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(230,224,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(231,225,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(232,226,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(233,227,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(234,228,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(235,229,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(236,230,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(237,231,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(238,232,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(239,233,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(240,234,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(241,235,3,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(242,236,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(243,237,1,115,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(244,238,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(245,239,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(246,240,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(247,241,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(248,242,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(249,243,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(250,244,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(251,245,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(252,246,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(253,247,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(254,248,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(255,249,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(256,250,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(257,251,1,116,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(258,252,1,117,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(259,253,1,117,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(260,254,1,117,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(261,255,1,117,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(262,256,1,117,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(263,257,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(264,258,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(265,259,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(266,260,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(267,261,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(268,262,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(269,263,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(270,264,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(271,265,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(272,266,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(273,267,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(274,268,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(275,269,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(276,270,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(277,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(278,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(279,269,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(280,272,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(281,273,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(282,274,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(283,275,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(284,276,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(285,277,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(286,278,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(287,279,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(288,280,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(289,281,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(290,282,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(291,270,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(292,283,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(293,263,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(294,276,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(295,284,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(296,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(297,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(298,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(299,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(300,285,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(301,286,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(302,261,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(303,261,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(304,287,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(305,271,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(306,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(307,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(308,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(309,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(310,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(311,288,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(312,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(313,289,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(314,290,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(315,291,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(316,292,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(317,293,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(318,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(319,294,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(320,295,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(321,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(322,297,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(323,298,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(324,299,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(325,300,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(326,301,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(327,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(328,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(329,302,2,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(330,303,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(331,304,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(332,305,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(333,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(334,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(335,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(336,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(337,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(338,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(339,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(340,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(341,288,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(342,306,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(343,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(344,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(345,307,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(346,296,1,119,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(347,308,1,120,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(348,309,1,120,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(349,310,1,120,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(350,311,1,121,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(351,312,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(352,313,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(353,314,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(354,315,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(355,316,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(356,317,1,122,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(357,318,1,123,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(358,319,1,123,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(359,320,1,123,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(360,321,1,123,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(361,322,1,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(362,323,1,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(363,324,1,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(364,325,3,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(365,326,1,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(366,327,1,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(367,328,2,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(368,329,3,124,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(369,330,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(370,331,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(371,332,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(372,333,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(373,334,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(374,335,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(375,336,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(376,337,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(377,338,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(378,339,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(379,340,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(380,341,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(381,342,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(382,343,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(383,344,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(384,345,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(385,346,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(386,347,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(387,348,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(388,349,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(389,350,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(390,351,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(391,352,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(392,353,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(393,354,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(394,355,1,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(395,356,3,125,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00'),
(396,357,1,118,1,1527782400,1527782400,'import',NULL,'import','2018-06-08 00:00:00','2018-06-08 00:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `cms_shares_cate`
--

CREATE TABLE `cms_shares_cate` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `type_name` varchar(32) NOT NULL COMMENT '分类名称',
  `money` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '套餐固定金额',
  `shares` int(8) NOT NULL DEFAULT '0' COMMENT '套餐固定股票',
  `create_at` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_shares_cate`
--

INSERT INTO `cms_shares_cate` (`id`, `pid`, `type_name`, `money`, `shares`, `create_at`, `status`, `update_at`) VALUES
(1, 0, '1-沸达州内购18W', '180000.00', 28888, 1527782400, 1, 0),
(2, 0, '2-沸达州内购12W', '120000.00', 16888, 1527782400, 1, 0),
(3, 0, '3-沸达州内购6W', '60000.00', 6888, 1527782400, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_shuff`
--

CREATE TABLE `cms_shuff` (
  `id` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `type` char(4) DEFAULT 'text' COMMENT '轮播类型',
  `textcontent` varchar(64) DEFAULT NULL COMMENT '文本内容',
  `image` varchar(100) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL COMMENT '跳转地址',
  `create_at` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_shuff`
--

INSERT INTO `cms_shuff` (`id`, `title`, `type`, `textcontent`, `image`, `url`, `create_at`, `status`) VALUES
(1, '轮播图1', 'imag', NULL, 'http://www.jonnycms.com/static/upload/85840294e0d5ee44/e9c225cfbfcfc91e.png', '#', NULL, 1),
(2, '打破传统-企业免网站制作费', 'text', '找jonny做网站价格比淘宝优惠，价格比外包低', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', NULL, 1),
(3, '全能五合一响应式网站', 'text', '一个网站就能自动适应PC端+平板端+手机端+安卓/苹果APP+微信使用', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', NULL, 1),
(4, '为企业所想 满足企业需求', 'text', '升级以您的需求为导向,提升以您的价值为目标', 'http://www.jonnycms.com/static/theme/default/img/image.png', '#', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_type`
--

CREATE TABLE `cms_type` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `create_at` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_type`
--

INSERT INTO `cms_type` (`id`, `name`, `create_at`) VALUES
(1, '服务', NULL),
(2, '优势', NULL),
(3, '功能', NULL),
(4, '产品', NULL),
(5, '合作伙伴', 1497408877),
(6, '流程', 1497430017),
(7, '市场优势', 1497501614),
(8, '平台', 1497502019);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `create_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓',
  `first_name` varchar(255) NOT NULL DEFAULT '' COMMENT '名',
  `last_name_py` varchar(255) NOT NULL DEFAULT '' COMMENT '姓py',
  `first_name_py` varchar(255) NOT NULL DEFAULT '' COMMENT '名py',
  `code` varchar(30) NOT NULL DEFAULT '' COMMENT '身份证',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地址',
  `address_py` varchar(255) NOT NULL DEFAULT '' COMMENT '地址py',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `more` text COMMENT '扩展属性',
  `bankinfo` varchar(255) NOT NULL DEFAULT '' COMMENT '银行信息',
  `banknum` varchar(30) NOT NULL DEFAULT '' COMMENT '银行账户',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `status`, `create_at`, `update_at`, `last_name`, `first_name`,`last_name_py`,`first_name_py`, `code`, `address`,`address_py`, `phone`, `email`, `url`, `remark`, `more`, `bankinfo`, `banknum`, `username`, `password`) VALUES
(101,1,1529881544,0,'金','方瓯','JIN','FANG OU','330501198904023018','浙江省湖州市南浔区南浔镇南东街73号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU NAN XUN ZHEN NAN DONG JIE 73 HAO','','','','',NULL,'中国建设银行南浔泰安路支行','6217001440005363172','jinfangou',''),
(102,1,1529881544,0,'李','寿光','LI','SHOU GUANG','370728196912301419','山东省诸城市舜王街道李家箭口村13号','SHAN DONG SHENG ZHU CHENG SHI SHUN WANG JIE DAO LI JIA JIAN KOU CUN 13 HAO','','','','',NULL,'中国农业银行湖州德清武康支行','6228480359039746375','lishouguang',''),
(103,1,1529881544,0,'冯','金妹','FENG','JIN MEI','330502196401072026','浙江省湖州市吴兴区凤凰街道垄山小区64幢-2号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO LONG SHAN XIAO QU 64 ZHUANG -2 HAO','','','','',NULL,'中国建设银行湖州府庙支行','4340611440043789','fengjinmei',''),
(104,1,1529881544,0,'何','萍','HE','PING','330521198003235828','浙江省湖州市吴兴区月河街道港北村37号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO GANG BEI CUN 37 HAO','','','','',NULL,'中国建设银行湖州湖东支行','4340611440197866','heping',''),
(105,1,1529881544,0,'张','惠萍','ZHANG','HUI PING','330521196811032325','浙江省德清县武康镇下柏村下塘桥14号','ZHE JIANG SHENG DE QING XIAN WU KANG ZHEN XIA BAI CUN XIA TANG QIAO 14 HAO','','','','',NULL,'农村信用社武康支行','6228580599015370646','zhanghuiping',''),
(106,1,1529881544,0,'毛','立衔','MAO','LI XIAN','330623196411157290','浙江省湖州市吴兴区环渚乡常溪村杨树大16号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU HUAN ZHU XIANG CHANG XI CUN YANG SHU DA 16 HAO','','','','',NULL,'中国工商银行湖州潮音桥支行','6222081205000639774','maolixian',''),
(107,1,1529881544,0,'刘','雪英','LIU','XUE YING','362131198001135426','江西省赣州市宁都县黄陂镇圩镇1号','JIANG XI SHENG GAN ZHOU SHI NING DU XIAN HUANG PI ZHEN XU ZHEN 1 HAO','','','','',NULL,'中国工商银行湖州八里店支行','6217231205002029809','liuxueying',''),
(108,1,1529881544,0,'曹','继丽','CAO','JI LI','342423197707177888','安徽省霍邱县三流乡双塔村前进组','AN HUI SHENG HUO QIU XIAN SAN LIU XIANG SHUANG TA CUN QIAN JIN ZU','','','','',NULL,'中国工商银行湖州织里镇支行','6212261205001780422','caojili',''),
(109,1,1529881544,0,'陈','雪娇','CHEN','XUE JIAO','362529197306161524','浙江省湖州市吴兴区八里店镇移沿山村南潘田55号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU BA LI DIAN ZHEN YI YAN SHAN CUN NAN PAN TIAN 55 HAO','','','','',NULL,'中国工商银行湖州八里店支行','6217231205001278449','chenxuejiao',''),
(110,1,1529881544,0,'陈','沫君','CHEN','MO JUN','330501199611210885','浙江省湖州市吴兴区龙泉街道大东村东白鱼潭6号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU LONG QUAN JIE DAO DA DONG CUN DONG BAI YU TAN 6 HAO','','','','',NULL,'工行：湖州市陌路支行','6212261205003838947','chenmojun',''),
(111,1,1529881544,0,'王','峰','WANG','FENG','331088195906261559','江苏省江都市龙川北路世纪花园50幢201室','JIANG SU SHENG JIANG DU SHI LONG CHUAN BEI LU SHI JI HUA YUAN 50 ZHUANG 201 SHI','','','','',NULL,'建设银行扬州江都支行','6227001333070099897','wangfeng',''),
(112,1,1529881544,0,'唐','国萍','TANG','GUO PING','330511196411125247','浙江省湖州市吴兴区妙西镇妙西村青石桥35号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU MIAO XI ZHEN MIAO XI CUN QING SHI QIAO 35 HAO','','','','',NULL,'工商银行市陌路支行','6217231205000718262','tangguoping',''),
(113,1,1529881544,0,'徐','亮亮','XU','LIANG LIANG','330511196401125235','浙江省湖州市吴兴区妙西镇妙西村中街199号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU MIAO XI ZHEN MIAO XI CUN ZHONG JIE 199 HAO','','','','',NULL,'农业银行浅水湾支行','6228450358035777570','xuliangliang',''),
(114,1,1529881544,0,'毛','春美','MAO','CHUN MEI','362522197412254244','浙江省杭州市余杭区乔司街道华荣城4幢创业空间401','ZHE JIANG SHENG HANG ZHOU SHI YU HANG QU QIAO SI JIE DAO HUA RONG CHENG 4 ZHUANG CHUANG YE KONG JIAN 401','','','','',NULL,'工商银行杭州余杭支行','6222021202041466906','maochunmei',''),
(115,1,1529881544,0,'徐','相金','XU','XIANG JIN','32021919620613127X','江苏省江阴市夏港镇普惠苑18幢403室','JIANG SU SHENG JIANG YIN SHI XIA GANG ZHEN PU HUI YUAN 18 ZHUANG 403 SHI','','','','',NULL,'中国银行江阴虹桥支行','6216616102002514434','xuxiangjin',''),
(116,1,1529881544,0,'沈','华','SHEN','HUA','330502197112021411','浙江省湖州市道场乡道场浜村泉科47号','ZHE JIANG SHENG HU ZHOU SHI DAO CHANG XIANG DAO CHANG BANG CUN QUAN KE 47 HAO','','','','',NULL,'农业银行湖州城南支行','6228480358860405978','shenhua',''),
(117,1,1529881544,0,'杨','玉红','YANG','YU HONG','320926197901065805','江苏省盐城市大丰区丰中名邸5号楼302室','JIANG SU SHENG YAN CHENG SHI DA FENG QU FENG ZHONG MING DI 5 HAO LOU 302 SHI','','','','',NULL,'工商银行淮海路支行','6222081001027529027','yangyuhong',''),
(118,1,1529881544,0,'韩','李明','HAN','LI MING','330106195408060019','浙江省杭州市西湖区保俶北路82号1幢406室','ZHE JIANG SHENG HANG ZHOU SHI XI HU QU BAO CHU BEI LU 82 HAO 1 ZHUANG 406 SHI','','','','',NULL,'工商银行湖州东街支行','6222021205007967130','hanliming',''),
(119,1,1529881544,0,'张','伟','ZHANG','WEI','330501198504288797','浙江省湖州市吴兴区龙泉街道华丰南区1幢606室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU LONG QUAN JIE DAO HUA FENG NAN QU 1 ZHUANG 606 SHI','','','','',NULL,'工商银行市陌路支行','6212261205003739749','zhangwei',''),
(120,1,1529881544,0,'王','娟','WANG','JUAN','330511196404145223','浙江省湖州市吴兴区妙西镇妙西村中街199号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU MIAO XI ZHEN MIAO XI CUN ZHONG JIE 199 HAO','','','','',NULL,'中国银行湖州爱山支行','6217256200008531064','wangjuan',''),
(121,1,1529881544,0,'杨','玉琴','YANG','YU QIN','320926197501255765','江苏省大丰市大中镇晋北村四组140号','JIANG SU SHENG DA FENG SHI DA ZHONG ZHEN JIN BEI CUN SI ZU 140 HAO','','','','',NULL,'工商银行江苏大丰支行','6222081109000928122','yangyuqin',''),
(122,1,1529881544,0,'吴','建妫','WU','JIAN GUI','332525195505051723','浙江省庆元县松源街道五都外出路14号','ZHE JIANG SHENG QING YUAN XIAN SONG YUAN JIE DAO WU DOU WAI CHU LU 14 HAO','','','','',NULL,'中国工商银行庆元支行','6215581210001064427','wujiangui',''),
(123,1,1529881544,0,'吴','城香','WU','CHENG XIANG','33252519690411532x','浙江省庆元县龙洲中路石龙市场2幢301室','ZHE JIANG SHENG QING YUAN XIAN LONG ZHOU ZHONG LU SHI LONG SHI CHANG 2 ZHUANG 301 SHI','','','','',NULL,'中国工商银行庆元支行','6222021210002488231','wuchengxiang',''),
(124,1,1529881544,0,'邱','招梅','QIU','ZHAO MEI','332525196611232725','浙江省庆元县淤上乡山根村','ZHE JIANG SHENG QING YUAN XIAN YU SHANG XIANG SHAN GEN CUN','','','','',NULL,'中国工商银行庆元支行','6215581210000728279','qiuzhaomei',''),
(125,1,1529881544,0,'陈','海花','CHEN','HAI HUA','332529197103036226','浙江省庆元县松源镇社环巷34号','ZHE JIANG SHENG QING YUAN XIAN SONG YUAN ZHEN SHE HUAN XIANG 34 HAO','','','','',NULL,'中国工商银行庆元支行','6222021208019781309','chenhaihua',''),
(126,1,1529881544,0,'吴','立明','WU','LI MING','332525197605086316','浙江省庆元县举水乡月山村坏月街42号','ZHE JIANG SHENG QING YUAN XIAN JU SHUI XIANG YUE SHAN CUN HUAI YUE JIE 42 HAO','','','','',NULL,'中国工商银行浙江丽水市庆元县支行','6222081210004056397 ','wuliming',''),
(127,1,1529881544,0,'吴','思贞 ','WU','SI ZHEN','332525197303217528','浙江省庆元县松源街道星光路86号','ZHE JIANG SHENG QING YUAN XIAN SONG YUAN JIE DAO XING GUANG LU 86 HAO','','','','',NULL,'中国建设银行浙江丽水庆元县支行',' 6217001490001587159','wusizhen',''),
(128,1,1529881544,0,'吴','春燕','WU','CHUN YAN','332525197601090027','浙江省庆元县松源镇祥云路8号','ZHE JIANG SHENG QING YUAN XIAN SONG YUAN ZHEN XIANG YUN LU 8 HAO','','','','',NULL,'中国工商银行浙江丽水市庆元县支行','6222081210001044891','wuchunyan',''),
(129,1,1529881544,0,'刘','凤媛','LIU','FENG YUAN','332525195602030027','浙江省庆元县松源镇石龙街22号','ZHE JIANG SHENG QING YUAN XIAN SONG YUAN ZHEN SHI LONG JIE 22 HAO','','','','',NULL,'中国工商银行浙江丽水市庆元县支行',' 6222081210001042747','liufengyuan',''),
(130,1,1529881544,0,'俞','美琴','YU','MEI QIN','330621197006263200','浙江省绍兴市越城区马山镇东江小区15幢1单元301室','ZHE JIANG SHENG SHAO XING SHI YUE CHENG QU MA SHAN ZHEN DONG JIANG XIAO QU 15 ZHUANG 1 DAN YUAN 301 SHI','','','','',NULL,'工商银行绍兴马山支行','6222081211003462842','yumeiqin',''),
(131,1,1529881544,0,'金','国静','JIN','GUO JING','330602196708252529','浙江省绍兴市越城区世禾新村33幢403室','ZHE JIANG SHENG SHAO XING SHI YUE CHENG QU SHI HE XIN CUN 33 ZHUANG 403 SHI','','','','',NULL,'中信银行绍兴越城支行','6217730801588680','jinguojing',''),
(132,1,1529881544,0,'蒋','莉娜','JIANG','LI NA','330621199306042660','浙江省绍兴县马鞍镇山外村傅江下193号','ZHE JIANG SHENG SHAO XING XIAN MA AN ZHEN SHAN WAI CUN FU JIANG XIA 193 HAO','','','','',NULL,'瑞丰银行绍兴马鞍分理处','6230910699010582885','jianglina',''),
(133,1,1529881544,0,'漏','华琴','LOU','HUA QIN','330602196104050029','浙江省绍兴市越城区白衙弄19号5室','ZHE JIANG SHENG SHAO XING SHI YUE CHENG QU BAI YA NONG 19 HAO 5 SHI','','','','',NULL,'中国工商银行绍兴城南支行','6222081211005447577','louhuaqin',''),
(134,1,1529881544,0,'陈','慧芸','CHEN','HUI YUN','330602196305112521','浙江省绍兴市越城区环城南路枕河人家西区12幢','ZHE JIANG SHENG SHAO XING SHI YUE CHENG QU HUAN CHENG NAN LU ZHEN HE REN JIA XI QU 12 ZHUANG','','','','',NULL,'中国建设银行绍兴城东支行','6227001451710048080','chenhuiyun',''),
(135,1,1529881544,0,'杨','红花','YANG','HONG HUA','330602196205270020','浙江省绍兴市越城区静宁巷50号','ZHE JIANG SHENG SHAO XING SHI YUE CHENG QU JING NING XIANG 50 HAO','','','','',NULL,'中国工商银行绍兴城东支行','6222081211002424892','yanghonghua',''),
(136,1,1529881544,0,'王','亚根','WANG','YA GEN','330621196103226351','浙江省绍兴县漓渚镇六峰村上王家15号','ZHE JIANG SHENG SHAO XING XIAN LI ZHU ZHEN LIU FENG CUN SHANG WANG JIA 15 HAO','','','','',NULL,'中国农业银行柯桥漓渚支行','6228460370018772419','wangyagen',''),
(137,1,1529881544,0,'章','林娟','ZHANG','LIN JUAN','330621197510285042','浙江省上虞市道墟镇新里港村杨家塘中东路34-2号','ZHE JIANG SHENG SHANG YU SHI DAO XU ZHEN XIN LI GANG CUN YANG JIA TANG ZHONG DONG LU 34-2 HAO','','','','',NULL,'中国工商银行上虞道墟支行','62220812110055503833','zhanglinjuan',''),
(138,1,1529881544,0,'徐','芬娟','XU','FEN JUAN','330621196108206368','浙江省绍兴县漓渚镇六峰村上王家15号','ZHE JIANG SHENG SHAO XING XIAN LI ZHU ZHEN LIU FENG CUN SHANG WANG JIA 15 HAO','','','','',NULL,'中国农业银行柯桥漓渚支行','6228460370018772419','xufenjuan',''),
(139,1,1529881544,0,'谢','伟','XIE','WEI','33062119741027493X','浙江省绍兴县安昌镇西街井弄7-3号','ZHE JIANG SHENG SHAO XING XIAN AN CHANG ZHEN XI JIE JING NONG 7-3 HAO','','','','',NULL,'中国工商银行柯北支行','6222081211003771333','xiewei',''),
(140,1,1529881544,0,'谭','丽芳','TAN','LI FANG','440624197810186941','广东省佛山市高明区荷城街道学舟街168号','GUANG DONG SHENG FO SHAN SHI GAO MING QU HE CHENG JIE DAO XUE ZHOU JIE 168 HAO','','','','',NULL,'中国工商银行广东省佛山高明文化路支行','6222022013021128260','tanlifang',''),
(141,1,1529881544,0,'周','海芬','ZHOU','HAI FEN','330511196207190623','浙江省湖州市南浔区双林镇虹桥苑住宅小区2幢1单元401室','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU SHUANG LIN ZHEN HONG QIAO YUAN ZHU ZHAI XIAO QU 2 ZHUANG 1 DAN YUAN 401 SHI','','','','',NULL,'中国建设银行浙江湖州双林支行','6227001449720070623','zhouhaifen',''),
(142,1,1529881544,0,'余','莉芳','YU','LI FANG','330511195401110629','浙江省湖州市吴兴区凤凰街道龙溪苑3幢304室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO LONG XI YUAN 3 ZHUANG 304 SHI','','','','',NULL,'中国建设银行浙江湖州吴兴支行','6217001440007596001','yulifang',''),
(143,1,1529881544,0,'马','爱君','MA','AI JUN','330502196510111821','浙江省湖州市吴兴区杨家埠街道罗家浜村窑墩头村55号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YANG JIA BU JIE DAO LUO JIA BANG CUN YAO DUN TOU CUN 55 HAO','','','','',NULL,'中国建设银行浙江湖州吴兴支行','4367421448627234355','maaijun',''),
(144,1,1529881544,0,'王','金南','WANG','JIN NAN','330501196310185125','浙江省湖州市吴兴区月河街道27幢405室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO 27 ZHUANG 405 SHI','','','','',NULL,'中国工商银行浙江湖州二里桥支行','6217231205001901032','wangjinnan',''),
(145,1,1529881544,0,'丁','惠敏','DING','HUI MIN','330502195011270268','浙江省湖州市吴兴区凤凰街道翠苑小区5幢201室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO CUI YUAN XIAO QU 5 ZHUANG 201 SHI','','','','',NULL,'中国建设银行浙江湖州吴兴支行','6217001440005099065','dinghuimin',''),
(146,1,1529881544,0,'沈','智辉','SHEN','ZHI HUI','330501199101100213','浙江省湖州市吴兴区飞英街道竹翠苑8幢3单元402室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FEI YING JIE DAO ZHU CUI YUAN 8 ZHUANG 3 DAN YUAN 402 SHI','','','','',NULL,'中国建设银行浙江湖州吴兴支行','6227001449560011000','shenzhihui',''),
(147,1,1529881544,0,'朱','兆绫','ZHU','ZHAO LING','330511196207018065','浙江省湖州市吴兴区飞英街道竹翠苑8幢3单元402室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FEI YING JIE DAO ZHU CUI YUAN 8 ZHUANG 3 DAN YUAN 402 SHI','','','','',NULL,'中国工商银行浙江湖州吴兴支行','6222081205002589985','zhuzhaoling',''),
(148,1,1529881544,0,'庞','金星','PANG','JIN XING','330501197310091617','浙江省湖州市南浔区双林镇建德路25弄1号303室','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU SHUANG LIN ZHEN JIAN DE LU 25 NONG 1 HAO 303 SHI','','','','',NULL,'中国农业银行浙江湖州开发区支行','6228480350918974014','pangjinxing',''),
(149,1,1529881544,0,'鲍','明芬','BAO','MING FEN','330511195003240620','浙江省湖州市吴兴区凤凰街道阳光城嘉竹苑106幢404室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO YANG GUANG CHENG JIA ZHU YUAN 106 ZHUANG 404 SHI','','','','',NULL,'中国农业银行浙江湖州开发区支行','6228480359397593476','baomingfen',''),
(150,1,1529881544,0,'吴','银妹','WU','YIN MEI','330511195811213866','浙江省湖州市吴兴区龙泉街道华丰小区3幢401室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU LONG QUAN JIE DAO HUA FENG XIAO QU 3 ZHUANG 401 SHI','','','','',NULL,'中国工商银行浙江湖州吴兴支行','6222081205003535482','wuyinmei',''),
(151,1,1529881544,0,'陈','乃玉','CHEN','NAI YU','340321196308190327','安徽省蚌埠市怀远县城关镇进山路山涧东村7栋2单元6号','AN HUI SHENG BENG BU SHI HUAI YUAN XIAN CHENG GUAN ZHEN JIN SHAN LU SHAN JIAN DONG CUN 7 DONG 2 DAN YUAN 6 HAO','','','','',NULL,'中国工商银行怀远乳泉支行','6222081303002828071','chennaiyu',''),
(152,1,1529881544,0,'郭','玉松','GUO','YU SONG','340311197212101627','广东省深圳市龙华新区梅坂大道滢水山庄12栋704号','GUANG DONG SHENG SHEN ZHEN SHI LONG HUA XIN QU MEI BAN DA DAO YING SHUI SHAN ZHUANG 12 DONG 704 HAO','','','','',NULL,'平安银行深圳中电支行','6225380062588662','guoyusong',''),
(153,1,1529881544,0,'陶','奕诺','TAO','YI NUO','321011196906210023','江苏省扬州市邗江区西湖镇胡场村小陶组7-1号','JIANG SU SHENG YANG ZHOU SHI HAN JIANG QU XI HU ZHEN HU CHANG CUN XIAO TAO ZU 7-1 HAO','','','','',NULL,'农业银行扬州市开发区科技支行','6228480445804881370','taoyinuo',''),
(154,1,1529881544,0,'姚','正礼','YAO','ZHENG LI','321027196612113034','江苏省扬州市邗江区甘泉镇姚湾村大姚组48-1号','JIANG SU SHENG YANG ZHOU SHI HAN JIANG QU GAN QUAN ZHEN YAO WAN CUN DA YAO ZU 48-1 HAO','','','','',NULL,'中国银行扬州兴城支行','6217886100000359597','yaozhengli',''),
(155,1,1529881544,0,'宋','慧娟','SONG','HUI JUAN','340304195911020647','安徽省蚌埠市禹会区张公山新村八村828栋2单元2号','AN HUI SHENG BENG BU SHI YU HUI QU ZHANG GONG SHAN XIN CUN BA CUN 828 DONG 2 DAN YUAN 2 HAO','','','','',NULL,'中国建设银行蚌埠胜利支行','6214661640000780','songhuijuan',''),
(156,1,1529881544,0,'郭','传喜','GUO','CHUAN XI','340311196906241611','安徽省蚌埠市蚌山区燕山乡燕山村小余庄554号','AN HUI SHENG BENG BU SHI BENG SHAN QU YAN SHAN XIANG YAN SHAN CUN XIAO YU ZHUANG 554 HAO','','','','',NULL,'中国交通银行蚌埠淮河支行','6222600280003482300','guochuanxi',''),
(157,1,1529881544,0,'王','菲菲','WANG','FEI FEI','362425197701171027','江西省吉安市永丰县八江乡马元村藕内自然村35号','JIANG XI SHENG JI AN SHI YONG FENG XIAN BA JIANG XIANG MA YUAN CUN OU NEI ZI RAN CUN 35 HAO','','','','',NULL,'中国银行深圳蛇口分行','6217582000038780417','wangfeifei',''),
(158,1,1529881544,0,'吴','桂香','WU','GUI XIANG','321027196305143321','江苏省扬州市邗江区甘泉镇墩留村周庄组13号','JIANG SU SHENG YANG ZHOU SHI HAN JIANG QU GAN QUAN ZHEN DUN LIU CUN ZHOU ZHUANG ZU 13 HAO','','','','',NULL,'中国建设银行扬州梅岭支行','6217001330009484001','wuguixiang',''),
(159,1,1529881544,0,'周','正兰','ZHOU','ZHENG LAN','321011196209171524','江苏省扬州市邗江区竹西街道瓦窑村前吴东组20号','JIANG SU SHENG YANG ZHOU SHI HAN JIANG QU ZHU XI JIE DAO WA YAO CUN QIAN WU DONG ZU 20 HAO','','','','',NULL,'中国银行扬州御河苑支行','6013826103004976057','zhouzhenglan',''),
(160,1,1529881544,0,'金','培丹','JIN','PEI DAN','340311197802200027','安徽省蚌埠市蚌山区燕山乡金圩村金圩3号','AN HUI SHENG BENG BU SHI BENG SHAN QU YAN SHAN XIANG JIN WEI CUN JIN WEI 3 HAO','','','','',NULL,'中国工商银行蚌埠燕山路支行','6212261303000481587','jinpeidan',''),
(161,1,1529881544,0,'赵','辉','ZHAO','HUI','342326197201070227','安徽省蚌埠市龙子湖区解放一路317号4栋2单元16号','AN HUI SHENG BENG BU SHI LONG ZI HU QU JIE FANG YI LU 317 HAO 4 DONG 2 DAN YUAN 16 HAO','','','','',NULL,'中国农业银行蚌埠明珠分理处','6228480671190605012','zhaohui',''),
(162,1,1529881544,0,'郭','玉荣','GUO','YU RONG','340302197101031025','南京市鼓楼区福建路85-6号202室','NAN JING SHI GU LOU QU FU JIAN LU 85-6 HAO 202 SHI','','','','',NULL,'中国工商银行蚌埠治淮路支行','6217231303001215113','guoyurong',''),
(163,1,1529881544,0,'丁','巧凤','DING','QIAO FENG','330511196402050044','浙江省湖州市南浔区南浔镇同心村杨家兜22号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU NAN XUN ZHEN TONG XIN CUN YANG JIA DOU 22 HAO','','','','',NULL,'建行湖州南浔支行','6236681440001582483','dingqiaofeng',''),
(164,1,1529881544,0,'陈','银仙','CHEN','YIN XIAN','330719196803135227','浙江省湖州市南浔区南浔镇东迁集镇直港巷村西河兜15号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU NAN XUN ZHEN DONG QIAN JI ZHEN ZHI GANG XIANG CUN XI HE DOU 15 HAO','','','','',NULL,'农行湖州南浔支行','6228480359087846077','chenyinxian',''),
(165,1,1529881544,0,'胡','丽英','HU','LI YING','330722196307314064','浙江省永康市古山镇前黄村下前黄136号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN QIAN HUANG CUN XIA QIAN HUANG 136 HAO','','','','',NULL,'中国工商银行永康古山支行','6222081208003390833','huliying',''),
(166,1,1529881544,0,'李','秋祥','LI','QIU XIANG','330722196308294034','浙江省永康市古山镇前黄村下前黄136号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN QIAN HUANG CUN XIA QIAN HUANG 136 HAO','','','','',NULL,'中国工商银行','6222081208002153919','liqiuxiang',''),
(167,1,1529881544,0,'李','泽鹏','LI','ZE PENG','330722199010284013','浙江省永康市古山镇前黄村下前黄136号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN QIAN HUANG CUN XIA QIAN HUANG 136 HAO','','','','',NULL,'中国农业银行永康支行','6228480389410052374','lizepeng',''),
(168,1,1529881544,0,'李','泽能','LI','ZE NENG','330722198906294017','浙江省永康市古山镇前黄村下前黄136号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN QIAN HUANG CUN XIA QIAN HUANG 136 HAO','','','','',NULL,'中国农业银行永康支行','6228480388382206778','lizeneng',''),
(169,1,1529881544,0,'吴','新桥','WU','XIN QIAO','330722196303274018','浙江省永康市古山镇后塘弄二村后塘路347号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HOU TANG NONG ER CUN HOU TANG LU 347 HAO','','','','',NULL,'中国建设银行永康支行','6236681460001581699','wuxinqiao',''),
(170,1,1529881544,0,'吴','妙宜','WU','MIAO YI','330722196505194024','浙江省永康市古山镇后塘弄二村后塘路347号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HOU TANG NONG ER CUN HOU TANG LU 347 HAO','','','','',NULL,'中国农业银行永康支行','6228410380038590312','wumiaoyi',''),
(171,1,1529881544,0,'胡','生','HU','SHENG','330722196509203813','浙江省永康市古山镇胡库下村胡库街227号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU XIA CUN HU KU JIE 227 HAO','','','','',NULL,'中国工商银行永康支行','9558881208000055450','husheng',''),
(172,1,1529881544,0,'胡','艳云','HU','YAN YUN','330782199011100665','浙江省义乌市佛堂镇后阳村3组','ZHE JIANG SHENG YI WU SHI FO TANG ZHEN HOU YANG CUN 3 ZU','','','','',NULL,'中国工商银行永康支行','6222081208003892705','huyanyun',''),
(173,1,1529881544,0,'朱','雅楠','ZHU','YA NAN','340322199702247424','安徽省蚌埠市五河县申集镇高庙村147号','AN HUI SHENG BENG BU SHI WU HE XIAN SHEN JI ZHEN GAO MIAO CUN 147 HAO','','','','',NULL,'中国工商银行永康支行','6217231208003081035','zhuyanan',''),
(174,1,1529881544,0,'郎','芝草','LANG','ZHI CAO','330722197008133225','浙江省永康市石柱镇下寮村长寿路26号','ZHE JIANG SHENG YONG KANG SHI SHI ZHU ZHEN XIA LIAO CUN CHANG SHOU LU 26 HAO','','','','',NULL,'中国农业银行永康支行','6228480382575167210','langzhicao',''),
(175,1,1529881544,0,'胡','国栋','HU','GUO DONG','330722196612253819','浙江省永康市古山镇胡库下村胡库街223号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU XIA CUN HU KU JIE 223 HAO','','','','',NULL,'中国农业银行永康支行','6228480382300184217','huguodong',''),
(176,1,1529881544,0,'胡','梦珊','HU','MENG SHAN','330722198908253825','浙江省永康市古山镇胡库下村胡库街227号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU XIA CUN HU KU JIE 227 HAO','','','','',NULL,'中国农业银行永康支行','6228480388312188872','humengshan',''),
(177,1,1529881544,0,'应','明杰','YING','MING JIE','332526198811225138','浙江省缙云县新建镇新寺路六巷16号','ZHE JIANG SHENG JIN YUN XIAN XIN JIAN ZHEN XIN SI LU LIU XIANG 16 HAO','','','','',NULL,'中国建设银行永康支行','6227001469110208559','yingmingjie',''),
(178,1,1529881544,0,'程','海燕','CHENG','HAI YAN','330722196505059228','浙江省永康市古山镇胡库下村胡库街223号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU XIA CUN HU KU JIE 223 HAO','','','','',NULL,'中国农业银行永康支行','6228480389493225079','chenghaiyan',''),
(179,1,1529881544,0,'胡','玉花','HU','YU HUA','330722197203093820','浙江省永康市古山镇金江龙村世方东路655弄20号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN JIN JIANG LONG CUN SHI FANG DONG LU 655 NONG 20 HAO','','','','',NULL,'中国农业银行永康支行','6228480389472241170','huyuhua',''),
(180,1,1529881544,0,'应','李丰','YING','LI FENG','330722197010233815','浙江省永康市古山镇金江龙村世方东路655弄20号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN JIN JIANG LONG CUN SHI FANG DONG LU 655 NONG 20 HAO','','','','',NULL,'中国农业银行永康支行','6228480388368774476','yinglifeng',''),
(181,1,1529881544,0,'胡','秋平','HU','QIU PING','330722196809023822','浙江省永康市古山镇胡库上村胡库街352弄16号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU SHANG CUN HU KU JIE 352 NONG 16 HAO','','','','',NULL,'中国农业银行永康支行','6228480382902952813','huqiuping',''),
(182,1,1529881544,0,'应','梦菲','YING','MENG FEI','330722199801313829','浙江省永康市古山镇金江龙村世方东路655弄20号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN JIN JIANG LONG CUN SHI FANG DONG LU 655 NONG 20 HAO','','','','',NULL,'中国农业银行永康支行','6228410384555276370','yingmengfei',''),
(183,1,1529881544,0,'吕','月香','LÜ','YUE XIANG','330722196108035927','浙江省永康市龙山镇溪田村溪田里56号','ZHE JIANG SHENG YONG KANG SHI LONG SHAN ZHEN XI TIAN CUN XI TIAN LI 56 HAO','','','','',NULL,'中国工商银行（永康支行）','6222081208000874706','lüyuexiang',''),
(184,1,1529881544,0,'成','笑君','CHENG','XIAO JUN','330722197508187924','浙江省永康市东城街道河南一村前新屋里9号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO HE NAN YI CUN QIAN XIN WU LI 9 HAO','','','','',NULL,'中国银行永康支行','6217866200003039420','chengxiaojun',''),
(185,1,1529881544,0,'胡','梦丹','HU','MENG DAN','330722198904013824','浙江省永康市古山镇胡库上村胡库街352弄16号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU SHANG CUN HU KU JIE 352 NONG 16 HAO','','','','',NULL,'中国农业银行永康支行','6228480388773873673','humengdan',''),
(186,1,1529881544,0,'胡','杰凯','HU','JIE KAI','330722199403203819','浙江省永康市古山镇胡库上村胡库街352弄16号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU SHANG CUN HU KU JIE 352 NONG 16 HAO','','','','',NULL,'中国农业银行永康支行','6228480382902952813','hujiekai',''),
(187,1,1529881544,0,'胡','爱静','HU','AI JING','330722195104157527','浙江省金华市婺城区三江街道八一南街1566号B1区15幢3单元102室','ZHE JIANG SHENG JIN HUA SHI WU CHENG QU SAN JIANG JIE DAO BA YI NAN JIE 1566 HAO B1 QU 15 ZHUANG 3 DAN YUAN 102 SHI','','','','',NULL,'中国农业银行金华支行','6228480389409172472','huaijing',''),
(188,1,1529881544,0,'胡','桂兰','HU','GUI LAN','33072219690523382x','浙江省永康市东城街道城北东路789号5单元1701室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO CHENG BEI DONG LU 789 HAO 5 DAN YUAN 1701 SHI','','','','',NULL,'中国工商银行永康支行','6222081208002204399','huguilan',''),
(189,1,1529881544,0,'李','巧儿','LI','QIAO ER','330722196405240628','浙江省永康市西城街道龙川西路四弄6幢2单元401室','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO LONG CHUAN XI LU SI NONG 6 ZHUANG 2 DAN YUAN 401 SHI','','','','',NULL,'平安银行永康支行','6230580000041896106','liqiaoer',''),
(190,1,1529881544,0,'陈','萍','CHEN','PING','330722198110135926','浙江省永康市西城街道溪边村下宅堰36号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO XI BIAN CUN XIA ZHAI YAN 36 HAO','','','','',NULL,'中国工商银行（望春桥支行）','6212261208000912947','chenping',''),
(191,1,1529881544,0,'马','伟英','MA','WEI YING','330722197002130429','浙江省永康市江南街道西津新村22号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO XI JIN XIN CUN 22 HAO','','','','',NULL,'中国农业银行永康支行','6228480383042754218','maweiying',''),
(192,1,1529881544,0,'王','中笑','WANG','ZHONG XIAO','33072219681122042x','浙江省永康市江南街道城南路765弄4幢6号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO CHENG NAN LU 765 NONG 4 ZHUANG 6 HAO','','','','',NULL,'中国工商银行永康支行','6222081208004071804','wangzhongxiao',''),
(193,1,1529881544,0,'徐','妙芬','XU','MIAO FEN','330722195712270427','浙江省永康市西城街道解放街392号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIE FANG JIE 392 HAO','','','','',NULL,'中国建设银行永康支行','6214661460027715','xumiaofen',''),
(194,1,1529881544,0,'马','伟燕','MA','WEI YAN','330722197708180428','浙江省永康市东城街道华溪北路106弄7幢7号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO HUA XI BEI LU 106 NONG 7 ZHUANG 7 HAO','','','','',NULL,'中国农业银行永康支行','6228430389605622875','maweiyan',''),
(195,1,1529881544,0,'施','月爱','SHI','YUE AI','330722196904017922','浙江省永康市唐先镇汪村395号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN WANG CUN 395 HAO','','','','',NULL,'中国农业银行永康支行','6228410380308888917','shiyueai',''),
(196,1,1529881544,0,'应','红色','YING','HONG SE','330722196809297938','浙江省永康市唐先镇汪村395号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN WANG CUN 395 HAO','','','','',NULL,'中国农业银行永康支行','6228480382300957315','yinghongse',''),
(197,1,1529881544,0,'应','志豪','YING','ZHI HAO','330722199803317911','浙江省永康市唐先镇汪村395号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN WANG CUN 395 HAO','','','','',NULL,'中国农业银行永康支行','6228480389422335973','yingzhihao',''),
(198,1,1529881544,0,'吕','月珍','LÜ','YUE ZHEN','330722196309300125','浙江省永康市东城街道四方小区17幢1单元405室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO SI FANG XIAO QU 17 ZHUANG 1 DAN YUAN 405 SHI','','','','',NULL,'中国工商银行永康支行','6222081208004174897','lüyuezhen',''),
(199,1,1529881544,0,'胡','振钱','HU','ZHEN QIAN','330722196410175912','浙江省永康市龙山镇渔川村溪东99号','ZHE JIANG SHENG YONG KANG SHI LONG SHAN ZHEN YU CHUAN CUN XI DONG 99 HAO','','','','',NULL,'中国农业银行永康支行','6228480388150197175','huzhenqian',''),
(200,1,1529881544,0,'李','仲华','LI','ZHONG HUA','339005197502049225','杭州市萧山区闻堰镇九分池居民村一组五户','HANG ZHOU SHI XIAO SHAN QU WEN YAN ZHEN JIU FEN CHI JU MIN CUN YI ZU WU HU','','','','',NULL,'中国农业银行','6228460320013858515','lizhonghua',''),
(201,1,1529881544,0,'徐','伊','XU','YI','330722199810020323','浙江省永康市东城街道华溪北路106弄7幢7号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO HUA XI BEI LU 106 NONG 7 ZHUANG 7 HAO','','','','',NULL,'中国农业银行永康支行','6228480388960857570','xuyi',''),
(202,1,1529881544,0,'李','华峰','LI','HUA FENG','339005197611129216','杭州市萧山区戴村镇戴村村12组1号','HANG ZHOU SHI XIAO SHAN QU DAI CUN ZHEN DAI CUN CUN 12 ZU 1 HAO','','','','',NULL,'中国农业银行','6228460320010998918','lihuafeng',''),
(203,1,1529881544,0,'韩','其虎','HAN','QI HU','330723195710252379','浙江省武义县熟溪街道东苑新村4路2幢5号','ZHE JIANG SHENG WU YI XIAN SHU XI JIE DAO DONG YUAN XIN CUN 4 LU 2 ZHUANG 5 HAO','','','','',NULL,'浙江省农村信用社','6228580730200000447','hanqihu',''),
(204,1,1529881544,0,'金','丽君','JIN','LI JUN','330722196903097924','浙江省永康市唐先镇唐先三村永安小区86号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN TANG XIAN SAN CUN YONG AN XIAO QU 86 HAO','','','','',NULL,'中国农业银行永康支行','6228410384503703475','jinlijun',''),
(205,1,1529881544,0,'蔡','如俊','CAI','RU JUN','330722195709050415','浙江省永康市西城街道解放街392号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIE FANG JIE 392 HAO','','','','',NULL,'中国建设银行永康支行','6236681460002714778','cairujun',''),
(206,1,1529881544,0,'管','潞铱','GUAN','LU YI','330722199606010320','浙江省永康市江南街道南苑路64号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU 64 HAO','','','','',NULL,'中国工商银行永康支行','6222081208005875104','guanluyi',''),
(207,1,1529881544,0,'胡','爱娃','HU','AI WA','330722196411277144','浙江省永康市象珠镇三渡溪村235号','ZHE JIANG SHENG YONG KANG SHI XIANG ZHU ZHEN SAN DU XI CUN 235 HAO','','','','',NULL,'中国建设银行永康支行','6236681460001293022','huaiwa',''),
(208,1,1529881544,0,'陈','惠雄','CHEN','HUI XIONG','330723196604180871','浙江省武义县菱道镇东莹社区杨家新村11幢二单元3-1号','ZHE JIANG SHENG WU YI XIAN LING DAO ZHEN DONG YING SHE QU YANG JIA XIN CUN 11 ZHUANG ER DAN YUAN 3-1 HAO','','','','',NULL,'中国建设银行永康支行','4367421469110086508','chenhuixiong',''),
(209,1,1529881544,0,'姚','佩燕','YAO','PEI YAN','330722196311220028','浙江省永康市江南街道紫微南路115弄1号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO ZI WEI NAN LU 115 NONG 1 HAO','','','','',NULL,'中国银行永康支行','6217866200002408634','yaopeiyan',''),
(210,1,1529881544,0,'田','益民','TIAN','YI MIN','330121196902170617','杭州市萧山区闻堰镇九分池居民村一组五户','HANG ZHOU SHI XIAO SHAN QU WEN YAN ZHEN JIU FEN CHI JU MIN CUN YI ZU WU HU','','','','',NULL,'中国建设银行','6227001540510020958','tianyimin',''),
(211,1,1529881544,0,'傅','卫军','FU','WEI JUN','33072219770809081x','浙江省永康市江南街道傅店村仙溪路111号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO FU DIAN CUN XIAN XI LU 111 HAO','','','','',NULL,'中国建设银行','6214 6614 6558 8877','fuweijun',''),
(212,1,1529881544,0,'应','晴斌','YING','QING BIN','330722199112127940','浙江省永康市唐先镇汪村395号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN WANG CUN 395 HAO','','','','',NULL,'中国农业银行永康支行','6228480383162521819','yingqingbin',''),
(213,1,1529881544,0,'项','凌杰','XIANG','LING JIE','33072319780927055x','浙江省武义县白洋街道深塘村振兴路19号','ZHE JIANG SHENG WU YI XIAN BAI YANG JIE DAO SHEN TANG CUN ZHEN XING LU 19 HAO','','','','',NULL,'中国工商银行永康支行','6222081208007692085','xianglingjie',''),
(214,1,1529881544,0,'马','桃甫','MA','TAO FU','330722194203240057','浙江省永康市江南街道西津新村22号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO XI JIN XIN CUN 22 HAO','','','','',NULL,'中国工商银行永康支行','6222081208006116771','mataofu',''),
(215,1,1529881544,0,'高','军伟','GAO','JUN WEI','330722197911162815','浙江省永康市舟山镇前村28号','ZHE JIANG SHENG YONG KANG SHI ZHOU SHAN ZHEN QIAN CUN 28 HAO','','','','',NULL,'中国农业银行永康支行','6228480381228807313','gaojunwei',''),
(216,1,1529881544,0,'应','云珍','YING','YUN ZHEN','33072219870803284x','浙江省永康市舟山镇台门村390号','ZHE JIANG SHENG YONG KANG SHI ZHOU SHAN ZHEN TAI MEN CUN 390 HAO','','','','',NULL,'中国农业银行永康支行','6228480389409260574','yingyunzhen',''),
(217,1,1529881544,0,'何','金德','HE','JIN DE','330722196410306433','浙江省永康市东城街道园丁中路8幢1单元202室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO YUAN DING ZHONG LU 8 ZHUANG 1 DAN YUAN 202 SHI','','','','',NULL,'中国农业银行永康支行','6228480380645886611','hejinde',''),
(218,1,1529881544,0,'施','永新','SHI','YONG XIN','330722197203017932','浙江省永康市唐先镇唐先二村唐先西街387号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN TANG XIAN ER CUN TANG XIAN XI JIE 387 HAO','','','','',NULL,'中国农业银行永康支行','6228430389027653516','shiyongxin',''),
(219,1,1529881544,0,'应','小爱','YING','XIAO AI','332526197111064543','浙江省缙云县壶镇镇南顿村上蔡巷10号','ZHE JIANG SHENG JIN YUN XIAN HU ZHEN ZHEN NAN DUN CUN SHANG CAI XIANG 10 HAO','','','','',NULL,'中国建设银行','6236681490001004186','yingxiaoai',''),
(220,1,1529881544,0,'赵','燕','ZHAO','YAN','330722197704151929','浙江省永康市西城街道西田畈村100号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO XI TIAN FAN CUN 100 HAO','','','','',NULL,'中国农业银行永康支行','6228480382073642912','zhaoyan',''),
(221,1,1529881544,0,'程','仁兴','CHENG','REN XING','330722197702013610','浙江省永康市方岩景区金竹降下村三间屋自然村14号','ZHE JIANG SHENG YONG KANG SHI FANG YAN JING QU JIN ZHU JIANG XIA CUN SAN JIAN WU ZI RAN CUN 14 HAO','','','','',NULL,'中国农业银行永康支行','6228480382576609319','chengrenxing',''),
(222,1,1529881544,0,'张','海丽','ZHANG','HAI LI','352124197801310421','浙江省永康市方岩景区金竹降下村三间屋自然村14号','ZHE JIANG SHENG YONG KANG SHI FANG YAN JING QU JIN ZHU JIANG XIA CUN SAN JIAN WU ZI RAN CUN 14 HAO','','','','',NULL,'中国农业银行永康支行','6228460380007569015','zhanghaili',''),
(223,1,1529881544,0,'徐','腾飞','XU','TENG FEI','330722197302053015','浙江省永康市舟山镇方山口村方山路12弄59号','ZHE JIANG SHENG YONG KANG SHI ZHOU SHAN ZHEN FANG SHAN KOU CUN FANG SHAN LU 12 NONG 59 HAO','','','','',NULL,'中国农业银行永康支行','6228480389086175574','xutengfei',''),
(224,1,1529881544,0,'何','巧英','HE','QIAO YING','33072219740131302x','浙江省永康市舟山镇方山口村方山路12弄59号','ZHE JIANG SHENG YONG KANG SHI ZHOU SHAN ZHEN FANG SHAN KOU CUN FANG SHAN LU 12 NONG 59 HAO','','','','',NULL,'中国农业银行永康支行','6228480389267983572','heqiaoying',''),
(225,1,1529881544,0,'陈','红艳','CHEN','HONG YAN','330722198604044565','浙江省永康市芝英街道陈园村109号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO CHEN YUAN CUN 109 HAO','','','','',NULL,'中国工商银行（望春支行）','6212261208000123958','chenhongyan',''),
(226,1,1529881544,0,'胡','东香','HU','DONG XIANG','33072219640109212x','浙江省永康市东城街道荆山陈村荆山陈北路56号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JING SHAN CHEN CUN JING SHAN CHEN BEI LU 56 HAO','','','','',NULL,'中国农业银行永康支行','6228480382095707016','hudongxiang',''),
(227,1,1529881544,0,'颜','美莉','YAN','MEI LI','330722198202275926','浙江省永康市西城街道应店82号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO YING DIAN 82 HAO','','','','',NULL,'中国农业银行永康支行','6228480382822089613','yanmeili',''),
(228,1,1529881544,0,'应','莲芳','YING','LIAN FANG','330722197711083645','浙江省永康市方岩镇西村207号','ZHE JIANG SHENG YONG KANG SHI FANG YAN ZHEN XI CUN 207 HAO','','','','',NULL,'中国工商银行永康支行','6222081208008066941','yinglianfang',''),
(229,1,1529881544,0,'杜','青山','DU','QING SHAN','330722197801164510','浙江省永康市东城街道杜山头村155号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO DU SHAN TOU CUN 155 HAO','','','','',NULL,'中国农业银行永康支行','6228480382180675714','duqingshan',''),
(230,1,1529881544,0,'胡','明芳','HU','MING FANG','330722196502244911','浙江省永康市东城街道荆山陈村荆山陈北路56号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JING SHAN CHEN CUN JING SHAN CHEN BEI LU 56 HAO','','','','',NULL,'中国工商银行永康支行','6217231208002548315','humingfang',''),
(231,1,1529881544,0,'曹','苏宵','CAO','SU XIAO','33072219731010752x','浙江省义乌市北苑街道何麻车村10组','ZHE JIANG SHENG YI WU SHI BEI YUAN JIE DAO HE MA CHE CUN 10 ZU','','','','',NULL,'中国工商银行义乌北苑支行','6222021208011754775','caosuxiao',''),
(232,1,1529881544,0,'程','刚毅','CHENG','GANG YI','330722197408304310','浙江省永康市方岩镇金竹降上村念凹自然村9号','ZHE JIANG SHENG YONG KANG SHI FANG YAN ZHEN JIN ZHU JIANG SHANG CUN NIAN AO ZI RAN CUN 9 HAO','','','','',NULL,'中国工商银行永康支行','6222081208001374557','chenggangyi',''),
(233,1,1529881544,0,'程','华方','CHENG','HUA FANG','330722198106023622','浙江省永康市东城街道园丁西路17幢1单元201室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO YUAN DING XI LU 17 ZHUANG 1 DAN YUAN 201 SHI','','','','',NULL,'中国建设银行永康支行','6236681460010119051','chenghuafang',''),
(234,1,1529881544,0,'曹','志顺','CAO','ZHI SHUN','330722197607257510','浙江省永康市唐先镇夏杜曹村东溪小区133号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN XIA DU CAO CUN DONG XI XIAO QU 133 HAO','','','','',NULL,'中国农业银行永康兰溪支行','6228480383380384412','caozhishun',''),
(235,1,1529881544,0,'施','明照','SHI','MING ZHAO','330722198211167919','浙江省永康市唐先镇清塘庄村清塘路西326号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN QING TANG ZHUANG CUN QING TANG LU XI 326 HAO','','','','',NULL,'中国银行永康支行','6217856200038554544','shimingzhao',''),
(236,1,1529881544,0,'关','志仁','GUAN','ZHI REN','330722197303163419','浙江省永康市芝英街道岘口村七姑塘17号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO XIAN KOU CUN QI GU TANG 17 HAO','','','','',NULL,'中国建设银行永康支行','6236681460004814097','guanzhiren',''),
(237,1,1529881544,0,'黄','文胜','HUANG','WEN SHENG','330722197910125932','浙江省永康市龙山镇茭杨村茭塘岸163号','ZHE JIANG SHENG YONG KANG SHI LONG SHAN ZHEN JIAO YANG CUN JIAO TANG AN 163 HAO','','','','',NULL,'中国农业银行永康支行','6228480388210625975','huangwensheng',''),
(238,1,1529881544,0,'郑','秀尖','ZHENG','XIU JIAN','330722197212314920','浙江省永康市芝英街道陈园村127号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO CHEN YUAN CUN 127 HAO','','','','',NULL,'中国农业银行永康支行','6228450388007006971','zhengxiujian',''),
(239,1,1529881544,0,'李','海团','LI','HAI TUAN','330722197103037311','浙江省永康市芝英街道雅庄村中山小区158号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO YA ZHUANG CUN ZHONG SHAN XIAO QU 158 HAO','','','','',NULL,'中国农业银行永康支行','6228480389442792773','lihaituan',''),
(240,1,1529881544,0,'胡','美群','HU','MEI QUN','330722196906273823','浙江省永康市芝英街道郑村华东二路142号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO ZHENG CUN HUA DONG ER LU 142 HAO','','','','',NULL,'中国农业银行永康总行','6228480388693816877','humeiqun',''),
(241,1,1529881544,0,'王','玲巧','WANG','LING QIAO','330722197402237727','浙江省永康市古山镇胡库上村碧泉路6弄28号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU SHANG CUN BI QUAN LU 6 NONG 28 HAO','','','','',NULL,'中国农业银行永康支行','6228480382311183018','wanglingqiao',''),
(242,1,1529881544,0,'周','兰英','ZHOU','LAN YING','330722196308316723','浙江省永康市东城街道大园童村长街129号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO DA YUAN TONG CUN ZHANG JIE 129 HAO','','','','',NULL,'中国农业银行永康支行','6228410384519465879','zhoulanying',''),
(243,1,1529881544,0,'陈','梅菊','CHEN','MEI JU','330722197205085525','浙江省永康市龙山镇上马村534号','ZHE JIANG SHENG YONG KANG SHI LONG SHAN ZHEN SHANG MA CUN 534 HAO','','','','',NULL,'中国农业银行永康支行','6228480389451469479','chenmeiju',''),
(244,1,1529881544,0,'吴','根富','WU','GEN FU','330721196304235217','浙江省金华市婺城区蒋堂镇溪口村华龙南街18弄18号','ZHE JIANG SHENG JIN HUA SHI WU CHENG QU JIANG TANG ZHEN XI KOU CUN HUA LONG NAN JIE 18 NONG 18 HAO','','','','',NULL,'中国邮政储蓄银行武义支行','6217993300059655453','wugenfu',''),
(245,1,1529881544,0,'黄','仙华','HUANG','XIAN HUA','330722197204045329','浙江省永康市龙山镇下赵村100号','ZHE JIANG SHENG YONG KANG SHI LONG SHAN ZHEN XIA ZHAO CUN 100 HAO','','','','',NULL,'中国农业银行永康支行','6230520380010334872','huangxianhua',''),
(246,1,1529881544,0,'吕','仙菊','LÜ','XIAN JU','330723197211142764','浙江省武义县桐琴镇上芦村大塘路23号','ZHE JIANG SHENG WU YI XIAN TONG QIN ZHEN SHANG LU CUN DA TANG LU 23 HAO','','','','',NULL,'中国农业银行永康支行','6228230385022526063','lüxianju',''),
(247,1,1529881544,0,'陈','巧玲','CHEN','QIAO LING','330722196505077960','浙江省永康市唐先镇岩洞口村明镜路10号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN YAN DONG KOU CUN MING JING LU 10 HAO','','','','',NULL,'中国工商银行永康支行','6212261208006280869','chenqiaoling',''),
(248,1,1529881544,0,'郑','梦江','ZHENG','MENG JIANG','330722197010124918','浙江省永康市芝英街道郑村华东二路142号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO ZHENG CUN HUA DONG ER LU 142 HAO','','','','',NULL,'中国农业银行永康支行','6228480389217135075','zhengmengjiang',''),
(249,1,1529881544,0,'郑','黎滨','ZHENG','LI BIN','330722199403144513','浙江省永康市芝英街道郑村华东二路142号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO ZHENG CUN HUA DONG ER LU 142 HAO','','','','',NULL,'中国农业银行永康支行','6228480383043204015','zhenglibin',''),
(250,1,1529881544,0,'翁','忠献','WENG','ZHONG XIAN','33072219740802081x','浙江省永康市江南街道翁埠村206号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO WENG BU CUN 206 HAO','','','','',NULL,'中国农业银行永康支行','6228410380452622716','wengzhongxian',''),
(251,1,1529881544,0,'胡','英豪','HU','YING HAO','330722197611243816','浙江省永康市古山镇胡库上村碧泉路6弄28号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN HU KU SHANG CUN BI QUAN LU 6 NONG 28 HAO','','','','',NULL,'中国农业银行永康支行','6228480380709507418','huyinghao',''),
(252,1,1529881544,0,'黄','玲如','HUANG','LING RU','330722195811024547','浙江省永康市芝英街道柳前塘村37号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO LIU QIAN TANG CUN 37 HAO','','','','',NULL,'中国农业银行永康支行','6228430389606139473','huanglingru',''),
(253,1,1529881544,0,'柳','杭','LIU','HANG','330722198310214530','浙江省永康市芝英镇柳前塘村210号','ZHE JIANG SHENG YONG KANG SHI ZHI YING ZHEN LIU QIAN TANG CUN 210 HAO','','','','',NULL,'中国农业银行永康支行','6228480380827641511','liuhang',''),
(254,1,1529881544,0,'柳','福秋','LIU','FU QIU','330722195009084569','浙江省永康市芝英街道柳前塘村8号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO LIU QIAN TANG CUN 8 HAO','','','','',NULL,'中国工商银行永康芝英支行','6217231208003216615','liufuqiu',''),
(255,1,1529881544,0,'王','方勇','WANG','FANG YONG','330723196807172775','浙江省武义县桐琴王端头村朝阳路42号','ZHE JIANG SHENG WU YI XIAN TONG QIN WANG DUAN TOU CUN CHAO YANG LU 42 HAO','','','','',NULL,'中国工商银行永康支行','6222081208004181629','wangfangyong',''),
(256,1,1529881544,0,'柳','献阳','LIU','XIAN YANG','330722197302034519','浙江省永康市芝英街道柳前塘村6号','ZHE JIANG SHENG YONG KANG SHI ZHI YING JIE DAO LIU QIAN TANG CUN 6 HAO','','','','',NULL,'中国农业银行永康支行','6228480388976562172','liuxianyang',''),
(257,1,1529881544,0,'何','美女','HE','MEI NÜ','330722195804236429','浙江省永康市西城街道大徐村3弄69号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO DA XU CUN 3 NONG 69 HAO','','','','',NULL,'中国工商银行永康支行','622203120800119744','hemeinü',''),
(258,1,1529881544,0,'吴','兰姿','WU','LAN ZI','21120319620123002x','浙江省永康市江南街道安居苑小区19幢2单元501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO AN JU YUAN XIAO QU 19 ZHUANG 2 DAN YUAN 501 SHI','','','','',NULL,'中国工商银行永康支行','6222081208005614222','wulanzi',''),
(259,1,1529881544,0,'何','福湘','HE','FU XIANG','330722195904280013','浙江省永康市江南街道永富南路24弄1幢4单元4楼','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO YONG FU NAN LU 24 NONG 1 ZHUANG 4 DAN YUAN 4 LOU','','','','',NULL,'中国建设银行（永康支行）','4367421465087070194','hefuxiang',''),
(260,1,1529881544,0,'王','晓霞','WANG','XIAO XIA','330722196903150027','浙江省永康市东城街道电动小区电动宿舍2幢2单元102室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO DIAN DONG XIAO QU DIAN DONG SU SHE 2 ZHUANG 2 DAN YUAN 102 SHI','','','','',NULL,'中国农业银行永康支行','6228480383175980515','wangxiaoxia',''),
(261,1,1529881544,0,'王','晓燕','WANG','XIAO YAN','330722196510290029','浙江省永康市江南街道永富南路24弄1幢4单元4楼','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO YONG FU NAN LU 24 NONG 1 ZHUANG 4 DAN YUAN 4 LOU','','','','',NULL,'中国农业银行永康支行','6228480388772564570','wangxiaoyan',''),
(262,1,1529881544,0,'何','旸','HE','YANG','330722198811140023','浙江省永康市江南街道田园小区22幢6号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO TIAN YUAN XIAO QU 22 ZHUANG 6 HAO','','','','',NULL,'中国工商银行永康支行','6222081208003804403','heyang',''),
(263,1,1529881544,0,'吴','爱珍','WU','AI ZHEN','330722197203150020','浙江省永康市西城街道解放街380号南幢1单元202室','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIE FANG JIE 380 HAO NAN ZHUANG 1 DAN YUAN 202 SHI','','','','',NULL,'中国建设银行（永康支行）','6236681460004813990','wuaizhen',''),
(264,1,1529881544,0,'陈','春萍','CHEN','CHUN PING','330725196902040423','浙江省义乌市稠城街道江滨中路456号3楼','ZHE JIANG SHENG YI WU SHI CHOU CHENG JIE DAO JIANG BIN ZHONG LU 456 HAO 3 LOU','','','','',NULL,'中国银行永康支行','6217866200008738026','chenchunping',''),
(265,1,1529881544,0,'孟','志平','MENG','ZHI PING','330722196809211233','浙江省永康市西城街道解放街380号南幢1单元202室','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIE FANG JIE 380 HAO NAN ZHUANG 1 DAN YUAN 202 SHI','','','','',NULL,'中国建设银行（永康支行）','6227001469110403523','mengzhiping',''),
(266,1,1529881544,0,'施','碧英','SHI','BI YING','330722195906107927','浙江省永康市东城街道东库街158弄10号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO DONG KU JIE 158 NONG 10 HAO','','','','',NULL,'中国建设银行永康支行','6236681460007874296','shibiying',''),
(267,1,1529881544,0,'金','美韩','JIN','MEI HAN','330723196301222368','浙江省永康市东城街道东塔路8弄2单元102室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO DONG TA LU 8 NONG 2 DAN YUAN 102 SHI','','','','',NULL,'中国工商银行永康望春支行','6222081208008064615','jinmeihan',''),
(268,1,1529881544,0,'包','雪黎','BAO','XUE LI','330702196901110026','浙江省永康市东城街道九铃东路3185号2幢201室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JIU LING DONG LU 3185 HAO 2 ZHUANG 201 SHI','','','','',NULL,'中国农业银行（永康支行）','6228480388863421771','baoxueli',''),
(269,1,1529881544,0,'成','菊平','CHENG','JU PING','330722196510206923','浙江省永康市石柱镇石柱村下街36号','ZHE JIANG SHENG YONG KANG SHI SHI ZHU ZHEN SHI ZHU CUN XIA JIE 36 HAO','','','','',NULL,'中国工商银行（永康城南支行）','6222021208016272112','chengjuping',''),
(270,1,1529881544,0,'王','新如','WANG','XIN RU','33072219641117142x','浙江省永康市东城街道高圳路27号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO GAO ZHEN LU 27 HAO','','','','',NULL,'中国招商银行（永康支行）','6214855790549352','wangxinru',''),
(271,1,1529881544,0,'李','政','LI','ZHENG','330722196504202117','浙江省永康市江南街道南苑路三弄11幢2号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU SAN NONG 11 ZHUANG 2 HAO','','','','',NULL,'中国建设银行永康支行','4367421465077120538','lizheng',''),
(272,1,1529881544,0,'钱','苏萍','QIAN','SU PING','330722196808213624','浙江省永康市方岩镇先盆村回龙路40号','ZHE JIANG SHENG YONG KANG SHI FANG YAN ZHEN XIAN PEN CUN HUI LONG LU 40 HAO','','','','',NULL,'中国工商银行永康支行','6222021208003572615','qiansuping',''),
(273,1,1529881544,0,'成','春花','CHENG','CHUN HUA','330722195508086921','浙江省永康市唐先镇中山村中山中路一弄8号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN ZHONG SHAN CUN ZHONG SHAN ZHONG LU YI NONG 8 HAO','','','','',NULL,'中国工商银行永康支行','6212261208007180985','chengchunhua',''),
(274,1,1529881544,0,'童','海浪','TONG','HAI LANG','330722199009231918','浙江省永康市西城街道童宅村后宅35号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO TONG ZHAI CUN HOU ZHAI 35 HAO','','','','',NULL,'中国建设银行永康支行','6236681460002620686','tonghailang',''),
(275,1,1529881544,0,'吕','晓燕','LÜ','XIAO YAN','330722197811145129','浙江省永康市江南街道南苑路四弄9幢2单元303室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU SI NONG 9 ZHUANG 2 DAN YUAN 303 SHI','','','','',NULL,'中国工商银行永康金城支行','6222081208004036518','lüxiaoyan',''),
(276,1,1529881544,0,'徐','柳春','XU','LIU CHUN','330722197209100841','浙江省永康市西城街道乌牛山村152号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO WU NIU SHAN CUN 152 HAO','','','','',NULL,'中国银行永康支行','6217866200006662830','xuliuchun',''),
(277,1,1529881544,0,'杨','子根','YANG','ZI GEN','330722196610113636','浙江省永康市古山镇铜坑村华川路52号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN TONG KENG CUN HUA CHUAN LU 52 HAO','','','','',NULL,'中国农业银行永康支行','6228480389454689875','yangzigen',''),
(278,1,1529881544,0,'陈','巧云','CHEN','QIAO YUN','33072219740210692x','浙江省永康市东城街道九铃东路3011号工商局综合楼3号306室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JIU LING DONG LU 3011 HAO GONG SHANG JU ZONG HE LOU 3 HAO 306 SHI','','','','',NULL,'中国农业银行永康支行','6228480382575578812','chenqiaoyun',''),
(279,1,1529881544,0,'陈','仙菊','CHEN','XIAN JU','330722195811305525','浙江省永康市西溪镇棠溪村276号','ZHE JIANG SHENG YONG KANG SHI XI XI ZHEN TANG XI CUN 276 HAO','','','','',NULL,'中国农业银行永康支行','6228430389007004110','chenxianju',''),
(280,1,1529881544,0,'施','月闺','SHI','YUE GUI','330722196611267928','浙江省永康市唐先镇岩前村村南小区396号','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN YAN QIAN CUN CUN NAN XIAO QU 396 HAO','','','','',NULL,'中国邮政储蓄银行永康支行','6217983300002444247','shiyuegui',''),
(281,1,1529881544,0,'胡','菊月','HU','JU YUE','330722197007019025','浙江省永康市西城街道潜村南路85号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO QIAN CUN NAN LU 85 HAO','','','','',NULL,'中国工商银行永康支行','6222081208006463629','hujuyue',''),
(282,1,1529881544,0,'王','建萍','WANG','JIAN PING','330722195610040022','浙江省永康市江南街道城南路507弄6幢3号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO CHENG NAN LU 507 NONG 6 ZHUANG 3 HAO','','','','',NULL,'中国工商银行永康支行','6222081208004032137','wangjianping',''),
(283,1,1529881544,0,'沈','晓红','SHEN','XIAO HONG','33030219690716084x','浙江省永康市西城街道建设路71号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIAN SHE LU 71 HAO','','','','',NULL,'中国工商银行永康支行','6222081208001265235','shenxiaohong',''),
(284,1,1529881544,0,'董','承红','DONG','CHENG HONG','330722196906020068','浙江省永康市西城街道建设路71号1幢2单元203室','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIAN SHE LU 71 HAO 1 ZHUANG 2 DAN YUAN 203 SHI','','','','',NULL,'中国工商银行永康支行','6222081208006640556','dongchenghong',''),
(285,1,1529881544,0,'俞','颖','YU','YING','330722197109237541','浙江省永康市唐先镇白莲塘村中区216室','ZHE JIANG SHENG YONG KANG SHI TANG XIAN ZHEN BAI LIAN TANG CUN ZHONG QU 216 SHI','','','','',NULL,'中国农业银行永康支行','6228480389407502373','yuying',''),
(286,1,1529881544,0,'朱','梅雀','ZHU','MEI QUE','330722196405181429','浙江省永康市东城街道高鑫路18幢8号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO GAO XIN LU 18 ZHUANG 8 HAO','','','','',NULL,'中国工商银行永康支行','6222081208000484266','zhumeique',''),
(287,1,1529881544,0,'李','彦萱','LI','YAN XUAN','330722199911120040','浙江省永康市江南街道南苑路三弄11幢2号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU SAN NONG 11 ZHUANG 2 HAO','','','','',NULL,'中国农业银行永康支行','6230520380007367273','liyanxuan',''),
(288,1,1529881544,0,'胡','悦','HU','YUE','33072219650407002x','浙江省永康市江南街道南苑东路21弄3幢2-501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN DONG LU 21 NONG 3 ZHUANG 2-501 SHI','','','','',NULL,'农业银行永康支行','6228460380007459910','huyue',''),
(289,1,1529881544,0,'陈','秀强','CHEN','XIU QIANG','330722196301010035','浙江省永康市江南街道南苑东路21弄3幢2-501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN DONG LU 21 NONG 3 ZHUANG 2-501 SHI','','','','',NULL,'中国建设银行永康支行','4340621460117959 ','chenxiuqiang',''),
(290,1,1529881544,0,'陈','心','CHEN','XIN','330722198906280029','浙江省永康市江南街道南苑东路21弄3幢2-501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN DONG LU 21 NONG 3 ZHUANG 2-501 SHI','','','','',NULL,'中国工商银行永康支行','6217231208008729604','chenxin',''),
(291,1,1529881544,0,'胡','杰','HU','JIE','330722198710031418','浙江省永康市东城街道荆山夏村后吴51号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JING SHAN XIA CUN HOU WU 51 HAO','','','','',NULL,'中国农业银行永康支行','6228480388678158170','hujie',''),
(292,1,1529881544,0,'任','红秀','REN','HONG XIU','330722197512302825','浙江省永康市舟山镇台门村463号','ZHE JIANG SHENG YONG KANG SHI ZHOU SHAN ZHEN TAI MEN CUN 463 HAO','','','','',NULL,'中国银行永康支行','6217856200019426340','renhongxiu',''),
(293,1,1529881544,0,'周','伟军','ZHOU','WEI JUN','330722196705080021','浙江省永康市西城街道健康巷5号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO JIAN KANG XIANG 5 HAO','','','','',NULL,'中国建设银行永康支行','6236681460000068425','zhouweijun',''),
(294,1,1529881544,0,'徐','高亮','XU','GAO LIANG','330722196909010412','浙江省永康市西城街道西园20号','ZHE JIANG SHENG YONG KANG SHI XI CHENG JIE DAO XI YUAN 20 HAO','','','','',NULL,'中国工商银行永康支行','6217231208009904289','xugaoliang',''),
(295,1,1529881544,0,'李','敏办','LI','MIN BAN','330722197501277329','浙江省永康市古山镇西炉村西炉山背3号','ZHE JIANG SHENG YONG KANG SHI GU SHAN ZHEN XI LU CUN XI LU SHAN BEI 3 HAO','','','','',NULL,'中国工商银行永康支行','6222081208000957253','liminban',''),
(296,1,1529881544,0,'陈','春爱','CHEN','CHUN AI','330722196601246461','浙江省永康市东城街道苏溪村下田畈218号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO SU XI CUN XIA TIAN FAN 218 HAO','','','','',NULL,'中国农业银行永康支行','6228480328925009370','chenchunai',''),
(297,1,1529881544,0,'林','洪鑫','LIN','HONG XIN','330722199706220616','浙江省永康市东城街道苏溪村下田畈218号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO SU XI CUN XIA TIAN FAN 218 HAO','','','','',NULL,'永康农商银行','6230910799025519193','linhongxin',''),
(298,1,1529881544,0,'林','华福','LIN','HUA FU','330722196610060634','浙江省永康市东城街道苏溪村下田畈218号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO SU XI CUN XIA TIAN FAN 218 HAO','','','','',NULL,'中国农业银行永康支行','6228480388121125875','linhuafu',''),
(299,1,1529881544,0,'林','雅倩','LIN','YA QIAN','330722199206160629','浙江省永康市东城街道苏溪村下田畈218号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO SU XI CUN XIA TIAN FAN 218 HAO','','','','',NULL,'中国工商银行永康支行','6212261208009080043','linyaqian',''),
(300,1,1529881544,0,'周','笑丽','ZHOU','XIAO LI','330722197207222124','浙江省永康市东城街道河南二村井头沿121号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO HE NAN ER CUN JING TOU YAN 121 HAO','','','','',NULL,'中国银行永康支行','6217856200040029550','zhouxiaoli',''),
(301,1,1529881544,0,'蒋','招娣','JIANG','ZHAO DI','33072219701110082X','浙江省永康市江南街道南苑东路21弄3幢2-501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN DONG LU 21 NONG 3 ZHUANG 2-501 SHI','','','','',NULL,'工商银行(城西分理处)','6222081208003158446','jiangzhaodi',''),
(302,1,1529881544,0,'吕','勇军','LÜ','YONG JUN','330722197312106918','浙江省永康市东城街道园丁中路20幢2单元401室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO YUAN DING ZHONG LU 20 ZHUANG 2 DAN YUAN 401 SHI','','','','',NULL,'中国建设银行永康支行','4367421465087070871','lüyongjun',''),
(303,1,1529881544,0,'王','艳','WANG','YAN','33072219740919044x','浙江省永康市江南街道下园朱6-2号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO XIA YUAN ZHU 6-2 HAO','','','','',NULL,'中国农业银行永康支行','6228480382180766117','wangyan',''),
(304,1,1529881544,0,'胡','兰香','HU','LAN XIANG','330722193309300025','浙江省永康市江南街道南苑路一弄23幢1号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU YI NONG 23 ZHUANG 1 HAO','','','','',NULL,'中国农业银行永康支行','622848389492325672','hulanxiang',''),
(305,1,1529881544,0,'程','立忠','CHENG','LI ZHONG','33072219680907921X','浙江省永康市江南街道南苑东路21弄3幢2-501室','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN DONG LU 21 NONG 3 ZHUANG 2-501 SHI','','','','',NULL,'招行银行金华江北支行','4100625791856789','chenglizhong',''),
(306,1,1529881544,0,'金','依群','JIN','YI QUN','330722196701065924','浙江省永康市东城街道卫星路公安宿舍2幢1单元102室','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO WEI XING LU GONG AN SU SHE 2 ZHUANG 1 DAN YUAN 102 SHI','','','','',NULL,'中国建设银行永康支行','4367421465067119110','jinyiqun',''),
(307,1,1529881544,0,'林','美','LIN','MEI','330722196302131429','浙江省永康市东城街道荆山夏村后吴51号','ZHE JIANG SHENG YONG KANG SHI DONG CHENG JIE DAO JING SHAN XIA CUN HOU WU 51 HAO','','','','',NULL,'中国建设银行永康支行','6236681460000853560','linmei',''),
(308,1,1529881544,0,'曹','军','CAO','JUN','310227197306304011','上海市松江区泖港镇规划和土地管理所泖港中天路625号','SHANG HAI SHI SONG JIANG QU MAO GANG ZHEN GUI HUA HE TU DI GUAN LI SUO MAO GANG ZHONG TIAN LU 625 HAO','','','','',NULL,'上海农商银行上海松江泖港支行','6235526031000949590','caojun',''),
(309,1,1529881544,0,'周','贤伏','ZHOU','XIAN FU','36232219750572211','江西省上饶市广丰县五都镇双桥村阳川34号','JIANG XI SHENG SHANG RAO SHI GUANG FENG XIAN WU DU ZHEN SHUANG QIAO CUN YANG CHUAN 34 HAO','','','','',NULL,'中国银行上海市松江玉树路支行','6217880800006402285','zhouxianfu',''),
(310,1,1529881544,0,'朱','红梅','ZHU','HONG MEI','31022719740104020','上海市松江区泖港镇规划和土地管理所泖港中天路625号','SHANG HAI SHI SONG JIANG QU MAO GANG ZHEN GUI HUA HE TU DI GUAN LI SUO MAO GANG ZHONG TIAN LU 625 HAO','','','','',NULL,'上海农商银行上海松江泖港支行','6235526031000949590','zhuhongmei',''),
(311,1,1529881544,0,'马','德芳','MA','DE FANG','330105195911101344','浙江杭州市西湖区翠苑街翠苑三区52幢2单元302室','ZHE JIANG HANG ZHOU SHI XI HU QU CUI YUAN JIE CUI YUAN SAN QU 52 ZHUANG 2 DAN YUAN 302 SHI','','','','',NULL,'杭州银行西城支行','3301040160002695461','madefang',''),
(312,1,1529881544,0,'李','中芬','LI','ZHONG FEN','33012519721016032x','杭州市余杭区运河镇东新村17组东桥头38-1号','HANG ZHOU SHI YU HANG QU YUN HE ZHEN DONG XIN CUN 17 ZU DONG QIAO TOU 38-1 HAO','','','','',NULL,'农行杭州余杭支行','6228450328046889870','lizhongfen',''),
(313,1,1529881544,0,'钱','林根','QIAN','LIN GEN','330425196407105836','浙江省桐乡市崇福镇钱家埭村外姚庙22号','ZHE JIANG SHENG TONG XIANG SHI CHONG FU ZHEN QIAN JIA DAI CUN WAI YAO MIAO 22 HAO','','','','',NULL,'农业银行崇福支行','6228450348047136477','qianlingen',''),
(314,1,1529881544,0,'郁','高建','YU','GAO JIAN','330425197712021828','浙江省桐乡市崇福镇南沙滩4号','ZHE JIANG SHENG TONG XIANG SHI CHONG FU ZHEN NAN SHA TAN 4 HAO','','','','',NULL,'农业银行崇福支行','6228480340543093512','yugaojian',''),
(315,1,1529881544,0,'沈','建明','SHEN','JIAN MING','330425196902051812','浙江省桐乡市大麻镇百富村保安桥57号','ZHE JIANG SHENG TONG XIANG SHI DA MA ZHEN BAI FU CUN BAO AN QIAO 57 HAO','','','','',NULL,'农业银行大麻支行','6228450348028048774','shenjianming',''),
(316,1,1529881544,0,'钟','东亚','ZHONG','DONG YA','330125197209060321','杭州市余杭区运河街道东新村11组邵家角8号','HANG ZHOU SHI YU HANG QU YUN HE JIE DAO DONG XIN CUN 11 ZU SHAO JIA JIAO 8 HAO','','','','',NULL,'中国工商银行余杭临北支行','6212261202025174161','zhongdongya',''),
(317,1,1529881544,0,'张','如英','ZHANG','RU YING','33042519640920562x','浙江省桐乡市崇福镇钱家埭村外姚庙22号','ZHE JIANG SHENG TONG XIANG SHI CHONG FU ZHEN QIAN JIA DAI CUN WAI YAO MIAO 22 HAO','','','','',NULL,'农商银行崇福支行','6230910499047353784','zhangruying',''),
(318,1,1529881544,0,'黄','国英','HUANG','GUO YING','330425197609211826','浙江省桐乡市大麻镇麻溪村高家埭2号','ZHE JIANG SHENG TONG XIANG SHI DA MA ZHEN MA XI CUN GAO JIA DAI 2 HAO','','','','',NULL,'农业银行桐乡市大麻支行','6228480342840741819','huangguoying',''),
(319,1,1529881544,0,'金','国莲','JIN','GUO LIAN','330425197810291821','浙江省桐乡市大麻镇南街 11号','ZHE JIANG SHENG TONG XIANG SHI DA MA ZHEN NAN JIE 11 HAO','','','','',NULL,'农业银行大麻支行','6228480348332535270','jinguolian',''),
(320,1,1529881544,0,'邵','祖南','SHAO','ZU NAN','330125196604070322','杭州市余杭区运河镇新宇村14组戴家里自然村33号','HANG ZHOU SHI YU HANG QU YUN HE ZHEN XIN YU CUN 14 ZU DAI JIA LI ZI RAN CUN 33 HAO','','','','',NULL,'交通银行余杭支行','6222600170008010372','shaozunan',''),
(321,1,1529881544,0,'姜','丽华','JIANG','LI HUA','330125196804040320','杭州市余杭区东湖街道庙前街42组北庙北弄10幢1单元 301室','HANG ZHOU SHI YU HANG QU DONG HU JIE DAO MIAO QIAN JIE 42 ZU BEI MIAO BEI NONG 10 ZHUANG 1 DAN YUAN 301 SHI','','','','',NULL,'农业银行余杭支行','6228480328515091572','jianglihua',''),
(322,1,1529881544,0,'陆','玥','LU','YUE','330501199409010847','浙江省湖州市吴兴区飞英街道吉山中路11号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FEI YING JIE DAO JI SHAN ZHONG LU 11 HAO','','','','',NULL,'中国工商银行湖州吴兴二里桥支行','6212261205000361430','luyue',''),
(323,1,1529881544,0,'孙','梅娥','SUN','MEI E','330511195807228221','浙江省湖州市吴兴区月河街道南园小区2幢101室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO NAN YUAN XIAO QU 2 ZHUANG 101 SHI','','','','',NULL,'湖州银行紫金桥支行','6231711000101013014','sunmeie',''),
(324,1,1529881544,0,'孙','百根','SUN','BAI GEN','330511195610078215','浙江省湖州市吴兴区八里店镇尹家圩村韩家兜62号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU BA LI DIAN ZHEN YIN JIA WEI CUN HAN JIA DOU 62 HAO','','','','',NULL,'建行吴兴支行','6227073300154508','sunbaigen',''),
(325,1,1529881544,0,'周','红悦','ZHOU','HONG YUE','330501199010014424','浙江省湖州市吴兴区八里店镇乌山居委会山西头12号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU BA LI DIAN ZHEN WU SHAN JU WEI HUI SHAN XI TOU 12 HAO','','','','',NULL,'中国工商银行湖州北门支行','6222021205007433448','zhouhongyue',''),
(326,1,1529881544,0,'乔','小华','QIAO','XIAO HUA','330501197203164462','浙江省湖州市八里店镇乌山村山西头12号','ZHE JIANG SHENG HU ZHOU SHI BA LI DIAN ZHEN WU SHAN CUN SHAN XI TOU 12 HAO','','','','',NULL,'农行吴兴支行','6228480359412763179','qiaoxiaohua',''),
(327,1,1529881544,0,'褚','建新','CHU','JIAN XIN','330511195610070037','浙江省湖州市南浔区南浔镇辽里褚家埭25号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU NAN XUN ZHEN LIAO LI CHU JIA DAI 25 HAO','','','','',NULL,'工行湖州市湖州经济开发区新城支行','6222081205002539758','chujianxin',''),
(328,1,1529881544,0,'何','玲宝','HE','LING BAO','330502195305300223','浙江省湖州市吴兴区月河街道马军巷小区10幢203室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO MA JUN XIANG XIAO QU 10 ZHUANG 203 SHI','','','','',NULL,'浙商银行湖州','6223093360010027082','helingbao',''),
(329,1,1529881544,0,'邵','伯龙','SHAO','BO LONG','320223195201070236','江苏省宜兴市宜城街道荆溪新村86号201室','JIANG SU SHENG YI XING SHI YI CHENG JIE DAO JING XI XIN CUN 86 HAO 201 SHI','','','','',NULL,'江苏农村商业银行宜兴闸口支行','6224521611002679094','shaobolong',''),
(330,1,1529881544,0,'卢','红','LU','HONG','330501196808129024','浙江省湖州市吴兴区妙西镇妙西村上街159号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU MIAO XI ZHEN MIAO XI CUN SHANG JIE 159 HAO','','','','',NULL,'工行湖州吴兴支行','6222021205000945901','luhong',''),
(331,1,1529881544,0,'周','静','ZHOU','JING','330501199809144422','浙江省湖州市吴兴区八里店镇乌山居委会山西头17号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU BA LI DIAN ZHEN WU SHAN JU WEI HUI SHAN XI TOU 17 HAO','','','','',NULL,'工行湖州吴兴八里店支行','6217231205003396868','zhoujing',''),
(332,1,1529881544,0,'谢','月珍','XIE','YUE ZHEN','330511195105090029','浙江省湖州市南浔区南浔镇浔南村大师兜8号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU NAN XUN ZHEN XUN NAN CUN DA SHI DOU 8 HAO','','','','',NULL,'工行湖州人瑞路支行','6222081205000228321','xieyuezhen',''),
(333,1,1529881544,0,'沈','国方','SHEN','GUO FANG','33050119840111345x','浙江省湖州市吴兴区仁皇山街道金家兜居民组葑田圩59号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU REN HUANG SHAN JIE DAO JIN JIA DOU JU MIN ZU FENG TIAN WEI 59 HAO','','','','',NULL,'农行湖州经济开发区支行','6228450358035661576','shenguofang',''),
(334,1,1529881544,0,'单','海林','DAN','HAI LIN','330502195802220427','浙江省湖州市吴兴区凤凰街道龙溪苑19幢206室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO LONG XI YUAN 19 ZHUANG 206 SHI','','','','',NULL,'工商银行湖州新城支行','6222081205000942020','danhailin',''),
(335,1,1529881544,0,'曹','树妹','CAO','SHU MEI','330511196206128027','浙江省湖州市八里店镇章家埭村章家埭47号','ZHE JIANG SHENG HU ZHOU SHI BA LI DIAN ZHEN ZHANG JIA DAI CUN ZHANG JIA DAI 47 HAO','','','','',NULL,'邮政储蓄','6221503360002459671','caoshumei',''),
(336,1,1529881544,0,'陈','涛','CHEN','TAO','330502195709120224','浙江省湖州市吴兴区月河街道马军巷小区46幢403室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO MA JUN XIANG XIAO QU 46 ZHUANG 403 SHI','','','','',NULL,'建行青铜路支行','4340621445699188','chentao',''),
(337,1,1529881544,0,'王','林美','WANG','LIN MEI','330502195805160220','浙江省湖州市吴兴区月河街道湖东新村40幢109室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO HU DONG XIN CUN 40 ZHUANG 109 SHI','','','','',NULL,'中国邮政储蓄银行股份有限公司湖州市吴兴支行','603360001200399706','wanglinmei',''),
(338,1,1529881544,0,'方','林琴','FANG','LIN QIN','330511196512298024','浙江省湖州市吴兴区月河街道南园小区2幢103室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO NAN YUAN XIAO QU 2 ZHUANG 103 SHI','','','','',NULL,'工商银行湖州前村支行','6222081205002176593','fanglinqin',''),
(339,1,1529881544,0,'金','玉堂','JIN','YU TANG','33052419581001841X','江苏省苏州市吴中区西山镇东村村爱国（8）下泾88号','JIANG SU SHENG SU ZHOU SHI WU ZHONG QU XI SHAN ZHEN DONG CUN CUN AI GUO （8） XIA JING 88 HAO','','','','',NULL,'中国农业银行苏州金庭支行','10541000460147719','jinyutang',''),
(340,1,1529881544,0,'薛','德黔','XUE','DE QIAN','522221195906301619','浙江省湖州市吴兴区龙泉街道学士路1号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU LONG QUAN JIE DAO XUE SHI LU 1 HAO','','','','',NULL,'建行吉山支行','4340611440045701','xuedeqian',''),
(341,1,1529881544,0,'王','明娟','WANG','MING JUAN','33052197003210248','浙江省湖州市吴兴区凤凰街道东辉苑3号楼206室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO DONG HUI YUAN 3 HAO LOU 206 SHI','','','','',NULL,'建行湖州经济开发区支行','6222801449141085583','wangmingjuan',''),
(342,1,1529881544,0,'方','敏','FANG','MIN','330502196212140642','浙江省湖州市吴兴区凤凰街道凤凰新村251幢402室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO FENG HUANG XIN CUN 251 ZHUANG 402 SHI','','','','',NULL,'中国工商银行湖州经济开发区支行','6222081205003425379','fangmin',''),
(343,1,1529881544,0,'陆','美婷','LU','MEI TING','330502195711181629','浙江省湖州市吴兴区凤凰街道陵阳路1825号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO LING YANG LU 1825 HAO','','','','',NULL,'中国工商银行湖州阳光城支行','6222081205002173517','lumeiting',''),
(344,1,1529881544,0,'姚','晓芳','YAO','XIAO FANG','330501197403180440','浙江省湖州市吴兴区爱山街道安定书院12号503室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU AI SHAN JIE DAO AN DING SHU YUAN 12 HAO 503 SHI','','','','',NULL,'工行湖州分行营业部','6217231205000714824','yaoxiaofang',''),
(345,1,1529881544,0,'刘','德林','LIU','DE LIN','33050219630116023','浙江省湖州市吴兴区朝阳街道南街61-63号603室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU CHAO YANG JIE DAO NAN JIE 61-63 HAO 603 SHI','','','','',NULL,'农行湖州绿色生态支行','6228480351148602714','liudelin',''),
(346,1,1529881544,0,'钟','良悦','ZHONG','LIANG YUE','33050119811127866X','浙江省湖州市南浔区和孚镇漾东村花园37号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU HE FU ZHEN YANG DONG CUN HUA YUAN 37 HAO','','','','',NULL,'中国工商银行湖州经济开发区新城支行','6215581205000232488','zhongliangyue',''),
(347,1,1529881544,0,'黄','琴娣','HUANG','QIN DI','330502196810161628','浙江省湖州市吴兴区凤凰街道陵阳路1825号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU FENG HUANG JIE DAO LING YANG LU 1825 HAO','','','','',NULL,'农行湖州城中支行','6228450350006627413','huangqindi',''),
(348,1,1529881544,0,'吴','建平','WU','JIAN PING','330501197704106412','浙江省湖州市吴兴区爱山街道红丰家园9幢102室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU AI SHAN JIE DAO HONG FENG JIA YUAN 9 ZHUANG 102 SHI','','','','',NULL,'农行湖州分行','6228480353116647218','wujianping',''),
(349,1,1529881544,0,'杜','华群','DU','HUA QUN','330501197702260221','浙江省湖州市凤凰街道滨河路小区2幢605室','ZHE JIANG SHENG HU ZHOU SHI FENG HUANG JIE DAO BIN HE LU XIAO QU 2 ZHUANG 605 SHI','','','','',NULL,'工商银行湖州分行','6222001205100181898','duhuaqun',''),
(350,1,1529881544,0,'王','琳','WANG','LIN','330501197311060425','浙江省湖州市吴兴区龙泉街道米兰花园19幢201室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU LONG QUAN JIE DAO MI LAN HUA YUAN 19 ZHUANG 201 SHI','','','','',NULL,'湖州招商银行','6226095720023535','wanglin',''),
(351,1,1529881544,0,'朱','鑫炎','ZHU','XIN YAN','330501199410042619','浙江省湖州市南浔区和孚镇和孚村芮介田30号','ZHE JIANG SHENG HU ZHOU SHI NAN XUN QU HE FU ZHEN HE FU CUN RUI JIE TIAN 30 HAO','','','','',NULL,'工商银行湖州菱湖支行','6217231205000053009','zhuxinyan',''),
(352,1,1529881544,0,'陆','兴宝','LU','XING BAO','330511195808158210','浙江省湖州市吴兴区八里店镇移沿山村南潘田4号','ZHE JIANG SHENG HU ZHOU SHI WU XING QU BA LI DIAN ZHEN YI YAN SHAN CUN NAN PAN TIAN 4 HAO','','','','',NULL,'湖州银行前村支行','6231711000102407744','luxingbao',''),
(353,1,1529881544,0,'乐','成广','LE','CHENG GUANG','330511196609260831','浙江省湖州市吴兴区月河街道文苑新村253幢601室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU YUE HE JIE DAO WEN YUAN XIN CUN 253 ZHUANG 601 SHI','','','','',NULL,'工商银行湖州经济开发区支行','6222081205003060820','lechengguang',''),
(354,1,1529881544,0,'卢','英','LU','YING','330501197001048025','浙江省湖州市妙西镇渡善村石桥头28号','ZHE JIANG SHENG HU ZHOU SHI MIAO XI ZHEN DU SHAN CUN SHI QIAO TOU 28 HAO','','','','',NULL,'农业银行湖州市长兴县和平镇支行','6228480352263608619','luying',''),
(355,1,1529881544,0,'陆','琦','LU','QI','330502196501230220','浙江省湖州市吴兴区仁皇山街道城市之心闻莺苑66幢101室','ZHE JIANG SHENG HU ZHOU SHI WU XING QU REN HUANG SHAN JIE DAO CHENG SHI ZHI XIN WEN YING YUAN 66 ZHUANG 101 SHI','','','','',NULL,'湖州浙商银行','6223093360010148177','luqi',''),
(356,1,1529881544,0,'丁','兵','DING','BING','330522196411051013','浙江省长兴县雉城街道坛家桥弄10号','ZHE JIANG SHENG CHANG XING XIAN ZHI CHENG JIE DAO TAN JIA QIAO NONG 10 HAO','','','','',NULL,'建设银行长兴支行','6217001440008039902','dingbing',''),
(357,1,1529881544,0,'应','小兰','YING','XIAO LAN','330722196709040027','浙江省永康市江南街道南苑路三弄22幢3号','ZHE JIANG SHENG YONG KANG SHI JIANG NAN JIE DAO NAN YUAN LU SAN NONG 22 ZHUANG 3 HAO','','','','',NULL,'中国农业银行永康支行','6228480381367378514','yingxiaolan','');




-- --------------------------------------------------------

--
-- Table structure for table `system_auth`
--

CREATE TABLE `system_auth` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) UNSIGNED DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) UNSIGNED DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

--
-- Dumping data for table `system_auth`
--

INSERT INTO `system_auth` (`id`, `title`, `status`, `sort`, `desc`, `create_by`, `create_at`) VALUES
(1, '客服', 1, 0, 'sada', 0, 1497933664),
(2, '信息', 1, 0, '信息管理员', 0, 1529682485);

-- --------------------------------------------------------

--
-- Table structure for table `system_auth_node`
--

CREATE TABLE `system_auth_node` (
  `auth` bigint(20) UNSIGNED DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

--
-- Dumping data for table `system_auth_node`
--

INSERT INTO `system_auth_node` (`auth`, `node`) VALUES
(2, 'shares'),
(2, 'shares/agent'),
(2, 'shares/agent/index'),
(2, 'shares/agent/add_agent'),
(2, 'shares/agent/edit_agent'),
(2, 'shares/agent/agent_forbid'),
(2, 'shares/agent/agent_resume'),
(2, 'shares/agent/add_user'),
(2, 'shares/agent/edit_user'),
(2, 'shares/agent/user'),
(2, 'shares/agent/out'),
(2, 'shares/agent/exportexcel'),
(2, 'shares/info'),
(2, 'shares/info/index'),
(2, 'shares/info/show_info'),
(2, 'shares/info/type'),
(2, 'shares/info/edit_cate');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  `create_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `name`, `value`, `create_at`) VALUES
(148, 'site_name', 'Kensteel1.0Bate', NULL),
(149, 'site_copy', 'kensteel © 2014~2018', NULL),
(164, 'storage_type', 'local', NULL),
(165, 'storage_qiniu_is_https', '1', NULL),
(166, 'storage_qiniu_bucket', 'static', NULL),
(167, 'storage_qiniu_domain', 'static.ctolog.com', NULL),
(168, 'storage_qiniu_access_key', '', NULL),
(169, 'storage_qiniu_secret_key', '', NULL),
(170, 'storage_qiniu_region', '华东', NULL),
(173, 'app_name', 'Kensteel', NULL),
(174, 'app_version', 'V1.0', NULL),
(176, 'browser_icon', 'http://localhost/static/upload/0edf9e3c63382d48/b3cdd27625f66190.png', NULL),
(184, 'wechat_appid', '', NULL),
(185, 'wechat_appsecret', '', NULL),
(186, 'wechat_token', '', NULL),
(187, 'wechat_encodingaeskey', '', NULL),
(188, 'wechat_mch_id', '', NULL),
(189, 'wechat_partnerkey', '', NULL),
(194, 'wechat_cert_key', '', NULL),
(196, 'wechat_cert_cert', '', NULL),
(197, 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f', NULL),
(198, 'tongji_cnzz_key', '1261854404', NULL),
(199, 'storage_oss_bucket', '', NULL),
(200, 'storage_oss_keyid', '', NULL),
(201, 'storage_oss_secret', '', NULL),
(202, 'storage_oss_domain', '', NULL),
(203, 'storage_oss_is_https', '1', NULL),
(204, 'web_site_close', '1', NULL),
(205, 'seo_title', 'kensteel', NULL),
(206, 'seo_keywords', '11111111111', NULL),
(207, 'seo_description', '1111', NULL),
(208, 'web_site_icp', '浙ICP备 16035778号-4', NULL),
(209, 'company_address', '浙江乌镇', NULL),
(210, 'company_phone', '88728888', NULL),
(211, 'company_fixed_line', '159********', NULL),
(212, 'company_qq', '316128344', NULL),
(213, 'company_url', 'http://127.0.0.1', NULL),
(214, 'company_email', 'kensteel@qq.com', NULL),
(215, 'company_headquarters', '乌镇乐点', NULL),
(216, 'company_head', 'jonny', NULL),
(217, 'company_head_mobile', '', 1497498198);

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`id`, `ip`, `node`, `username`, `action`, `content`, `create_at`) VALUES
(1, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 2017),
(2, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 2017),
(3, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 2017),
(4, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 2017),
(5, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(6, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(7, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(8, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(9, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(10, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(11, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(12, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(13, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(14, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(15, '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(16, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(17, '27.38.4.10', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(18, '27.38.4.10', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', 0),
(19, '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(20, '14.155.136.98', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(21, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(22, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(23, '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', 0),
(24, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(25, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(26, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(27, '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(28, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(29, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(30, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(31, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(32, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(33, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(34, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(35, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(36, '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', 0),
(37, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(38, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(39, '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', 0),
(40, '0.0.0.0', 'admin/login/index', 'info', '系统管理', '用户登录系统成功', 0),
(41, '0.0.0.0', 'admin/login/out', 'info', '系统管理', '用户退出系统成功', 0),
(42, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0),
(43, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(44, '0.0.0.0', 'admin/config/index', 'admin', '系统管理', '修改系统配置参数成功', 0),
(45, '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_menu`
--

CREATE TABLE `system_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pid` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) UNSIGNED DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

--
-- Dumping data for table `system_menu`
--

INSERT INTO `system_menu` (`id`, `pid`, `title`, `node`, `icon`, `url`, `params`, `target`, `sort`, `status`, `create_by`, `create_at`) VALUES
(2, 0, '系统管理', '', '', '#', '', '_self', 1000, 1, 0, 2015),
(3, 4, '后台首页', '', 'fa fa-fw fa-tachometer', 'admin/index/main', '', '_self', 10, 1, 0, 2015),
(4, 2, '系统配置', '', '', '#', '', '_self', 100, 1, 0, 2016),
(5, 4, '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', 20, 1, 0, 2016),
(6, 4, '文件存储', '', 'fa fa-hdd-o', 'admin/config/file', '', '_self', 30, 1, 0, 2016),
(9, 20, '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', 50, 1, 0, 2017),
(19, 20, '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', 20, 1, 0, 2015),
(20, 2, '系统权限', '', '', '#', '', '_self', 200, 1, 0, 2016),
(21, 20, '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', 30, 1, 0, 2015),
(22, 20, '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', 10, 1, 0, 2015),
(29, 20, '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', 40, 1, 0, 2016),
(61, 0, '微信管理', '', '', '#', '', '_self', 2000, 1, 0, 2017),
(62, 61, '微信对接配置', '', '', '#', '', '_self', 0, 1, 0, 2017),
(63, 62, '微信接口配置\r\n', '', 'fa fa-usb', 'wechat/config/index', '', '_self', 0, 1, 0, 2017),
(64, 62, '微信支付配置', '', 'fa fa-paypal', 'wechat/config/pay', '', '_self', 0, 1, 0, 2017),
(65, 61, '微信粉丝管理', '', '', '#', '', '_self', 0, 1, 0, 2017),
(66, 65, '粉丝标签', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', 0, 1, 0, 2017),
(67, 65, '已关注粉丝', '', 'fa fa-wechat', 'wechat/fans/index', '', '_self', 0, 1, 0, 2017),
(68, 61, '微信订制', '', '', '#', '', '_self', 0, 1, 0, 2017),
(69, 68, '微信菜单定制', '', 'glyphicon glyphicon-phone', 'wechat/menu/index', '', '_self', 0, 1, 0, 2017),
(70, 68, '关键字管理', '', 'fa fa-paw', 'wechat/keys/index', '', '_self', 0, 1, 0, 2017),
(71, 68, '关注自动回复', '', 'fa fa-commenting-o', 'wechat/keys/subscribe', '', '_self', 0, 1, 0, 2017),
(81, 68, '无配置默认回复', '', 'fa fa-commenting-o', 'wechat/keys/defaults', '', '_self', 0, 1, 0, 2017),
(82, 61, '素材资源管理', '', '', '#', '', '_self', 0, 1, 0, 2017),
(83, 82, '添加图文', '', 'fa fa-folder-open-o', 'wechat/news/add?id=1', '', '_self', 0, 1, 0, 2017),
(85, 82, '图文列表', '', 'fa fa-file-pdf-o', 'wechat/news/index', '', '_self', 0, 1, 0, 2017),
(86, 65, '粉丝黑名单', '', 'fa fa-reddit-alien', 'wechat/fans/back', '', '_self', 0, 1, 0, 2017),
(87, 0, '内容管理', '', 'fa fa-credit-card', '#', '', '_self', 1100, 1, 0, 2017),
(89, 87, '前台管理', '', '', '#', '', '_self', 0, 1, 0, 2017),
(91, 89, '导航列表', '', 'fa fa-bars', 'cms/nav/index', '', '_self', 0, 1, 0, 2017),
(92, 89, '轮播列表', '', '', 'cms/shuff/index', '', '_self', 0, 1, 0, 2017),
(93, 89, '友情链接', '', '', 'cms/link/index', '', '_self', 0, 1, 0, 2017),
(94, 87, '案例管理', '', '', '#', '', '_self', 2, 1, 0, 2017),
(95, 94, '案例列表', '', '', 'cms/cases/index', '', '_self', 0, 1, 0, 2017),
(96, 94, '案例分类', '', '', 'cms/cases/index_cate', '', '_self', 0, 1, 0, 2017),
(97, 87, '文章管理', '', '', '#', '', '_self', 1, 1, 0, 2017),
(98, 97, '分类列表', '', '', 'cms/article/index_cate', '', '_self', 0, 1, 0, 2017),
(99, 97, '文章列表', '', '', 'cms/article/index', '', '_self', 0, 1, 0, 2017),
(100, 102, '关于我们', '', '', 'cms/about/index', '', '_self', 0, 1, 0, 0),
(101, 102, '类型列表', '', '', 'cms/types/index', '', '_self', 0, 1, 0, 0),
(102, 87, '产品与服务', '', '', '#', '', '_self', 3, 1, 0, 1497499886),
(103, 0, '股票管理', '', 'glyphicon glyphicon-th', '#', '', '_self', 3000, 1, 0, 1529201869),
(104, 103, '财务管理', '', '', '#', '', '_self', 0, 1, 0, 1529202907),
(105, 103, '信息管理', '', '', '#', '', '_self', 0, 1, 0, 1529202924),
(107, 103, '代理管理', '', '', '#', '', '_self', 0, 1, 0, 1529202966),
(108, 107, '代理信息', '', 'fa fa-television', '/shares/agent/index', '', '_self', 0, 1, 0, 1529203195),
(109, 105, '信息列表', '', 'fa fa-mixcloud', '/shares/info/index', '', '_self', 0, 1, 0, 1529203233),
(110, 104, '财务信息', '', 'fa fa-stop-circle', '/shares/account/index', '', '_self', 0, 1, 0, 1529203297),
(111, 105, '套餐分类', '', 'fa fa-codiepie', '/shares/info/type', '', '_self', 0, 1, 0, 1529203593),
(112, 107, '会员信息', '', 'fa fa-spoon', '/shares/agent/user', '', '_self', 0, 1, 0, 1529220161),
(113, 103, '股票管理', '', 'fa fa-scribd', '#', '', '_self', 0, 1, 0, 1529823463),
(114, 113, '股票信息', '', 'fa fa-adjust', '/shares/shares/index', '', '_self', 0, 1, 0, 1529823561);

-- --------------------------------------------------------

--
-- Table structure for table `system_node`
--

CREATE TABLE `system_node` (
  `id` int(11) UNSIGNED NOT NULL,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统节点表' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `system_node`
--

INSERT INTO `system_node` (`id`, `node`, `title`, `is_menu`, `is_auth`, `create_at`) VALUES
(3, 'admin', '系统管理', 0, 1, 2017),
(4, 'admin/menu/add', '添加菜单', 0, 1, 2017),
(5, 'admin/config', '系统配置', 0, 1, 2017),
(6, 'admin/config/index', '网站配置', 1, 1, 2017),
(7, 'admin/config/file', '文件配置', 1, 1, 2017),
(8, 'admin/config/mail', '邮件配置', 0, 0, 2017),
(9, 'admin/config/sms', '短信配置', 0, 0, 2017),
(10, 'admin/menu/index', '菜单列表', 1, 1, 2017),
(11, 'admin/node/index', '节点列表', 1, 1, 2017),
(12, 'admin/node/save', '节点更新', 0, 1, 2017),
(13, 'store/menu/index', '菜单列表', 1, 1, 2017),
(14, 'store/menu/add', '添加菜单', 0, 1, 2017),
(15, 'store/menu/edit', '编辑菜单', 0, 1, 2017),
(16, 'store/menu/del', '删除菜单', 0, 1, 2017),
(17, 'admin/index/index', '', 1, 1, 2017),
(18, 'admin/index/main', '', 0, 1, 2017),
(19, 'admin/index/pass', NULL, 0, 1, 2017),
(20, 'admin/index/info', NULL, 0, 1, 2017),
(21, 'store/menu/tagmove', '移动标签', 0, 1, 2017),
(22, 'store/menu/tagedit', '编辑标签', 0, 1, 2017),
(23, 'store/menu/tagdel', '删除标签', 0, 1, 2017),
(24, 'store/menu/resume', '启用菜单', 0, 1, 2017),
(25, 'store/menu/forbid', '禁用菜单', 0, 1, 2017),
(26, 'store/menu/tagadd', '添加标签', 0, 1, 2017),
(27, 'store/menu/hot', '设置热卖', 0, 1, 2017),
(28, 'admin/index', '', 0, 1, 2017),
(29, 'store/order/index', '订单列表', 1, 1, 2017),
(30, 'store/index/qrcimg', '店铺二维码', 0, 1, 2017),
(31, 'store/index/edit', '编辑店铺', 0, 1, 2017),
(32, 'store/index/qrc', '二维码列表', 0, 1, 2017),
(33, 'store/index/add', '添加店铺', 0, 1, 2017),
(34, 'store/index/index', '我的店铺', 1, 1, 2017),
(35, 'store/api/delcache', NULL, 0, 1, 2017),
(36, 'store/api/getcache', NULL, 0, 1, 2017),
(37, 'store/api/setcache', NULL, 0, 1, 2017),
(38, 'store/api/response', NULL, 0, 1, 2017),
(39, 'store/api/auth', NULL, 0, 1, 2017),
(40, 'admin/user/resume', '启用用户', 1, 1, 2017),
(41, 'admin/user/forbid', '禁用用户', 1, 1, 2017),
(42, 'admin/user/del', '删除用户', 0, 1, 2017),
(43, 'admin/user/pass', '密码修改', 0, 1, 2017),
(44, 'admin/user/edit', '编辑用户', 1, 1, 2017),
(45, 'admin/user/index', '用户列表', 1, 1, 2017),
(46, 'admin/user/auth', '用户授权', 1, 1, 2017),
(47, 'admin/user/add', '新增用户', 1, 1, 2017),
(48, 'admin/plugs/icon', NULL, 0, 1, 2017),
(49, 'admin/plugs/upload', NULL, 0, 1, 2017),
(50, 'admin/plugs/upfile', NULL, 0, 1, 2017),
(51, 'admin/plugs/upstate', NULL, 0, 1, 2017),
(52, 'admin/menu/resume', '菜单启用', 0, 1, 2017),
(53, 'admin/menu/forbid', '菜单禁用', 1, 1, 2017),
(54, 'admin/login/index', NULL, 0, 1, 2017),
(55, 'admin/login/out', '', 0, 1, 2017),
(56, 'admin/menu/edit', '编辑菜单', 0, 0, 2017),
(57, 'admin/menu/del', '菜单删除', 0, 1, 2017),
(58, 'store/menu', '菜谱管理', 0, 1, 2017),
(59, 'store/index', '店铺管理', 0, 1, 2017),
(60, 'store', '店铺管理', 0, 1, 2017),
(61, 'store/order', '订单管理', 0, 1, 2017),
(62, 'admin/user', '用户管理', 0, 1, 2017),
(63, 'admin/node', '节点管理', 0, 1, 2017),
(64, 'admin/menu', '菜单管理', 0, 1, 2017),
(65, 'admin/auth', '权限管理', 0, 1, 2017),
(66, 'admin/auth/index', '权限列表', 1, 1, 2017),
(67, 'admin/auth/apply', '权限节点', 1, 1, 2017),
(68, 'admin/auth/add', '添加权', 0, 1, 2017),
(69, 'admin/auth/edit', '编辑权限', 0, 1, 2017),
(70, 'admin/auth/forbid', '禁用权限', 0, 1, 2017),
(71, 'admin/auth/resume', '启用权限', 0, 1, 2017),
(72, 'admin/auth/del', '删除权限', 0, 1, 2017),
(73, 'admin/log/index', '日志列表', 1, 1, 2017),
(74, 'admin/log/del', '删除日志', 1, 1, 2017),
(75, 'admin/log', '系统日志', 0, 1, 2017),
(76, 'wechat', '微信管理', 0, 1, 2017),
(77, 'wechat/article', '微信文章', 0, 1, 2017),
(78, 'wechat/article/index', '文章列表', 1, 1, 2017),
(79, 'wechat/config', '微信配置', 0, 1, 2017),
(80, 'wechat/config/index', '微信接口配置', 1, 1, 2017),
(81, 'wechat/config/pay', '微信支付配置', 1, 1, 2017),
(82, 'wechat/fans', '微信粉丝', 0, 1, 2017),
(83, 'wechat/fans/index', '粉丝列表', 1, 1, 2017),
(84, 'wechat/index', '微信主页', 0, 1, 2017),
(85, 'wechat/index/index', '微信主页', 1, 1, 2017),
(86, 'wechat/keys', '微信关键字', 0, 1, 2017),
(87, 'wechat/keys/index', '关键字列表', 1, 1, 2017),
(88, 'wechat/keys/subscribe', '关键自动回复', 1, 1, 2017),
(89, 'wechat/keys/defaults', '默认自动回复', 1, 1, 2017),
(90, 'wechat/menu', '微信菜单管理', 0, 1, 2017),
(91, 'wechat/menu/index', '微信菜单', 1, 1, 2017),
(92, 'wechat/news', '微信图文管理', 0, 1, 2017),
(93, 'wechat/news/index', '图文列表', 1, 1, 2017),
(94, 'wechat/notify/index', '', 0, 0, 2017),
(95, 'wechat/api/index', '', 1, 1, 2017),
(96, 'wechat/api', '', 0, 1, 2017),
(97, 'wechat/notify', '', 0, 1, 2017),
(98, 'wechat/fans/sync', '同步粉丝', 0, 1, 2017),
(99, 'wechat/menu/edit', '编辑微信菜单', 0, 1, 2017),
(100, 'wechat/menu/cancel', '取消微信菜单', 0, 1, 2017),
(101, 'wechat/keys/edit', '编辑关键字', 0, 1, 2017),
(102, 'wechat/keys/add', '添加关键字', 0, 1, 2017),
(103, 'wechat/review/index', NULL, 0, 1, 2017),
(104, 'wechat/review', '', 0, 1, 2017),
(105, 'wechat/keys/del', '删除关键字', 0, 1, 2017),
(106, 'wechat/news/add', '添加图文', 0, 1, 2017),
(107, 'wechat/news/select', '图文选择器', 1, 1, 2017),
(108, 'wechat/keys/resume', '启用关键字', 0, 1, 2017),
(109, 'wechat/news/edit', '编辑图文', 0, 1, 2017),
(110, 'wechat/news/push', '推送图文', 0, 1, 2017),
(111, 'wechat/news/del', '删除图文', 0, 1, 2017),
(112, 'wechat/keys/forbid', '禁用关键字', 0, 1, 2017),
(113, 'wechat/tags/index', '标签列表', 1, 1, 2017),
(114, 'wechat/tags/add', '添加标签', 0, 1, 2017),
(115, 'wechat/tags/edit', '编辑标签', 0, 1, 2017),
(116, 'wechat/tags/sync', '同步标签', 0, 1, 2017),
(117, 'wechat/tags', '粉丝标签管理', 0, 1, 2017),
(118, 'wechat/fans/backdel', '移除粉丝黑名单', 0, 1, 2017),
(119, 'wechat/fans/backadd', '移入粉丝黑名单', 0, 1, 2017),
(120, 'wechat/fans/back', '粉丝黑名单列表', 1, 1, 2017),
(121, 'wechat/fans/tagadd', '添加粉丝标签', 0, 1, 2017),
(122, 'wechat/fans/tagdel', '删除粉丝标签', 0, 1, 2017),
(123, 'cms', 'cms网站管理', 0, 1, 1497499500),
(124, 'cms/about', '产品与服务', 0, 1, 1497499508),
(125, 'cms/article', '文章管理', 0, 1, 1497499526),
(126, 'cms/about/index', '列表页', 1, 1, 1497499526),
(127, 'cms/article/index', '文章列表', 1, 1, 1497499550),
(128, 'cms/article/add', '添加文章', 0, 1, 1497499557),
(129, 'cms/article/edit', '编辑文章', 0, 1, 1497499560),
(130, 'cms/article/forbid', '文章禁用', 0, 1, 1497499602),
(131, 'cms/article/resume', '文章启用', 0, 1, 1497499605),
(132, 'cms/article/del', '删除文章', 0, 1, 1497499612),
(133, 'cms/article/index_cate', '文章分类列表', 1, 1, 1497499612),
(134, 'cms/article/add_cate', '添加分类', 0, 1, 1497499616),
(135, 'cms/article/edit_cate', '编辑分类', 0, 1, 1497499617),
(136, 'cms/article/del_cate', '删除分类', 0, 1, 1497499618),
(137, 'cms/cases', '案例管理', 0, 1, 1497499651),
(138, 'cms/cases/index', '案例列表', 1, 1, 1497499656),
(139, 'cms/cases/add', '添加案例', 0, 1, 1497499661),
(140, 'cms/cases/edit', '编辑案例', 0, 1, 1497499664),
(141, 'cms/cases/forbid', '禁用案例', 0, 1, 1497499669),
(142, 'cms/cases/resume', '启用案例', 0, 1, 1497499672),
(143, 'cms/cases/del', '删除案例', 0, 1, 1497499677),
(144, 'cms/cases/index_cate', '案例分类列表', 0, 1, 1497499682),
(145, 'cms/cases/add_cate', '添加案例分类', 0, 1, 1497499686),
(146, 'cms/cases/edit_cate', '编辑案例分类', 0, 1, 1497499690),
(147, 'cms/cases/del_cate', '删除案例分类', 0, 1, 1497499705),
(148, 'cms/about/add', '添加', 0, 1, 1497499714),
(149, 'cms/about/edit', '编辑', 0, 1, 1497499715),
(150, 'cms/about/del', '删除', 0, 1, 1497499717),
(151, 'cms/config/index', '', 0, 1, 1497499742),
(152, 'cms/link', '友情链接', 0, 1, 1497499755),
(153, 'cms/link/index', '友情链接列表', 1, 1, 1497499763),
(154, 'cms/link/add', '添加', 0, 1, 1497499768),
(155, 'cms/link/edit', '编辑', 0, 1, 1497499774),
(156, 'cms/link/forbid', '禁用', 0, 1, 1497499780),
(157, 'cms/link/resume', '启用', 0, 1, 1497499784),
(158, 'cms/nav', '导航管理', 0, 1, 1497499791),
(159, 'cms/nav/index', '导航列表', 1, 1, 1497499793),
(160, 'cms/nav/add', '添加导航', 0, 1, 1497499806),
(161, 'cms/nav/edit', '编辑导航', 0, 1, 1497499809),
(162, 'cms/nav/forbid', '禁用导航', 0, 1, 1497499815),
(163, 'cms/nav/resume', '启用导航', 0, 1, 1497499817),
(164, 'cms/nav/del', '删除导航', 0, 1, 1497499823),
(165, 'cms/shuff', '轮播管理', 0, 1, 1497500183),
(166, 'cms/shuff/index', '轮播列表', 1, 1, 1497500247),
(167, 'cms/shuff/add', '添加轮播', 0, 1, 1497500254),
(168, 'cms/shuff/edit', '编辑轮播', 0, 1, 1497500257),
(169, 'cms/shuff/forbid', '禁用轮播', 0, 1, 1497500266),
(170, 'cms/shuff/resume', '启用轮播', 0, 1, 1497500273),
(171, 'cms/types', '类型管理', 0, 1, 1497500281),
(172, 'cms/types/index', '类型列表', 1, 1, 1497500285),
(173, 'cms/types/add', '添加', 0, 1, 1497500289),
(174, 'cms/types/edit', '编辑', 0, 1, 1497500292),
(175, 'cms/types/del', '删除', 0, 1, 1497500294),
(176, 'cms/product', '产品管理', 0, 1, 1529201959),
(177, 'cms/product/index', NULL, 0, 0, 1529201960),
(178, 'shares/agent/add_agent', '增加代理', 0, 1, 1529766652),
(179, 'shares/agent/edit_agent', '编辑代理', 0, 1, 1529766815),
(180, 'shares/agent/agent_forbid', '代理禁用', 0, 1, 1529766918),
(181, 'shares/agent/agent_resume', '代理启用', 0, 1, 1529766926),
(182, 'shares/agent/add_user', '增加用户', 0, 1, 1529767017),
(183, 'shares/agent/edit_user', '编辑用户', 0, 1, 1529767211),
(184, 'shares/agent/user', '用户管理', 1, 1, 1529767224),
(185, 'shares/agent/out', '', 0, 1, 1529767247),
(186, 'shares/agent/exportexcel', '', 0, 1, 1529767543),
(187, 'shares/info/index', '信息列表', 1, 1, 1529767798),
(188, 'shares/info/show_info', '展示信息', 0, 1, 1529767843),
(189, 'shares/info/type', '类型列表', 1, 1, 1529767849),
(190, 'shares/info/edit_cate', '编辑类型', 0, 1, 1529767858),
(191, 'shares/account/index', '财务列表', 1, 1, 1529767892),
(192, 'shares/account/edit_account', '财务编辑', 0, 1, 1529767897),
(193, 'shares/agent/index', '代理管理', 1, 1, 1529795918);

-- --------------------------------------------------------

--
-- Table structure for table `system_sequence`
--

CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

--
-- Dumping data for table `system_sequence`
--

INSERT INTO `system_sequence` (`id`, `type`, `sequence`, `create_at`) VALUES
(1, 'WECHAT-PAY-TEST', '1278911425', 0),
(2, 'WXPAY-OUTER-NO', '943572063331662367', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_user`
--

CREATE TABLE `system_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) UNSIGNED DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统用户表';

--
-- Dumping data for table `system_user`
--

INSERT INTO `system_user` (`id`, `username`, `password`, `qq`, `mail`, `phone`, `desc`, `login_num`, `login_at`, `status`, `authorize`, `is_deleted`, `create_by`, `create_at`) VALUES
(10000, 'admin', '670b14728ad9902aecba32e22fa4f6bd', '22222222', '11111@qq.com', '13823800000', '<script>alert(\"a\")</script>', 12622, '2018-06-24 14:11:39', 1, '47,49', 0, NULL, 2015),
(10001, 'info', '670b14728ad9902aecba32e22fa4f6bd', NULL, '', '', '', 1, '2018-06-24 07:26:31', 1, '2', 0, NULL, 1529796352);

-- --------------------------------------------------------

--
-- Table structure for table `wechat_fans`
--

CREATE TABLE `wechat_fans` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '粉丝表ID',
  `appid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '公众号Appid',
  `groupid` bigint(20) UNSIGNED DEFAULT NULL COMMENT '分组ID',
  `tagid_list` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '标签id',
  `is_back` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否为黑名单用户',
  `subscribe` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用户是否订阅该公众号,0：未关注,1：已关注',
  `openid` char(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '用户的标识,对当前公众号唯一',
  `spread_openid` char(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '推荐人OPENID',
  `spread_at` datetime DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '用户的昵称',
  `sex` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '用户的性别,值为1时是男性,值为2时是女性,值为0时是未知',
  `country` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在国家',
  `province` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在省份',
  `city` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户所在城市',
  `language` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户的语言,简体中文为zh_CN',
  `headimgurl` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户头像',
  `subscribe_time` bigint(20) UNSIGNED DEFAULT NULL COMMENT '用户关注时间',
  `subscribe_at` datetime DEFAULT NULL COMMENT '关注时间',
  `unionid` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'unionid',
  `remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `expires_in` bigint(20) UNSIGNED DEFAULT '0' COMMENT '有效时间',
  `refresh_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '刷新token',
  `access_token` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '访问token',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=sjis COMMENT='微信粉丝';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_fans_tags`
--

CREATE TABLE `wechat_fans_tags` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '标签ID',
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `name` varchar(35) DEFAULT NULL COMMENT '标签名称',
  `count` int(11) UNSIGNED DEFAULT NULL COMMENT '总数',
  `create_at` int(11) DEFAULT '0' COMMENT '创建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信会员标签';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_keys`
--

CREATE TABLE `wechat_keys` (
  `id` bigint(20) NOT NULL,
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
  `news_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT '图文ID',
  `sort` bigint(20) UNSIGNED DEFAULT '0' COMMENT '排序字段',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '0 禁用,1 启用',
  `create_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=' 微信关键字';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_menu`
--

CREATE TABLE `wechat_menu` (
  `id` bigint(16) UNSIGNED NOT NULL,
  `index` bigint(20) DEFAULT NULL,
  `pindex` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父id',
  `type` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单类型 null主菜单 link链接 keys关键字',
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '文字内容',
  `sort` bigint(20) UNSIGNED DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态(0禁用1启用)',
  `create_by` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wechat_menu`
--

INSERT INTO `wechat_menu` (`id`, `index`, `pindex`, `type`, `name`, `content`, `sort`, `status`, `create_by`, `create_at`) VALUES
(1502, 1, 0, 'text', '关键字', '2234123413', 0, 1, 0, 2017),
(1503, 11, 1, 'keys', '图片', '图片', 0, 1, 0, 2017),
(1504, 12, 1, 'keys', '音乐', '音乐', 1, 1, 0, 2017),
(1505, 2, 0, 'event', '事件类', 'pic_weixin', 1, 1, 0, 2017),
(1506, 3, 0, 'view', '微信支付', 'index/wap/payjs', 2, 1, 0, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `wechat_news`
--

CREATE TABLE `wechat_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `article_id` varchar(60) DEFAULT NULL COMMENT '关联图文ID,用,号做分割',
  `is_deleted` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否删除',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信图文表';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_news_article`
--

CREATE TABLE `wechat_news_article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '素材标题',
  `local_url` varchar(300) DEFAULT NULL COMMENT '永久素材显示URL',
  `show_cover_pic` tinyint(4) UNSIGNED DEFAULT '0' COMMENT '是否显示封面 0不显示,1 显示',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `digest` varchar(300) DEFAULT NULL COMMENT '摘要内容',
  `content` longtext COMMENT '图文内容',
  `content_source_url` varchar(200) DEFAULT NULL COMMENT '图文消息原文地址',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_news_image`
--

CREATE TABLE `wechat_news_image` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信服务器图片';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_news_media`
--

CREATE TABLE `wechat_news_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appid` varchar(200) DEFAULT NULL COMMENT '公众号ID',
  `md5` varchar(32) DEFAULT NULL COMMENT '文件md5',
  `type` varchar(20) DEFAULT NULL COMMENT '媒体类型',
  `media_id` varchar(100) DEFAULT NULL COMMENT '永久素材MediaID',
  `local_url` varchar(300) DEFAULT NULL COMMENT '本地文件链接',
  `media_url` varchar(300) DEFAULT NULL COMMENT '远程图片链接',
  `create_at` int(11) DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信素材表';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_pay_notify`
--

CREATE TABLE `wechat_pay_notify` (
  `id` int(20) NOT NULL,
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
  `create_at` int(11) DEFAULT '0' COMMENT '本地系统时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付日志表';

-- --------------------------------------------------------

--
-- Table structure for table `wechat_pay_prepayid`
--

CREATE TABLE `wechat_pay_prepayid` (
  `id` int(20) NOT NULL,
  `appid` char(50) DEFAULT NULL COMMENT '公众号APPID',
  `from` char(32) DEFAULT 'shop' COMMENT '支付来源',
  `fee` bigint(20) UNSIGNED DEFAULT NULL COMMENT '支付费用(分)',
  `trade_type` varchar(20) DEFAULT NULL COMMENT '订单类型',
  `order_no` varchar(50) DEFAULT NULL COMMENT '内部订单号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '外部订单号',
  `prepayid` varchar(500) DEFAULT NULL COMMENT '预支付码',
  `expires_in` bigint(20) UNSIGNED DEFAULT NULL COMMENT '有效时间',
  `transaction_id` varchar(64) DEFAULT NULL COMMENT '微信平台订单号',
  `is_pay` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '1已支付,0未支退款',
  `pay_at` datetime DEFAULT NULL COMMENT '支付时间',
  `is_refund` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否退款,退款单号(T+原来订单)',
  `refund_at` int(11) NOT NULL COMMENT '退款时间',
  `create_at` int(11) NOT NULL COMMENT '本地系统时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单号对应表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_about`
--
ALTER TABLE `cms_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_aboutus_cate`
--
ALTER TABLE `cms_aboutus_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_aboutus_doc`
--
ALTER TABLE `cms_aboutus_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_agent`
--
ALTER TABLE `cms_agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agentname` (`agentname`);

--
-- Indexes for table `cms_article`
--
ALTER TABLE `cms_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_article_cate`
--
ALTER TABLE `cms_article_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_case`
--
ALTER TABLE `cms_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_case_cate`
--
ALTER TABLE `cms_case_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_contact`
--
ALTER TABLE `cms_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_joinus`
--
ALTER TABLE `cms_joinus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_link`
--
ALTER TABLE `cms_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_nav`
--
ALTER TABLE `cms_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pruduct`
--
ALTER TABLE `cms_pruduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pruduct_cate`
--
ALTER TABLE `cms_pruduct_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_shares`
--
ALTER TABLE `cms_shares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_shares_cate`
--
ALTER TABLE `cms_shares_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_shuff`
--
ALTER TABLE `cms_shuff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_type`
--
ALTER TABLE `cms_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `system_auth`
--
ALTER TABLE `system_auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  ADD KEY `index_system_auth_status` (`status`) USING BTREE;

--
-- Indexes for table `system_auth_node`
--
ALTER TABLE `system_auth_node`
  ADD KEY `index_system_auth_auth` (`auth`) USING BTREE,
  ADD KEY `index_system_auth_node` (`node`) USING BTREE;

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_menu_node` (`node`) USING BTREE;

--
-- Indexes for table `system_node`
--
ALTER TABLE `system_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_system_node_node` (`node`);

--
-- Indexes for table `system_sequence`
--
ALTER TABLE `system_sequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  ADD KEY `index_system_sequence_type` (`type`),
  ADD KEY `index_system_sequence_number` (`sequence`);

--
-- Indexes for table `system_user`
--
ALTER TABLE `system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_system_user_username` (`username`) USING BTREE;

--
-- Indexes for table `wechat_fans`
--
ALTER TABLE `wechat_fans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_fans_spread_openid` (`spread_openid`) USING BTREE,
  ADD KEY `index_wechat_fans_openid` (`openid`) USING BTREE;

--
-- Indexes for table `wechat_fans_tags`
--
ALTER TABLE `wechat_fans_tags`
  ADD KEY `index_wechat_fans_tags_id` (`id`) USING BTREE,
  ADD KEY `index_wechat_fans_tags_appid` (`appid`) USING BTREE;

--
-- Indexes for table `wechat_keys`
--
ALTER TABLE `wechat_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechat_menu`
--
ALTER TABLE `wechat_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wechat_menu_pid` (`pindex`) USING BTREE;

--
-- Indexes for table `wechat_news`
--
ALTER TABLE `wechat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_new_artcle_id` (`article_id`) USING BTREE;

--
-- Indexes for table `wechat_news_article`
--
ALTER TABLE `wechat_news_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechat_news_image`
--
ALTER TABLE `wechat_news_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechat_news_media`
--
ALTER TABLE `wechat_news_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wechat_pay_notify`
--
ALTER TABLE `wechat_pay_notify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_pay_notify_openid` (`openid`) USING BTREE,
  ADD KEY `index_wechat_pay_notify_out_trade_no` (`out_trade_no`) USING BTREE,
  ADD KEY `index_wechat_pay_notify_transaction_id` (`transaction_id`) USING BTREE;

--
-- Indexes for table `wechat_pay_prepayid`
--
ALTER TABLE `wechat_pay_prepayid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_wechat_pay_prepayid_outer_no` (`out_trade_no`) USING BTREE,
  ADD KEY `index_wechat_pay_prepayid_order_no` (`order_no`) USING BTREE,
  ADD KEY `index_wechat_pay_is_pay` (`is_pay`) USING BTREE,
  ADD KEY `index_wechat_pay_is_refund` (`is_refund`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_about`
--
ALTER TABLE `cms_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `cms_aboutus_cate`
--
ALTER TABLE `cms_aboutus_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_aboutus_doc`
--
ALTER TABLE `cms_aboutus_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_agent`
--
ALTER TABLE `cms_agent`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_article`
--
ALTER TABLE `cms_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_article_cate`
--
ALTER TABLE `cms_article_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cms_case`
--
ALTER TABLE `cms_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_case_cate`
--
ALTER TABLE `cms_case_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cms_contact`
--
ALTER TABLE `cms_contact`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `cms_joinus`
--
ALTER TABLE `cms_joinus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_link`
--
ALTER TABLE `cms_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_nav`
--
ALTER TABLE `cms_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `cms_pruduct`
--
ALTER TABLE `cms_pruduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_pruduct_cate`
--
ALTER TABLE `cms_pruduct_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_shares`
--
ALTER TABLE `cms_shares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `cms_shares_cate`
--
ALTER TABLE `cms_shares_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_shuff`
--
ALTER TABLE `cms_shuff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cms_type`
--
ALTER TABLE `cms_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `system_auth`
--
ALTER TABLE `system_auth`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_config`
--
ALTER TABLE `system_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `system_node`
--
ALTER TABLE `system_node`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `system_sequence`
--
ALTER TABLE `system_sequence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_user`
--
ALTER TABLE `system_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `wechat_fans`
--
ALTER TABLE `wechat_fans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '粉丝表ID';
--
-- AUTO_INCREMENT for table `wechat_keys`
--
ALTER TABLE `wechat_keys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wechat_menu`
--
ALTER TABLE `wechat_menu`
  MODIFY `id` bigint(16) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1507;
--
-- AUTO_INCREMENT for table `wechat_news`
--
ALTER TABLE `wechat_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wechat_news_article`
--
ALTER TABLE `wechat_news_article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wechat_news_image`
--
ALTER TABLE `wechat_news_image`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wechat_news_media`
--
ALTER TABLE `wechat_news_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wechat_pay_notify`
--
ALTER TABLE `wechat_pay_notify`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wechat_pay_prepayid`
--
ALTER TABLE `wechat_pay_prepayid`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;