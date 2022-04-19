<?php

use App\Models\ProductGallery;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Admin\UserController as AdminUserController;
use App\Http\Controllers\Admin\ProductController as AdminProductController;
use App\Http\Controllers\Admin\CategoryController as AdminCategoryController;
use App\Http\Controllers\Admin\DashboardController as AdminDashboardController;
use App\Http\Controllers\Admin\ProductGalleryController as AdminProductGalleryController;
use App\Http\Controllers\ProductReviewController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\UserSettingController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Home Controller 
Route::get('/', [HomeController::class, 'index'])->name('home');

// Category Controller
Route::get('/category', [CategoryController::class, 'index'])->name('categories');
Route::get('/category/{id}', [CategoryController::class, 'detail'])->name('categories-detail');

// Detail Controller
Route::get('/details/{id}', [DetailController::class, 'index'])->name('product-detail');

// Register Controller
Route::get('/register/success', [RegisterController::class, 'success'])->name('register-success-checkout');
Route::get('/register', [RegisterController::class, 'register'])->name('register-account')->middleware('guest');
Route::post('/store-regist', [RegisterController::class, 'store'])->name('store-regist');

// Login Controller
Route::get('/login', [LoginController::class, 'login'])->name('login')->middleware('guest');
Route::post('/auth', [LoginController::class, 'auth'])->name('auth');
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

// User Setting Controller
Route::get('/user/{id}', [UserSettingController::class, 'index'])->name('user-setting')->middleware('auth');
Route::put('/user/update/{id}', [UserSettingController::class, 'update'])->name('user-update')->middleware('auth');

// Reveiew Produk Controller
Route::get('/reviews/{id}', [ProductReviewController::class, 'index'])->name('review-product')->middleware('auth');
Route::post('/reviews/add/', [ProductReviewController::class, 'store'])->name('add-review-product')->middleware('auth');

// Search Controller
Route::get('/search', [SearchController::class, 'index'])->name('search-product');

// Dashboard Admin Controller
Route::prefix('admin')
    // ->namespace('Admin')
    ->group(function() {
        Route::get('/', [AdminDashboardController::class, 'index'])->name('admin-dashboard')->middleware('admin');
        Route::resource('category', AdminCategoryController::class)->middleware('admin');
        Route::resource('user', AdminUserController::class)->middleware('admin');
        Route::resource('product', AdminProductController::class)->middleware('admin');
        Route::resource('product-gallery', AdminProductGalleryController::class)->middleware('admin');
    });

// Test Sentry
// Route::get('/debug-sentry', function () {
//     throw new Exception('My first Sentry error!');
// });
