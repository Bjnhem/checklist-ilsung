<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Smart_ViewPage;
use App\Models\Smart_Post;
use App\Models\Mind_Tieuchuan;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Storage;
use App\Models\Smart_SliderTranslations;
use App\Models\Smart_VideoList;
use App\Models\Smart_PostStatus;
use App\Models\Smart_Title_translated;

class AdminController extends Controller
{

    public function __construct()
    {
        //return view('login');
    }
    public function login()
    {
        return view('smart-ver2.admin.login');
    }
    public function index()

    {
        $view='ftg';
        return view('pro_3m.admin.check-list.admin-checklist', compact('view'));
    }
  
    public function index_search()
    {
        $view='pad';
        return view('pro_3m.admin.check-list.admin-checklist-search',compact('view'));
    } 
    public function index_historry()
    {
        $view='pad';
        return view('pro_3m.admin.check-list.add-checklist-historry',compact('view'));
    } 
    public function index_pending()
    {
        $view='ftg';
        return view('pro_3m.admin.check-list.admin-checklist-overview', compact('view'));
    } 
    
    public function index_edit()
    {
        $view='ftg';
        return view('pro_3m.admin.check-list.admin-checklist-edit',compact('view'));
    }
    public function index_check_list()
    {
        $view='ftg';
        return view('pro_3m.admin.check-list.admin-checklist',compact('view'));
    }
    
    
}
