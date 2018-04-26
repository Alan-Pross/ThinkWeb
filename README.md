创网项目 开发文档V1.4
===============

* [网站地址](http://www.jdcyxy.cn/)

## 环境要求
* [PhpStudy](http://www.phpstudy.net/)
* [Thinkphp](https://www.kancloud.cn/manual/thinkphp5/118003)
* [Sublime Text](https://www.sublimetext.com/)
* [TortoiseSVN](https://tortoisesvn.net/)
* [主要图标](http://www.iconfont.cn/collections/detail?spm=a313x.7781069.0.da5a778a4&cid=4878)
* [界面设计](https://modao.cc/app/P5kzvXayQg2Uls9ymA9BPVax28PyaY9)
* [富文本编辑器](https://www.kancloud.cn/phper123/tools/289772)

## 数据库设计
| 内容 | 表名 | 字段名 | 
| - | :-: | :- | 
| 公告 | notice | 标题 时间 浏览 内容 发布人 文件路径 | 
| 新闻 | news | 标题 时间 浏览 内容 发布人 文件路径 | 
| 团队 | team | 队名 简介 负责人 队员 创建时间 队标 |
| 用户 | people | 用户名 密码 |
>使用软删除

## 协作分工
>第一周

- [x] 刘启明：界面设计 美工 搜索页面 写文档 分工
- [x] 周威： 数据库搭建 UEditor的后台保存与前台显示
- [x] 帅中贤：具体页面 新闻公告列表
- [x] 徐汉雄：主页分栏与轮播图

>第二周

- [x] 刘启明：完善搜索 数据库登录注册 背景JS 找图标 验证码
- [x] 周威：改数据库 软删除 后台分栏三个页面
- [x] 帅中贤：左标签，上下页用图片 连上数据库 首页通知公告
- [x] 徐汉雄：标签变色，颜色对于内容 首页入驻团队

>第三周

- [ ] 刘启明：版权信息 登录逻辑 学院简介 搜索列表实现 页面跳转 搜索标红 时间去秒
- [ ] 周威：入驻团队管理 后台列表完善 分头 标题16字数限制 图片上传
- [ ] 帅中贤：新闻通告加入图标、图片、时间 文件上传下载 
- [ ] 徐汉雄：图标两侧留白 加竖线 标题搜索左右标齐 新闻通告、文件下载、搜索的列表界面

>第四周

- [ ] 未开始

## 甘特图
```gantt
    title 项目开发流程
    section 项目确定
        需求分析       :a1, 2018-03-31, 1d
        概念验证       :after a1, 7d
    section 项目实施
        概要设计      :2018-04-08, 1d
        详细设计      :2018-04-09, 1d
        编码          :2018-04-10, 21d
        测试          :2018-05-01, 7d
    section 发布验收
        发布: 7d
        验收: 3d
```
>GitHub默认不支持甘特图[(预览)*](https://www.zybuluo.com/isProSS/note/1121533)

## 网页名称
| 名称 | 英文 |
| :- | :-: |
| 首页 | index |
| 学院简介 | instruction |
| 新闻公告 | newnotice |
| 入驻团队 | team |
| 文件下载 | download |
``` 
// 视图输出字符串内容替换
    'view_replace_str'       => [
        '__PUBLIC__'=>'/cw/trunk/public',
        '__STATIC__'=>'/cw/trunk/public/static',
        '__ROOT__' => '/cw/trunk',
    ],
```