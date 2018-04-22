<?php
namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;
use app\admin\model\News;
use app\admin\model\Team;
use think\Model;
use think\captcha;

class Index extends \think\Controller
{
     public function index()
    {
        return view();
    }

    public function login()
    {
        $param = input('post.');
        $has = db('people')->where('account', $param['account'])->find();
        if(!captcha_check($param['captcha'])){

            $this->error('验证码错误');
        };
        if(empty($has)){

            $this->error('用户或密码错误');
        }
        if($has['password'] != $param['password']){

            $this->error('用户或密码错误');
        }

        // 记录用户登录信息
        cookie('account', $has['account'], 7200);  // 两个小时有效期
        cookie('password', $has['password'], 7200);

        $this->redirect(url('__PUBLIC__/admin/index/manage'));
    }

    public function manage()
    {
        //
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
