<template>
  <Header></Header>
  <div class="row">
    <div class="card col-3 ms-2" v-for="profile in profiles" :key="profile.id" style="width:180px;margin:10px">
      <a href="/detail/{{profile.id}}">
        <img src="https://placehold.jp/360x500.png" class="card-img-top" width="180" height="250" alt="{{profile.name}}">
      </a>
      <div class="card-body">
        <h5 class="card-title">
          <a href="/detail.php?id=11377">{{profile.name}}（{{profile.age}}）</a>
        </h5>
        <p class="card-text">T{{profile.tall}}<br>B:{{profile.bust}}(C) W:{{profile.waist}} H:{{profile.hip}}</p>
      </div>
    </div>
  </div>
</template>





<script>
import axios from 'axios';
import Header from './header.vue'

export default {
  components: {
    Header
  },
  data() {
    return {
      profiles: ""
    }
  },
  mounted() {
    axios.get('/get_profiles')
      .then(response => {
        // APIから取得したデータをVue.jsのデータとして扱う
        this.profiles = response.data;
        console.log(response);
      })
      .catch(error => {
        console.log(error);
      });
  }
}
</script>