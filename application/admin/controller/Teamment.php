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
            $this->redirect(url('__PUBLIC__/index.php/admin/index/index'));
        }

        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        $content = input('param.content');
        $createtime = input('param.createtime');
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
                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
            Team::create([
                'title' => $name,
                'message' => $message,
                'head' => $head,
                'content' => $content,
                'mark' => $mark,
                'browsing'  => $head,
                'date' => $createtime,
            ]);
            return $this->success('恭喜您团队添加成功^_^', 'edit');
        }
        return $this->fetch();
    }

    public function show()
    {
        if (!$this->accountok()) {
            $this->redirect(url('__PUBLIC__/index.php/admin/index/index'));
        }

        $show = Team::where('id', '>', 0)->order('id', 'desc')->paginate(5);
        $this->assign('show', $show);
        return $this->fetch();
    }

    public function update()
    {
        if (!$this->accountok()) {
            $this->redirect(url('__PUBLIC__/index.php/admin/index/index'));
        }

        $id = input('id');
        $name = input('param.name');
        $head = input('param.head');
        $message = input('param.message');
        $content = input('param.content');
        $mark = input('param.oldmark');
        $createtime = input('param.createtime');
        $newmark = "";

        if (!$id) {
            return "id不能为空！";
        }

        $show = Team::where('id', '=', $id)
            ->find();
        if ($name <> '') {

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
            if ($newmark <> '') {

                if ($mark <> '') {
                    $user = ROOT_PATH . 'public' . DS . 'uploads/' . $mark;
                    if (file_exists($user)) {
                        unlink($user);
                    }
                }
                Team::update([
                    'id' => $id,
                    'title' => $name,
                    'head' => $head,
                    'message' => $message,
                    'content' => $content,
                    'mark' => $newmark,
                    'browsing'  => $head,
                    'date' => $createtime,
                ]);
            } else {
               Team::update([
                    'id' => $id,
                    'title' => $name,
                    'head' => $head,
                    'message' => $message,
                    'content' => $content,
                    'mark' => $mark,
                   'browsing'  => $head,
                   'date' => $createtime,
                ]);

            }



            return $this->success('信息修改成功^_^', 'show');
        }

        $this->assign('show', $show);
        return $this->fetch();
    }

    public function delete()
    {
        if (!$this->accountok()) {
            $this->redirect(url('__PUBLIC__/index.php/admin/index/index'));
        }


       $id = input('id');

        if ($id <> '') {
            $list = Team::where('id', '=', $id)->select();
            $mark = $list[0]['mark'];
            if($mark <> '') {
                $user = ROOT_PATH . 'public' . DS . 'uploads/' . $mark;
                if (file_exists($user)) {
                    unlink($user);
                }
            }
            Team::where('id', '=', $id)->delete();


        }
        return $this->success('删除成功^_^', 'show');
    }


}


