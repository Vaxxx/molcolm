<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Symfony\Component\HttpFoundation\Response;

class AuthController extends Controller
{
    public function apiRegister(Request $request){
        $this->validate($request,[
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'password'=>'required|min:8',
        ]);
        $user= User::create([
            'name' =>$request->name,
            'email'=>$request->email,
            'password'=>bcrypt($request->password),
            'confirm_password' => bcrypt($request->password),
        ]);

//        $token = $user->createToken($request->email.'molcolm'.$request->name)->access_token;
        //return the access token we generated in the above step
         return response()->json(['message'=>'Registration Successful'],200);
       // return response($token, Response::HTTP_CREATED);
    }

    /**
     * login user to our application
     */
    public function apiLogin(Request $request){
        if(Auth::attempt($request->only('email','password'))){
            $user = Auth::user();

            $token = $user->createToken('admin')->accessToken;

            return [
                'token' => $token
            ];
        }
        Route::get('/redirect', function (Request $request) {
            $request->session()->put('state', $state = Str::random(40));

            $query = http_build_query([
                'client_id' => 'client-id',
                'redirect_uri' => 'http://localhost:8000/auth/callback',
                'response_type' => 'code',
                'scope' => '',
                'state' => $state,
            ]);

            return redirect('http://localhost:8000/oauth/authorize?'.$query);
        });
        return response([
            'error'=>'Invalid Credentials'
        ], Response::HTTP_UNAUTHORIZED);
    }

    /**
     * This method returns authenticated user details
     */
    public function authenticatedUserDetails(){
        //returns details
        return response()->json(['authenticated-user' => auth()->user()], 200);
    }


}
