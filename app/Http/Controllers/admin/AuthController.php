<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\User;


class AuthController extends Controller
{
    public function login()
    {
        return view('pro_3M.admin.login');

    }
    public function register()
    {
        return view('pro_3m.admin.register');

    }

    public function submit_login(Request $request)
    {

        $users = $request->input('email');
        $password = $request->input('password');
        if (
            Auth::attempt([
                'email' => $users,
                'password' => $password,
            ])
        ) {
            $user = User::where('email', $users)->first();
            Auth::login($user);
            return Redirect('/admin-dashboard/table');
        }


    }



    public function submit_register(Request $request)
    {
        $users = $request->input('username');
        $email = $request->input('email');
        $password = $request->input('password');

        if (
            Auth::attempt([
                'name' => $users,
                'email' => $email,
                'password' => $password,
            ])
        ) {
            return Redirect('/register');
        } else {

            $user = new User();
            $user->name = $users;
            $user->email = $email;
            $user->password = bcrypt($password);
            $user->team=$request->input('team');
            $user->phan_quyen='user';
            $user->save();
            return Redirect('/login');
        }


    }

    public function logout()
    {
        Auth::logout();
        return Redirect()->route('login');
    }
}
