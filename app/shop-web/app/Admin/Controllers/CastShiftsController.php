<?php

namespace App\Admin\Controllers;

use App\Models\CastShifts;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class CastShiftsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'キャストシフト管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CastShifts());

        $grid->column('id', __('Id'));
        $grid->column('cast_id', __('キャスト'));
        $grid->cast_profiles('キャスト')->display(function ($cast_profiles) {
            return $cast_profiles['name'];
        });
        $grid->column('start_datetime', __('勤務開始日時'));
        $grid->column('end_datetime', __('勤務終了日時'));

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
        $show = new Show(CastShifts::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('cast_id', __('キャスト'));
        $show->field('start_datetime', __('勤務開始日時'));
        $show->field('end_datetime', __('勤務終了日時'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CastShifts());

        $form->select('cast_id', 'キャスト')->options(
            DB::table('cast_profiles')->pluck('name','id')
        );
        $form->datetime('start_datetime', __('勤務開始日時'))->default(date('Y-m-d H:i:s'));
        $form->datetime('end_datetime', __('勤務終了日時'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
