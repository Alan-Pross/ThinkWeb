<?php

namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;
use think\Model;
use think\captcha;

class Noticement extends Index
{
    public function edit()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }

        $title = input('param.title');
        $publisher = input('param.publisher');
        $content = input('param.content');
        if ($title <> '') {
            $notice = new Notice;
            $notice->add($title, $publisher, $content);
            return $this->success('恭喜您公告添加成功^_^', '__PUBLIC__/admin/index/manage');
        }
        return $this->fetch();
    }

    public function show() {
        $show = new Notice;
        $show = Notice::where('id','>',0)->order('id' , 'desc')->paginate(5);
        $this->assign('show',$show);
        return $this->fetch();
    }

    public function update() {
        $id = input('id');
        $title = input('param.title');
        $publisher = input('param.publisher');
        $content = input('param.content');
        

        if(!$id) {
            return "id不能为空！";
        }
        
        // $show = Notice::get($id);
        // echo $id;
        // echo $show->title;
        $show = new Notice();
       
        $show = Notice::where('id', '=', $id)
        ->find();

        if($title) {

           Notice::update([
                'id' => $id,
                'title' => $title,
                'publisher' => $publisher,
                'content' => $content,
            ]);

        return $this->success('信息修改成功^_^','show');
        }

        $this->assign('show', $show);
        return $this->fetch();
    }

    public function delete() {
        $id = input('id');
        echo $id;
        if($id <> '') {
            
            $user = Notice::get($id);
            // 软删除
            dump($user);
            $user->delete();
            
        }
        return $this->success('删除成功^_^','show');
    }

}