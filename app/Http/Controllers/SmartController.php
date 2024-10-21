<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Smart_ChinhSach;
use App\Models\Smart_QuickGame;


use Illuminate\Support\Facades\Validator;

class SmartController extends Controller
{

     public function chinh_sach_post(Request $request)
    {
        $id = $request->input('id');
        $post = Smart_ChinhSach::find($id);
        $count_view = $post->view;
        if ($post) {
            $post->view = $count_view + 1;
            $post->update();
            $post = Smart_ChinhSach::find($id);
            return response()->json([
                'status' => 200,
                'post' => $post,
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'Error Found.'
            ]);
        }

    }

    public function game(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'dap-an' => 'required',
            'du-doan' => 'required',
            'gen' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status' => 400,
            ]);
        } else {

            $student = new Smart_QuickGame;
            $student->gen = $request->input('gen');
            $student->result = $request->input('dap-an');
            $student->du_doan = $request->input('du-doan');
            $student->save();
            return response()->json([
                'status' => 200,
            ]);
        }

    }


}