<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'telephone' => 'required|string|max:10',
            'name_f' => 'required|string|max:255',
            'street_f' => 'required|string|max:255',
            'city_f' => 'required|string|max:255',
            'zip_f' => 'required|string|max:255',
            'name_d' => 'required|string|max:255',
            'street_d' => 'required|string|max:255',
            'city_d' => 'required|string|max:255',
            'zip_d' => 'required|string|max:255',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        return User::create([
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'telephone' => $data['telephone'],
            'name_f' => $data['name_f'],
            'street_f' => $data['street_f'],
            'city_f' => $data['city_f'],
            'zip_f' => $data['zip_f'],
            'name_d' => $data['name_d'],
            'street_d' => $data['street_d'],
            'city_d' => $data['city_d'],
            'zip_d' => $data['zip_d'],
            'role' => true,
        ]);
    }
}
