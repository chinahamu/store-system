<?php

namespace App\Admin\Controllers;

use App\Models\CastProfiles;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CastProfileController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'CastProfiles';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CastProfiles());
        $grid->column('id', __('Id'));
        $grid->column('name', __('名前'));
        $grid->column('blad', '血液型');
        $grid->column('tall', '身長');
        $grid->column('age', __('年齢'));
        $grid->column('bust', __('バスト'));
        $grid->column('waist', __('ウエスト'));
        $grid->column('hip', __('ヒップ'));
        $grid->column('gender', __('性別'));
        $grid->column('one_word', __('ひとこと'));
        $grid->column('description', __('プロフィール詳細'));

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
        $show = new Show(CastProfiles::findOrFail($id));



        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CastProfiles());
        $form->display('id', 'ID');
        $form->text('name', '名前');
        $form->text('blad', '血液型');
        $form->number('age', '年齢');
        $form->number('tall', '身長');
        $form->number('bust', 'バスト');
        $form->number('waist', 'ウエスト');
        $form->number('hip', 'ヒップ');
        $gender = [
            '女性'  => '女性',
            '男性' => '男性',
        ];
        $form->select('gender', 'gender')->options($gender);
        $form->textarea('one_word', 'ひとこと');
        $form->textarea('description', 'プロフィール詳細');


        return $form;
    }
}