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
        /*
        if (Cookie::has('account')) {
            $has = db('people')->where('account', Cookie::get('account'))->find();
            if ($has['password'] == Cookie::get('password')) {
                return true;
            }
        }
        return false;
        */
        return true;
    }

    public function exitaccount()//退出登录
    {
        cookie('account', null);
        cookie('password', null);
        return $this->redirect(url('/admin'));
    }
}
