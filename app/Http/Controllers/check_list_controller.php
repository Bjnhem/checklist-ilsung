<?php

namespace App\Http\Controllers;

use App\Models\check_list;
use Session;
use App\Models\check_list_detail;
use App\Models\check_list_item;
use App\Models\line;
use App\Models\Machine;
use App\Models\Model_master;
use App\Models\result_check_list;

use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Schema;
use ReflectionClass;
use Illuminate\Http\Request;
use Illuminate\Support\ItemNotFoundException;

class check_list_controller extends Controller
{
    public function __construct()
    {
        //return view('login');
    }


    public function index()
    {
        return view('pro_3m.pages.check-list.checklist-index');
    }


    public function admin()
    {
        return view('pro_3m.admin.admin');
    }

    public function index_pending()
    {
        $view = 'FTG';
        return view('pro_3m.pages.check-list.checklist-pending', compact('view'));
    }



    public function check_list_masster(Request $request)
    {
        $machine = Machine::select('Machine')->distinct()->pluck('Machine');
        $line = line::all();
        $model = Model_master::all();
        $machine_search = $machine->first();
        $list_machine_id = Machine::where("Machine", $machine_search)->get();
        $list_item_checklist = check_list_item::where('Machine', $machine_search)->select('item_check_list')->distinct()->pluck('item_check_list');
        $khung_check = check_list_item::where("Machine", $machine_search)->where('item_check_list', $list_item_checklist->first())->get();
        return response()->json(
            [
                'machine' => $machine,
                'line' => $line,
                'model' => $model,
                'list_ID_machine' => $list_machine_id,
                'item_check' =>  $list_item_checklist,
                'khung_check' =>   $khung_check,

            ]
        );
    }

    public function Machine_ID_search(Request $request)
    {
        $Machine = $request->input("machine");
        $ID_Machine = Machine::where('Machine', $Machine)->get();
        $list_item_checklist = check_list_item::where('Machine', $Machine)->select('item_check_list')->distinct()->pluck('item_check_list');
        $item_search = $list_item_checklist->first();
        $khung_check = check_list_item::where("Machine", $Machine)->where('item_check_list', $item_search)->get();
        return response()->json(
            [
                'ID_machine' => $ID_Machine,
                'checklist_item' => $list_item_checklist,
                'khung_check' =>   $khung_check,
            ]
        );
    }

    public function Khung_check(Request $request)
    {
        $ID_Machine =  $request->input("machine");
        $item_check = $request->input("item_check");
        $khung_check = check_list_item::where("Machine", $ID_Machine)->where('item_check_list', $item_check)->get();
        return response()->json(
            [
                'khung_check' =>   $khung_check,
            ]
        );
    }

     public function check_list_detail(Request $request)
    {

        $machine = $request->input("machine");
        $item_check = $request->input("item_check");
        $check_list_detail = check_list::where('machine', $machine)->where('item_check_list', $item_check)->get();
        return response()->json(
            [
                'data_check_list' => $check_list_detail,
            ]
        );
    }

    // public function line_type_search(Request $request)
    // {

    //     $cong_doan_id = $request->input("id");
    //     $list = line_type::where('id_check_list', $cong_doan_id)->get();

    //     return response()->json(
    //         [
    //             'data' => $list,
    //         ]
    //     );
    // }

   

    // public function check_list_detail_edit(Request $request)
    // {

    //     $line_type_id = $request->input("id");
    //     if ($request->ajax()) {
    //         $data = check_list_detail::all();
    //         $colum = array_keys($data->first()->getAttributes());
    //         $colums = array_diff($colum, ['created_at',  'updated_at']);
    //         $data = check_list_detail::where('id_phan_loai', $line_type_id)->select($colums)->get();

    //         return response()->json([
    //             'data' => $data,
    //             'colums' => $colums,
    //             'status' => 200,
    //         ]);
    //     }
    //     return abort(404);
    // }


    // public function phan_loai_search(Request $request)
    // {

    //     $line_type_id = $request->input("id");
    //     $line = 'App\\Models\\' . $request->input("groups") . '_line';
    //     $list1 =  $line::where('id_cong_doan', $line_type_id)->get();
    //     $list2 = phan_loai::where('id_cong_doan', $line_type_id)->get();
    //     return response()->json(
    //         [
    //             'data1' => $list1,
    //             'data2' => $list2,
    //         ]
    //     );
    // }

