<template>
    <div class="row">
      <div class="card col-3 ms-2" v-for="profile in profiles" :key="profile.id" style="width:180px;margin:10px">
        <router-link :to="'/detail/' + profile.id">
          <img :src="profile.profile_images ? 'uploads/'+profile.profile_images : 'https://placehold.jp/360x500.png'" class="card-img-top" width="180" height="250" :alt="profile.name">
        </router-link>
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
    name:"Profiles",
    data() {
      return {
        profiles: ""
      }
    },
    mounted() {
      axios.get('/api/get_profiles')
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