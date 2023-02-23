<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Layout\Column;
use App\Admin\Controllers\AggregateController;

class SummaryController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = '今月の売り上げサマリ';

  public function index(Content $content)
  {
      $aggregate = new AggregateController();
      $total_sale = $aggregate->sales_all_sum();
      $total_sale_formatted = number_format($total_sale, 0, '.', ',');
      $sales_per_cast = $aggregate->sales_per_cast();

      return $content
          ->header('今月の売り上げサマリ')
          ->description('売上合計')
          ->row(function(Row $row) use ($total_sale_formatted, $sales_per_cast) {
              $row->column(6, function (Column $column) use ($total_sale_formatted, $sales_per_cast) {
                  $column->append(view('card', ['total_sale' => $total_sale_formatted, 'sales_per_cast' => $sales_per_cast]));
              });
          });
  }
  
}