    public function search_check_list(Request $request)
    {

        $check_list = ($request->input('check_list') == '---') ? null : $request->input('check_list');
        $cong_doan = ($request->input('cong_doan') == '---') ? null : $request->input('cong_doan');
        $line_type = ($request->input('line_type') == '---') ? null : $request->input('line_type');
        $phan_loai = ($request->input('phan_loai') == '---') ? null : $request->input('phan_loai');
        $line = ($request->input('line') == '---') ? null : $request->input('line');
        $shift = ($request->input('shift') == '---') ? null : $request->input('shift');
        $tinh_trang = ($request->input('tinh_trang') == '---') ? null : $request->input('tinh_trang');
        $status = ($request->input('status') == '---') ? null : $request->input('status');
        $date_to = Carbon::createFromFormat('Y-m-d', $request->input('date_to'))->endOfDay();
        $date_form = Carbon::createFromFormat('Y-m-d', $request->input('date_form'))->startOfDay();

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
                    ->where('phan_loai', 'LIKE', '%' . $phan_loai . '%')
                    ->where('line', 'LIKE', '%' . $line . '%')
                    ->where('shifts', 'LIKE', '%' .  $shift . '%')
                    ->where('status', 'LIKE', '%' .  $status . '%')
                    ->where('tinh_trang', 'LIKE', '%' . $tinh_trang . '%')
                    ->whereBetween('date', [$date_form, $date_to])
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

    public function search_check_list_view(Request $request)
    {

        $id = $request->input('id');
        $table = 'App\\Models\\' . $request->input('table');
        if ($request->ajax()) {
            if (class_exists($table)) {
                $data = $table::all();
                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['updated_at', 'created_at']);
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

    public function save_check_list(Request $request, $table)
    {
        $group = $request->input('groups');
        $check_list = $request->input('check_list');
        $cong_doan = $request->input('cong_doan');
        $line_type = $request->input('line_type');
        $line = $request->input('line');
        $phan_loai = $request->input('phan_loai');
        $shift = $request->input('shifts');
        $date = $request->input('date');
        $table_result = 'App\\Models\\' . $table;
        $master_line = 'App\\Models\\' . $request->input('groups') . '_master_line';

        $check = $table_result::where('groups', $group)
            ->where('check_list', $check_list)
            ->where('cong_doan', $cong_doan)
            ->where('line_type', $line_type)
            ->where('phan_loai', $phan_loai)
            ->where('line', $line)
            ->where('shifts', $shift)
            ->where('date', $date)
            ->first();

        if ($check) {
            return response()->json([
                'status' => 400,
            ]);
        } else {
            $data = $request->all();
            $check_list_record = $table_result::create($data);
            $check2 = $master_line::where('groups', $group)
                ->where('check_list', $check_list)
                ->where('line_type', $line_type)
                ->where('cong_doan', $cong_doan)
                ->where('phan_loai', $phan_loai)
                ->where('line', $line)
                ->where('shifts', $shift)
                ->first();

            if ($check2) {
                $check_list_record->id_check_list_line = $check2->id;
                $check_list_record->save();

                $id_check_list = $check_list_record->id;

                return response()->json([
                    'id' =>  $id_check_list,
                    'status' => 200,
                ]);
            } else {
                return response()->json([
                    'status' => 400,
                ]);
            }
        }
    }



    public function save_edit_check_list(Request $request, $table)
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



    public function save_check_list_detail(Request $request, $table)
    {
        $data = $request->all();
        $table_result_detail = 'App\\Models\\' . $table;
        foreach ($data as $item) {
            $table_result_detail::create($item);
        }

        return response()->json([
            'status' => 200,
            'message' => 'Register Successfully.'
        ]);
    }

    public function delete_row(Request $request)
    {
        $table_1 = 'App\Models\\' . $request->input('table1');
        $table_2 = 'App\Models\\' . $request->input('table2');
        $row_id_delete = $request->input('rowId');
        if ($request->ajax()) {
            if (class_exists($table_1)) {

                $table_1::whereIn('id', $row_id_delete)->delete();
                $table_2::whereIn('id_check_list', $row_id_delete)->delete();
                return response()->json([
                    'status' => 200,

                ]);
            }
            return abort(404);
        }
        return abort(404);
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