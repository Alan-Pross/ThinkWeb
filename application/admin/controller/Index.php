<?php

namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;
use think\Model;

class Index extends \think\Controller
{
    public function Index()
    {
        return view();
    }

    public function Manage()
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
}
