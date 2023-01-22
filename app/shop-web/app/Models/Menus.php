<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menus extends Model
{
    use HasFactory;

    protected $table = 'menus';

    public function menu_gategoryes()
    {
        return $this->hasOne(MenuMaster::class,'id','category_id');
    }

}
