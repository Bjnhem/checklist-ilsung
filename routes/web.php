<?php

use App\Http\Controllers\admin\admin_check_list_controller;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\DataTbaleController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\admin\master_data_controller;
use App\Http\Controllers\check_list_controller;
use App\Http\Controllers\Plan_checklist;

/*=======  Router home============= */

Route::prefix('/')->group(function () {

    Route::get('', [check_list_controller::class, 'index'])->name('home');
    Route::get('checklist-overview', [check_list_controller::class, 'overview_data'])->name('checklist.overview');
    Route::get('checklist', [check_list_controller::class, 'index_checklist'])->name('Check.checklist');

    Route::get('Update-master-checklist', [check_list_controller::class, 'index_master'])->name('Master.checklist');
    Route::get('User', [check_list_controller::class, 'index_user'])->name('user.checklist');
    Route::get('/change-language/{language}', [HomeController::class, 'changeLanguage'])->name('change-language'); // router change ngôn ngữ

    /*  Route đăng nhập tài khoản */
    Route::GET('/login', [AuthController::class, 'login'])->name('login');
    Route::POST('/login', [AuthController::class, 'submit_login'])->name('submit.login');
    Route::GET('/register', [AuthController::class, 'register'])->name('register');
    Route::POST('/register', [AuthController::class, 'submit_register'])->name('submit.register');
    Route::POST('/logout', [AuthController::class, 'logout'])->name('logout');
});


Route::prefix('Plan-checklist')->group(function () {
    Route::get('', [Plan_checklist::class, 'index_plan'])->name('Plan.checklist');

    Route::post('/check-list-plan', [check_list_controller::class, 'search_check_list_overview'])->name('check.list.overview');  // show model search 
});

Route::prefix('check-list')->group(function () {
    Route::get('show/{line}', [check_list_controller::class, 'index_checklist_show'])->name('show.checklist');
    Route::get('/checklist-masster', [check_list_controller::class, 'check_list_masster'])->name('check.list.masster');  // show model search
    Route::get('/item-check', [check_list_controller::class, 'Machine_ID_search'])->name('item.checklist.search');  // show model search
    Route::get('/khung-gio-check', [check_list_controller::class, 'Khung_check'])->name('khung.check.search');  // show model search


    Route::post('/check-list-overview', [check_list_controller::class, 'search_check_list_overview'])->name('check.list.overview');  // show model search


    Route::get('/check-list-show', [check_list_controller::class, 'check_list_detail'])->name('check.list.search');  // show model search
    Route::post('/save-check-list/{table}', [check_list_controller::class, 'save_check_list'])->name('save.check.list');  // show model search
    Route::post('/save-check-list-detail/{table}', [check_list_controller::class, 'save_check_list_detail'])->name('save.check.list.detail');  // show model search
    Route::post('/search-check-list', [check_list_controller::class, 'search_check_list'])->name('search.check.list');  // show model search
    Route::post('/search-check-list-view', [check_list_controller::class, 'search_check_list_view'])->name('search.check.list.view');  // show model search
    Route::post('/edit-table/{model}', [check_list_controller::class, 'edit_table'])->name('check.list.edit.data');
    Route::post('/edit-check-list', [check_list_controller::class, 'save_edit_check_list'])->name('save.edit.check.list');  // show model search
    Route::get('/delete-check-list', [check_list_controller::class, 'delete_row'])->name('check.list.delete');
});



/* update data table */
Route::/* middleware('auth')-> */prefix('admin-dashboard')->group(function () {
    Route::get('', [AdminController::class, 'index'])->name('admin.index');
    Route::get('check-list', [AdminController::class, 'index_check_list'])->name('admin.checklist');
    Route::get('check-list-search', [AdminController::class, 'index_search'])->name('admin.checklist.search');
    Route::get('check-list-edit', [AdminController::class, 'index_edit'])->name('admin.checklist.edit');
    Route::get('check-list-pending', [AdminController::class, 'index_pending'])->name('admin.checklist.pending');
    Route::get('historry', [AdminController::class, 'index_historry'])->name('admin.checklist.historry');
    Route::post('/add-plan-checklist', [admin_check_list_controller::class, 'created_plan_checklist'])->name('admin.add.plan.checklist');
});

