<?php

namespace App\Admin\Controllers;

use App\Models\Customers;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CustomerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Customers';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Customers());

        $grid->column('id', __('Id'));
        $grid->column('name', __('名前'));
        $grid->column('tel', __('電話番号'));
        $grid->column('address', __('住所（またはお決まりの派遣先）'));
        $grid->column('ban_flag', __('出禁'));
        $grid->column('mail_address', __('メールアドレス'));

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
        $show = new Show(Customers::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('キャスト'));
        $show->field('tel', __('電話番号'));
        $show->field('address', __('住所（またはお決まりの派遣先）'));
        $show->field('ban_flag', __('出禁'));
        $show->field('mail_address', __('メールアドレス'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Customers());

        $form->text('name', __('名前'));
        $form->text('tel', __('電話番号'));
        $form->text('address', __('住所（またはお決まりの派遣先）'));
        $form->text('mail_address', __('メールアドレス'));
        $ban = [
            0  => "通常",
            1 => "出禁",
        ];
        $form->select('ban_flag', '出禁')->options($ban);

        return $form;
    }
}
