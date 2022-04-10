@extends('layouts.admin')

@section('title')
    Dashboard Admin - Users
@endsection

@section('content')
    <div class="section-content section-dashboard-home" data-aos="fade-up">
        <div class="container-fluid">
            <div class="dashboard-heading">
                <h2 class="dashboard-title">User</h2>
                <p class="dashboard-subtitle">
                    Edit selected user 
                </p>
            </div>
        </div>
        <div class="dashboard-content">
            <div class="row">
                <div class="col-md-12">
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="card">
                        <div class="card-body">
                            <form action="{{ route('user.update', $item->id) }}" method="post" enctype="multipart/form-data">
                                @method('PUT')
                                @csrf
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name="name" class="form-control" value="{{ $item->name }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name="email" class="form-control" value="{{ $item->email }}" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name="password" class="form-control">
                                            <small class="text-danger">Don't fill this field if you don't wanna change the password</small>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Roles</label>
                                            <select name="roles" class="form-control" required>
                                                <option value="{{ $item->roles }}" selected>Not gonna change it</option>
                                                <option value="ADMIN">Admin</option>
                                                <option value="USER">User</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col text-right">
                                        <button type="submit" class="btn btn-success px-5">Save Now</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection