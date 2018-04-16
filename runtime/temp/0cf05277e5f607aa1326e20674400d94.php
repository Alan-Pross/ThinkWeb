<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:82:"D:\phpStudy\PHPTutorial\WWW\cygw\public/../application/index\view\index\serch.html";i:1523874241;}*/ ?>
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
<table border = "1px solid black" cellspacing="0">
    <tr>
        <td>title</td>
        <td>publisher</td>
        <td>content</td>
    </tr>
    <?php if(is_array($res) || $res instanceof \think\Collection || $res instanceof \think\Paginator): if( count($res)==0 ) : echo "" ;else: foreach($res as $key=>$vo): ?>
        <tr>
            <td><?php echo $vo['title']; ?></td>
            <td><?php echo $vo['publisher']; ?></td>
            <td><?php echo $vo['content']; ?></td>
        </tr>
    <?php endforeach; endif; else: echo "" ;endif; ?>
</table>
<?php echo $res; ?>
</body>
</html>