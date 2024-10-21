<?php

namespace App\Http\Controllers;

use App;
use App\Models\Smart_ChinhSach;
use App\Models\Smart_Post;
use App\Models\Smart_PostStatus;
use App\Models\Smart_ViewPage;
use App\Models\Mind_Tieuchuan;
use Illuminate\Http\Request;
use Session;
use App\Models\Smart_SliderTranslations;
use App\Models\Smart_VideoList;
use App\Models\Smart_Title_translated;


use Illuminate\Support\Facades\Schema;

class HomeController extends Controller
{

    public $request;
    private $trainings;

    public function admin()
    {
        return view('smart-ver2.admin.admin-index');
    }

    public function __construct()
    {
        //return view('login');
    }

    public function count_view($page)
    {
        $post = new Smart_ViewPage;
        $post->created_at = now();
        $post->page = $page;
        $post->save();
        $to_day = now()->format('Y-m-d');
        $to_month = now()->format('m');
        $to_year = now()->format('Y');
        $day = Smart_ViewPage::where('page', $page)->whereDate('created_at', $to_day)->count();
        $month = Smart_ViewPage::where('page', $page)->whereMonth('created_at', $to_month)->count();
        $year = Smart_ViewPage::where('page', $page)->whereYear('created_at', $to_year)->count();
        return [$day, $month, $year];
    }

    public function post_list($view, $thang)
    {
        $language = config('app.locale');
        $list = $this->count_view($view);
        $thang_show = Smart_PostStatus::where('chuyen_muc', $view)->value('month_show');
        $title_tieu_de = Smart_Title_translated::where('chuyen_muc', $view)->get();
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $study_sach = Smart_Post::where('chuyen_muc', 'sach')->get();
        $tieu_chuan = Mind_Tieuchuan::where('month', '10')->get();
        $link_view = 'smart-ver2.pages.' . $view . '.' . $view;
        if ($thang == 'all') {
            $post_list = Smart_Post::where('chuyen_muc', $view)->where('post_show','1')->orderBy('month', 'desc')->get();
        } else {
            $post_list = Smart_Post::where('chuyen_muc', $view)->where('month', $thang)->where('post_show','1')->orderBy('STT', 'asc')->get();
        }
        $count = $post_list->count();

        return view($link_view, compact('post_list', 'tieu_chuan', 'study_sach', 'day', 'month', 'year', 'count', 'thang', 'thang_show', 'view', 'language', 'title_tieu_de'));
    }

    public function home_page(Request $request)
    {
        $language = config('app.locale');
        $view = $request->query('view');
        $thang = Smart_PostStatus::where('chuyen_muc', $view)->value('month_show');
        $thang_show = Smart_PostStatus::where('chuyen_muc', $view)->value('month_show');
        $title_tieu_de = Smart_Title_translated::where('chuyen_muc', $view)->get();
        $list = $this->count_view($view);
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];

        $study_sach = Smart_Post::where('chuyen_muc', 'SACH')->get();
        $tieu_chuan = Mind_Tieuchuan::where('month', '10')->get();
        $link_view = 'smart-ver2.pages.' . $view . '.' . $view;
        $link_view2 = 'smart-ver2.admin.' . $thang . '.home';

        if ($thang == 'all') {
            $post_list = Smart_Post::where('chuyen_muc', $view)->where('post_show','1')->orderBy('id', 'asc')->get();
        } else {
            $post_list = Smart_Post::where('chuyen_muc', $view)->where('post_show','1')->where('month', $thang)->orderBy('STT', 'asc')->get();
        }
        $count = $post_list->count();