Route::/* middleware('auth')-> */prefix('admin-dashboard/check-list')->group(function () {



    Route::get('/check-list', [admin_check_list_controller::class, 'check_list_search'])->name('admin.show.check.list');  // show model search
    Route::get('/line-type', [admin_check_list_controller::class, 'line_type_search'])->name('admin.line.type.search');  // show model search
    Route::get('/cong_doan', [admin_check_list_controller::class, 'cong_doan_search'])->name('admin.cong.doan.search');  // show model search
    Route::get('/phan-loai', [admin_check_list_controller::class, 'phan_loai_search'])->name('admin.phan.loai.search');  // show model search
    Route::get('/check-list-show', [admin_check_list_controller::class, 'check_list_detail'])->name('admin.check.list.search');  // show model search
    Route::get('/check-list-show-overview', [admin_check_list_controller::class, 'check_list_detail_overview'])->name('admin.check.list.search.overview');  // show model search

    Route::post('/save-check-list-pending/{table}', [admin_check_list_controller::class, 'save_check_list_pending'])->name('admin.save.check.list.pending');  // show model search
    Route::post('/save-check-list-historry-pad', [admin_check_list_controller::class, 'save_check_list_historry_pad'])->name('admin.save.check.list.historry.pad');  // show model search

    Route::get('/check-list-show-edit', [admin_check_list_controller::class, 'check_list_detail_edit'])->name('admin.check.list.search.edit');  // show model search
    Route::post('/save-check-list/{table}', [admin_check_list_controller::class, 'save_check_list'])->name('admin.save.check.list');  // show model search
    Route::post('/save-check-list-historry', [admin_check_list_controller::class, 'save_check_list_historry'])->name('admin.save.check.list.historry');  // show model search
    Route::post('/save-check-list-detail/{table}', [admin_check_list_controller::class, 'save_check_list_detail'])->name('admin.save.check.list.detail');  // show model search
    Route::post('/search-check-list', [admin_check_list_controller::class, 'search_check_list'])->name('admin.search.check.list');  // show model search
    Route::post('/search-check-list-view', [admin_check_list_controller::class, 'search_check_list_view'])->name('admin.search.check.list.view');  // show model search
    Route::post('/search-check-list-overview', [admin_check_list_controller::class, 'search_check_list_overview'])->name('admin.search.check.list.overview');  // show model search

    Route::post('/edit-table/{model}', [admin_check_list_controller::class, 'edit_table'])->name('admin.check.list.edit.data');
    Route::post('/edit-check-list', [admin_check_list_controller::class, 'save_edit_check_list'])->name('admin.save.edit.check.list');  // show model search


    Route::get('/delete-check-list', [admin_check_list_controller::class, 'delete_row_search'])->name('admin.check.list.delete');
    Route::get('/delete-check-list-edit', [admin_check_list_controller::class, 'delete_row_edit'])->name('admin.check.list.delete.edit');
    Route::get('/new-row', [admin_check_list_controller::class, 'new_row'])->name('admin.check.list.new_row');
});

