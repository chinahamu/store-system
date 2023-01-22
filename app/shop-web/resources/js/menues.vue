<template>
    <Header></Header>
    <div class="row">
    <div class="card col-3 ms-2" v-for="menu in menues" :key="menu.id" style="width:180px;margin:10px">
        {{ menu.name }}
        {{ menu.price }}
    </div>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  import Header from './header.vue'

   export default {
    name:'Menues',
    components: {
      Header
    },
    data() {
      return {
        menues: ""
      }
    },
    mounted() {
      axios.get('/get_menues')
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