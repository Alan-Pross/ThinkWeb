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
        return $this->fetch();
    }
}