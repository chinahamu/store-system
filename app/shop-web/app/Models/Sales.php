<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sales extends Model
{
    use HasFactory;

    public function getOptionIdsAttribute($value)
    {
        return explode(',', $value);
    }

    public function setOptionIdsAttribute($value)
    {
        $this->attributes['option_ids'] = implode(',', $value);
    }

    public function cast_profiles()
    {
        return $this->hasOne(CastProfiles::class,'id','cast_id');
    }

    public function customers()
    {
        return $this->hasOne(Customers::class,'id','customer_id');
    }

    public function order()
    {
        return $this->hasOne(Menus::class,'id','course_id');
    }

    public function options()
    {
        return $this->hasOne(Menus::class,'id','option_ids');
    }

    public function transpotation()
    {
        return $this->hasOne(Menus::class,'id','transportation_expense');
    }

    public function appoints()
    {
        return $this->hasOne(Menus::class,'id','appoint');
    }
}
