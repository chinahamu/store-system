<?php

namespace App\Admin\Controllers;

use App\Models\Menus;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class MenuController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Menus';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Menus());
        $grid->column('id', __('id'));
        $grid->column('name', __('メニュー名'));
        $grid->menu_gategoryes('カテゴリ')->display(function ($menu_gategoryes) {
            return $menu_gategoryes['name'];
        });
        $grid->column('price', __('価格'));


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
        $show = new Show(Menus::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Menus());

        $form->display('id', 'ID');
        $form->text('name', 'メニュー名');
        $form->select('category_id', 'カテゴリ')->options(
            DB::table('menu_category_master')->pluck('name','id')
        );
        $form->number('price', '価格');

        return $form;
    }
}
