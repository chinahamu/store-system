<?php

namespace App\Admin\Controllers;

use App\Models\CastOptionCompatibles;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class CastOptionCompatiblesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'CastOptionCompatibles';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CastOptionCompatibles());

        $grid->cast_profiles('キャスト')->display(function ($cast_profiles) {
            return $cast_profiles['name'];
        });
        $grid->get_menues('オプション')->display(function ($get_menues) {
            return $get_menues['name'];
        });
        $grid->column('type', __('Type'));
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
        $show = new Show(CastOptionCompatibles::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('cast_id', __('Cast id'));
        $show->field('option_id', __('Option id'));
        $show->field('type', __('Type'));
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
        $form = new Form(new CastOptionCompatibles());

        $form->select('cast_id', 'キャスト')->options(
            DB::table('cast_profiles')->pluck('name','id')
        );

        $form->select('option_id', 'オプション')->options(
            DB::table('menus')->where('category_id',3)->pluck('name','id')
        );

        $type = [
            '○' => '○',
            '☓' => '☓',
            '△'  => '△',

        ];
        $form->select('type', 'type')->options($type);

        return $form;
    }
}
