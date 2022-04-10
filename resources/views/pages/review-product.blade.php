@extends('layouts.auth')

@section('title')
    Store Product Review
@endsection

@section('content')
    <!-- Page Content -->
    <div class="page-content page-auth mt-5" style="margin-top: 7em!important" id="register">
        <div class="section-store-auth" data-aos="fade-up">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-6">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <h2>
                  Review Product <br />
                  {{ $product->name }}
                </h2>
                <form class="mt-3" method="POST" action="{{ route('add-review-product') }}" >
                  @csrf
                  <input type="hidden" name="users_id" value="{{ Auth::user()->id }}">
                  <input type="hidden" name="products_id" value="{{ $product->id }}">
                  <input type="hidden" name="slug_product" value="{{ $product->slug }}">
                  <div class="form-group">
                    <label>Product Quality</label>
                    <select name="review_type" class="form-control" required>
                      <option value="Good">Good</option>
                      <option value="Ok">Ok</option>
                      <option value="Bad">Bad</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Description</label>
                    <textarea name="descripton" class="form-control" id="editor" required>
                      {{ old('description') }}
                    </textarea>
                  </div>
                  <button type="submit" class="btn btn-success btn-block mt-4">
                    Submit Review
                  </button>
                  <a href="{{ route('product-detail', $product->slug) }}" class="btn btn-signup btn-block mt-2">
                    Back to detail product
                  </a>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
@endsection

@push('addon-script')
    <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script> 
    <script>
        CKEDITOR.replace('editor');
    </script>
@endpush