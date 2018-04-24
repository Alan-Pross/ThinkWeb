<?php

namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\News;
use think\Model;
use think\captcha;

class Teamment extends Index
{
    public function edit()
    {
        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        if ($name <> '') {
            $team = new Team;
            $team->add($name, $head, $message);
            return $this->success('恭喜您公告添加成功^_^', '__PUBLIC__/admin/index/manage');
        }
        return $this->fetch();
    }
}