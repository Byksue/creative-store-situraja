<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\ProductReview;

class DetailController extends Controller
{
    public function index(Request $request, $id)
    {
        $product = Product::with(['galleries'], ['review_product.user'])->where('slug', $id)->firstOrFail();
        // $product_review = ProductReview::where();

        // dd($product);
        return view('pages.detail', [
            'product' => $product
        ]);
    }
}
