<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;

class MonthlyNominateRanking extends Command
{
    protected $signature = 'monthly:nominate_ranking';

    protected $description = 'Count monthly nominate ranking';

    public function handle()
    {
        // 先月の月初
        $last_month_start = Carbon::now()->subMonth()->startOfMonth();

        // 先月の月末
        $last_month_end = Carbon::now()->subMonth()->endOfMonth();

        // 月初の午前1時に実行されるように設定
        if (Carbon::now() < Carbon::parse('1:00')->startOfDay()) {
            $last_month_start = $last_month_start->subMonth();
            $last_month_end = $last_month_end->subMonth();
        }

        // 先月のappoint=7のレコード数をcast_idごとにカウントする
        $counts = DB::table('sales')
            ->select('cast_id', DB::raw('count(*) as nominate_count'))
            ->where('appoint', '=', 7)
            ->whereBetween('service_datetime', [$last_month_start, $last_month_end])
            ->groupBy('cast_id')
            ->get();

        // monthly_nominate_rankingテーブルにデータを挿入する
        foreach ($counts as $count) {
            DB::table('monthly_nominate_ranking')->insert([
                'yearmonth' => $last_month_start->toDateString(),
                'cast_id' => $count->cast_id,
                'nominate_count' => $count->nominate_count,
                'updated_at' => Carbon::now(),
                'created_at' => Carbon::now(),
            ]);
        }

        $this->info('Monthly nominate ranking counted and saved.');
    }
}
