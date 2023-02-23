<div class="card">
    <div class="card-header">
        売上合計
    </div>
    <div class="card-body">
        <h1 class="card-title">&yen;{{ $total_sale }}</h1>
    </div>
</div>
<div class="card">
        <div class="card-header">
            キャスト別売り上げ
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>順位</th>
                        <th>キャスト名</th>
                        <th>売上合計</th>
                    </tr>
                    </thead>
                    <tbody>
                    @php $rank = 1 @endphp
                    @foreach($sales_per_cast as $cast)
                        <tr>
                            <td>{{ $rank }}</td>
                            <td>{{ $cast['cast_name'] }}</td>
                            <td>&yen;{{ number_format($cast['total_sale']) }}</td>
                        </tr>
                        @php $rank++ @endphp
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>