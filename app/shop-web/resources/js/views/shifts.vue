<template>
<div class="nav nav-tabs">
  <a class="nav-item nav-link" v-for="tab in sortedTabs" :key="tab" @click="selectTab(tab)">
        {{ tab }}
    </a>
</div>
<div class="row">
<div class="card col-3 ms-2" v-for="profile in selectedGroup" :key="profile.id" style="width:180px;margin:10px">
        <a href="/detail/{{profile.id}}">
          <img :src="profile.profile_images ? 'uploads/'+profile.profile_images : 'https://placehold.jp/360x500.png'" class="card-img-top" width="180" height="250" :alt="profile.name">
        </a>
        <div class="card-body">
          <h5 class="card-title">
            <router-link class="nav-link" :to="'/detail/' + profile.id">{{profile.name}}（{{profile.age}}）</router-link>
          </h5>
          <p class="card-text">T{{profile.tall}}<br>B:{{profile.bust}}(C) W:{{profile.waist}} H:{{profile.hip}}</p>
        </div>
</div>
</div>

</template>
<script>

import axios from 'axios';

export default {
  computed: {
    castGroups() {
      //groupByを使用し、start_datetimeのmm-ddをkeyにして、castをグループ分け
      return this.casts.reduce((groups, cast) => {
        let date = cast.start_datetime.slice(5, 10)
        if (!groups[date]) {
          groups[date] = []
        }
        groups[date].push(cast)
        return groups
      }, {})
    },
    sortedTabs() {
    // タブを日付順にソート
    return Object.keys(this.castGroups).sort().reverse()
    },
    selectedGroup() {
      //選択されたtabに対応するgroupを返す
      return this.castGroups[this.selectedTab]
    },
  },
  data() {
    return {
      casts: [],
      selectedTab: '',
    }
  },
  methods: {
    selectTab(date) {
      this.selectedTab = date
    },
  },
  mounted() {
    axios.get('/get_cast_shifts')
        .then(response => {
          // APIから取得したデータをVue.jsのデータとして扱う
          this.casts = response.data;
          console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
  },
}
</script>