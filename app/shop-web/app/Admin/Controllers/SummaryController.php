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

class SummaryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '集計画面';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        $query = new QueryController();
        $sales = $query->sales();
        $menus = $query->menus();
        $sale_res = [];
// Assuming $sales and $menus are already defined as collections
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
      foreach($option_ids as $option_id){
        // If the transportation_expense matches the menu id, add the transportation_expense_price
        if ($option_id == $menu->id) {
            $sale_res[$sale->cast_id][$sale->id]["option_sale"] += $menu->price;
        } 
      }
    }
  }
        dd($sale_res);

        return 1;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Sales::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('cast_id', __('キャスト'));
        $show->field('customer_id', __('顧客'));
        $show->field('course_id', __('対応コース'));
        $show->field('option_ids', __('オプション'));
        $show->field('transportation_expense', __('交通費'));
        $show->field('commission', __('手数料'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Sales());
        $form->select('cast_id', 'キャスト')->options(
            DB::table('cast_profiles')->pluck('name','id')
        );
        $form->select('customer_id', '顧客')->options(
            DB::table('customers')->pluck('name','id')
        );
        $form->select('course_id', '対応コース')->options(
            DB::table('Menus')->where('category_id',1)->pluck('name','id')
        );
        $form->select('appoint', '指名')->options(
            DB::table('Menus')->where('category_id',2)->pluck('name','id')
        );
        $form->checkbox('option_ids', 'オプション')->options(
            DB::table('Menus')->where('category_id',3)->pluck('name','id')
        );
        $form->select('transportation_expense', '交通費')->options(
            DB::table('Menus')->where('category_id',4)->pluck('name','id')
        );
        $form->number('commission', __('手数料他'));

        return $form;
    }
}
