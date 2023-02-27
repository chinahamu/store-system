<template>
    <div>
    <h5 class="text-center">Q&A</h5>
      <table class="table">
        <tbody>
          <tr v-for="answer in answers" :key="answer.id">
            <td>{{ answer.question }}</td>
            <td>{{ answer.answer }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name:"Answer",
    data() {
      return {
        answers: []
      }
    },
    mounted() {
      axios.get('/api/get_answers/' + this.$route.params.cast_id)
        .then(response => {
          // APIから取得したデータをVue.jsのデータとして扱う
          this.answers = response.data;
          console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
  </script>