<?php

namespace App\Admin\Controllers;

use App\Models\CastSurveyAnswers;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class CastSurveyAnswersController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'CastSurveyAnswers';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CastSurveyAnswers());

        $grid->column('id', __('Id'));
        $grid->cast_profiles('キャスト')->display(function ($cast_profiles) {
            return $cast_profiles['name'];
        });
        $grid->get_question('質問')->display(function ($get_question) {
            return $get_question['question'];
        });
        $grid->column('answer', __('Answer'));
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
        $show = new Show(CastSurveyAnswers::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('cast_id', __('Cast id'));
        $show->field('question_id', __('Question id'));
        $show->field('answer', __('Answer'));
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
        $form = new Form(new CastSurveyAnswers());

        $form->select('cast_id', 'キャスト')->options(
            DB::table('cast_profiles')->pluck('name','id')
        );
        $form->select('question_id', '質問')->options(
            DB::table('cast_survey_questions')->pluck('question','id')
        );        
        $form->text('answer', __('Answer'));

        return $form;
    }
}
