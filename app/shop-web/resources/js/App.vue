<template>
  <Header></Header>

  <router-view/>

</template>





<script>
import axios from 'axios';
import Header from './views/header.vue';
import CastShifts from './views/cast_shifts.vue';

export default {
  components: {
    Header,
    CastShifts
  }
}
</script>