<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class QuestionnaireController extends Controller
{
       public function send_answer(Request $request) {
            $cast_id = $request->input('cast_id');
            $nomination = $request->input('nomination');
            $use_date = $request->input('use_date');
            $appearance_rating = $request->input('appearance_rating');
            $appearance_comment = $request->input('appearance_comment');
            $dress_rating = $request->input('dress_rating');
            $dress_comment = $request->input('dress_comment');
            $customer_service_rating = $request->input('customer_service_rating');
            $customer_service_comment = $request->input('customer_service_comment');
            $overall_rating = $request->input('overall_rating');
            $phone_rating = $request->input('phone_rating');
            $phone_comment = $request->input('phone_comment');
            $name = $request->input('name');
            $phone_number = $request->input('phone_number');
            $email = $request->input('email');
    
            DB::table('questionnaires')->insert([
                'cast_id' => $cast_id,
                'nomination' => $nomination,
                'use_date' => $use_date,
                'appearance_rating' => $appearance_rating,
                'appearance_comment' => $appearance_comment,
                'dress_rating' => $dress_rating,
                'dress_comment' => $dress_comment,
                'customer_service_rating' => $customer_service_rating,
                'customer_service_comment' => $customer_service_comment,
                'overall_rating' => $overall_rating,
                'phone_rating' => $phone_rating,
                'phone_comment' => $phone_comment,
                'name' => $name,
                'phone_number' => $phone_number,
                'email' => $email,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }
    

    public function get_cast_profiles(){
        $cast_profiles = DB::table('cast_profiles')->get();
        return $cast_profiles; 
    }
}
