<?php

namespace app\admin\model;

use think\Model;
use think\Db;


class Team extends model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = false;

    public function add($name, $head, $message, $mark)
    {
        Team::create([
            'name' => $name,
            'message' => $message,
            'head' => $head,
            'mark' => $mark, 
        ]);

    }

    public function updata($id, $name, $head, $message, $mark)
    {

        Team::update([
            'id' => $id,
            'name' => $name,
            'message' => $message,
            'head' => $head,
            'mark' => $mark,

        ]);
    }


}
