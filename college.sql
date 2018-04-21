-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 04 月 21 日 12:03
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
  PRIMARY KEY (`id`,`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`,`title`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `publisher`, `content`, `browsing`, `filepath`, `create_time`) VALUES
(1, '本科就有导师 岳麓书院把制度做成了“温度”岳麓书院把制度', 'admin', '<p>adwad</p><p>adwad</p><p>sdawdaw</p><p>awdawd</p><p>adwad</p><p><br/></p>', NULL, NULL, 1523507418),
(2, '奇闻安慰', 'adw', '<p>zcssc</p>', NULL, NULL, 1523507511),
(3, '豫章书院', '杨永信', '<p>网瘾治疗</p>', NULL, NULL, 1523542082),
(4, '我校晋级湖南省高校研究生辩论赛四强', 'admin', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">月</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">6</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">日，随着辩论主席四强最后一席席位的揭晓，湖南省第三届高校研究生辩论赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">四强名单产生，分别为</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">湖南大学、湖南师范大学、南华大学与湖南科技大学</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">成功晋级半决赛。该辩论赛5月5日在</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">我校正式</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">拉开帷幕。湖南省教育厅副厅长葛建中，湖南省学位办主任余伟良，校长助理于德介出席开幕式。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">本次辩论赛由湖南省学位办主办，湖南大学承办，采用三人制辩论，分抢位赛、初赛、复赛、半决赛、决赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">五个</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">阶段，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">实行</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">当场淘汰制</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5月11日将举行半决赛，我校对阵湖南师范大学，</span>决赛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">将于</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">5月15日</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">举行</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">。</span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">本届辩论赛重在培养研究生对社会热点问题的分析能力，考验研究生对切身问题的解决能力，对国家战略布局的感知能力，比赛辩题从国内国际形势、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">社会改革热点和</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">研究生培养方向</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">三个方面展开，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">既涉及</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">了</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">校园贷</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">公益众筹</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、共享单车</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">网络水军等</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">时下</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">热</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">词，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">又讨论</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">了朝鲜半岛</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">、萨德部署、中美关系等国际前沿问题</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">，</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px;">也不乏</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">“</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">研究生创业应该立足学科还是市场”</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">“</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">研究生培养更应注重科学精神还是人文精神</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; margin: 0px; line-height: 21px;">”</span><span style="word-break: break-all; font-size: 10.5pt; padding: 0px; m', NULL, NULL, 1523866619),
(5, '雄伟壮观的科技大学新建教学楼', 'admin', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">“新型城镇化”现已成为一个全民议题。如何走新型城镇化道路，需要全社会尤其是“规划师”的探索与创新。作为担当城乡规划重任的“青年规划师”的思考及探索，将为中国新型城镇化实践提供新的思路。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　17日，以“新型城镇化与城乡规划编制创新”为主题的“第三届金经昌中国青年规划师创新论坛”在上海举行。近期，北京启动总体规划调整和修改，上海启动新一轮城市总体规划编制，在此背景下，本次论坛聚焦“大都市地区总体规划编制创新”这一热点，展开研讨。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　自2007年开始，全世界一半以上的人口生活在城市，世界正式进入了“城市纪元”，城市成为了全球人关注的重点；而预计到2040年，全球将有64.7%的人生活在城市中。城市已经成为最不了不起的成就。但城市发展中又面临种种问题。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　中国城市规划设计研究院总规划师张兵在论坛上作了题为《场所·结构·治理—大都市地区空间发展与总体规划》的报告。他说，大都市地区新一轮总体规划编制工作出现了一些新特点，包括开展前期评估、公众参与、以人为本、从重规模转向重结构、强调生态文明建设和文化传承等，这反映了规划工作者在改进规划方面所作的努力，但这些改进还无法真正解决大都市区历史性转变中面临着的现实需要。</span><br/><br/><span style="word-break: break-all; font-size: 14px; background-color: rgb(255, 255, 255); line-height: 25px; font-family: 宋体, Verdana, Arial, Tahoma; color: rgb(51, 51, 51);">　　张兵强调，应该通过出行等人的行为来认识都市区内部发育状况，为规划重点问题解决提供认识基础，在此基础上，他指出大都市区总规改进的三个方向：结构塑形、设施引领场所再组织和改革空间治理体系。</span></p>', NULL, NULL, 1523866674);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
