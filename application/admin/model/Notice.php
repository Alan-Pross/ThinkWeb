<?php

namespace app\admin\model;

use think\Model;
use think\Db;

class Notice extends model{

	protected $autoWriteTimestamp = true;
	protected $updateTime = false;

	public function add($title,$publisher,$content) {
		
		Notice::create([
			'title'  => $title,
            'publisher' => $publisher,
            'content'   => $content,
		]);
		
	}
	public function updata($id,$name,$age,$content) {
			
			Notice::update([
				'id' => $id,
    			'title'  =>  $title,
    			'publisher'  =>  $publisher,
    			'age'   =>  $age,
    			'content' => $content,
    		]);
		}

	public function delata($id) {
		Notice::destroy($id);
	}

	public function check() {
		
		Notice::where('id','>',1)
			->limit(5)
			->select();
	}
	
}