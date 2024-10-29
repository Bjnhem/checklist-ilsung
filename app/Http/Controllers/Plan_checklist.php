<?php

namespace App\Http\Controllers;

use App\Models\Checklist_item;
use App\Models\Checklist_result;
use App\Models\Machine_list;
use Illuminate\Http\Request;

class Plan_checklist extends Controller
{

    public function __construct()
    {
        //return view('login');
    }
    // Controller created_plan_checklist

    public function index_plan()
    {
        return view('pro_3m.pages.check-list.Plan-checklist');
    }
    

    public function created_plan_checklist(Request $request)
    {
        $table_result = 'App\\Models\\checklist_result';
        $date_form = $request->input('date');
        if ($request->ajax()) {
            if (class_exists($table_result)) {
                $data = $table_result::where('Date_check', $date_form)
                    ->pluck('Code_machine')->toArray();
                $data = array_unique($data);

                $data_check_list = Machine_list::whereNotIn('Code_machine', $data)->get();
                $data_check_list_1 = [];
                $id_count = $table_result::max('id');;
                $count = $id_count;
                foreach ($data_check_list as $item) {
                    $Item_checklist = Checklist_item::where('Machine', $item->Machine)->get();
                    foreach ($Item_checklist as $item_check) {
                        $id_count++;
                        $data_check_list_1[] = [
                            'id' => $id_count,
                            'ID_item_checklist' => $item_check->id,
                            'ID_checklist' => $item_check->ID_checklist,
                            'Locations' => $item->Locations,
                            'Model' => "---",
                            'Machine' => $item->Machine,
                            'Code_machine' => $item->Code_machine,
                            'item_checklist' => $item_check->item_checklist,
                            'Khung_check' => $item_check->khung_check,
                            'Shift' => $item_check->Shift,
                            'PIC_check' => "EQM",
                            'Status' => $item->Status,
                            'Check_status' => 'Pending',
                            'Remark' => '',
                            'Date_check' => $date_form,
                            'created_at' => now(), // Thêm dòng này
                            'updated_at' => now(),
                        ];
                    }
                }

                $table_result::insert($data_check_list_1);
                return response()->json([
                    'status' => 200,
                    'count' => $id_count - $count,
                ]);
            }
            return response()->json([
                'status' => 400,
            ]);
        }
        return response()->json([
            'status' => 400,
        ]);
    }


    public function search_check_list_plan(Request $request)
    {

        $line = ($request->input('line') == '') ? null : $request->input('line');
        $shift = ($request->input('shift') == '') ? null : $request->input('shift');
        $Check_status = ($request->input('Status') == '') ? null : $request->input('Status');
        $date_form = $request->input('date_form');
        $table = 'App\\Models\\checklist_result';

        if ($request->ajax()) {
            if (class_exists($table)) {
                $data = $table::all();
                $colum = array_keys($data->first()->getAttributes());
                $colums = array_diff($colum, ['updated_at']);
                $data = Checklist_result::where('Shift', 'LIKE', '%' .  $shift . '%')
                    ->where('Locations', 'LIKE', '%' . $line . '%')
                    ->where('Check_status', 'LIKE', '%' . $Check_status . '%')
                    ->where('Date_check', $date_form)
                    ->orderBy('Check_status', "desc")
                    ->get();

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
