<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ShiftController extends Controller
{
    //
    public function get_cast_shifts(){
        $castShifts = DB::table('cast_shifts')
            ->join('cast_profiles', 'cast_profiles.id', '=', 'cast_shifts.cast_id')
            ->select('cast_profiles.*', 'cast_shifts.*')
            ->whereBetween(DB::raw('DATE(start_datetime)'), [DB::raw('CURRENT_DATE()'), DB::raw('DATE_ADD(CURRENT_DATE(), INTERVAL 5 DAY)')])
            ->select('*')
            ->get();
        return $castShifts;
    }
}
