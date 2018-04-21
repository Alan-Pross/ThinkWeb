<?php
namespace app\index\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;

class Index extends \think\Controller
{
  //徐汉雄
  public function index (){
      return view();
    }
  //帅中贤
  public function newnotice (){
      return view();
    }
  //刘启明
  public function search (){
      $search_name = input('search_name');
      $search = ['query'=>[]];
      $search['query']['search_name'] = $search_name;
      $res = Db::name('notice')->where('title','like',"%{$search_name}%")->paginate(5,false,$search);
      $this -> assign('res',$res);
      $this->assign('search_name',$search_name);
      return view();
    }
  public function search0 (){
    $search_name = input('search_name');
    $this->assign('search_name',$search_name);
    return view();
  }
  //周威
    public function play (){
       $name = input('param.name');
       $head = input('param.head');
       $message = input('param.message');

       if($name <> '') {
		Db::table('team')
    	->data(['name'  => $name,
			    'message' => $message,
			    'head'   => $head,
			])
    	->insert();
		return $this->success('恭喜您添加信息成功^_^','index');
		}
		return $this->fetch();
    }

    public function view () {
    //   $list = Notice::where('id','=',0)
    //   ->find();

    // $this->assign('list',$list);
   $id = input('id');

      if($id <> '') {
        
        $list = Notice::where('id','=', $id )
              ->select();

        $this->assign('list',$list);

        return $this->fetch();
      }
      return $this->fetch('no');
        return "留言不存在";

    }

    public function show () {
      $list = new Notice;
      //$list = $notice->check();
      //
      $list = Notice::where('id','>=',1)
      ->select();
      
      $this->assign('list',$list);


      return $this->fetch();
    }
}
