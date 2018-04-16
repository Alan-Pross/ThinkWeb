<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:81:"D:\phpStudy\PHPTutorial\WWW\cygw\public/../application/index\view\index\view.html";i:1523867161;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
	<meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>view</title>
  
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css">  
  <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div  class="container">
      <center>
      <h2><?php echo $list['0']['title']; ?></h2>
      <p>发布人：<?php echo $list['0']['publisher']; ?>时间：<?php echo $list['0']['create_time']; ?></p><br>
      </center>

      
      <?php echo $list['0']['content']; ?>



	</div>
</body>
</html>