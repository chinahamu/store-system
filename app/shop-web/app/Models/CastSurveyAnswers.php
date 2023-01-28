<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CastSurveyAnswers extends Model
{
    use HasFactory;

    public function cast_profiles()
    {
        return $this->hasOne(CastProfiles::class,'id','cast_id');
    }

    public function get_question()
    {
        return $this->hasOne(CastSurveyQuestions::class,'id','question_id');
    }
}
