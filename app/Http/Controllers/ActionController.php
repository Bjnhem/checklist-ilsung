<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Action_AutoProject;
use App\Models\Action_ProjectList;
use App\Models\Action_AutoRate;
use App\Models\Action_AutoRateTeam;


class ActionController extends Controller
{

    public function chart_action(Request $request, $table)
    {
        if ($request->ajax()) {
            $team_search = $request->input("rela_team");
            $month = $request->input("month");
            switch ($table) {
                case 'rate-factory':
                    $users = Action_AutoRate::where('remark', 'factory')->where('month', $month)->orderBy('rate_2023', 'desc')->get();
                    return response()->json($users);

                case 'rate-sevt':
                    $users = Action_AutoRateTeam::where('month', $month)->get();
                    return response()->json($users);

                case 'project':
                    $users1 = Action_AutoProject::where('remark', 'SET')->get();
                    $users2 = Action_AutoProject::where('remark', 'COMP')->get();
                    return response()->json([
                        'users1' => $users1,
                        'users2' => $users2,
                    ]);

                case 'project-detail':
                    $users = Action_ProjectList::where('team', 'LIKE', '%' . $team_search . '%')->where('month', '10')->get();
                    return response()->json($users);

            }
        }

        return abort(404);
    }


}