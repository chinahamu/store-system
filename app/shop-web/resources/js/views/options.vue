<template>
    <div>
    <h5 class="text-center">オプション</h5>
      <table class="table">
        <tbody>
          <tr v-for="option in options" :key="option.id">
            <td>{{ option.name }}</td>
            <td>{{ option.type }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name:"Options",
    data() {
      return {
        options: []
      }
    },
    mounted() {
      axios.get('/get_options/' + this.$route.params.cast_id)
        .then(response => {
          // APIから取得したデータをVue.jsのデータとして扱う
          this.options = response.data;
          console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
  </script>