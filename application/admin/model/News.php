<?php

namespace app\admin\model;

use think\Model;
use think\Db;
use traits\model\SoftDelete;

class News extends model
{
    use SoftDelete;
    protected $deleteTime = 'delete_time';
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

    public function delata($id)
    {
        News::destroy($id);
    }


}
