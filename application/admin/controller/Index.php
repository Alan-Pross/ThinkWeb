<?php
namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;
use app\admin\model\News;
use app\admin\model\Team;
use think\Model;

class Index extends \think\Controller
{
     public function index()
    {
        return view();
    }

    public function manage()
    {
        $title = input('param.title');
        $publisher = input('param.publisher');
        $content = input('param.content');
        if ($title <> '') {
            // Db::table('notice')
            //     ->data(['title'  => $title,
            //           'publisher' => $publisher,
            //           'content'   => $content,
            //   ])
            //    ->insert();
            $notice = new Notice;
            $notice->add($title, $publisher, $content);


            return $this->success('恭喜您添加信息成功^_^', 'index');
        }
        return $this->fetch();
    }
    public function notice() {
       $title = input('param.title');
       $publisher = input('param.publisher');
       $content = input('param.content');
       if($title <> '') {
          $notice = new Notice;
          $notice->add($title,$publisher,$content);  
          return $this->success('恭喜您公告添加成功^_^','index');
    }
    return $this->fetch();
  }

    public function news() {
       $title = input('param.title');
       $publisher = input('param.publisher');
       $content = input('param.content');
       if($title <> '') {
          $news = new News;
          $news->add($title,$publisher,$content);  
          return $this->success('恭喜您公告添加成功^_^','index');
    }
    return $this->fetch();
    }

    public function team() {
        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        if($name <> '') {
          $team = new Team;
          $team->add($name,$head,$message);
          return $this->success('恭喜您公告添加成功^_^','index');
        }
        return $this->fetch();
    }

}
