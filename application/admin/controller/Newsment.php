<?php
namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\News;
use think\Model;
use think\captcha;

class Newsment extends Index
{
	public function edit() {
       $title = input('param.title');
       $publisher = input('param.publisher');
       $content = input('param.content');
       if($title <> '') {
          $news = new News;
          $news->add($title,$publisher,$content);  
          return $this->success('恭喜您公告添加成功^_^','__PUBLIC__/admin/index/manage');
    }
    return $this->fetch();
   }
}