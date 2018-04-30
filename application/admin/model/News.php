<?php

namespace app\admin\model;

use think\Model;
use think\Db;
use traits\model\SoftDelete;

class News extends model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = false;

    public function add($title, $publisher, $content)
    {

        News::create([
            'title' => $title,
            'publisher' => $publisher,
            'content' => $content,
        ]);

    }

    public function updata($id, $title, $publisher, $content)
    {

        News::update([
            'id' => $id,
            'title' => $title,
            'publisher' => $publisher,
            'content' => $content,
        ]);
    }


}
