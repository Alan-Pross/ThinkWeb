<?php

namespace app\admin\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Team;
use think\Model;
use think\captcha;
use think\cache\driver\File;


class Teamment extends Index
{
    public function edit()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }

        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        $mark = "";
        if ($name <> '') {
            // 获取表单上传文件 例如上传了001.jpg
            $file = request()->file('mark');

            // 移动到框架应用根目录/public/uploads/ 目录下
            if ($file) {
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                if ($info) {
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    echo $info->getExtension() . "<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getSaveName() . "<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getFilename() . "<br>";
                    $mark = $info->getSaveName();


                    // exit();

                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
            $team = new Team;
            $team->add($name, $head, $message, $mark);
            return $this->success('恭喜您公告添加成功^_^', '__PUBLIC__/admin/index/manage');
        }
        return $this->fetch();
    }

    public function show()
    {
        $show = new Team;
        $show = Team::where('id', '>', 0)->order('id', 'desc')->paginate(5);

        $this->assign('show', $show);
        return $this->fetch();
    }

    public function update()
    {
        $id = input('id');
        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        $mark = input('param.oldmark');
        $newmark = "";

        if (!$id) {
            return "id不能为空！";
        }

        $show = new Team();
        $show = Team::where('id', '=', $id)
            ->find();
        if ($name) {

            $file = request()->file('mark');

            // 移动到框架应用根目录/public/uploads/ 目录下
            if ($file) {
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                if ($info) {
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    echo $info->getExtension() . "<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getSaveName() . "<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getFilename() . "<br>";
                    $newmark = $info->getSaveName();
                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }

           

            if($newmark <> ''){

            $user =ROOT_PATH . 'public' . DS . 'uploads/'.$mark;
           echo $user;

            if(file_exists($user)) {  
                unlink($user);  
            }
            Team::update([
                'id' => $id,
                'name' => $name,
                'head' => $head,
                'message' => $message,
                'mark' => $newmark,
            ]);
        }else {
            Team::update([
                'id' => $id,
                'name' => $name,
                'head' => $head,
                'message' => $message,
                'mark' => $mark,
            ]);
        }
         
      
            return $this->success('信息修改成功^_^', 'show');
        }

        $this->assign('show', $show);
        return $this->fetch();
    }

    public function delete()
    {
        $id = input('id');
        
        if ($id <> '') { 
            $list = Team::get($id);
            $mark ='/' . $list->mark;
            $user =ROOT_PATH . 'public' . DS . 'uploads'.$mark;
            if(file_exists($user)) {  
                unlink($user);  
            }
            Team::where('id', '=', $id)->delete();


        }
        return $this->success('删除成功^_^', 'show');
    }


}