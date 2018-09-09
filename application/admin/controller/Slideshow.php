<?php

namespace app\admin\controller;

use app\admin\model\News;

class Slideshow extends Index
{
    public function edit()
    {
        if (!$this->accountok()) {
            $this->redirect(url('__PUBLIC__/index.php/admin/index/index'));
        }

             $files = request()->file('image');

            // 移动到框架应用根目录/public/uploads/ 目录下
            if ($files) {
            	$num=count($files);
            	for($i=0;$i<$num;$i++){
                $info = $files[$i]->rule('uniqid')->move(ROOT_PATH . 'public' . DS . 'static'. DS . 'Sowing',$i+1);
                if ($info) {
                
                    $filepath = $info->getSaveName();
                } else {
                    // 上传失败获取错误信息
                    echo $file->getError();
                }
            }
}
        return $this->fetch();
    }
}