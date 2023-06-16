<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Encore\Admin\Layout\Column;
use App\Admin\Controllers\QueryController;

class ShiftChartController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'キャストガントチャート';

  public function index(Content $content)
  {
    $query = new QueryController;
  
    $cast_shifts = $query->cast_shifts();
    $content->title('キャストガントチャート');

    #dd($cast_shifts);

    return $content
    ->header('キャストガントチャート')
    ->view('admin.cast_chart',compact("cast_shifts"));
  }
}