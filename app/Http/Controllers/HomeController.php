<?php

namespace App\Http\Controllers;

use App;
use App\Models\Checklist_result;
use App\Models\line;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\Schema;
use DB;

class HomeController extends Controller
{



    public function __construct()
    {
        //return view('login');
    }
    public function index()
    {
        return view('Checklist_EQM.pages.Overview-checklist');
    }

    public function index_checklist()
    {

        $line_search = 'Line 01';
        $line_id = line::where('Line_name', $line_search)->pluck('id')->first();
        return view('Checklist_EQM.pages.Check-checklist', compact('line_id'));
    }



    public function index_master()
    {
        return view('Checklist_EQM.pages.Master-checklist');
    }

    public function index_user()
    {
        return view('Checklist_EQM.pages.User-checklist');
    }

    public function overview_data(Request $request)
    {
        $shift = ($request->input('shift') == 'All') ? null : $request->input('shift');
        $line = ($request->input('line') == '') ? null : $request->input('line');
        $date_form = $request->input('date_form');
        $progressData = Checklist_result::select(
            'Locations',
            \DB::raw('COUNT(*) as total_items'),
            \DB::raw('SUM(CASE WHEN Check_status = "Completed" THEN 1 ELSE 0 END) as completed_count')
        )
            ->where('Shift', 'LIKE', '%' . $shift . '%')
            ->where('Locations', 'LIKE', '%' . $line . '%')
            ->where('Date_check', $date_form)
            ->groupBy('Locations')
            ->get()
            ->map(function ($item) {
                $item->completion_percentage = $item->total_items > 0 ? round((($item->completed_count / $item->total_items) * 100), 0) : 0;
                return $item;
            });

        $totalChecklists = $progressData->sum('total_items');
        $completedChecklists = $progressData->sum('completed_count');

        return response()->json([
            'progressData' => $progressData,
            'total_checklists' => $totalChecklists,
            'completed_checklists' => $completedChecklists,
        ]);
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

    public function login()
    {
        return view('pages.login');
    }
}
