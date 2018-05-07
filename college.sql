-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 05 月 07 日 05:22
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `college`
--

-- --------------------------------------------------------

--
-- 表的结构 `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `filepath` varchar(100) NOT NULL,
  `browsing` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `file`
--

INSERT INTO `file` (`id`, `title`, `filepath`, `browsing`, `create_time`) VALUES
(8, '我是火车王我', '20180506\\afd5feb2865b873d3155957e0af946a4.jpg', 9, 1525601015);

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `publisher` varchar(16) NOT NULL,
  `content` longtext NOT NULL,
  `browsing` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `publisher` varchar(16) NOT NULL COMMENT '发布人',
  `content` longtext NOT NULL COMMENT '内容',
  `browsing` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`,`title`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 表的结构 `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `people`
--

INSERT INTO `people` (`id`, `account`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公司名称',
  `message` varchar(100) NOT NULL COMMENT '公司简介',
  `head` varchar(16) NOT NULL COMMENT '公司负责人',
  `content` longtext NOT NULL,
  `mark` varchar(100) DEFAULT NULL COMMENT '队标',
  `browsing` int(11) DEFAULT NULL COMMENT '空',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `team`
--

INSERT INTO `team` (`id`, `title`, `message`, `head`, `content`, `mark`, `browsing`, `create_time`) VALUES
(27, '武汉互动微联文化科技有限公司', '高校大学生运营管理的移动互联网公司', '学生团队', '<p><span style="font-size:19px;font-family:宋体">&nbsp;&nbsp;&nbsp;&nbsp;公司主要是依托微信公众平台，为企业重新定义微信公众账号，解决企业线上线下（</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">O2O</span><span style="font-size:19px;font-family:宋体">）互动、口碑营销难题。目前能服务的行业有餐饮、电商、医疗、旅游、汽车、房产、婚庆、影楼、牙医、教育、建材等，为其提供详尽的解决方案。互动微联作为行业微营销解决方案，可帮助企业面向微信用户，建设自己的微信官网、派发微信会员卡特权服务、在线领取分享优惠券、以及发布抽奖、刮奖等趣味互动营销服务。也可通过微信实现</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">CRM</span><span style="font-size:19px;font-family:宋体">客户管理功能，设置智能机器人回答客户咨询，有效对企业客户进行分组管理，精准推送信息，为企业培养核心用户、增加粘性、改善服务体验、反复消费的微信营销整合平台。互动微联公司项目不仅做到内容信息整合，</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">O2O</span><span style="font-size:19px;font-family:宋体">整合营销能力，建立围绕高校及高校周边的微社区，微商户开发与建设，同时还结合时下流行的众筹理念和</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">P2P</span><span style="font-size:19px;font-family:宋体">模式，独立开发运营微金融服务，为相关客户提供微小额的短时间融资金融服务，综合提升完善移动互联网平台质量，打造互动微联特有的微生活服务。</span></p>', '20180506\\21e19f52dc406a192e1b6fdbf3d08369.jpg', NULL, 1525598783),
(28, '武汉校企通通信科技有限公司', '企通立足大学生创业，依托“汉阳造聚和孵化”平台及其周边资源。', '学生团队', '<p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">1</span><span style="font-size:19px;font-family: 宋体">、中国电信业务：内容包括：电信号卡，宽带营销及受理，以及售后安装维修。</span><span style="font-size:19px">&nbsp;&nbsp;&nbsp; </span><span style="font-size:19px;font-family:宋体">电信附属产品，如手机，以及其他通讯设备，电子产品营销，翼支付、天翼云等</span><span style="font-size:19px">app</span><span style="font-size:19px;font-family:宋体">推广等。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">2</span><span style="font-size:19px;font-family: 宋体">、手机业务：内容包括：华为、苹果、小米、三星、</span><span style="font-size:19px">OPPO</span><span style="font-size:19px;font-family:宋体">、</span><span style="font-size:19px">VIVO</span><span style="font-size:19px;font-family: 宋体">、国美等一系列品牌手机的营销。线上将通过微商城直销、线下通过学子公司零售，基本构成二级分销体系。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">3</span><span style="font-size:19px;font-family: 宋体">、虚拟充值：内容包括：虚拟货币研发及应用，游戏币的开发及营销，网上视频会员充值业务。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">4</span><span style="font-size:19px;font-family: 宋体">、附加业务内容包括：人力资源储备的基础上，开展一系列附属产品和服务，例如人力资源中介，共享兼职。</span></p><p><br/></p>', '20180506\\f3ad681a1dc5510a4ac1cd77ab1b36a2.jpg', NULL, 1525599119),
(29, '武汉绿核环保科技有限公司', '武汉绿核环保科技有限公司是一家从事室内空气净化、污染治理专业化服务和咨询公司', '学生团队', '<p><span style="font-size:19px;font-family:宋体">&nbsp;&nbsp;主要经营范围为室内空气检测、室内空气净化及空气净化产品销售的科技型环保企业，专业从事室内空气检测，室内空气污染治理，装修污染治理，家具除甲醛等空气净化项目，公司致力于全方位解决企业、家庭、写字楼、医院、宾馆、学校、商场、娱乐场所等因甲醛、苯、二甲苯、</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">TVOC</span><span style="font-size:19px;font-family:宋体">、氨等有害极性化学气体引起的室内环境污染，旨在用绿色、安全、环保、健康的净化产品和服务改善空气质量，提高人们的健康水平和生活质量。公司本着“以人为本，客户至上”、做工精细、选材合理、环保健康、造价合理、智能方便、舒适温馨、用户满意的原则为顾客提供精细的服务，同时公司实行全面的质量管理，对方针目标的实施，制定完整的文件和作业指导书，一般工程可实现“一站式服务”。</span></p>', '20180506\\3dd8265b0e5412bb2b500b7f7bcf3746.jpg', NULL, 1525599225),
(30, '武汉雅木网络科技有限公司', '只做有灵魂的设计，坚持原创', '肖运扬', '<p><br/>&nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size:19px;font-family:宋体">雅木网络科技有限公司是武汉一家专业的互联网科技公司，团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">OA</span><span style="font-size:19px;font-family:宋体">网络办公信息平台，定制网站与数据库开发、微信公众号开发、小程序开发和</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">APP</span><span style="font-size:19px;font-family:宋体">开发，并提供域名注册、国内外虚拟主机、网站维护等互联网一站式服务。公司秉承“只做有灵魂的设计”和“坚持原创”的核心价值观，以“为客户赢得客户”为己任，帮助武汉的中小企业开展网站建设，用来发布企业产品、发布企业资讯、开展网上调查、与客户进行在线交流、分析客户需求和了解市场发展等功能于一体的营销型网站、微信公众号、微信小程序和</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">APP</span><span style="font-size:19px;font-family:宋体">。</span></p>', '20180506\\6414525380260f2392a358378f5972a9.png', NULL, 1525599326),
(31, '武汉之点科技有限公司', '之点科技有限公司是以之点项目计划为支撑计划成立的基于互联网+商务服务的科技公司', '学生团队', '<p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">1.</span><span style="font-size:19px;font-family: 宋体">之点专送：协助本地外卖商家完成外卖（包括冷熟食）配送，核心思想是“最后</span><span style="font-size:19px">500</span><span style="font-size:19px;font-family:宋体">米”，整合“菜鸟驿站”及“到位”等核心思想，优化商家配送程序。公司设点在如学校、人员密集小区等地区，商家将外卖送到分拣点，由分拣点统一配送。后期管理模式为</span><span style="font-size:19px">APP</span><span style="font-size:19px;font-family:宋体">统一管理，配送人员在</span><span style="font-size:19px">APP</span><span style="font-size:19px;font-family: 宋体">上看到信息以后到配送点取餐配送到位，每一个点设固定人员</span><span style="font-size:19px">3-5</span><span style="font-size:19px;font-family:宋体">人，</span><span style="font-size:19px">APP</span><span style="font-size:19px;font-family: 宋体">信息兼职若干。该项目目前正在运行。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">2.</span><span style="font-size:19px;font-family: 宋体">之共享：以共享电脑为核心的共享业务。针对人群划分不同模式：针对学校，争取与校内学习资源对接，将图书馆等数据库植入共享电脑，促进学习资源分配，为电脑配置不佳的学生提供优惠；针对社会人群，以中高端游戏或功能型电脑为核心，可与家庭、个人及办公单位对接。经营模式为两个方向：收取电脑价值相当的押金作为流转资金以降低租金</span> <span style="font-size:19px;font-family: 宋体">或</span> <span style="font-size:19px;font-family:宋体">收取低额押金及合适的押金谋求租金利润。核心思想：与信用体系对接。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">3.</span><span style="font-size:19px;font-family: 宋体">包括通信工程等的业务：电子产品维修产业化、通信工程安装维护、个人化智能设备定制（电脑等）。核心思想：传统产业，创新经营。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '20180506\\9a02a03d05dd2ea767619c79648ab0a1.jpg', NULL, 1525599398),
(32, '武汉译利特文化传播有限公司', '文化体育服务产业', '学生团队', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px;font-family:宋体">武汉译利特文化传播有限公司，成立于</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">2015</span><span style="font-size:19px;font-family:宋体">年</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">11</span><span style="font-size:19px;font-family:宋体">月，主打文化体育服务产业，现有业务领域主要是以高校迎新晚会、毕业典礼、节日庆典及企事业单位年度庆典和文化宣传活动等为依托，提供前期活动策划、宣传品的印刷及制作、舞台设计及灯光音响、舞台设备租赁等一揽子服务。同时，针对各类体育赛事，提供前期赛事策划、物料制作设计、赛场搭建、氛围布置等一揽子服务。</span></p>', '20180506\\c3fdeda39a248a4160ffd6e45b5deeaa.jpg', NULL, 1525599438),
(33, '武汉市阿力斯特科技服务有限公司', '江大数据屋', '学生团队', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px;font-family:宋体">囊括各种校园内外信息和生活学习方方面面的功能。主要功能包括</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">U</span><span style="font-size:19px;font-family:宋体">速外卖（校园食堂及校园商家的商品下单配送）、打卡签到（早晚自习、上课讲座在线</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">GPS</span><span style="font-size:19px;font-family:宋体">实时定位签到）、校园百店（校园店铺简介及活动更新）、校园社区（各院以及各种兴趣圈交流集合地）、二手集市（闲置物品出售出租以及特长技能出租）、兼职实习和其他实用功能（如校园机构信息，成绩查询，游玩推荐等等）。数据屋团队旨在建立一个资源共享的社区型平台，使得江大师生的生活更加便捷，工作学习更加高效。</span></p>', '20180506\\680627bfc8ed933908dfa2aa19efcfe6.jpg', NULL, 1525599482),
(34, '乐明悦武汉科技有限公司', '互联网产业正在市场经济中起着重要的作用，电子产品成为当下最流行的“生活用品”。', '学生团队', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 19px;font-family:宋体">科技越发展，商品越繁多，大学生消费者的电子产品需求随着互联网的发展不断被激发而起。科技产品已经渗透进当代大学生的现代生活，是大学生消费者购买行为中不可缺少的对象。当代大学生对电子产品正从一种高层次需求，逐步的转化成一种刚需。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px;font-family:宋体">乐明悦合伙人计划是依托线下校内资源以及互联网平台，针对在校大学生日益增长的电子产品需求开发市场，不仅让大学生以相对低廉的价格获取了时尚新颖的电子产品（手机，笔记本电脑，智能平板，</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">VR</span><span style="font-size:19px;font-family:宋体">虚拟现实），更以优质的售后服务获得了在校大学生的认可。建立乐明悦校园合伙人计划不仅能锻炼及提升我们的技术能力，并且创造了一定的经济效益和大大拓展了我们的人脉。同时，团队正在开发一个互联网平台，除了线上销售产品与服务以外，更是为了搭建一个互联网社区——在这个网络兴趣社区可以进行资源共享，公司也可以进行信息发布。结合</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">app</span><span style="font-size:19px;font-family:宋体">将互联网社区延伸到移动端，利用</span><span style="font-size:19px;font-family:&#39;Calibri&#39;,&#39;sans-serif&#39;">app</span><span style="font-size:19px;font-family:宋体">实现粉丝运营并与线下服务对接。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '20180506\\bf3a276a424e64b5b55c12d16a2aa1de.jpg', NULL, 1525599525),
(35, '数据安全软件平台开发小组', '数据安全', '教师团队', '<p>			</p><p><br/></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">1</span><span style="font-size:19px;font-family: 宋体">、数据安全。配合大数据中心的交通大数据、征信大数据等项目工作，在数据安全方向进行研究，开发数据安全相关软件系统。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:19px">2</span><span style="font-size:19px;font-family: 宋体">、安全教学。配合信息管理系信息系统安全实验教学工作，开发相关实验教学系统，辅助开展网络安全知识、安全风险控制操作技能等方面的实验教学。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '20180506\\95d35b49ca5ceaea6e3b18039973a3d0.jpg', NULL, 1525599629),
(37, '城市交通信号灯优化控制项目开发小组', '大数据信息处理与分析技术', '教师团队', '<p>			</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 19px;font-family:宋体">本项目利用大数据信息处理与分析技术，精确掌握城市交通道路通行需求，优化交通信号灯配时方案，促进道路利用率的提升，缓解城市交通拥堵的压力。</span></p><p style="text-align:left">&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 19px;font-family:宋体">本项目的创新点在于对道路交通视频信息中的车辆通行信息自动识别并存储生成为数据库（将非结构化数据转化为结构化数据），利用大数据分析技术对交通信号灯配时方案进行优化，并对道路突发状况提供实时的解决方案。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', '20180506\\41c9b533eacdc9a064aabadd15107442.jpg', NULL, 1525599908);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
