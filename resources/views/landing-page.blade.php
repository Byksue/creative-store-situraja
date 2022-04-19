<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

    <title>Creative Store Situraja - Landing Page</title>
    <link rel="shortcut icon" href="{{ asset('landing/images/css-logo.png') }}" type="image/x-icon">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" /> -->

    <link rel="stylesheet" href="{{ asset('landing/css/custom.css') }}">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img class="logo d-md-block d-none w-75" src="{{ asset('landing/images/creative.png') }}" alt="logo">
                <img class="logo d-block d-md-none" src="{{ asset('landing/images/css-logo.png') }}" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:;">Tentang Kami</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:;">Panduan Reseller</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:;">Promo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:;">Galeri Produk</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="javascript:;">Kontak Kami</a>
                    </li>
                </ul>

                <div class="navbar-action">
                    <a href="{{ route('login') }}" class="btn btn-primary text-decoration-none">Masuk</a>
                    <a href="{{ route('register-account') }}" class="btn btn-outline-primary text-decoration-none">Daftar</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <section class="hero">
            <div class="row">
                <div class="col-sm-12 col-md-6 my-auto">
                    <h1 class="title">
                        Mudahnya <span>Jualan Online</span> Tanpa Modal Dalam 1 Menit!
                    </h1>
                    <p class="description">
                        Kamu hanya perlu duduk santai di rumah dan gunakan smartphone-mu. Kamu juga akan dipandu oleh tim sales berpengalaman.
                    </p>
                    <div class="image d-block d-md-none">
                        <img class="illustration" src="{{ asset('landing/images/hero.png') }}" alt="">
                    </div>
                    <a href="{{ route('register-account') }}" class="btn btn-primary btn-lg btn-block my-3 text-decoration-none">
                        Mulai Berjualan Sekarang
                    </a>
                    <div class="hero-social">
                        <p>
                            Online Stores | Prices as marked | Exclusions apply
                        </p>
                        <div class="social-icons">
                            <a href="https://www.instagram.com/rumahkreatifsituraja/"><i class="fab fa-instagram"></i></a>
                            <a href="https://vt.tiktok.com/ZSdrpA3UP/"><i class="fa-brands fa-tiktok"></i></i></a>
                            <a href="https://www.youtube.com/c/RumahKreatifSituraja"><i class="fa-brands fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="image d-md-block d-none">
                        <img class="illustration" src="{{ asset('landing/images/hero.png') }}" alt="">
                    </div>
                </div>
            </div>
        </section>

        <section class="feature" id="feature">
            <h1 class="title">
                Apa saja <span>Kelebihannya</span> ?
            </h1>
            <div class="row">
                <div class="col-sm-12 col-md-6 my-auto">
                    <div class="image">
                        <img class="illustration" src="{{ asset('landing/images/feature.png') }}" alt="feature">
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="feature-item">
                        <img class="image" src="{{ asset('landing/images/feature-1.png') }}" alt="feature-1">
                        <div class="info">
                            <h4 class="title">Gratis Belajar Bisnis</h4>
                            <p>
                                Pahami strategi jualan, teknik pemasaran, hingga cara promosi di media sosial dari
                                trainer handal di Training Wirausaha.
                            </p>
                        </div>
                    </div>
                    <div class="feature-item">
                        <img class="image" src="{{ asset('landing/images/feature-2.png') }}" alt="feature-2">
                        <div class="info">
                            <h4 class="title">Packing dan Pengiriman Kita Yang Urus</h4>
                            <p>
                                Semua produk dikemas dan dikirimkan ke konsumen langsung dari gudang kami.
                            </p>
                        </div>
                    </div>
                    <div class="feature-item">
                        <img class="image" src="{{ asset('landing/images/feature-3.png') }}" alt="feature-3">
                        <div class="info">
                            <h4 class="title">Akses E-Katalog Produk</h4>
                            <p>
                                Ada ribuan produk lokal di berbagai kategori yang dijamin halal dan original.
                            </p>
                        </div>
                    </div>
                    <a href="{{ route('register-account') }}" class="btn btn-primary btn-lg btn-block mt-3 text-decoration-none">Daftar Sekarang</a>
                </div>
            </div>
        </section>

        <section class="benefit">
            <div class="row">
                <div class="col-md-6 my-auto">
                    <h1>
                        Dapatkan <span>Keuntungan</span> Hingga Rp1 Juta Perbulan
                    </h1>
                    <p class="my-4">
                        Raih penghasilan rata-rata hingga Rp1 juta perbulan dan komisi Rp6.000 perproduk
                    </p>
                    <div class="image d-block d-md-none">
                        <img class="illustration" src="{{ asset('landing/images/benefit.png') }}" alt="benefit">
                    </div>
                    <a href="{{ route('register-account') }}" class="btn btn-primary btn-lg btn-block d-md-block d-none text-decoration-none">Dapatkan Disini</a>
                </div>
                <div class="col-md-6">
                    <div class="image d-md-block d-none">
                        <img class="illustration" src="{{ asset('landing/images/benefit.png') }}" alt="benefit">
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <img class="image" src="{{ asset('landing/images/benefit-money.png') }}" alt="">
                            <h6 class="title">
                                Rp60 Ribu/Hari
                            </h6>
                            <p class="description">
                                Dengan asumsi kamu bisa menjual 10pcs sehari, maka: Rp6rb x 10pcs = Rp60.000 sehari
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <img class="image" src="{{ asset('landing/images/benefit-money.png') }}" alt="">
                            <h6 class="title">
                                Rp1 Juta/bulan
                            </h6>
                            <p class="description">
                                Jika kamu bisa berjualan dalam 30 hari, maka: Rp60rb x 30 hari = Rp1.800.000/bulan
                            </p>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-md-6 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <img class="image" src="landing/images/benefit-money.png" alt="">
                            <p class="description">
                                Ditambah lagi ada komisi Rp50.000 dari setiap Reseller yang bergabung dengan menggunakan
                                Kode Referral (ID Reseller).
                            </p>
                            <p class="description">
                                Nb : Khusus Reseller Premium
                            </p>
                        </div>
                    </div>
                </div> -->
            </div>
            <a href="" class="btn btn-primary btn-lg btn-block d-block d-md-none">Dapatkan Disini</a>
        </section>

        <section class="join">
            <h1 class="title">
                Gabung Menjadi <span>Dropshipper</span> <br> Bersama Kami Sekarang
            </h1>
            <div class="row join-item">
                <div class="col-md-4">
                    <img class="image" src="{{ asset('landing/images/join.png') }}" alt="join">
                    <h4 class="title">
                        Buku Panduan Dropshipper
                    </h4>
                    <p class="description">
                        Panduan interaktif yang berisi banyak materi bisnis online untuk digunakan.
                    </p>
                </div>
                <div class="col-md-4">
                    <img class="image" src="{{ asset('landing/images/join.png') }}" alt="join">
                    <h4 class="title">
                        Voucher Belanja Menarik
                    </h4>
                    <p class="description">
                        Ada voucher total Rp300.000 yang dibagi menjadi 4 skema, dan berlaku hingga 4 bulan sejak
                        bergabung.
                    </p>
                </div>
                <div class="col-md-4">
                    <img class="image" src="{{ asset('landing/images/join.png') }}" alt="join">
                    <h4 class="title">
                        Goodie Bag Spesial
                    </h4>
                    <p class="description">
                        Kamu akan mendapatkan buku catatan berukuran A5 dan ballpoint menarik dari Rumahbarang.
                    </p>
                </div>
            </div>
            <a href="{{ route('register-account') }}" class="btn btn-primary btn-lg btn-block text-decoration-none">Gabung Sekarang</a>
        </section>
    </div>

    <footer class="footer">
        <div class="container">
            <div class="footer-items">
                <div class="item">
                    <div class="footer-office">
                        <img class="logo" src="{{ asset('landing/images/css-logo.png') }}" alt="">
                        <h4 class="title">
                            HEADQUARTER
                        </h4>
                        <p class="address">
                            Jln. Rd umarwirahadikusumah No.157, Kecamatan Situraja, Kabupaten Sumedang, Jawa Barat 45371,
                            Indonesia
                        </p>
                    </div>
                </div>
                <div class="item">
                    <h5 class="title">
                        Tentang Kami
                    </h5>
                    <ul class="footer-links list-unstyled">
                        <li>
                            <a href="javascript:;">Artikel & Berita</a>
                        </li>
                        <li>
                            <a href="javascript:;">Panduan Reseller</a>
                        </li>
                        <li>
                            <a href="javascript:;">Syarat & Ketentuan</a>
                        </li>
                        <li>
                            <a href="javascript:;">Kebijakan Privasi</a>
                        </li>
                        <li>
                            <a href="javascript:;">Fitur Aplikasi</a>
                        </li>
                        <li>
                            <a href="javascript:;">Karir</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <h5 class="title">
                        Informasi Lainnya
                    </h5>
                    <ul class="footer-links list-unstyled">
                        <li>
                            <a href="javascript:;">Jadi Supplier</a>
                        </li>
                        <li>
                            <a href="javascript:;">Ekonomi Umat</a>
                        </li>
                        <li>
                            <a href="javascript:;">Ekonomi Syariah</a>
                        </li>
                        <li>
                            <a href="javascript:;">Beramal Jariyah</a>
                        </li>
                        <li>
                            <a href="javascript:;">Peta Situs</a>
                        </li>
                        <li>
                            <a href="javascript:;">FAQ</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <h5 class="title">
                        Social Media
                    </h5>
                    <div class="footer-socials">
                        <a href="https://www.instagram.com/rumahkreatifsituraja/" class="circle">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a href="https://vt.tiktok.com/ZSdrpA3UP/" class="circle">
                            <i class="fa-brands fa-tiktok"></i>
                        </a>
                        <a href="https://www.youtube.com/c/RumahKreatifSituraja" class="circle">
                            <i class="fa-brands fa-youtube"></i>
                        </a>
                    </div>
                    <!-- <div class="footer-downloads">
                        <a href="javascript:;">
                            <img src="landing/images/googleplay.png" alt="">
                        </a>
                        <a href="javascript:;">
                            <img src="landing/images/appstore.png" alt="">
                        </a>
                    </div> -->
                </div>
            </div>

            <p class="footer-copyright">
                Copyright @ 2021 Creative Store Situraja
            </p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/6988970e54.js" crossorigin="anonymous"></script> 
</body>

</html>