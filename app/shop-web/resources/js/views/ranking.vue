<template>
  <div class="container">
    <h2 class="mt-4">{{ month }}月本指名ランキング</h2>
    <table class="table">
      <thead>
        <tr>
          <th>順位</th>
          <th>キャスト名</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(rank, index) in ranking" :key="rank.cast_id">
          <td>
            <router-link :to="'/detail/' + rank.cast_id">
            <img :src="rank.profile_images ? `uploads/${rank.profile_images}` : 'https://placehold.jp/360x500.png'"
              alt="cast image" class="img-thumbnail" style="width: 100px;">
            </router-link>
            {{ index + 1 }}
          </td>
          <td>{{ rank.name }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>
  
<script>
import axios from 'axios';

export default {
  name: "Ranking",
  data() {
    return {
      month: '',
      ranking: ""
    }
  },
  mounted() {
    const d = new Date();
    const lastMonth = d.getMonth();
    this.month = lastMonth;
    axios.get('/get_ranking')
      .then(response => {
        // APIから取得したデータをVue.jsのデータとして扱う
        this.ranking = response.data;
        console.log(response);
      })
      .catch(error => {
        console.log(error);
      });
  }
}
</script>