<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function register()
    {
        $categories = Category::all();

        return view('auth.register', [
            'categories' => $categories
        ]);
    }

    public function success()
    {
        return view('auth.success');
    }

    public function store(Request $request)
    {
        $validate = $request->validate([
            'name' => 'required|string|max:50',
            'email' => 'required|email|string|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'phone_number' => 'required|string',
            'address' => 'required|string'
        ]);

        User::create([
            'name' => $validate['name'],
            'email' => $validate['email'],
            'password' => Hash::make($validate['password']),
            'phone_number' => $validate['phone_number'],
            'address' => $validate['address'],
            'roles' => 'USER'
        ]);

        return redirect()->route('login')->with('successRegister', 'Your account is already registered, Sign in to use this app');
    }

    public function check(Request $request)
    {
        return User::where('email', $request->email)->count() > 0 ? 'Unavailable' : 'Avaiable';
    }
}
