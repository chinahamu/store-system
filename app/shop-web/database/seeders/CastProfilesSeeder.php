<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class CastProfilesSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('ja_JP');
        $genders = ['女性'];
        $bloodTypes = ['A', 'B', 'O', 'AB'];
        for ($i = 0; $i < 10; $i++) {
            $name = $faker->unique()->firstName('female');
            $nameHiragana = mb_convert_kana($name, 'c', 'UTF-8');
            DB::table('cast_profiles')->insert([
                'name' => $nameHiragana,
                'age' => $faker->numberBetween(18, 30),
                'bust' => $faker->numberBetween(85, 100),
                'waist' => $faker->numberBetween(60, 70),
                'hip' => $faker->numberBetween(85, 100),
                'gender' => $faker->randomElement($genders),
                'one_word' => $faker->sentence(5),
                'description' => $faker->paragraph(3),
                'created_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'updated_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'tall' => $faker->numberBetween(150, 170),
                'blad' => $faker->randomElement($bloodTypes),
                'profile_images' => '',
                'pictures' => '',
                'shop_comment' => $faker->paragraph(3)
            ]);
        }
    }
}
