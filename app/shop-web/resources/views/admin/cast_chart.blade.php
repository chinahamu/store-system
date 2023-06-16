<!-- dhtmlxGanttを読み込む -->
<head>
<script src="https://cdn.dhtmlx.com/gantt/edge/dhtmlxgantt.js"></script>
<link rel="stylesheet" href="https://cdn.dhtmlx.com/gantt/edge/dhtmlxgantt.css">
</head>
<!-- dhtmlxGanttを初期化する -->


<!-- ガントチャートを表示する要素 -->
<div id="gantt" style="width: 100%; height: 600px;"></div>

<script>
gantt.config.columns = [
  {name: "text", label: "キャスト名", width: "*", tree: true},
  // 他のカラム
];
gantt.config.readonly = true;
  gantt.config.xml_date = "%Y-%m-%d %H:%i:%s"; // XMLデータの日付フォーマットを指定
  gantt.init("gantt"); // ガントチャートを表示する要素を指定

  // データを設定
  var data = [
    @foreach($cast_shifts as $shift)
      {
        id: {{ $shift->id }},
        text: "{{ $shift->name }}",
        start_date: "{{ $shift->start_datetime }}",
        end_date: "{{ $shift->end_datetime }}"
      },
    @endforeach
  ];

  // データを読み込む
  gantt.parse({ data: data });

  // 日付のフォーマットを設定
  gantt.templates.date_scale = function(date){
    return gantt.date.date_to_str("%m/%d %H:%i")(date);
  };
  gantt.templates.task_text = function(start, end, task) {
    return task.text;
  };
  gantt.config.scale_unit = "day";
  gantt.config.date_scale = "%m/%d";
  gantt.config.subscales = [
    { unit:"hour", step: 1, date: "%H" }
  ];
  gantt.config.duration_unit = "minute";
  gantt.config.duration_step = 15;
</script>

