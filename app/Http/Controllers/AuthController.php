<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
    
    public function login(Request $request)
    {
        $user = DB::table('users')
            ->where('email', $request->email)
            ->where('password', $request->password)
            ->where('es_activo', true)
            ->first();

        if (!$user) {
            return back()->with('error', 'Credenciales incorrectas');
        }

        session(['user' => $user]);

        return redirect('/dashboard');
    }

    public function logout()
    {
        session()->forget('user');
        return redirect()->route('login');
    }

    public function showLogin()
{
    $users = DB::table('users')->get(); // traer todos los usuarios
    return view('login', compact('users'));
}

}
