<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:82:"D:\phpStudy\PHPTutorial\WWW\cygw\public/../application/index\view\index\index.html";i:1523880564;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta http-equiv="Cache-Control" content="max-age=7200" charset="UTF-8" />
    <title>江汉大学创业学院</title>
    <link rel="stylesheet" href="/cygw/public/static/css/mystyle.css">
</head>

<body>
    <div class="headbar">
        <div class="banner">
            <div class="logo">
                <img src="/cygw/public/static/images/logo.jpeg" width="69px" height="69px" alt="江汉大学">
                <span class="font">江汉大学</span>
                <img src="/cygw/public/static/images/logo.jpeg" width="69px" height="69px" alt="江汉大学">
                <span class="font">创业学院</span>
            </div>
            <div class="search">
                <form action="" id="form1" class="search-form">
                    <input type="text" id="search-keyword" class="search-input" placeholder="请输入关键字">
                    <button type="submit" class="search-btn"></button>
                </form>
            </div>
        </div>
        <div class="wrapper">
            <div class="primary-menu">
                <ul class="nav-menu">
                    <li><a href="">
        			<i class=""></i>
        			<span class="text">1.首页</span>
        		</a></li>
                    <li><a href="">
        			<i class=""></i>
        			<span class="text">2.学院简介</span>
        		</a></li>
                    <li><a href="">
        			<i class=""></i>
        			<span class="text">3.新闻公告</span>
        		</a></li>
                    <li><a href="">
        			<i class=""></i>
        			<span class="text">4.入驻团队</span>
        		</a></li>
                    <li><a href="">
        			<i class=""></i>
        			<span class="text">5.文件下载</span>
        		</a></li>
                </ul>
            </div>
        </div>
        <div class="carousel">
            <ul class="images-wrapper">
                <div id="pre" class="button"></div>
                <div id="next" class="button"></div>
                <li class="a"><a href=""><img src="images/e.jpg" alt="" width=100%></a></li>
                <li class="a" style="z-index: -1"><a href=""><img src="/cygw/public/static/images/a.jpg" alt="" width=100%></a></li>
                <li class="a" style="z-index: -2"><a href=""><img src="/cygw/public/static/images/b.jpg" alt="" width=100%></a></li>
                <!-- <li class="a" style="z-index: -3"><a href=""><img src="images/a.jpg" alt="" width=100%></a></li> -->
            </ul>
        </div>
    </div>
    <script>
    (function() {
        var a = document.getElementsByClassName('a');
        var pre = document.getElementById('pre');
        var next = document.getElementById('next');
        var main = document.getElementsByClassName('images-wrapper')[0];
        var count = a.length;
        var bool = false;
        var i = 0;

        function moveleft() {
            var next = (i + 1) % count;
            a[next].style.transition = "left 0s";
            a[next].style.left = "100%";
            a[next].style.zIndex = "1";
            setTimeout(function() {
                a[i].style.left = "-100%";
                a[i].style.zIndex = '0';
                a[next].style.transition = "left .3s";
                a[next].style.left = "0";
                i = (i + 1) % count;
            }, 100);

        }

        function moveright() {
            var next = (i - 1+count) % count;
            a[next].style.transition = "left 0s";
            a[next].style.left = "-100%";
            a[next].style.zIndex = "1";
            setTimeout(function() {
                a[i].style.left = "100%";
                a[i].style.zIndex = '0';
                a[next].style.transition = "left .3s";
                a[next].style.left = "0";
                i = (i - 1+count) % count;
            }, 100);
        }

        var time = setInterval(moveleft, 3500);
        pre.onclick = function() {
            moveleft();
            if (!bool) {
                clearInterval(time);
                bool = true;
            }
        };
        next.onclick = function() {
            moveright();
            if (!bool) {
                clearInterval(time);
                bool = true;
            }
        };
        main.onmouseleave = function() {
            if (bool) {
                time = setInterval(moveleft, 3500);
                bool = false;
            }
        };

    })()
    </script>
</body>

</html>