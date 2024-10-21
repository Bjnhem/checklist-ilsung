<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\DB;
use League\Csv\Reader;
use League\Csv\Writer;
use Carbon\Carbon;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Schema;
use LimitIterator;
use ReflectionClass;
use App\Models\Smart_PostStatus;
use App\Models\Study_TraningResult;
use Yajra\DataTables\Facades\DataTables;

class Traning_Result_Controller extends Controller
{
    public function index()
    {
        $view = 'smart';
        $table = 'Study_TraningResult';
        $thang = Smart_PostStatus::where('chuyen_muc', 'SMART')->value('month_show');
        $language = config('app.locale');
        return view('smart-ver2.admin.traning-result.traning-result', compact('language', 'table'));
    }

    /*   public function search_dao_tao(Request $request)
      {
          $gen = $request->input('gen');
          $name = $request->input('name');
          $team = $request->input('Team');
          $khoa_hoc = $request->input('khoa_hoc');
          $date = $request->input('date_traning');

          $users = Study_TraningResult::where('gen', 'LIKE', '%' . $gen . '%')
              ->where('name', 'LIKE', '%' . $name . '%')
              ->where('team', 'LIKE', '%' . $team . '%')
              ->where('group_khoa_hoc', 'LIKE', '%' . $khoa_hoc . '%')
              ->where('month', 'LIKE', '%' . $date . '%')->get();


              
          return response()->json([
              'status' => 200,
              'users' => $users,
              'message' => 'Register Successfully.'
          ]);

      } */

    /*  public function search_dao_tao(Request $request)
     {
         $gen = $request->input('gen');
         $name = $request->input('name');
         $team = $request->input('Team');
         $khoa_hoc = $request->input('khoa_hoc');
         $date = $request->input('date_traning');
         $table = 'Study_TraningResult';
         $language = config('app.locale');
         $traning_result = Study_TraningResult::where('gen', 'LIKE', '%' . $gen . '%')
             ->where('name', 'LIKE', '%' . $name . '%')
             ->where('team', 'LIKE', '%' . $team . '%')
             ->where('group_khoa_hoc', 'LIKE', '%' . $khoa_hoc . '%')
             ->where('month', 'LIKE', '%' . $date . '%')->paginate(15);
         $count = $traning_result->total();
         return view('smart-ver2.admin.traning-result.traning-result', compact('table', 'count', 'traning_result'));
     } */

    public function search_dao_tao(Request $request)
    {
       /*  $data_search = Study_TraningResult::select(['gen', 'name', 'team', 'khoa_hoc', 'month']); */
        $gen = $request->input('gen');
        $name = $request->input('name');
        $team = $request->input('Team');
        $khoa_hoc = $request->input('khoa_hoc');
        $date = $request->input('date_traning');
        $data_search = Study_TraningResult::select(['gen', 'name', 'team', 'khoa_hoc', 'date_traning'])
            ->where('month', 'LIKE', '%' . $date . '%')
            ->where('team', 'LIKE', '%' . $team . '%')
            ->where('gen', 'LIKE', '%' . $gen . '%')
            ->where('name', 'LIKE', '%' . $name . '%')
            ->where('group_khoa_hoc', 'LIKE', '%' . $khoa_hoc . '%');

        $data_search_2 = DataTables::of($data_search)->make(true);
        return $data_search_2;
    }

    public function update_table(Request $request)
    {
        $table = 'App\Models\\' . $request->input('id');
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

   
            $path = $request->file('csv_file')->storeAs('csv', 'data.csv');
            $path_2 = str_replace('\\', '/', storage_path("app/public/" . $path));

            $csv = Reader::createFromPath($path_2, 'r');
            $data = iterator_to_array($csv->getRecords());
            $csv->setHeaderOffset(0);
            $chunk_Size = array_chunk($data, 2000);

            $file_folder = storage_path("app/public/csv/");
            $file = glob($file_folder . '/*.csv');


            foreach ($file as $item) {
                unlink($item);
            }


            foreach ($chunk_Size as $key => $value) {
                $data_csv = Writer::createFromFileObject(new \SplTempFileObject());
                if ($key != 0) {
                    $data_csv->insertOne($csv->getHeader());
                }
                $data_csv->insertAll($value);

                $file_name = storage_path("app/public/csv/") . "/cvs-file-{$key}.csv";
                file_put_contents($file_name, $data_csv);

            }

            $file = glob($file_folder . '/*.csv'); 
            foreach ($file as $item) {
                $csv_2 = Reader::createFromPath($item, 'r');
                $csv_2->setHeaderOffset(0);

                foreach ($csv_2 as $data_chunk) {
                    $table::updateOrCreate(
                        ['id' => $data_chunk['id']],
                        $data_chunk
                    );
                }

                unlink($item);
            }

            return redirect()->back()->with('success', 'update dữ liệu thành công');
        }
    }

}
