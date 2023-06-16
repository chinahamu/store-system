<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class RankingController extends Controller
{
    //
    public function get_ranking(){
        $ranking = DB::table('monthly_nominate_ranking')
        ->join('cast_profiles', 'monthly_nominate_ranking.cast_id', '=', 'cast_profiles.id')
        ->select('monthly_nominate_ranking.nominate_count', 'cast_profiles.name', 'cast_profiles.profile_images', 'monthly_nominate_ranking.cast_id')
        ->where('monthly_nominate_ranking.yearmonth', '=', Carbon::now()->subMonth()->firstOfMonth())
        ->orderBy('monthly_nominate_ranking.nominate_count', 'DESC')
        ->orderBy('monthly_nominate_ranking.cast_id', 'ASC')
        ->get();

        return $ranking;
    }
}
