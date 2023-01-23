<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CastShifts extends Model
{
    use HasFactory;

    public function cast_profiles()
    {
        return $this->hasOne(CastProfiles::class,'id','cast_id');
    }
}
