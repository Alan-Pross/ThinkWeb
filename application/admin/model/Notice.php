<?php

namespace app\admin\model;

use think\Model;
use think\Db;
use traits\model\SoftDelete;

class Notice extends model{
    use SoftDelete;
    protected  $deleteTime = 'delete_time';
	protected $autoWriteTimestamp = true;
	protected $updateTime = false;

	public function add($title,$publisher,$content) {
		
		Notice::create([
			'title'  => $title,
            'publisher' => $publisher,
            'content'   => $content,
		]);
		
	}
	public function updata($id,$title,$publisher,$content) {
			
			Notice::update([
				'id' => $id,
    			'title'  =>  $title,
    			'publisher'  =>  $publisher,
    			'content' => $content,
    		]);
		}

	public function delata($id) {
		Notice::destroy($id);
	}	
}