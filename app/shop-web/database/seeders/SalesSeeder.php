<?
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Support\Carbon;

class SalesSeeder extends Seeder
{
    public function run()
    {
        $faker = Faker::create('ja_JP');
        $courseIds = DB::table('menus')->where('category_id',1)->pluck('id')->toArray();
        $appointIds = DB::table('menus')->where('category_id',2)->pluck('id')->toArray();
        $transportation_expense = DB::table('menus')->where('category_id',4)->pluck('id')->toArray();
        $castIds = DB::table('cast_profiles')->pluck('id')->toArray();
        $customerIds = DB::table('customers')->pluck('id')->toArray();
        for ($i = 0; $i < 10; $i++) {
            $optionIds = $faker->boolean(70) ? [] : [
                $faker->numberBetween(8, 11),
                $faker->numberBetween(8, 11),
                $faker->numberBetween(8, 11)
            ];
            DB::table('sales')->insert([
                'cast_id' => $faker->randomElement($castIds),
                'customer_id' => $faker->randomElement($customerIds),
                'service_datetime' => $faker->dateTimeBetween('-1 month', 'now'),
                'course_id' => $faker->randomElement($courseIds),
                'appoint' => $faker->randomElement($appointIds),
                'option_ids' => $optionIds ? implode(',', $optionIds) : null,
                'transportation_expense' => $faker->randomElement($transportation_expense),
                'commission' => $faker->boolean(90) ? 0 : $faker->numberBetween(0, 10000),
                'created_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'updated_at' => $faker->dateTimeBetween('-1 month', 'now'),
                'destination' => $faker->address,
            ]);
        }
    }
}
