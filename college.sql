-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 04 月 25 日 11:02
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `publisher`, `content`, `browsing`, `filepath`, `create_time`, `delete_time`) VALUES
(1, '本科就有导师 岳麓书院把制度做成了“温度”岳麓书院把制度', 'admin', '<p>adwad</p><p>adwad</p><p>sdawdaw</p><p>awdawd</p><p>adwad</p><p><br/></p>', NULL, NULL, 1523507418, NULL),
(2, '奇闻安慰', 'adw', '<p>zcssc</p>', NULL, NULL, 1523507511, NULL),
(3, '豫章书院', '杨永信', '<p>网瘾治疗</p>', NULL, NULL, 1523542082, NULL),
(4, '我校晋级湖南省高校研究生辩论赛四强', 'admin', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">月</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">6</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">日，随着辩论主席四强最后一席席位的揭晓，湖南省第三届高校研究生辩论赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">四强名单产生，分别为</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">湖南大学、湖南师范大学、南华大学与湖南科技大学</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">成功晋级半决赛。该辩论赛5月5日在</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">我校正式</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">拉开帷幕。湖南省教育厅副厅长葛建中，湖南省学位办主任余伟良，校长助理于德介出席开幕式。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">本次辩论赛由湖南省学位办主办，湖南大学承办，采用三人制辩论，分抢位赛、初赛、复赛、半决赛、决赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">五个</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">阶段，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">实行</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">当场淘汰制</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5月11日将举行半决赛，我校对阵湖南师范大学，</span>决赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">将于</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5月15日</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">举行</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">本届辩论赛重在培养研究生对社会热点问题的分析能力，考验研究生对切身问题的解决能力，对国家战略布局的感知能力，比赛辩题从国内国际形势、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">社会改革热点和</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">研究生培养方向</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">三个方面展开，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">既涉及</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">了</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">校园贷</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">公益众筹</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、共享单车</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">网络水军等</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">时下</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">热</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">词，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">又讨论</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">了朝鲜半岛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、萨德部署、中美关系等国际前沿问题</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">也不乏</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">“</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">研究生创业应该立足学科还是市场”</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">“</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">研究生培养更应注重科学精神还是人文精神</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">”</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; m', NULL, NULL, 1523866619, NULL),
(5, '雄伟壮观的科技大学新建教学楼', 'admin', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">“新型城镇化”现已成为一个全民议题。如何走新型城镇化道路，需要全社会尤其是“规划师”的探索与创新。作为担当城乡规划重任的“青年规划师”的思考及探索，将为中国新型城镇化实践提供新的思路。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　17日，以“新型城镇化与城乡规划编制创新”为主题的“第三届金经昌中国青年规划师创新论坛”在上海举行。近期，北京启动总体规划调整和修改，上海启动新一轮城市总体规划编制，在此背景下，本次论坛聚焦“大都市地区总体规划编制创新”这一热点，展开研讨。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　自2007年开始，全世界一半以上的人口生活在城市，世界正式进入了“城市纪元”，城市成为了全球人关注的重点；而预计到2040年，全球将有64.7%的人生活在城市中。城市已经成为最不了不起的成就。但城市发展中又面临种种问题。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　中国城市规划设计研究院总规划师张兵在论坛上作了题为《场所·结构·治理—大都市地区空间发展与总体规划》的报告。他说，大都市地区新一轮总体规划编制工作出现了一些新特点，包括开展前期评估、公众参与、以人为本、从重规模转向重结构、强调生态文明建设和文化传承等，这反映了规划工作者在改进规划方面所作的努力，但这些改进还无法真正解决大都市区历史性转变中面临着的现实需要。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　张兵强调，应该通过出行等人的行为来认识都市区内部发育状况，为规划重点问题解决提供认识基础，在此基础上，他指出大都市区总规改进的三个方向：结构塑形、设施引领场所再组织和改革空间治理体系。</span></p>', NULL, NULL, 1523866674, NULL),
(6, 'qweqwdqe', '123123', '<p>adwdqd</p>', NULL, NULL, 1524448217, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `team`
--

INSERT INTO `team` (`id`, `name`, `message`, `head`, `member`, `mark`, `create_time`) VALUES
(1, '武汉雅木网络科技有限公司', '<p>网站建设，小程序开发<br/></p><p><br/></p>', '肖运扬', '', NULL, 1524384645),
(10, '111', '<p>sadwdsad</p><p>asdwdasd</p><p>sadawdre</p><p>qweqewqr</p><p><br/></p>', '1111', '', '', 1524623724),
(6, 'qweqwe', '<p>qweasdwqeqw</p>', 'qwe', '', 'YM灰底-01.jpg', 1524621797),
(4, 'qweqeq', '<p>qwehjdqjiweklqjqliwke</p>', 'awe', '', 'YM灰底-01.jpg', 1524621295),
(7, 'ekkiklm', '<p>sadwdsadaw</p><p>asdwdqe</p><p>sadwdq</p><p>wd</p>', 'wadwqe', '', '', 1524622797),
(8, 'welcs', '<p>sadwiojo<br/></p><p>asdwqd</p><p>sdawdzx</p><p>adwd</p><p>sadasd</p>', 'asdwasd', '', '', 1524623048),
(9, '111', '<p>adwdsadwdq</p>', '1111', '', '', 1524623312),
(11, '123', '<p>dweqesdasd</p><p>qweq2easdqw</p>', '123213', '', '', 1524624152),
(12, '232', '<p>Xaadawd</p>', 'wqewe', '', '', 1524624991),
(15, '大数据时代', '<p>请问萨达速度奇闻</p>', '胸围企鹅加快', '', '20180425\\51f1059f914ac6f3eeac6521a3a8a659.jpg', 1524653961),
(14, '23478', '<p>awdqsada</p>', 'czsdqw', '', '20180425\\1774aafae1d49430483ebb2b96733775.jpg', 1524651352),
(16, '所向披靡', '<p>awdqdadqw鞍山地区稳定</p>', '小擦加快', '', '20180425\\1beba0210f47260bd4ce4d1002a916d6.png', 1524653996),
(17, '为何会解决', '<p>下的稳定全球</p><p>awdqdqsada</p>', '鞍山地区稳定去', '', '20180425\\4e5a5b6205199ef039ec2db7cc34f7c7.jpg', 1524654020);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
