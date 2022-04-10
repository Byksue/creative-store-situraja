@extends('layouts.auth')

@section('title')
    Store Login Account
@endsection

@section('content')
    <!-- Page Content -->
    <div class="page-content page-auth">
        <div class="section-store-auth" data-aos="fade-up">
          <div class="container">
            <div class="row align-items-center row-login">
              <div class="col-lg-6 text-center">
                <img
                  src="/images/login-placeholder.png"
                  alt=""
                  class="w-50 mb-4 mb-lg-none"
                />
              </div>
              <div class="col-lg-5">
                <h2>
                  Sign in to  <br>
                  access this app
                </h2>
                <form method="POST" action="{{ route('auth') }}" class="mt-3">
                  @csrf
                  <div class="form-group">
                    <label>Email address</label>
                    <input type="email" id="email" class="form-control w-75 @error('email') is-invalid @enderror" name="email" aria-describedby="emailHelp" value="{{ old('email') }}" required autocomplete="email" autofocus/>
                    @error('email')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input type="password" id="password" class="form-control w-75 @error('password') is-invalid @enderror" name="password" aria-describedby="passwordHelp" value="{{ old('password') }}" required autocomplete="password" autofocus/>
                    @error('password')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <button
                    class="btn btn-success btn-block w-75 mt-4"
                    type="submit"
                  >
                    Sign In to My Account
                  </button>
                  <a class="btn btn-signup w-75 mt-2" href="{{ route('register-account') }}">
                    Sign Up
                  </a>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
@endsection

@push('addon-script')
  @if(Session::has('loginError'))
  <script>
    Swal.fire({
      icon: 'error',
      title: 'Failed to Logged In',
      text: '{!! session("loginError") !!}',
    })
  </script>
  @endif

  @if(Session::has('successRegister'))
  <script>
    Swal.fire({
      icon: 'success',
      title: 'HOORAY!!',
      text: '{!! session("successRegister") !!}',
    })
  </script>
  @endif
@endpush