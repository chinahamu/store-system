<template>
  <carousel :items-to-show="1.5">
    <div class="carousel__item">
    <slide v-if=profiles v-for="(picture, index) in pictures(profiles[0])" key="index">
      <img :src="'/uploads/' + picture" alt="profile image">
    </slide>
   </div>
    <template #addons>
      <navigation />
      <pagination />
    </template>
  </carousel>
  <div class="row my-5">
      <div class="col-12">
        <h5 class="text-center">女の子から一言</h5>
        <p class="text-center">{{profiles[0].one_word}}</p>
      </div>
    </div>
    <div class="row my-5">
      <div class="col-12">
        <h5 class="text-center">お店からひとこと</h5>
        <p class="text-center">{{profiles[0].description}}</p>
      </div>
    </div>
</template>
<script>
import 'vue3-carousel/dist/carousel.css';
import axios from 'axios';
import { Carousel, Slide, Pagination, Navigation } from 'vue3-carousel';


export default {
  name: 'Detail',
  components: {
    Carousel,
    Slide,
    Pagination,
    Navigation,
  },
  data() {
    return {
      profiles: [],
      shifts: []
    }
  },
  methods: {
    pictures(profile) {
      return JSON.parse(profile.pictures);
    }
  },
  mounted() {
    axios.get('/get_detail/' + this.$route.params.cast_id)
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
  
      axios.get('/get_shifts/' + this.$route.params.cast_id)
      .then(response => {
        // APIから取得したデータをVue.jsのデータとして扱う
        this.shifts = response.data;
        console.log(this.shifts);
      })
      .catch(error => {
        console.log(error);
      });
  }
}
</script>
<style lang="scss" scoped>
// とりあえず見れるように
.carousel__slide {
  height: 560px;
}
</style>