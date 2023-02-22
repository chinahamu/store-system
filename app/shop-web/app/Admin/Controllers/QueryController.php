<?php

namespace App\Admin\Controllers;

use App\Models\Sales;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class QueryController extends AdminController
{

    public function sales()
    {
        $sales = DB::table('sales')
            ->whereBetween('service_datetime', [now()->subMonths(12), now()])
            ->get();
        return $sales;
    }

    public function menus()
    {

        $menus = DB::table('menus')->get();

        return $menus;
    }

    public function cast_shifts()
    {
        $start_date = Carbon::now()->startOfDay();
        $end_date = Carbon::now()->addDays(3)->endOfDay();

        $cast_shifts = DB::table('cast_shifts')
        ->join('cast_profiles', 'cast_shifts.cast_id', '=', 'cast_profiles.id')
        ->select('cast_shifts.id', 'cast_shifts.start_datetime', 'cast_shifts.end_datetime', 'cast_profiles.name')
        ->whereBetween('start_datetime', [$start_date, $end_date])
        ->get();

        return $cast_shifts;
    }

    public function monthly_nominate_ranking(){
        $ranking = DB::table('monthly_nominate_ranking')
        ->join('cast_profiles', 'monthly_nominate_ranking.cast_id', '=', 'cast_profiles.id')
        ->select('monthly_nominate_ranking.nominate_count', 'cast_profiles.name', 'monthly_nominate_ranking.cast_id')
        ->where('monthly_nominate_ranking.yearmonth', '=', Carbon::now()->subMonth()->firstOfMonth())
        ->orderBy('monthly_nominate_ranking.nominate_count', 'DESC')
        ->orderBy('monthly_nominate_ranking.cast_id', 'ASC')
        ->get();

        return $ranking;
    }
}