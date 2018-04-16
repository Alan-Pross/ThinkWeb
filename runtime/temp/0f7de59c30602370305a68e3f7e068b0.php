<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:83:"D:\phpStudy\PHPTutorial\WWW\cygw\public/../application/index\view\index\serch0.html";i:1523874141;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<title>搜索</title>
	<link rel="stylesheet" href="/cygw/public/static/css/style.css">
</head>
<body>
<div class="search d1">
		  <form action="serch" method="post">
		  <input type="text" placeholder="搜索从这里开始..." name = "search_name" value = "<?php echo $search_name; ?>">
		  </form>
</div>
</body>
</html>