<?php

namespace app\admin\model;

use think\Model;
use think\Db;
use traits\model\SoftDelete;

class News extends model
{

    protected $autoWriteTimestamp = true;
    protected $updateTime = false;

}
