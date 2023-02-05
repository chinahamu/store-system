<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('cast-profiles', CastProfileController::class);
    $router->resource('menu-category-master', MenuMasterController::class);
    $router->resource('menus', MenuController::class);
    $router->resource('cast-shifts', CastShiftsController::class);
    $router->resource('cast-survey-questions', CastSurveyQuestionsController::class);
    $router->resource('cast-survey-answers', CastSurveyAnswersController::class);
    $router->resource('cast-option-compatibles', CastOptionCompatiblesController::class);
    $router->resource('customers', CustomerController::class);
    $router->resource('sales', SalesController::class);
});
