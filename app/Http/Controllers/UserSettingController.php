<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserSettingController extends Controller
{
    public function index($id)
    {
        $user = User::findOrFail($id);

        return view('auth.user-setting', [
            'user' => $user
        ]);
    }

    public function update(Request $request, $id)
    {
        $validateData = $request->validate([
            'email' => 'required|email|unique:users,email,'.$id,
        ]);

        $data = $request->all();

        $item = User::findOrFail($id);

        if($request->password)
        {
            $data['password'] = bcrypt($request->password);
        }else{
            unset($data['password']);
        }

        $item->update($data);

        return redirect()->route('user-setting', $id)->with('successUpdate', 'Your account info is updated');
    }
}
