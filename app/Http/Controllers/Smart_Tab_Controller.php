<?php

namespace App\Http\Controllers;

use Session;
use App\Models\check_list;
use App\Models\phan_loai;
use App\Models\check_list_detail;
use App\Models\cong_doan;
use App\Models\line;
use App\Models\line_type;
use App\Models\result_check_list;
use App\Models\result_check_list_detail;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Schema;
use ReflectionClass;
use Illuminate\Http\Request;

class Smart_Tab_Controller extends Controller
{
    public function __construct()
    {
        //return view('login');
    }

    public function index()
    {
        // return view('pro_3m.admin.check-list.index');
        return view('pro_3m.admin.admin');
    }

    public function admin()
    {
        return view('pro_3m.admin.admin');
    }

    public function check_list_search(Request $request)
    {

        $group = $request->input("group");
        $list_group = check_list::where('Group', $group)->get();
        return response()->json(
            [
                'data' => $list_group,
            ]
        );
    }

    public function cong_doan_search(Request $request)
    {

        $check_list_id = $request->input("id");
        $list_cong_doan = cong_doan::where('id_line_type', $check_list_id)->get();

        return response()->json(
            [
                'data' => $list_cong_doan,
            ]
        );
    }

    public function line_type_search(Request $request)
    {

        $cong_doan_id = $request->input("id");
        $list = line_type::where('id_check_list', $cong_doan_id)->get();

        return response()->json(
            [
                'data' => $list,
            ]
        );
    }

    public function check_list_detail(Request $request)
    {

        $line_type_id = $request->input("id");
        $check_list_detail = check_list_detail::where('id_phan_loai', $line_type_id)->get();
        return response()->json(
            [
                'data_check_list' => $check_list_detail,
            ]
        );
    }

    public function phan_loai_search(Request $request)
    {

        $line_type_id = $request->input("id");
        $list1 = line::where('id_cong_doan', $line_type_id)->get();
        $list2 = phan_loai::where('id_cong_doan', $line_type_id)->get();
        return response()->json(
            [
                'data1' => $list1,
                'data2' => $list2,
            ]
        );
    }

    public function search_check_list(Request $request)
    {

        $check_list = ($request->input('check_list') == '---') ? null : $request->input('check_list');
        $cong_doan = ($request->input('cong_doan') == '---') ? null : $request->input('cong_doan');
        $line_type = ($request->input('line_type') == '---') ? null : $request->input('line_type');
        $line = ($request->input('line') == '---') ? null : $request->input('line');
        $shift = ($request->input('shift') == '---') ? null : $request->input('shift');
        $tinh_trang = ($request->input('tinh_trang') == '---') ? null : $request->input('tinh_trang');
        $date_to = Carbon::createFromFormat('Y-m-d', $request->input('date_to'))->endOfDay();
        $date_form = Carbon::createFromFormat('Y-m-d', $request->input('date_form'))->startOfDay();

        /*  $check_list_search = result_check_list::where('check_list', 'LIKE', '%' . $check_list . '%')
            ->where('cong_doan', 'LIKE', '%' . $cong_doan . '%')
            ->where('line_type', 'LIKE', '%' . $line_type . '%')
            ->where('line', 'LIKE', '%' . $line . '%')
            ->where('shifts', 'LIKE', '%' .  $shift . '%')
            ->where('tinh_trang', 'LIKE', '%' . $tinh_trang . '%')
            ->whereBetween('created_at', [$date_form, $date_to])
            ->get();
 */

        $table = 'App\\Models\\' . $request->input('table');
        if ($request->ajax()) {
            if (class_exists($table)) {
                $data = $table::all();
                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['updated_at']);
                $data = $table::select($colums)
                    ->where('check_list', 'LIKE', '%' . $check_list . '%')
                    ->where('cong_doan', 'LIKE', '%' . $cong_doan . '%')
                    ->where('line_type', 'LIKE', '%' . $line_type . '%')
                    ->where('line', 'LIKE', '%' . $line . '%')
                    ->where('shifts', 'LIKE', '%' .  $shift . '%')
                    ->where('tinh_trang', 'LIKE', '%' . $tinh_trang . '%')
                    ->whereBetween('created_at', [$date_form, $date_to])
                    ->orderBy('id', 'desc')->get();

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

    public function search_check_list_view(Request $request)
    {

        $id = $request->input('id');
        $table = 'App\\Models\\' . $request->input('table');
        if ($request->ajax()) {
            if (class_exists($table)) {
                $data = $table::all();
                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['updated_at']);
                $data = $table::select($colums)
                    ->where('id_check_list', $id)
                    ->orderBy('id', 'asc')->get();

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



    public function save_check_list(Request $request)
    {
        $data = $request->all();
        foreach ($data as $item) {
            $check_list = result_check_list::create($item);
        }

        $id_check_list = $check_list->id;

        return response()->json([
            'id' =>  $id_check_list,
            'status' => 200,
            'message' => 'Register Successfully.'
        ]);
    }


    public function save_check_list_detail(Request $request)
    {
        $data = $request->all();

        foreach ($data as $item) {
            result_check_list_detail::create($item);
        }

        return response()->json([
            'status' => 200,
            'message' => 'Register Successfully.'
        ]);
    }

    /*     public function update_table(Request $request)
    {
        $table = 'App\Models\\' . $request->input('id');
        // dd($table);
        $validator = Validator::make($request->all(), [
            'csv_file' => [
                'required',
            ],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
            ]);
        } else {

            if (Storage::exists("csv/data.csv")) {
                Storage::delete("csv/data.csv");
            };
            $path = $request->file('csv_file')->storeAs('csv', 'data.csv');
            $path_2 = str_replace('\\', '/', storage_path("app/public/" . $path));
            $csv = Reader::createFromPath($path_2, 'r');
            $csv->setHeaderOffset(0);

            foreach ($csv as $record) {
                // dd($record);
                $table::updateOrCreate(
                    ['id' => $record['id']],
                    $record
                );
            }
            Storage::delete($path_2);
            return redirect()->back()->with('success', 'update dữ liệu thành công');
        }
    }
 */
    public function edit_table(Request $request, $model)
    {

        $table = 'App\\Models\\' . $model;
        $models = new $table;
        $tables = $models->getTable();
        $colum = Schema::getColumnListing($tables);

        if ($request->input('action') == 'edit') {
            $data = $request->only($colum);
            $table::where('id', $request->input('id'))->update($data);
            return response()->json($request->all());
        }

        if ($request->input('action') == 'delete') {
            $table::where('id', $request->input('id'))->delete();
            return response()->json($request->all());
        }
    }




    public function changeLanguage($language)
    {
        if (!in_array($language, ['en', 'ko', 'vi'])) {
            abort(400);
        }

        /*   echo App::setLocale($language); */
        /*  Session::put('website_language', $language); */
        return redirect()->back();
    }
}
