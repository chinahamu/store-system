<?php

namespace App\Admin\Controllers;

use App\Models\Sales;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Admin\Controllers\QueryController;

class AggregateController extends AdminController
{
    public function sales_list()
    {
      $query = new QueryController();
      $sales = $query->sales();
      $menus = $query->menus();
      $sale_res = [];
      // Assuming $sales and $menus are already defined as collectins
      foreach ($sales as $sale) {
        $sale_res[$sale->cast_id][$sale->id]["option_sale"] = 0;
        // Loop through the menus and check for matching ids
        foreach ($menus as $menu) {
          // If the course_id matches the menu id, add the course_price
          if ($sale->course_id == $menu->id) {
            $sale_res[$sale->cast_id][$sale->id]["course_sale"] = $menu->price;
          }
          // If the appoint matches the menu id, add the appoint_price
          if ($sale->appoint == $menu->id) {
            $sale_res[$sale->cast_id][$sale->id]["appoint_sale"] = $menu->price;
          }
          // If the transportation_expense matches the menu id, add the transportation_expense_price
          if ($sale->transportation_expense == $menu->id) {
            $sale_res[$sale->cast_id][$sale->id]["transportation_expense_sale"] = $menu->price;
          }
  
          $option_ids = explode(',', $sale->option_ids);
          foreach ($option_ids as $option_id) {
            // If the transportation_expense matches the menu id, add the transportation_expense_price
            if ($option_id == $menu->id) {
              $sale_res[$sale->cast_id][$sale->id]["option_sale"] += $menu->price;
            }
          }
        }
      }
      return $sale_res;
    }

    public function sales_all_sum(){
      $total_sale = 0;
      $sales_list = $this->sales_list();
      foreach ($sales_list as $innerArray) {
          foreach ($innerArray as $sales) {
              $total_sale += array_sum($sales);
          }
      }
      return $total_sale;
    }
}
