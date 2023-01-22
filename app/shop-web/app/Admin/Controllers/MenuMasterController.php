<?php

namespace App\Admin\Controllers;

use App\Models\MenuMaster;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class MenuMasterController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'MenuMaster';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new MenuMaster());
        $grid->column('name', __('カテゴリ名'));
        $grid->column('back_rate', __('バック率'));


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
        $show = new Show(MenuMaster::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new MenuMaster());

        $form->display('id', 'ID');
        $form->text('name', 'カテゴリ名');
        $form->rate('back_rate', 'バック率');

        return $form;
    }
}
