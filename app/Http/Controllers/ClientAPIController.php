<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Doctor;

use App\Models\Token;
use App\Models\Client;
use Illuminate\Support\Str;
use DateTime;
use Illuminate\Support\Facades\Mail;
use App\Mail\success;



class ClientAPIController extends Controller
{

    public function clientLogin(Request $req)
    {

       $user=Client::where('client_email',$req->client_email)->where('client_password',$req->client_password)->first();
        if($user)
        {
            $api_token = Str::random(64);

            $token = new Token();
            $token->userid = $user->id;
            $token->token = $api_token;
            $token->created_at = new DateTime();
            $token->save();
            return $token;
        }
        return "No user found";
    }

    public function doctorListB()
    {
        $dc=Doctor::all();
        return $dc;
    } 

    public function clientRegistration(Request $req)
    {
         $dd = new Client();

         $dd->client_name  = $req->client_name;
         $dd->client_email = $req->client_email;
         $dd->client_password = $req->client_password;
         $dd->client_dob = $req->client_dob;
         $dd->client_gender = $req->client_gender;
         $dd->client_bg = $req->client_bg;
         $dd->client_phone = $req->client_phone;
         $dd->client_address = $req->client_address;       
         $dd->save();    

         Mail::to("$req->client_email")->send(new success("$req->client_name"));

         return $dd;
     }

     public function clientLogout(Request $request)
     {
        $token = Token::where('token',$request->token)->first();

        if($token)
        {
            $token->expired_at = new DateTime();
            $token->save();
            return "Logout";
        }

    }


}
