@extends('layouts.app')

@section('title')
    Store Detail Page
@endsection

@section('content')
    <!-- Page Content -->
    <div class="page-content page-details">
        <section
          class="store-breadcrumbs"
          data-aos="fade-down"
          data-aos-delay="100"
        >
          <div class="container">
            <div class="row">
              <div class="col-12">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                      Product Details
                    </li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </section>
        <section class="store-gallery mb-4" id="gallery">
          <div class="container">
            <div class="row">
              <div class="col-lg-8" data-aos="zoom-in">
                <transition name="slide-fade" mode="out-in">
                  <img
                    :key="photos[activePhoto].id"
                    :src="photos[activePhoto].url"
                    class="w-100 main-image"
                    alt=""
                  />
                </transition>
              </div>
              <div class="col-lg-2">
                <div class="row">
                  <div
                    class="col-3 col-lg-12 mt-2 mt-lg-0"
                    v-for="(photo, index) in photos"
                    :key="photo.id"
                    data-aos="zoom-in"
                    data-aos-delay="100"
                  >
                    <a href="#" @click="changeActive(index)">
                      <img
                        :src="photo.url"
                        class="w-100 thumbnail-image"
                        :class="{ active: index == activePhoto }"
                        alt=""
                      />
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="store-details-container" data-aos="fade-up">
          <section class="store-heading">
            <div class="container">
              <div class="row">
                <div class="col-lg-8">
                  <h1>{{ $product->name }}</h1>
                  <div class="owner">By {{ $product->owner }} | Stock : {!! ($product->stock) >= 10 ? $product->stock : '<span class="text-danger">'. $product->stock .'</span>' !!}</div>
                  <div class="price">Rp. {{ number_format($product->price) }}</div>
                </div>
                <div class="col-lg-2" data-aos="zoom-in">
                  @auth
                      <a href="{{ $product->link_wa }}" target="_blank" class="btn btn-success nav-link px-4 text-white btn-block mb-3">
                        <i class="fa-brands fa-whatsapp"></i> Order Now!
                      </a>
                      {{-- <a href="#" class="btn btn-success nav-link px-4 text-white btn-block mb-3">
                        <i class="fa-solid fa-star"></i>  Review Produk
                      </a> --}}
                  @else
                    <a href="{{ route('login') }}" class="btn btn-success nav-link px-4 text-white btn-block mb-3">
                      Sign in First
                    </a>
                  @endauth
                </div>
              </div>
            </div>
          </section>
          
          <section class="store-description">
            <div class="container">
              <hr>
              <div class="row">
                <div class="col-12 col-lg-8">
                  <h5 class="mb-3 font-weight-bolder">Description Product</h5>
                  {!! $product->description !!}
                </div>
              </div>
            </div>
          </section>
          
          @forelse ($product->review_product as $item)
              @php
                  $count = $item->where('products_id', $product->id)->count();
              @endphp
          @empty
              @php
                  $count = 0;
              @endphp
          @endforelse

          <section class="store-review">
            <div class="container">
              <hr>
              <div class="row">
                <div class="col-12 col-lg-8 mt-3 mb-3">
                  <h5 class="font-weight-bolder">Customer Review ({{ $count }})</h5>
                </div>
              </div>
              <div class="row">
                <div class="col-12 col-lg-8">
                  <ul class="list-unstyled">
                    @forelse ($product->review_product as $review)
                      <li class="media">
                        <img
                          src="/images/user.png"
                          class="mr-3 rounded-circle"
                          alt=""
                        />
                        <div class="media-body">
                          <h5 class="mt-2 mb-1">{{ $review->user->name }} | <span class="text-muted">Rating : {{ $review->review_type }}</span></h5>
                          {!! $review->descripton !!}
                        </div>
                      </li>
                    @empty
                    <div class="col-12 text-center py-5" data-aos="fade-up" data-aos-delay="100">
                      This product has not been reviewed
                    </div>
                    @endforelse
                  </ul>
                  @auth
                    @if ($product->review_product->where('users_id', Auth::user()->id)->count() < 1)
                      <a href="{{ route('review-product', $product->slug) }}" class="btn btn-success nav-link px-4 text-white btn-block mb-3">
                        <i class="fa-solid fa-star"></i>  Review This Product
                      </a>
                    @else
                      <a href="{{ route('review-product', $product->slug) }}" class="btn btn-success nav-link px-4 text-white btn-block mb-3 disabled">
                        You have already reviewed this product
                      </a>
                    @endif
                  @endauth
                </div>
              </div>
            </div>
          </section>
        </div>
    </div>
@endsection

@push('addon-script')
    <script src="/vendor/vue/vue.js"></script>
    <script>
    var gallery = new Vue({
        el: "#gallery",
        mounted() {
        AOS.init();
        },
        data: {
          activePhoto: 0,
          photos: [
              @foreach ($product->galleries as $gallery)
                {
                  id: {{ $gallery->id }},
                  url: "{{ Storage::url($gallery->photos) }}",
                },
              @endforeach
          ],
        },
        methods: {
          changeActive(id) {
              this.activePhoto = id;
          },
        },
    });
    </script>

    @if(Session::has('successReview'))
      <script>
        Swal.fire({
          icon: 'success',
          title: 'HOORAY!!',
          text: '{!! session("successReview") !!}',
        })
      </script>
    @endif

    @if(Session::has('sudahReview'))
    <script>
      Swal.fire({
        icon: 'error',
        title: 'OOPS!!',
        text: '{!! session("sudahReview") !!}',
      })
    </script>
  @endif
@endpush