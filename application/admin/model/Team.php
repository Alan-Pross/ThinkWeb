<?php

namespace app\admin\model;

use think\Model;
use think\Db;
use traits\model\SoftDelete;

class Team extends model{

	protected $autoWriteTimestamp = true;
	protected $updateTime = false;
    
    public function add($name,$head,$message) {
		
		Team::create([
			'name'  => $name,
            'message' => $message,
            'head' => $head,
		]);
		
	}
	public function updata($id,$name,$head,$message) {
			
		Team::update([
			'id' => $id,
			'name'  =>  $name,
			'message' => $message,
			'head'  =>  $head,
			
		]);
	}

	public function delata($id) {
		Team::destroy($id);
	}
}