        if ($view == 'admin-dashboard') {
            return view($link_view2);

        } elseif ($view != 'laravel-filemanager') {
            return view($link_view, compact('post_list', 'tieu_chuan', 'study_sach', 'day', 'month', 'year', 'count', 'thang', 'thang_show', 'view', 'language', 'title_tieu_de'));
        }
    }

    public function smart()
    {
        $video = Smart_VideoList::orderby('id', 'desc')->get();
        $language = config('app.locale');
        $month_show = 11;
        /*  $slider = Smart_SliderTranslations::with('chuyen_muc')->where('locale', $language)->get(); */
        $slider = Smart_SliderTranslations::where('locale', $language)->where('month', $month_show)->orderBy('id','asc')->get();
        $thang = Smart_PostStatus::where('chuyen_muc', 'SMART')->value('month_show');
        $list = $this->count_view('smart');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $video_active = Smart_VideoList::where('active', 'yes')->get();
        $chinh_sach = Smart_Post::where('month', $thang)->where('chuyen_muc', 'CHÍNH SÁCH')->get();
        $quy_dinh = Smart_Post::where('month', $thang)->where('chuyen_muc', 'QUY ĐỊNH')->get();
        return view('smart-ver2.pages.smart.smart', compact('quy_dinh', 'chinh_sach', 'day', 'month', 'year', 'thang', 'language', 'slider', 'video','video_active'));
    }

    public function changeLanguage($language)
    {
        if (!in_array($language, ['en', 'ko', 'vi'])) {
            abort(400);
        }

        /*   echo App::setLocale($language); */
        Session::put('website_language', $language);
        return redirect()->back();
    }

    public function lich_su()
    {
        $language = config('app.locale');
        $list = $this->count_view('smart');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];

        $view = 'smart';
        $thang = Smart_PostStatus::where('chuyen_muc', $view)->value('month_show');
        return view('smart-ver2.pages.smart.lich-su', compact('day', 'month', 'year', 'thang', 'language'));
    }

    public function post_show(Request $request)
    {
        $id = $request->input('id');
        $posts = Smart_Post::where('id', $id)->first();
        $count_view = $posts->view;

        if ($posts) {
            $posts->view = $count_view + 1;
            $posts->update();
            $posts = Smart_Post::find($id);
            return response()->json([
                'status' => 200,
                'post' => $posts
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'Error Found.'
            ]);
        }

    }

    public function study()
    {
        $thang = '9';
        $view = 'study';
        $list = $this->count_view('study');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $post_list = Smart_Post::where('chuyen_muc', 'study')->where('month', $thang)->orderBy('id', 'asc')->get();
        $study_sach = Smart_Post::all();
        $count = $post_list->count();
        return view(
            'smart-ver2.pages.study.study',
            compact('post_list', 'study_sach', 'day', 'month', 'year', 'count', 'thang', 'view')
        );

    }

    public function mind()
    {
        $thang = '9';
        $view = 'mind';
        $list = $this->count_view('mind');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $tieu_chuan = Mind_Tieuchuan::where('month', '10')->get();
        $post_list = Smart_Post::where('chuyen_muc', 'mind')->where('month', $thang)->orderBy('id', 'asc')->get();
        $count = $post_list->count();
        return view('smart-ver2.pages.mind.mind', compact('post_list', 'day', 'month', 'year', 'tieu_chuan', 'count', 'thang', 'view'));
    }

    public function action()
    {
        $thang = '9';
        $view = 'action';
        $list = $this->count_view('action');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $post_list = Smart_Post::where('chuyen_muc', 'action')->where('month', $thang)->orderBy('id', 'asc')->get();
        $count = $post_list->count();
        return view('smart-ver2.pages.action.action', compact('post_list', 'day', 'month', 'year', 'count', 'thang', 'view'));
    }

    public function relationship()
    {
        $thang = '9';
        $view = 'relationship';
        $list = $this->count_view('relationship');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $post_list = Smart_Post::where('chuyen_muc', 'relationship')->where('month', $thang)->orderBy('remark', 'asc')->get();
        $count = $post_list->count();
        return view('smart-ver2.pages.relationship.relationship', compact('post_list', 'day', 'month', 'year', 'count', 'thang', 'view'));
    }

    public function target()
    {
        $thang = '9';
        $view = 'target';
        $list = $this->count_view('target');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $post_list = Smart_Post::where('chuyen_muc', 'target')->where('month', $thang)->orderBy('id', 'asc')->get();
        $count = $post_list->count();
        return view('smart-ver2.pages.target.target', compact('post_list', 'day', 'month', 'year', 'count', 'thang', 'view'));
    }

    public function login()
    {
        return view('pages.login');
    }

}