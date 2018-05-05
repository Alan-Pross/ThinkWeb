<?php

namespace app\admin\controller;

use \think\Cookie;

class Index extends \think\Controller
{
    public function index()
    {
        if ($this->accountok()) {
            $this->redirect(url('/admin/index/manage'));
        }
        return view();
    }

    public function login()
    {
        $param = input('post.');
        $has = db('people')->where('account', $param['account'])->find();
        if (!captcha_check($param['captcha'])) {

            $this->error('验证码错误');
        };
        if (empty($has)) {

            $this->error('用户或密码错误');
        }
        if ($has['password'] != $param['password']) {

            $this->error('用户或密码错误');
        }

        // 记录用户登录信息
        cookie('account', $has['account'], 7200);  // 两个小时有效期
        cookie('password', $has['password'], 7200);

        $this->redirect(url('/admin/index/manage'));
    }

    public function manage()
    {
        if ($this->accountok()) {
            return $this->fetch();
        }
        $this->redirect(url('/admin'));
    }

    public function accountok()//是否登录成功
    {
        if (Cookie::has('account')) {
            $has = db('people')->where('account', Cookie::get('account'))->find();
            if ($has['password'] == Cookie::get('password')) {
                return true;
            }
        }
        return false;
    }

    public function exitaccount()//退出登录
    {
        cookie('account', null);
        cookie('password', null);
        return $this->redirect(url('/admin'));
    }

    //修改轮播图
    public function changea($filepath)
    {
        unlink("__STATIC__/images/a.jpg");
        if($filepath = "1"){
            $res = "__STATIC__/images/de/a.jpg";
        } else if(is_file($filepath)) {
            $res = $filepath;
        }
        CopyFunc($res,"__STATIC__/images/de/a.jpg");
    }
    public function changeb($filepath)
    {
        unlink("__STATIC__/images/b.jpg");
        if($filepath = "1"){
            $res = "__STATIC__/images/de/b.jpg";
        } else if(is_file($filepath)) {
            $res = $filepath;
        }
        CopyFunc($res,"__STATIC__/images/de/b.jpg");
    }
    public function changee($filepath)
    {
        unlink("__STATIC__/images/e.jpg");
        if($filepath = "1"){
            $res = "__STATIC__/images/de/e.jpg";
        } else if(is_file($filepath)) {
            $res = $filepath;
        }
        CopyFunc($res,"__STATIC__/images/de/e.jpg");
    }
    //拷贝文件
    function CopyFunc($res, $des) {
        if(file_exists($res)) {
            $r_fp=fopen($res,"r");

            //定位
            $pos=strripos($des,"\\");
            $dir=substr($des,0,$pos);
            if(!file_exists($dir)) {
                //可创建多级目录
                mkdir($dir,0777,true);
                echo "创建目录成功<br/>";
            }

            $d_fp=fopen($des,"w+");
            //$fres=fread($r_fp,filesize($res));

            //边读边写
            $buffer=1024;
            $fres="";
            while(!feof($r_fp)) {
                $fres=fread($r_fp,$buffer);
                fwrite($d_fp,$fres);
            }

            fclose($r_fp);
            fclose($d_fp);

            echo "复制成功";
        } else {
            echo "源文件不存在";
        }
    }
}
