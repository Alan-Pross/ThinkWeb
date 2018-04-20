创网项目 开发文档V1.2
===============

(http://www.jdcyxy.cn/)

## 环境要求
* PhpStudy
* Thinkphp
* Sublime Text
* TortoiseSVN
* 界面设计：
https://modao.cc/app/P5kzvXayQg2Uls9ymA9BPVax28PyaY9
* 富文本编辑器：
https://www.kancloud.cn/phper123/tools/289772
>1.4.3.3 PHP版本

## 数据库设计

* 内容 表名 | 字段名

* 公告 notice | 标题 时间 浏览 内容 发布人 文件路径
* 新闻 news | 标题 时间 浏览 内容 发布人 文件路径
* 团队 team | 队名 简介 负责人 队员 创建时间 队标
* 用户 people | 用户名 密码
>使用软删除

## 协作分工
* 第一周
+刘启明：界面设计 美工 搜索页面
+周威： 数据库搭建 UEditor的后台保存与前台显示
+帅中贤：具体页面 新闻公告列表
+徐汉雄：主页分栏与轮播图

* 第二周
+周威：改数据库 软删除 后台分栏三个页面
+帅中贤：左标签，上下页用图片 连上数据库 首页通知公告
+刘启明：完善搜索 数据库登陆注册 背景JS 找图标
+徐汉雄： 标签变色，颜色对于内容 首页入驻团队

* 第三周
+...

## 网页名称
* 首页index 
* 学院简介instruction 
* 新闻公告newnotice 
* 入驻团队team 
* 文件下载download
>跳转方法：__ROOT__/index/index/名字