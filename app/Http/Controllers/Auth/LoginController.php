<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function Login()
    {
        return view('auth.login');
    }

    public function auth(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        // dd($credentials);
        if(Auth::attempt($credentials)){
            $request->session()->regenerate(); 
            
            if(Auth::user()->roles == 'ADMIN'){
                return redirect()->intended('/admin');
            }else{
                return redirect()->intended('/');
            }
        }

        return back()->with('loginError', 'Check your email and password again! If you dont have an account, please register first!');
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
