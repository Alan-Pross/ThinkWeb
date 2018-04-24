-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 04 月 24 日 03:27
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
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `publisher` varchar(10) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `browsing` int(6) DEFAULT NULL,
  `filepath` varchar(80) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `publisher`, `content`, `browsing`, `filepath`, `create_time`, `delete_time`) VALUES
(1, '擦妇女健康我就', 'admin', '<p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、实施总流程</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▲ 实施咨询</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项目咨询阶段的目的是:对现有业务和 IT 现状进行调查和初歩诊断,明确咨询与实施 的目标与范围 . 根据现状制定具体的行动方案。</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▲ 项目准备</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;对客户实施范围内的业务进行深入全面的分析,澄清客户的需求,评估各业务大致工 作范围和工作量,并结合产品拟定项目应用方案,建立一套系统运行的良好制度。根据现 状设计项目总体规划,让项目有章可循,总体控制。</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协商拟定并签订合作协议,规范项目涉及范围,限定双方责任和义务,建立项目组织 的髙效的决策和解决问题的机制,并在项目组织内部,对于项目的远景达成共识,对客户 业务运作流程进行调研,确定包含实施主计划的工作任务书,召开项目启动会,使客户的 高层以至全体员工,对因项目实施带来的过程和方法的变革有清楚的认识,同心协力,推 进项目顺利实施。</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;▲ 项目建设</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;项目建设主要包括两个阶段,一个是项目开发、一相是项目实施。</p><p class="txt" style="margin-top: 0px; margin-bottom: 22px; overflow-wrap: break-word;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;● 项目开发阶段主是产品的生产,主要包括项目的开发、测试,使用手册,产品审核等 。 ● 项目现场实施阶段主要是产品应用的建立,主要包括项目实施计划,硬件及支持平台采 购、运行环境配备,项目产品现场安装、调试、系统权限分配、客户培训,项目试运行、 项目的变更,问题的跟踪解决、产品完善等。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<aside><section><ul class="articles list-paddingleft-2" style="list-style-type: none;"><li><p><br/></p></li></ul></section></aside></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', NULL, NULL, 1524384100, 1524447595),
(2, '工信部：我国芯片水平已越来越接近世界第一梯队', 'admin', '<p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">央广网北京4月21日消息（记者蒋勇）多位权威专家指出：技术封锁难阻中国高技术产业发展步伐，我国在光电子高端芯片研制上已具备基本条件。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　美国商务部近期宣布对<a href="http://news.sina.com.cn/c/nd/2018-04-21/doc-ifznefkh3581956.shtml" target="_blank" style="margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;">中兴通讯</a>采取出口管制措施，引发一些人的担忧：这一事件会不会阻碍我国高技术产业的快速发展？中国是否有能力应对这种冲击和干扰？昨晚，工信部相关负责人，以及多位业内权威专家接受了央广记者的采访，就相关热点问题进行了回应。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　以下正文部分：</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　近年来，在科技创新驱动和需求快速增长的拉动下，我国高技术产业呈现快速发展的态势。去年，全国高技术产业增长13.4%，占规模以上工业增加值的比重为12.7%。今年一季度，高技术产业增加值同比增长11.9%，快于规模以上工业5.1个百分点，继续呈现快速增长的态势。工信部电子信息司司长刁石京昨天（21号）表示，近年来，我国整个芯片产业发展水平已经越来越接近世界第一梯队，很多领域都在使用国产芯片。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　刁石京：已经越来越接近世界第一梯队，特别是在芯片设计方面，产业规模迅速扩大，已经渗透到我们（工作生活中的方方面面）。从人民生活到工业领域到未来人工智能、智能汽车等都在用国产芯片，在支撑他们产业的发展。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　“十三五”国家重点研发计划“光电子与微电子器件及集成”重点专项专家组组长、中科院半导体所副所长祝宁华在接受记者采访时说，在高端光电子器件研发方面，一些关键技术甚至达到国际先进水平。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　祝宁华：在高端光电子器件研发方面，一些关键技术取得突破性进展，某些关键技术达到国际先进水平。这些核心芯片包含了中兴通讯这次受到限制的主要芯片，在“十二五”和“十三五”国家研究计划中，都进行了重点部署。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　祝宁华认为，完全没有必要担忧“中兴事件”的冲击和干扰。</p><p style="margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);">　　祝宁华：关于中兴通讯受美国制裁一事，应该客观地分析我国光电子器件研发生产能力。当前我国在光电子高端芯片研制上已具备基本条件，无论技术积累还是资金投入，以及高端核心人才的培养和储备，都具备了一定基础条件。我相信通过全国上下齐心协力，一定能够改变这种被动的局面。</p><p><ins><ins><a href="http://saxn.sina.com.cn/dsp/click?t=MjAxOC0wNC0yMiAxNjowMTo0NC4wMzIJMTE3LjE1MS4xMDguMjM1CTQ1LjU1LjIyMC42MV8xNTE0NTQ3ODU1LjExNjMyMgkxNzRmMjA1OC03OWZjLTQxY2YtYTU4OS0yMTkxNjQxYzA0ZmYJODk5MTE2CTU2NTQ2NTU1NTVfUElOUEFJLUNQQwkzMTQ2NDUJMTQyNTkzCTYuNDA2MDlFLTQJMQl0cnVlCVBEUFMwMDAwMDAwNDQwODYJMjA4OTMwMglQQwlpbWFnZQktCTB8MjRWNUdYVkc3azgwc0VVeFg2cmJoMnxudWxsfG51bGx8Ymp8ODk5MTE2fDVmb09VdHhBQ29qdkVCOWlQU2JiZ018MAludWxsCTEJLQktCS0JMAk0NS41NS4yMjAuNjFfMTUxNDU0Nzg1NS4xMTYzMjIJUENfSU1BR0UJLQlub3JtYWx8dXZmbS1ydAktCXVzZXJfdGFnOjIwNjM0OjAuMHx1c2VyX2FnZTo2MDA6MC4wfHVzZXJfZ2VuZGVyOjUwMTowLjB8dl96b25lOjMxMzAwMTowLjB8Y3Jvd2RzOnxfY3Jvd2RzOgkwCTE2MjAwMAk1MDAwMAkt&userid=45.55.220.61_1514547855.116322&auth=82d6715cee3ac936&p=l%2Fi%2BQrptOPuqEg1yI98%2B6qCvAAkYa17d9WiDJg%3D%3D&url=http%3A%2', NULL, NULL, 1524384203, 1524447595),
(3, '我的企鹅的全文', 'admin', '<p style="margin-top: 0px; margin-bottom: 16px; padding: 0px; box-sizing: border-box; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="box-sizing: border-box; font-weight: 700;">软删除的原理就是根据标识字段的值来判断数据是否是被删除了而NULL是唯一作为数据没有被执行删除操作的标识，也就是说删除标识的列的值是NULL的数据是正常数据，只要不是NULL就是已进行过删除操作的数据，被放入的回收站。需要withTrashed或者onlyTrashed才能操作这些数据</span></p><p style="margin-top: 0px; margin-bottom: 16px; padding: 0px; box-sizing: border-box; color: rgb(79, 79, 79); line-height: 26px; text-align: justify; font-family: -apple-system, &quot;SF UI Text&quot;, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif, SimHei, SimSun; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所以根据以上得出一个不幸的结论，与其用框架自带的软删除功能，还不如自己写一个原生的软删除功能。只需要我门定义一个列列作为删除标识，当这个列的值为某个数字（或者某个字符）时就认为它是被进行过了删除操作，它被放入了回收站中，而其他的数据时则说明它没有在回收站中，在数据操作时添加一个where条件对数据进行一次筛选就能轻松搞定软删除的功能，而且使用起来还更为灵活。&nbsp;<br/>当数据恢复时，也可以通过更新操作快速的执行，通过以上的对比，tp框架的软删除功能并没有我们想的那么高效和便捷。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/></p>', NULL, NULL, 1524447348, 1524447595),
(4, '我的企鹅的全', 'admin', '<p>/newsment/edit</p>', NULL, NULL, 1524447583, 1524447595),
(5, '我的企鹅的', 'admin', '<p>adwqd<br/></p>', NULL, NULL, 1524447859, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `publisher` varchar(10) NOT NULL COMMENT '发布人',
  `content` varchar(5000) NOT NULL COMMENT '内容',
  `browsing` int(6) DEFAULT NULL,
  `filepath` varchar(80) DEFAULT NULL,
  `create_time` int(11) NOT NULL COMMENT '日期',
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`title`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `publisher`, `content`, `browsing`, `filepath`, `create_time`, `delete_time`) VALUES
(8, '武汉校企通通信科技有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">校企通立足大学生创业，依托</span>“汉阳造聚和孵化”平台及其周边资源，逐步进入各大高校开展相关业务。校企通业务范围：&nbsp;</span></p><p><br/></p>', NULL, NULL, 1524539389, NULL),
(9, '武汉绿核环保科技有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">武汉绿核环保科技有限公司是一家从事室内空气净化、污染治理专业化服务和咨询公司，主要经营范围为室内空气检测、室内空气净化及空气净化产品销售的科技型环保企业，专业从事室内空气检测，室内空气污染治理，装修污染治理，家具除甲醛等空气净化项目，公司致力于全方位解决企业、家庭、写字楼、医院、宾馆、学校、商场、娱乐场所等因甲醛、苯、二甲苯、</span>TVOC<span style="font-family:宋体">、氨等有害极性化学气体引起的室内环境污染，旨在用绿色、安全、环保、健康的净化产品和服务改善空气质量，提高人们的健康水平和生活质量。</span></span></p><p><br/></p>', NULL, NULL, 1524539409, NULL),
(10, '武汉雅木网络科技有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">雅木网络科技有限公司是武汉一家专业的互联网科技公司，团队骨干有着丰富的网页设计和网站开发水平，为客户提供更符合搜索引擎的网站研发服务，协助构建</span>OA<span style="font-family:宋体">网络办公信息平台，定制网站与数据库开发、微信公众号开发、小程序开发和</span><span style="font-family:Calibri">APP</span><span style="font-family:宋体">开发，并提供域名注册、国内外虚拟主机、网站维护等互联网一站式服务。公司秉承“只做有灵魂的设计”和“坚持原创”的核心价值观，以“为客户赢得客户”为己任，帮助武汉的中小企业开展网站建设，用来发布企业产品、发布企业资讯、开展网上调查、与客户进行在线交流、分析客户需求和了解市场发展等功能于一体的营销型网站、微信公众号、微信小程序和</span><span style="font-family:Calibri">APP</span><span style="font-family:宋体">。</span></span></p><p><br/></p>', NULL, NULL, 1524539423, NULL),
(11, '武汉之点科技有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">之点科技有限公司是以之点项目计划为支撑计划成立的基于互联网</span>+<span style="font-family:宋体">商务服务的科技公司，项目包括之点专送计划、之共享等本地服务及物联网。主要包括：</span></span></p><p><br/></p>', NULL, NULL, 1524539448, NULL),
(12, '武汉译利特文化传播有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">武汉译利特文化传播有限公司，成立于</span>2015<span style="font-family:宋体">年</span><span style="font-family:Calibri">11</span><span style="font-family:宋体">月，主打文化体育服务产业，现有业务领域主要是以高校迎新晚会、毕业典礼、节日庆典及企事业单位年度庆典和文化宣传活动等为依托，提供前期活动策划、宣传品的印刷及制作、舞台设计及灯光音响、舞台设备租赁等一揽子服务。同时，针对各类体育赛事，提供前期赛事策划、物料制作设计、赛场搭建、氛围布置等一揽子服务。</span></span></p><p><br/></p>', NULL, NULL, 1524539463, NULL),
(13, '武汉市阿力斯特科技服务有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">江大数据屋是于</span>2017<span style="font-family:宋体">年创建的校园公众号，囊括各种校园内外信息和生活学习方方面面的功能。主要功能包括</span><span style="font-family:Calibri">U</span><span style="font-family:宋体">速外卖（校园食堂及校园商家的商品下单配送）、打卡签到（早晚自习、上课讲座在线</span><span style="font-family:Calibri">GPS</span><span style="font-family:宋体">实时定位签到）、校园百店（校园店铺简介及活动更新）、校园社区（各院以及各种兴趣圈交流集合地）、二手集市（闲置物品出售出租以及特长技能出租）、兼职实习和其他实用功能（如校园机构信息，成绩查询，游玩推荐等等）。数据屋团队旨在建立一个资源共享的社区型平台，使得江大师生的生活更加便捷，工作学习更加高效。</span></span></p><p><br/></p>', NULL, NULL, 1524539498, NULL),
(7, '武汉互动微联文化科技有限公司', '学生团队', '<p><span style=";font-family:宋体;font-size:19px"><span style="font-family:宋体">武汉互动微联文化科技有限公司是高校大学生运营管理的移动互联网公司，创建的第三方运营平台，同时专注新传媒，为行业解决新营销问题，助力其完成文化科技服务转型</span>, <span style="font-family:宋体">现在公司成员有</span><span style="font-family:Calibri">14</span><span style="font-family:宋体">人，其中</span><span style="font-family:Calibri">2</span><span style="font-family:宋体">名毕业生和</span><span style="font-family:Calibri">12</span><span style="font-family:宋体">名在校生。</span></span></p><p><br/></p>', NULL, NULL, 1524539354, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `people`
--

CREATE TABLE IF NOT EXISTS `people` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  PRIMARY KEY (`id`,`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `people`
--

INSERT INTO `people` (`id`, `account`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'manage', 'manage');

-- --------------------------------------------------------

--
-- 表的结构 `team`
--

CREATE TABLE IF NOT EXISTS `team` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '公司名称',
  `message` varchar(1000) DEFAULT NULL COMMENT '公司简介',
  `head` varchar(10) NOT NULL COMMENT '公司负责人',
  `member` varchar(100) NOT NULL,
  `mark` varchar(100) DEFAULT NULL COMMENT '队标',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `team`
--

INSERT INTO `team` (`id`, `name`, `message`, `head`, `member`, `mark`, `create_time`) VALUES
(1, '武汉雅木网络科技有限公司', '<p>网站建设，小程序开发<br/></p><p><br/></p>', '肖运扬', '', NULL, 1524384645);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
