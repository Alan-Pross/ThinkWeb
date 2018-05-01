<?php

namespace app\index\controller;

use think\Db;
use app\admin\model\News;
use app\admin\model\Notice;
use app\admin\model\Team;

class Index extends \think\Controller
{
    //徐汉雄
    public function index()
    {
        $ress = Db::name("notice")->field("title,create_time")->order("id DESC")->limit(5)->select();
        $res = Team::where("id", ">", 12)->select();
        $this->assign("ress", $ress);
        $this->assign("res", $res);
        return $this->fetch();
    }


    //帅中贤
    public function download()
    {
        $res = Db::name("download")->field("title,path")->order("id DESC")->paginate(5);
        $this->assign("res", $res);
        return $this->fetch();
        /*
        $all = "";
        $res = file::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(10, false);
        $page = $res->render();
        $this->assign("res", $res);
        $this->assign("page", $page);
        return $this->fetch();
        */
    }

    public function upload()
    {
        $list = Db::name('notice')->paginate(5);
        $this->assign('list', $list);
        return $this->fetch();
    }


    public function newnotice()
    {
        $all = "";
        $res = Notice::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(5, false);
        $page = $res->render();
        $this->assign("res", $res);
        $this->assign("page", $page);
        return $this->fetch();
    }

    public function newnotice2()
    {
        $all = "";
        $res = News::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(5, false);
        $page = $res->render();
        $this->assign("res", $res);
        $this->assign("page", $page);
        return $this->fetch();
    }

    //刘启明
    public function article($id = 1)
    {
        if ($id > 0) {
            $res = Notice::where('id', 'like', "%{$id}%")->select();
            Notice::update([
                'id' => $id,
                'browsing' => $res[0]['browsing'] + 1,
            ]);

        } else {
            $idd = abs($id);
            $res = News::where('id', 'like', "%{$idd}%")->select();
            Notice::update([
                'id' => $id,
                'browsing' => $res[0]['browsing'] + 1,
            ]);

        }
        $this->assign("res", $res);
        return $this->fetch();
    }

    public function introduction()
    {
        return view();
    }

    public function loading()
    {
        return view();
    }

    public function team()
    {
        $all = "";
        $team = Team::where('name', 'like', "%{$all}%")->paginate(5, false);
        $page = $team->render();
        $this->assign('team', $team);
        $this->assign('page', $page);
        return $this->fetch();
    }

    public function search()
    {
        return view();
    }

    public function searchshow($page = '0')
    {
        if (empty($page)) {
            $search_name = input('search_name');
            if (empty($search_name) and $page == 0) {
                $this->redirect('__PUBLIC__/index.php/index/index/search');
            }
            $search = ['query' => []];
            $search['query']['search_name'] = $search_name;
            $title = Notice::where('title', 'like', "%{$search_name}%")->paginate(5, false);
            $publisher = Notice::where('publisher', 'like', "%{$search_name}%")->paginate(5, false);
            $team = Team::where('name', 'like', "%{$search_name}%")->paginate(5, false);
            $page1 = $title->render();
            $page2 = $publisher->render();
            $page3 = $team->render();
            $this->assign('title', $title);
            $this->assign('publisher', $publisher);
            $this->assign('team', $team);
            $this->assign('page1', $page1);
            $this->assign('page2', $page2);
            $this->assign('page3', $page3);
        }
        return $this->fetch();
    }
}
