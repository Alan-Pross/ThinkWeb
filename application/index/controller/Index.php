<?php

namespace app\index\controller;

use think\View;
use think\Db;
use think\Request;
use app\admin\model\Notice;

class Index extends \think\Controller
{
    //徐汉雄
    public function index()
    {
        return view();
    }

    public function header()
    {
        return view();
    }

    //帅中贤
    public function newnotice()
    {

        $res = Db::name("notice")->field("title,create_time")->order("id DESC")->limit(5)->select();
        $this->assign("res", $res);
        return $this->fetch();
    }

    public function upload()
    {
        $res = Db::name("notice")->field("title,create_time")->order("id DESC")->select();
        $this->assign("res", $res);
        return $this->fetch();
    }

    //刘启明
    public function search()
    {
        return view();
    }

    public function searchshow($page)
    {
        if (empty($page)) {
            $search_name = input('search_name');
            if (empty($search_name) and $page == 0) {
                $this->redirect('__PUBLIC__/index.php/index/index/search');
            }
            $search = ['query' => []];
            $search['query']['search_name'] = $search_name;
            new Notice();
            $title = Notice::where('title', 'like', "%{$search_name}%")->paginate(5, false);
            $publisher = Notice::where('publisher', 'like', "%{$search_name}%")->paginate(5, false);
            $page1 = $title->render();
            $page2 = $publisher->render();
            $this->assign('title', $title);
            $this->assign('publisher', $publisher);
            $this->assign('page1', $page1);
            $this->assign('page2', $page2);
        }
        return $this->fetch();
    }

    //周威
    public function view()
    {
        //   $list = Notice::where('id','=',0)
        //   ->find();

        // $this->assign('list',$list);
        $id = input('id');

        if ($id <> '') {

            $list = Notice::where('id', '=', $id)
                ->select();

            $this->assign('list', $list);

            return $this->fetch();
        }
        return $this->fetch('no');
        return "留言不存在";

    }

    public function show()
    {
        $list = new Notice;
        //$list = $notice->check();
        //
        $list = Notice::where('id', '>=', 1)
            ->select();

        $this->assign('list', $list);


        return $this->fetch();
    }
}
