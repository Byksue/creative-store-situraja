@extends('layouts.auth')

@section('title')
    Store Account Setting
@endsection

@section('content')
    <!-- Page Content -->
    <div class="page-content page-auth mt-5" style="margin-top: 7em!important" id="register">
        <div class="section-store-auth" data-aos="fade-up">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-4">
                <h2>
                  Account Information <br />
                  Setting Page
                </h2>
                <form class="mt-3" method="POST" action="{{ route('user-update', $user->id) }}" >
                  @method('PUT')
                  @csrf
                  <div class="form-group">
                    <label>Full Name</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control @error('name') is-invalid @enderror"
                      aria-describedby="nameHelp"
                      value="{{ $user->name }}"
                      required
                      autofocus
                      autocomplete="name"
                    />
                    @error('name')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Email Address</label>
                    <input 
                      type="email"
                      name="email"
                      class="form-control @error('email') is-invalid @enderror"
                      aria-describedby="emailHelp"
                      value="{{ $user->email }}"
                      required
                      autocomplete="email"
                    />
                    @error('email')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <input id="password"
                      type="password"
                      name="password"
                      class="form-control @error('password') is-invalid @enderror"
                      autocomplete="new-password" 
                    />
                    <small class="text-danger">Don't fill this field, if you not wanna change the password</small>
                    @error('password')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Password Confirmation</label>
                    <input id="password-confirm"
                      type="password"
                      name="password_confirmation"
                      class="form-control @error('password_confirmation') is-invalid @enderror"
                      autocomplete="new-password" 
                    />
                    <small class="text-danger">Don't fill this field, if you not wanna change the password</small>
                    @error('password_confirmation')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Whatsapp Number</label>
                    <input
                      type="text"
                      name="phone_number"
                      class="form-control @error('phone_number') is-invalid @enderror"
                      value="{{ $user->phone_number }}"
                      required
                      autofocus
                      autocomplete="phone_number"
                    />
                    @error('phone_number')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label>Home Address</label>
                    <textarea name="address" class="form-control @error('address') is-invalid @enderror" id="" cols="30" rows="5">
                      {{ $user->address }}
                    </textarea>
                    @error('name')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <button type="submit" class="btn btn-success btn-block mt-4" :disable="this.email_unavaiable">
                    Update your info
                  </button>
                  <a href="{{ route('home') }}" class="btn btn-signup btn-block mt-2">
                    Back to Store Page
                  </a>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
@endsection

@push('addon-script')
    @if(Session::has('successUpdate'))
    <script>
      Swal.fire({
        icon: 'success',
        title: 'HOORAY!!',
        text: '{!! session("successUpdate") !!}',
      })
    </script>
    @endif
@endpush