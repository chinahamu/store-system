<template>
  <Header></Header>

  <router-view/>

</template>





<script>
import axios from 'axios';
import Header from './views/header.vue'

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