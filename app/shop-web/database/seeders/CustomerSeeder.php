<?php
namespace Database\Seeders;


use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class CustomerSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('ja_JP');
        for ($i = 0; $i < 10; $i++) {
            DB::table('customers')->insert([
                'name' => $faker->firstNameMale,
                'tel' => $faker->regexify('/^0[89]0[1-9]\d{6}$/'),
                'address' => $faker->city() === '東京都' ? $faker->address : $faker->city() . $faker->streetAddress,
                'ban_flag' => $faker->boolean(10),
                'created_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'updated_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'mail_address' => $faker->email,
            ]);
        }
    }
}
