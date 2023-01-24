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
  }
}
</script>