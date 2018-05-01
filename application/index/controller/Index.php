<?php

namespace app\index\controller;

use app\admin\model\File;
use think\Db;
use app\admin\model\News;
use app\admin\model\Notice;
use app\admin\model\Team;

class Index extends \think\Controller
{
    //徐汉雄
    public function index()
    {
        $all = "";
        $notice = Notice::where('title', 'like', "%{$all}%")->order("id DESC")->limit(5)->select();
        $news = News::where('title', 'like', "%{$all}%")->order("id DESC")->limit(5)->select();
        $team = Team::where('title', 'like', "%{$all}%")->select();
        $this->assign("notice", $notice);
        $this->assign("news", $news);
        $this->assign("team", $team);
        return $this->fetch();
    }


    //帅中贤
    public function file()
    {
        $search = input('search');
        $res = Db::name("file")->field("title,filepath")->order("id DESC")->paginate(5);
        $this->assign("res", $res);
        $this->assign('search', $search);
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
        $search = input('search');
        $list = Db::name('notice')->paginate(5);
        $this->assign('list', $list);
        $this->assign('search', $search);
        return $this->fetch();
    }


    public function newnotice()
    {
        $search = input('search');
        $all = "";
        $res = Notice::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(5, false);
        $page = $res->render();
        $this->assign("res", $res);
        $this->assign("page", $page);
        $this->assign('search', $search);
        return $this->fetch();
    }

    public function newnotice2()
    {
        $search = input('search');
        $all = "";
        $res = News::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(5, false);
        $page = $res->render();
        $this->assign("res", $res);
        $this->assign("page", $page);
        $this->assign('search', $search);
        return $this->fetch();
    }

    //刘启明
    public function newnoticearticle($id = 1)
    {
        if ($id > 0) {
            $res = Notice::where('id', '=', $id)->select();
            Notice::update([
                'id' => $id,
                'browsing' => $res[0]['browsing'] + 1,
            ]);

        } else {
            $idd = abs($id);
            $res = News::where('id', '=', $idd)->select();
            News::update([
                'id' => $idd,
                'browsing' => $res[0]['browsing'] + 1,
            ]);

        }
        $this->assign("res", $res);
        $this->assign("title", $res[0]['title']);
        return $this->fetch();
    }

    public function introduction()
    {
        $search = input('search');
        return view();
    }

    public function loading()
    {
        $search = input('search');
        return view();
    }

    public function team()
    {
        $search = input('search');
        $all = "";
        $team = Team::where('title', 'like', "%{$all}%")->paginate(10, false);
        $page = $team->render();
        $this->assign('team', $team);
        $this->assign('page', $page);
        $this->assign('search', $search);
        return $this->fetch();
    }

    public function search()
    {
        $search = input('search');
        $this->assign('search', $search);
        return view();
    }

    public function searchshow($id = '0', $search)
    {
        $tape = "浏览次数";
        if ($id == 0 || empty($search)) {
            $this->redirect('__PUBLIC__/index.php/index/index/search');
        }

        if ($id == 1) {
            $res = Notice::where('title', 'like', "%{$search}%")->paginate(5, false);
        } elseif ($id == 2) {
            $res = News::where('title', 'like', "%{$search}%")->paginate(5, false);
        } elseif ($id == 3) {
            $res = Team::where('title', 'like', "%{$search}%")->paginate(5, false);
            $tape = "";
        } elseif ($id == 4) {
            $res = File::where('title', 'like', "%{$search}%")->paginate(5, false);
            $tape = "下载次数";
        }
        $page = $res->render();
        $this->assign('res', $res);
        $this->assign('search', $search);
        $this->assign('page', $page);
        $this->assign('tape', $tape);

        return $this->fetch();
    }
}
