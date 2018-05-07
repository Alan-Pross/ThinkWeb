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
        $notice = Notice::where('title', 'like', "%{$all}%")->order("id DESC")->limit(8)->select();
        $news = News::where('title', 'like', "%{$all}%")->order("id DESC")->limit(8)->select();
        $team = Team::where('title', 'like', "%{$all}%")->select();
        $this->assign("notice", $notice);
        $this->assign("news", $news);
        $this->assign("team", $team);

        return $this->fetch();
    }


    //帅中贤
    public function file()
    {
        $all = "";
        $file = file::where('title', 'like', "%{$all}%")->order("id DESC")->paginate(5, false);
        $page = $file->render();
        $this->assign("file", $file);
        $this->assign("page", $page);

        return $this->fetch();
    }

    public function filepp($id)
    {
        $res = File::where('id', '=', $id)->select();
        File::update([
            'id' => $id,
            'browsing' => $res[0]['browsing'] + 1,
        ]);

        $this->redirect('__PUBLIC__/index.php/index/index/file');
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

        return view();
    }

    public function team()
    {
        $all = "";
        $team = Team::where('title', 'like', "%{$all}%")->paginate(10, false);
        $page = $team->render();
        $this->assign('team', $team);
        $this->assign('page', $page);

        return $this->fetch();
    }

    public function teamcontent($id = 0)
    {
        if ($id == 0) {
            $this->redirect('__PUBLIC__/index.php/index/index/team');
        }
        $res = Team::where('id', '=', $id)->select();
        $this->assign("res", $res);
        $this->assign("title", $res[0]['title']);

        return $this->fetch();
    }

    public function search()
    {

        return view();
    }

    public function searchshow($id, $search)
    {
        $tape = "浏览次数";
        $tape2 = "发布时间";

        if ($id == 1) {
            $res = Notice::where('title', 'like', "%{$search}%")->paginate(5,false,['query'=>request()->param()]);
        } elseif ($id == 2) {
            $res = News::where('title', 'like', "%{$search}%")->paginate(5,false,['query'=>request()->param()]);
        } elseif ($id == 3) {
            $res = Team::where('title', 'like', "%{$search}%")->paginate(5,false,['query'=>request()->param()]);
            $tape = "";
            $tape2 = "创建时间";
        } elseif ($id == 4) {
            $res = File::where('title', 'like', "%{$search}%")->paginate(5,false,['query'=>request()->param()]);
            $tape = "下载次数";
        }
        $page = $res->render();
        $this->assign('res', $res);
        $this->assign('search', $search);
        $this->assign('page', $page);
        $this->assign('tape', $tape);
        $this->assign('tape2', $tape2);

        return $this->fetch();
    }

    public function admin(){
        $this->redirect('__PUBLIC__/admin');
    }

}
