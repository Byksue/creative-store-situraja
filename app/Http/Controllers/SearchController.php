<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        // dd($request);
        $key = $request->search;
        $categories = Category::take(6)->get();
        $products = Product::whereFullText('name', $key)->paginate(16); 
        // $products = Product::where('name', 'like', "%bolen%")->get(); 

        return view('pages.search', [
            'categories' => $categories,
            'products' => $products,
            'key' => $key
        ]);
    }
}
