<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MenuController extends Controller
{
    //
    public function get_menues(){
        $menues = DB::table('menus')
        ->join('menu_category_master', 'menus.category_id', '=', 'menu_category_master.id')
        ->select('menus.*', 'menu_category_master.name as category_name')
        ->get();

        return $menues;
    }
}
