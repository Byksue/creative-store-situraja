<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light navbar-store fixed-top navbar-fixed-top" data-aos="fade-down">
  <div class="container">
    <a class="navbar-brand" href="{{ route('home') }}">
      <img src="/images/creative.png" alt=""  />
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      @auth
        <ul class="navbar-nav mr-auto">
          {{-- Desktop --}}
          <li class="nav-item col-xs-3 d-none d-lg-flex" >
            <form class="form-inline" method="GET" action="{{ route('search-product') }}">
              @csrf
              <div class="input-group flex-nowrap">
                <input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search" value="{{ isset($key) ? $key : '' }}">
                <div class="input-group-prepend">
                  <button class="btn btn-success" type="submit" id="addon-wrapping"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
              </div>
            </form>
          </li>

          {{-- Mobile --}}
          <li class="nav-item col-xs-3 mt-3 d-block d-lg-none" >
            <form class="form-inline" method="GET" action="{{ route('search-product') }}">
              @csrf
              <div class="input-group flex-nowrap">
                <input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search" value="{{ isset($key) ? $key : '' }}">
                <div class="input-group-prepend">
                  <button class="btn btn-success" type="submit" id="addon-wrapping"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
              </div>
            </form>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
              <a class="nav-link" href="/">Home </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="{{ route('categories') }}">Categories</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="#">Rewards</a>
          </li>
        </ul>

        <!-- Desktop Menu -->
        <ul class="navbar-nav d-none d-lg-flex">
          <li class="nav-item dropdown">
              <a
              class="nav-link"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
              >
              <img
                  src="/images/user.png"
                  alt=""
                  class="rounded-circle mr-2 profile-picture"
              />
              Hi, {{ Auth::user()->name }}
              </a>
              @if (Auth::user()->roles == 'ADMIN')
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="{{ route('admin-dashboard') }}">
                    Dashboard
                  </a>
                  <div class="dropdown-divider"></div>
                  <form action="{{ route('logout') }}" method="post">
                    @csrf
                    <button type="submit" class="btn bg-transparent btn-outline-primary dropdown-item">Sign Out</button>
                  </form>
                </div>
              @else
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="{{ route('user-setting', Auth::user()->id) }}">
                    Account Settings
                  </a>
                  <div class="dropdown-divider"></div>
                  <form action="{{ route('logout') }}" method="post">
                    @csrf
                    <button type="submit" class="btn bg-transparent btn-outline-primary dropdown-item">Sign Out</button>
                  </form>
                </div>
              @endif
          </li>
        </ul>

        <!-- Mobile Menu -->
        <ul class="navbar-nav d-block d-lg-none">
          @if (Auth::user()->roles == 'ADMIN')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('admin-dashboard') }}">
                Dashboard
              </a>
            </li>
            <li class="nav-item">
              <form action="{{ route('logout') }}" method="post">
                @csrf
                <button type="submit" class="btn bg-success nav-item text-white">Sign Out</button>
              </form>
            </li>
          @else
            <li class="nav-item">
              <a class="nav-link" href="{{ route('user-setting', Auth::user()->id) }}">
                Account Settings
              </a>
            </li>
            <li class="nav-item">
              <form action="{{ route('logout') }}" method="post">
                @csrf
                <button type="submit" class="btn bg-success nav-item text-white">Sign Out</button>
              </form>
            </li>
          @endif
        </ul>
      @else
        <ul class="navbar-nav mr-auto">
          {{-- Desktop --}}
          <li class="nav-item col-xs-3 d-none d-lg-flex" >
            <form class="form-inline" method="GET" action="{{ route('search-product') }}">
              @csrf
              <div class="input-group flex-nowrap">
                <input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search" value="{{ isset($key) ? $key : '' }}">
                <div class="input-group-prepend">
                  <button class="btn btn-success" type="submit" id="addon-wrapping"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
              </div>
            </form>
          </li>

          {{-- Mobile --}}
          <li class="nav-item col-xs-3 mt-3 d-block d-lg-none" >
            <form class="form-inline" method="GET" action="{{ route('search-product') }}">
              @csrf
              <div class="input-group flex-nowrap">
                <input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search" value="{{ isset($key) ? $key : '' }}">
                <div class="input-group-prepend">
                  <button class="btn btn-success" type="submit" id="addon-wrapping"><i class="fa-solid fa-magnifying-glass"></i></button>
                </div>
              </div>
            </form>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="{{ route('home') }}">Home </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('categories') }}">Categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Rewards</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{ route('register-account') }}">Sign Up</a>
          </li>
          <li class="nav-item">
            <a class="btn btn-success nav-link px-4 text-white" href="{{ route('login') }}">Sign In</a>
          </li>
        </ul>
      @endauth
    </div>
  </div>
</nav>