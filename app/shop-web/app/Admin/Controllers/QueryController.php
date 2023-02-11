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

    public function sales(){
        $sales = DB::table('sales')
            ->whereBetween('service_datetime', [now()->subMonths(12), now()])
            ->get();
        return $sales;
    }
    
    public function menus(){

        $menus = DB::table('menus')->get();

        return $menus;
    }
}
