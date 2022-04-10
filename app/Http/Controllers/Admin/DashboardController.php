<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $customer = User::where('roles', 'USER')->count();
        $product  = Product::all()->count();
        $category = Category::all()->count();

        return view('pages.admin.dashboard', [
            'customer' => $customer,
            'product' => $product,
            'category' => $category
        ]);
    }
}