Route::/* middleware('auth')-> */prefix('admin-dashboard/check-list-overview')->group(function () {

    /* Route::get('/check-list', [admin_check_list_controller::class, 'check_list_search'])->name('admin.show.check.list');  // show model search
    Route::get('/line-type', [admin_check_list_controller::class, 'line_type_search'])->name('admin.line.type.search');  // show model search
    Route::get('/cong_doan', [admin_check_list_controller::class, 'cong_doan_search'])->name('admin.cong.doan.search');  // show model search
    Route::get('/phan-loai', [admin_check_list_controller::class, 'phan_loai_search'])->name('admin.phan.loai.search');  // show model search
    Route::get('/check-list-show', [admin_check_list_controller::class, 'check_list_detail'])->name('admin.check.list.search');  // show model search


    Route::get('/check-list-show-edit', [admin_check_list_controller::class, 'check_list_detail_edit'])->name('admin.check.list.search.edit');  // show model search
    Route::post('/save-check-list', [admin_check_list_controller::class, 'save_check_list'])->name('admin.save.check.list');  // show model search
    Route::post('/save-check-list-detail', [admin_check_list_controller::class, 'save_check_list_detail'])->name('admin.save.check.list.detail');  // show model search
    Route::post('/search-check-list', [admin_check_list_controller::class, 'search_check_list'])->name('admin.search.check.list');  // show model search
    Route::post('/search-check-list-view', [admin_check_list_controller::class, 'search_check_list_view'])->name('admin.search.check.list.view');  // show model search
   
    Route::post('/edit-table/{model}', [admin_check_list_controller::class, 'edit_table'])->name('admin.check.list.edit.data');
    Route::post('/edit-check-list', [admin_check_list_controller::class, 'save_edit_check_list'])->name('admin.save.edit.check.list');  // show model search
  

    Route::get('/delete-check-list', [admin_check_list_controller::class, 'delete_row_search'])->name('admin.check.list.delete');
    Route::get('/delete-check-list-edit', [admin_check_list_controller::class, 'delete_row_edit'])->name('admin.check.list.delete.edit');
    Route::get('/new-row', [admin_check_list_controller::class, 'new_row'])->name('admin.check.list.new_row'); */
});


/* update data table */
Route::/* middleware('auth')-> */prefix('admin-dashboard/update-data')->group(function () {
    Route::get('', [DataTbaleController::class, 'index'])->name('table.index');
    Route::get('/show/{table}', [DataTbaleController::class, 'table_show'])->name('table.show');
    Route::get('/show-model', [DataTbaleController::class, 'show'])->name('table.show.model');
    Route::get('/list', [DataTbaleController::class, 'list'])->name('table.list');
    Route::post('/upload-csv', [DataTbaleController::class, 'update_table'])->name('table.update.data');
    Route::post('/edit-table/{model}', [DataTbaleController::class, 'edit_table'])->name('table.edit.data');
    Route::get('/new-row', [DataTbaleController::class, 'new_row'])->name('table.new_row');
    Route::get('/delete-row', [DataTbaleController::class, 'delete_row'])->name('table.delete_row');
});


Route::/* middleware('auth')-> */prefix('admin-dashboard/master')->group(function () {
    Route::get('', [master_data_controller::class, 'index'])->name('master.index');
    Route::get('/show/{table}', [master_data_controller::class, 'table_show'])->name('master.show');
    Route::get('/add-check-list-name', [master_data_controller::class, 'add_check_list_name'])->name('master.add.check.list.name');

    Route::get('/show-model', [master_data_controller::class, 'show'])->name('master.show.model');
    Route::get('/list', [master_data_controller::class, 'list'])->name('master.list');
    Route::post('/upload-csv', [master_data_controller::class, 'update_table'])->name('master.update.data');
    Route::post('/edit-table/{model}', [master_data_controller::class, 'edit_table'])->name('master.edit.data');
    Route::get('/new-row', [master_data_controller::class, 'new_row'])->name('master.new_row');
    Route::get('/delete-row', [master_data_controller::class, 'delete_row'])->name('master.delete_row');
});

/* update data table */
/* Route::middleware('auth')->prefix('admin-dashboard/table')->group(function () {
      Route::get('', [DataTbaleController::class, 'index'])->name('table.index');
    Route::get('/show/{table}', [DataTbaleController::class, 'table_show'])->name('table.show');
    Route::get('/show-model', [DataTbaleController::class, 'show'])->name('table.show.model');
    Route::get('/list', [DataTbaleController::class, 'list'])->name('table.list');
    Route::post('/upload-csv', [DataTbaleController::class, 'update_table'])->name('table.update.data');
    Route::post('/edit-table/{model}', [DataTbaleController::class, 'edit_table'])->name('table.edit.data');
    Route::get('/new-row', [DataTbaleController::class, 'new_row'])->name('table.new_row');
    Route::get('/delete-row', [DataTbaleController::class, 'delete_row'])->name('table.delete_row');
}); */


// Route::group(['prefix' => 'laravel-filemanager'], function () {
//     \UniSharp\LaravelFilemanager\Lfm::routes();
// });
