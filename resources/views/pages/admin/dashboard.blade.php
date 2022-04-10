@extends('layouts.admin')

@section('title')
    Store Dashboard Admin
@endsection

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
        <div class="dashboard-heading">
            <h2 class="dashboard-title">Admin Dashboard</h2>
            <p class="dashboard-subtitle">
            Welcome Back Sir! Let's Hack The World!
            </p>
        </div>
        <div class="dashboard-content">
            <div class="row">
            <div class="col-md-4">
                <div class="card mb-2">
                <div class="card-body">
                    <div class="dashboard-card-title">
                    Dropshipper
                    </div>
                    <div class="dashboard-card-subtitle">
                        {{ $customer }}
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-2">
                <div class="card-body">
                    <div class="dashboard-card-title">
                    Products
                    </div>
                    <div class="dashboard-card-subtitle">
                        {{ $product }}
                    </div>
                </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-2">
                <div class="card-body">
                    <div class="dashboard-card-title">
                    Categories Products
                    </div>
                    <div class="dashboard-card-subtitle">
                        {{ $category }}
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>
@endsection