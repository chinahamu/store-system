<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use App\Models\CastProfiles;
use App\Models\CastSurveyQuestions;

class CastSurveyAnswerSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('ja_JP');
        $profiles = CastProfiles::select('id')->get();
        $questions = CastSurveyQuestions::select('id')->get();

        foreach ($profiles as $profile) {
            $castId = $profile->id;

            foreach ($questions as $question) {
                $questionId = $question->id;
                $existingAnswers = DB::table('cast_survey_answers')->where('cast_id', $castId)->where('question_id', $questionId)->count();
                if ($existingAnswers > 0) {
                    continue;
                }

                DB::table('cast_survey_answers')->insert([
                    'cast_id' => $castId,
                    'question_id' => $questionId,
                    'answer' => $faker->sentence(2),
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
