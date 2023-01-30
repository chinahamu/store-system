<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CastOptionCompatibles extends Model
{
    use HasFactory;

    public function cast_profiles()
    {
        return $this->hasOne(CastProfiles::class,'id','cast_id');
    }

    public function get_menues()
    {
        return $this->hasOne(Menus::class,'id','option_id');
    }
 
}
