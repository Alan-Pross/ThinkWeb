<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:86:"D:\phpStudy\PHPTutorial\WWW\cygw\public/../application/index\view\index\newnotice.html";i:1523875444;}*/ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
     /* CSS样式制作 */  
     *{
	   padding:0px; 
	   margin:0px;
	   }
      a,p{
	    text-decoration:none;
	    color:black;
		}
      a:hover,p:hover{
	   text-decoration:none;
	   color:#336699;
	   }
	     .turn{
    cursor: default;
    padding: 2px 5px 2px;
    margin: 5px 4px 0 0;
    background: #fff;
    border: 1px solid #ccc;
    text-align: center;
	
		  }
		.turn:hover{
			  color:#369;}
       #tab{
	  
	   width:270px; 
	   padding:5px;
	   height:150px;
	   margin:20px;
	   }
       #tab ul{
		list-style:none;
		height:30px;
		line-height:30px;
		border-bottom:2px #C88 solid;
		 }
       #tab ul li{
		   background:#FFF;
	       cursor:pointer;
	       float:left;
	       list-style:none height:29px;
	       line-height:29px;
		   padding:0px 10px;
		   margin:0px 10px; border:1px solid #BBB;
		   border-bottom:2px solid #C88;
		  }
       #tab ul li.on{
		   border-top:2px solid Saddlebrown; 
	       border-bottom:2px solid #FFF;}
       #tab div{
		    
		   height:230px;
		   width:300px;
	       line-height:26px;
	       border-top:none;
		   padding:1px;
		   border:1px solid #336699;
		   padding:10px;
		  }
       .hide{
		   display:none;
		   }
    </style>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
    </script>
     <script type="text/javascript">
	 $(document).ready(function(){
		 var ready=0;
		 var everypage=5;
		 $("#secondPage p").slice(ready+everypage).hide();
		$("#one").click(function(){
			$("#firstPage").show();
			$("#secondPage").hide();
			$("#thirdPage").hide();
			$("#one").addClass("on");
			$("#two,#three").removeClass("on");
		  });
  
$("#two").click(function(){
	$("#firstPage").hide();
	$("#secondPage").show();
	$("#thirdPage").hide();
	$("#two").addClass("on");
	$("#one,#three").removeClass("on");
	  });
    $("#three").click(function(){
  $("#firstPage").hide();
$("#secondPage").hide();
$("#thirdPage").show();
$("#three").addClass("on");
$("#two,#one").removeClass("on");
  });
  $("#up").click(function(){
	  if(ready>0){
		  ready=ready-5;
	  $("#secondPage p").slice(ready,ready+5).show();
	  $("#secondPage p").slice(0,ready).hide();
	  $("#secondPage p").slice(ready+5).hide();
	  }
	  });
	  $("#down").click(function(){
		  if(ready<$("p").size()-5){
		  ready=ready+5;
	  $("#secondPage p").slice(ready,ready+5).show();
	  $("#secondPage p").slice(0,ready).hide();
	  $("#secondPage p").slice(ready+5).hide();
		  }
	  });
	  	  $("#begin").click(function(){
	  $("#secondPage p").slice(0,5).show();
	  $("#secondPage p").slice(5).hide();
	  ready=0;
	  });
	  	  $("#end").click(function(){
	  $("#secondPage p").slice(-5).show();
	  $("#secondPage p").slice(0,-5).hide();
	  ready=$("p").size()-5;
	  });
});
    </script>
</head>

<body>
<center>
<!-- HTML页面布局 -->
<div id = "tab">
        <ul>
        <li id="one" class="off">房产</li>
        <li id="two" class="on">家居</li>
        <li id="three" class="off">二手房</li>
        </ul>
    <div id="firstPage" class="hide">
            <a href = "#">275万购昌平邻铁三居 总价20万买一居</a><br/>
            <a href = "#">200万内购五环三居 140万安家东三环</a><br/>
            <a href = "#">北京首现零首付楼盘 53万购东5环50平</a><br/>
            <a href = "#">京楼盘直降5000 中信府 公园楼王现房</a><br/>
            
    </div>
    <div id="secondPage" class="show">
       <p>200万内购五环三居 140万安家东三环1</p>
       <p>200万内购五环三居 140万安家东三环2</p>
       <p>200万内购五环三居 140万安家东三环3</p>
       <p>200万内购五环三居 140万安家东三环4</p>
       <p>200万内购五环三居 140万安家东三环5</p>
       <p>200万内购五环三居 140万安家东三环6</p>
       <p>200万内购五环三居 140万安家东三环7</p>
       <p>200万内购五环三居 140万安家东三环8</p>
       <p>200万内购五环三居 140万安家东三环9</p>
       <p>200万内购五环三居 140万安家东三环10</p>
       <p>200万内购五环三居 140万安家东三环11</p>
       <p>200万内购五环三居 140万安家东三环12</p>
       <p>200万内购五环三居 140万安家东三环13</p>
       <p>200万内购五环三居 140万安家东三环14</p>
       <p>200万内购五环三居 140万安家东三环15</p>
       <p>200万内购五环三居 140万安家东三环16</p>
       <p>200万内购五环三居 140万安家东三环17</p>
       <p>200万内购五环三居 140万安家东三环18</p>
       <p>200万内购五环三居 140万安家东三环19</p>
       <p>200万内购五环三居 140万安家东三环20</p>
            <button id="begin" type="button">首页</button>
            <button id="up" type="button">上一页</button>
            <button id="down" type="button">下一页</button>
            <button id="end" type="button">尾页</button>
    </div>
    <div id="thirdPage" class = "hide">
            <a href = "#">通州豪华3居260万 二环稀缺2居250w甩</a><br/>
            <a href = "#">西3环通透2居290万 130万2居限量抢购</a><br/>
            <a href = "#">黄城根小学学区仅260万 121平70万抛!</a><br/>
            <a href = "#">独家别墅280万 苏州桥2居优惠价248万</a><br/>
    </div>
</div>
</center>
</body>
</html>
