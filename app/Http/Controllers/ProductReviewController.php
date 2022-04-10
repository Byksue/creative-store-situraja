<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\DB;

class ProductReviewController extends Controller
{
    public function index(Request $request, $id)
    {
        $product = Product::where('slug', $id)->firstOrFail();

        return view('pages.review-product', [
            'product' => $product
        ]);
    }

    public function store(Request $request)
    {
        $validateData = $request->validate([
            'users_id' => 'exists:users,id',
            'products_id' => 'exists:products,id',
            'review_type' => 'required',
            'descripton' => 'required|string|max:255'
        ]);

        if (DB::table('product_reviews')->where('users_id', $validateData['users_id'])->where('products_id', $validateData['products_id'])->exists()) {
            return redirect()->route('product-detail', $request->slug_product)->with('sudahReview', 'You have already reviewed this product!');
        }

        ProductReview::create($validateData);
        
        return redirect()->route('product-detail', $request->slug_product)->with('successReview', 'Your review of this product is added');
    }
}
