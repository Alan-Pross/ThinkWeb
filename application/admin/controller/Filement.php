<?php

namespace app\admin\controller;

use app\admin\model\File;
use think\View;
use think\Db;
use think\Request;
use think\Model;
use think\captcha;


class Filement extends Index
{
    public function edit()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }

        $name = input('param.name');
        $filepath = "";

        if ($name <> '') {

            $file = request()->file('filepath');

            // 移动到框架应用根目录/public/uploads/ 目录下
            if ($file) {
                $info = $file->move(ROOT_PATH . 'public' . DS . 'upload');
                if ($info) {
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    echo $info->getExtension() . "<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getSaveName() . "<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getFilename() . "<br>";
                    $filepath = $info->getSaveName();


                    // exit();

                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }

            $list = new File();
            File::create([
                'title' => $name,
                'filepath' => $filepath,
            ]);

            return $this->success('恭喜您文件上传成功^_^', '__PUBLIC__/admin/index/manage');
        }
        return $this->fetch();
    }

    public function show()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }
        $show = new File();
        $show = File::where('id', '>', 0)->order('id', 'desc')->paginate(5);
        $this->assign('show', $show);
        return $this->fetch();
    }

    public function update()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }

        $id = input('id');
        $name = input('param.name');
        $filepath = input('param.oldfile');
        $newfile = "";


        if (!$id) {
            return "id不能为空！";
        }
        $show = new File();

        $show = File::where('id', '=', $id)
            ->find();

        if ($name) {

            $file = request()->file('filepath');

            // 移动到框架应用根目录/public/uploads/ 目录下
            if ($file) {
                $info = $file->move(ROOT_PATH . 'public' . DS . 'upload');
                if ($info) {
                    // 成功上传后 获取上传信息
                    // 输出 jpg
                    echo $info->getExtension() . "<br>";
                    // 输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getSaveName() . "<br>";
                    // 输出 42a79759f284b767dfcb2a0197904287.jpg
                    echo $info->getFilename() . "<br>";
                    $newfile = $info->getSaveName();


                    // exit();

                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
            if ($newfile <> '') {
                if($filepath <> '') {
                    $user = ROOT_PATH . 'public' . DS . 'upload/' . $filepath;
                    //echo file_exists($user);
                    if (file_exists($user)) {
                        unlink($user);
                    }
                }

                File::update([
                    'id' => $id,
                    'title' => $name,
                    'filepath' => $newfile,
                ]);
            } else {
                File::update([
                    'id' => $id,
                    'title' => $name,
                    'filepath' => $filepath,
                ]);
            }

            return $this->success('修改成功^_^', 'show');
        }

        $this->assign('show', $show);
        return $this->fetch();
    }

    public function delete()
    {
        if (!$this->accountok()) {
            $this->redirect(url('/admin'));
        }

        $id = input('id');

        if ($id <> '') {
            $list = File::where('id','=',$id);
            $filepath = $list[0]['filepath'];
            if($filepath <> '') {
                $user = ROOT_PATH . 'public' . DS . 'upload/' . $filepath;

                if (file_exists($user)) {
                    unlink($user);
                }
            }
                $user = File::where('id', '=', $id)->delete();

        }
        return $this->success('删除成功^_^', 'show');
    }

}
