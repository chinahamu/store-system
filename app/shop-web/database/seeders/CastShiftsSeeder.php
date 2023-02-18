<?php

namespace Database\Seeders;

use Illuminate\Support\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class CastShiftsSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('ja_JP');
        $castIds = DB::table('cast_profiles')->pluck('id')->toArray();
        $startDate = now();
        $endDate = now()->addWeek();
        for ($i = 0; $i < 10; $i++) {
            $startDatetime = $faker->dateTimeBetween($startDate, $endDate);
            $endDatetime = $faker->dateTimeBetween($startDatetime, $endDate);
            DB::table('cast_shifts')->insert([
                'cast_id' => $faker->randomElement($castIds),
                'start_datetime' => $startDatetime->format('Y-m-d H:00:00'),
                'end_datetime' => $endDatetime->format('Y-m-d H:00:00'),
                'created_at' => $faker->dateTimeBetween($startDate, $endDate),
                'updated_at' => $faker->dateTimeBetween($startDate, $endDate),
            ]);
        }
    }
}