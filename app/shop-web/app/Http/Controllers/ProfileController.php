<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProfileController extends Controller
{
    //
    public function get_profiles(){
        $casts = DB::table('cast_profiles')->get();
        return $casts;
    }
}
