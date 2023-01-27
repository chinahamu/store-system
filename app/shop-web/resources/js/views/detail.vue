<template>
  <div>
    <!-- <carousel v-if="profiles" :per-page="1" :loop="true" :navigation-enabled="true" :pagination-enabled="true">
          <slide v-for="profile in profiles" :key="profile"> -->
    <div v-for="(picture, index) in pictures(profiles[0])" key="index" >
              <img :src="'/uploads/' + picture" alt="profile image">
            </div>
              <!-- </slide>
    </carousel> -->

  </div>
</template>
<script>
import axios from 'axios';
import { Carousel, Slide } from 'vue-carousel';

export default {
  name:'Detail',
  components: {
    Carousel,
    Slide
  },
  data() {
    return {
      profiles: []
    }
  },
  methods:{
    pictures(profile){
      return JSON.parse(profile.pictures);
    }
  },
  mounted() {
    axios.get('/get_detail/'+ this.$route.params.cast_id )
      .then(response => {
        // APIから取得したデータをVue.jsのデータとして扱う
        this.profiles = response.data;
        //this.profiles.splice();
        //this.profiles.pictures = JSON.parse(this.profiles.pictures);
        console.log(this.profiles);
      })
      .catch(error => {
        console.log(error);
      });
  }
}
</script>