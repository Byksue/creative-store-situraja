@extends('layouts.auth')

@section('title')
    Store Register Account
@endsection

@section('content')
    <!-- Page Content -->
    <div class="page-content page-auth mt-5" style="margin-top: 7em!important" id="register">
        <div class="section-store-auth" data-aos="fade-up">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-4">
                <h2>
                  Start your business <br />
                  with a new way
                </h2>
                <form class="mt-3" method="POST" action="{{ route('store-regist') }}" >
                  @csrf
                  <div class="form-group">
                    <label>Full Name</label>
                    <input
                      type="text"
                      name="name"
                      class="form-control @error('name') is-invalid @enderror"
                      aria-describedby="nameHelp"
                      value="{{ old('name') }}"
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
                      value="{{ old('email') }}"
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
                      required
                      autocomplete="new-password" 
                    />
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
                      required
                      autocomplete="new-password" 
                    />
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
                      value="{{ old('phone_number') }}"
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
                      {{ old('address') }}
                    </textarea>
                    @error('name')
                      <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                  </div>
                  <button type="submit" class="btn btn-success btn-block mt-4" :disable="this.email_unavaiable">
                    Sign Up Now
                  </button>
                  <a href="{{ route('login') }}" class="btn btn-signup btn-block mt-2">
                    Back to Sign In
                  </a>
                </form>
              </div>
            </div>
          </div>
        </div>
    </div>
@endsection

@push('addon-script')
    <script src="/vendor/vue/vue.js"></script>
    <script src="https://unpkg.com/vue-toasted"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
    Vue.use(Toasted);

    var register = new Vue({
        el: "#register",
        mounted() {
        AOS.init();
        },
        methods: {
          checkForEmail: function(){
            var self = this;
            axios.get('{{ route('api-register-check') }}', {
              params: {
                email: self.email
              }
            })
              .then(function (response) {
                if(response.data == 'Available'){
                  self.$toasted.show(
                      "Congrats! You can use this email.",
                      {
                        position: "top-center",
                        className: "rounded",
                        duration: 1000,
                      }
                  );
                  self.email_unavailable = false;
                }else{
                  self.$toasted.error(
                      "Sorry, your email is already used.",
                      {
                        position: "top-center",
                        className: "rounded",
                        duration: 1000,
                      }
                  );
                  self.email_unavailable = true;
                }
                // handle success
                console.log(response);
              });
          }
        },
        data() {
            return{
              name: "Angga Hazza Sett",
              email: "kamujagoan@bwa.id",
              is_store_open: true,
              store_name: "",
              email_unavailable: false
          }
        },
    });
    </script>
@endpush