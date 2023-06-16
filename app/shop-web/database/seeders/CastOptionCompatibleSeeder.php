<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CastProfiles;
use App\Models\Menus;
use App\Models\CastOptionCompatibles;

class CastOptionCompatibleSeeder extends Seeder
{
    public function run()
    {
        $casts = CastProfiles::all();
        $options = Menus::where('category_id', 3)->get();
        $types = ['〇', '×', '△'];

        foreach ($casts as $cast) {
            foreach ($options as $option) {
                CastOptionCompatibles::create([
                    'cast_id' => $cast->id,
                    'option_id' => $option->id,
                    'type' => $types[array_rand($types)],
                ]);
            }
        }
    }
}
