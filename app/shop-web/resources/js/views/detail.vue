<template>
 DETAIL
</template>
  
  <script>
  import axios from 'axios';

   export default {
    name:'Detail',
    data() {
      return {
        profiles: ""
      }
    },
    mounted() {
      axios.get('/get_detail/'+ this.$route.params.cast_id )
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