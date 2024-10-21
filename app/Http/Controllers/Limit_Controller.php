<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\smart_tab\limit_table;

class Limit_Controller extends Controller
{

    public function __construct()
    {
        //return view('login');
    }

    public function model_search(Request $request)
    {
        if ($request->ajax()) {
            $model = $request->input("model");
            $model_list = limit_table::distinct()->pluck('model');
            $item_list = limit_table::where('model', $model)->orderBy('stt', 'asc')->get();

            $image = str_replace(['["', '"]'], '', limit_table::where('model', $model)->where('stt', '1')->pluck('image_limit'));
            $image = stripcslashes($image);
            $image_list = explode(',', $image);
            $remark = limit_table::where('model', $model)->where('stt', '1')->value('remark');
            return view('smart-tab.limit.model_search', compact('item_list', 'image_list', 'model_list', 'model', 'remark'));
        }
        return abort(404);
    }


    public function limit_item_search(Request $request)
    {
        if ($request->ajax()) {
            $limit_item_id = $request->input("limit_item");
            $limit = limit_table::find($limit_item_id);
            $image = str_replace(['["', '"]'], '', $limit->image_limit);
            $image = stripcslashes($image);
            $image_list = explode(',', $image);
            $remark = $limit->remark;
            return view('smart-tab.limit.limit_item', compact('image_list', 'remark'));
        }
        return abort(404);
    }
}
