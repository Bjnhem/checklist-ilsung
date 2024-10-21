<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use League\Csv\Reader;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Schema;
use ReflectionClass;
use App\Models\Smart_ViewPage;
use App\Models\Smart_Post;
use App\Models\Smart_SliderTranslations;
use App\Models\Smart_VideoList;
use App\Models\Smart_PostStatus;
use App\Models\Smart_Title_translated;

class Pages_Controller extends Controller
{
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
    public function index()
    {
        $view = 'smart';
        $table = 'Smart_SliderTranslations';
        $list = $this->count_view($view);
        $title_tieu_de = Smart_Title_translated::where('chuyen_muc', $view)->get();
        $thang = Smart_PostStatus::where('chuyen_muc', 'SMART')->value('month_show');
        $day = $list[0];
        $month = $list[1];
        $year = $list[2];
        $language = config('app.locale');
        $chinh_sach = Smart_Post::where('month', $thang)->where('chuyen_muc', 'CHÍNH SÁCH')->get();
        $quy_dinh = Smart_Post::where('month', $thang)->where('chuyen_muc', 'QUY ĐỊNH')->get();
        $video = Smart_VideoList::orderby('id', 'DESC')->get();
        $video_active = Smart_VideoList::where('active', 'yes')->get();
        $slider = Smart_SliderTranslations::with('chuyen_muc')->where('locale', $language)->get();
        return view('smart-ver2.admin.Trang.admin-smart', compact('quy_dinh', 'chinh_sach', 'day', 'month', 'year', 'language', 'slider', 'video', 'video_active', 'table'));
    }

    public function upload_image(Request $request)
    {
        $table = 'App\Models\\' . $request->input('table');
        $id = $request->input('id');
        $image_path = $request->input('filepath');
        // dd($table);
        $validator = Validator::make($request->all(), [
            'filepath' => 'required',

        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
            ]);
        } else {
            $student = $table::find($id);
            if ($student) {
                $student->image = $image_path;
                $student->save();

                $data = $table::all();
                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['created_at', 'updated_at']);
                $data = $table::select($colums)->orderBy('id', 'DESC')->get();

                return response()->json([
                    'data' => $data,
                    'colums' => $colums,
                    'status' => 200,

                ]);
            }
        }
    }

    public function show(Request $request)
    {
        $table = 'App\Models\\' . $request->input('table');
        $chuyen_muc = $request->input('chuyen_muc');
        if ($request->ajax()) {
            if (class_exists($table)) {
                if ($chuyen_muc == null) {
                    $data = $table::all();
                } else {
                    $data = $table::where('chuyen_muc', $chuyen_muc)->get();
                }

                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['created_at', 'create_at', 'updated_at', 'update_at']);
                $data = $table::select($colums)->orderBy('id', 'desc')->get();

                return response()->json([
                    'data' => $data,
                    'colums' => $colums,
                    'status' => 200,
                ]);
            }
            return abort(404);
        }
        return abort(404);
    }

}
