<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:70:"D:\phpStudy\WWW\cygw\public/../application/index\view\index\index.html";i:1523363647;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<!--   <title>Jack</title> -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>创业团队</title>
  
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">  
  <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
 
</head>
<body>

  <div  class="container">   
<h2><a href="#">信息添加</a></h2>
	<!-- <ol class="breadcrumb">
  		<li><a href="index">信息显示</a></li>
  		<li><a href="add">信息添加</a></li>
	</ol> -->
<form  action="" method="post">
  <div class="form-group" >
  	名称：
    <input type="text" class="form-control" name="name" value="" placeholder="请输入名称" maxlength="100">
     
  </div>
  <div class="form-group">
     负责人：
   <input type="text" class="form-control" name="head"  value="" placeholder="请输入负责人" maxlength="100">
  </div>
   <div class="form-group">
   	<!-- 加载编辑器的容器 -->
    简介
    <script id="container" name="message" type="text/plain">
       
    </script>
    <!-- 配置文件 -->
    <script type="text/javascript" src="/cygw/public/static/ueditor/ueditor.config.js"></script>
    编辑器源码文件
    <script type="text/javascript" src="/cygw/public/static/ueditor/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container');
    </script> 
	</div>
  <button type="submit" id="btn" class="btn btn-primary"  >提交</button>
</form>
 
 
 </div>
  
 </body>
 </html>