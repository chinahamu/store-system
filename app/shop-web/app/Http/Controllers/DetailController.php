<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class DetailController extends Controller
{
    //
    public function get_detail(Request $request){
        $cast = DB::table('cast_profiles')->where('id',$request->cast_id)->get();
        return $cast;
    }

    public function get_shifts(Request $request){
        $date = Carbon::now();
        $end_date = $date->copy()->addDays(7);
        
        $shifts = DB::table('cast_shifts')
                    ->where('cast_id', $request->cast_id)
                    ->whereBetween('start_datetime', [$date, $end_date])
                    ->get();

        return $shifts;
    }
}
