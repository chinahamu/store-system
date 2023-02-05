<?php

namespace App\Admin\Controllers;

use App\Models\Sales;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

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
        $grid->column('cast_id', __('Cast id'));
        $grid->column('customer_id', __('Customer id'));
        $grid->column('course_id', __('Course id'));
        $grid->column('option_ids', __('Option ids'));
        $grid->column('transportation_expense', __('Transportation expense'));
        $grid->column('commission', __('Commission'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show->field('cast_id', __('Cast id'));
        $show->field('customer_id', __('Customer id'));
        $show->field('course_id', __('Course id'));
        $show->field('option_ids', __('Option ids'));
        $show->field('transportation_expense', __('Transportation expense'));
        $show->field('commission', __('Commission'));
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
        $form = new Form(new Sales());

        $form->number('cast_id', __('Cast id'));
        $form->number('customer_id', __('Customer id'));
        $form->number('course_id', __('Course id'));
        $form->textarea('option_ids', __('Option ids'));
        $form->number('transportation_expense', __('Transportation expense'));
        $form->number('commission', __('Commission'));

        return $form;
    }
}
