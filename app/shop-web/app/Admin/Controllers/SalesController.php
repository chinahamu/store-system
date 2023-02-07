<?php

namespace App\Admin\Controllers;

use App\Models\Sales;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class SalesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Sales';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Sales());

        $grid->column('id', __('Id'));
        $grid->cast_profiles('キャスト')->display(function ($cast_profiles) {
            return $cast_profiles['name'];
        });
        $grid->customers('顧客')->display(function ($customers) {
            return $customers['name'];
        });
        $grid->order('対応メニュー')->display(function ($order) {
            return $order['name'];
        });
        $grid->column('option_ids', __('オプション'));
        $grid->transpotation('交通費')->display(function ($transpotation) {
            return $transpotation['price'];
        });
        $grid->column('commission', __('手数料他'));

        return $grid;
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
