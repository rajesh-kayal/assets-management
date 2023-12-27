<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AssetClassController;
use App\Http\Controllers\AssetController;
use App\Http\Controllers\VendorController;
use App\Http\Controllers\LocationController;
use App\Http\Controllers\DepartmentController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ReportController;

Route::get('/', function () {
    return view('login');
});

Route::post('/login', [LoginController::class, 'login']);
Route::get('/logout', [LoginController::class, 'logout']);

// Route::group(['middleware' => 'WebGuard'], function () {

    Route::get('/dashboard', [FrontController::class, 'dashboard']);
    Route::get('/category', [FrontController::class, 'category']);
    //Route::get('/class', [FrontController::class, 'class']);
    //Route::get('/asset', [FrontController::class, 'asset']);
    Route::get('/vendor', [FrontController::class, 'vendor']);
    Route::get('/location', [FrontController::class, 'location']);
    Route::get('/department', [FrontController::class, 'department']);
    //Route::get('/report', [FrontController::class, 'report']);
    Route::get('/user', [FrontController::class, 'user']);

    Route::get('/new_pro', [FrontController::class, 'new_pro']);
    Route::get('/product', [FrontController::class, 'product']);

    Route::get('/add_category', [FrontController::class, 'add_category']);
    Route::get('/add_class', [FrontController::class, 'add_class']);
    Route::get('/add_vendor', [FrontController::class, 'add_vendor']);
    //Route::get('/add_asset', [FrontController::class, 'add_asset']);
    Route::get('/add_location', [FrontController::class, 'add_location']);
    Route::get('/add-department', [FrontController::class, 'add_department']);
    Route::get('/add_user', [FrontController::class, 'add_user']);

    Route::post('/AssetClassStore', [AssetClassController::class, 'AssetClassStore']);
//Route::get('/add_class', [FrontController::class, 'add_class']);
    Route::get('/add_class', [AssetClassController::class, 'classIdview']);
    Route::get('/class', [AssetClassController::class, 'getAllClass']);
    Route::get('/edit_class/{id}', [AssetClassController::class, 'editClass']);
    Route::post('/update_class', [AssetClassController::class, 'updateClass']);
    Route::get('/view_class/{id}', [AssetClassController::class, 'viewClass']);


    Route::post('/save-asset', [AssetController::class, 'saveAsset']);
    Route::get('/add_asset', [AssetController::class, 'assAssets']);
    Route::get('/asset', [AssetController::class, 'getAllAsset']);
    Route::get('/edit-asset/{id}', [AssetController::class, 'editAsset']);
    Route::post('/update-asset', [AssetController::class, 'updateAsset']);
    Route::get('/view-asset/{id}', [AssetController::class, 'viewAsset']);

    Route::post('/save_vendor', [VendorController::class, 'saveVendor']);
    Route::get('/vendor', [VendorController::class, 'getAllVendor']);
    Route::get('/edit_vendor/{id}', [VendorController::class, 'editvendor']);
    Route::post('/update_vendor',[VendorController::class, 'updateVendor']);
    Route::get('/view_vendor/{id}', [VendorController::class, 'viewVendor']);

    Route::post('/save-location', [LocationController::class, 'saveLocation']);
    Route::get('/location', [LocationController::class, 'getAllLocation']);
    Route::get('/edit-location/{id}', [LocationController::class, 'editLocation']);
    Route::post('/update-location', [LocationController::class, 'updateLocation']);
    Route::get('/view-location/{id}', [LocationController::class, 'viewLocation']);

    Route::post('/save-department', [DepartmentController::class, 'savedepartment']);
    Route::get('/department', [DepartmentController::class, 'getAlldepartment']);
    Route::get('/edit-department/{id}', [DepartmentController::class, 'editdepartment']);
    Route::post('/update-department', [DepartmentController::class, 'updateDepartment']);
    Route::get('/view-department/{id}', [DepartmentController::class, 'viewDepartment']);

    Route::post('/save-user', [UserController::class, 'saveUser']);
    Route::get('/user', [UserController::class, 'getAlluser']);
    Route::get('/edit_user/{id}', [UserController::class, 'editUser']);
    Route::post('/update_user/{id}', [UserController::class, 'updateUser']);
    Route::get('/view_user/{id}', [UserController::class, 'viewUser']);


    //Report
    Route::get('/report', [ReportController::class, 'AllReport']);


    Route::get('/fixedassetid', [AssetController::class, 'fixedassetid']);

// });

// Route::get('/no-access', function () {
//     echo "You're not allowed to access the page";
//     die();
// });

