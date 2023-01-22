<template>
  <div>
    <div v-for="(category, categoryName) in groupedMenus" :key="categoryName">
      <h3>{{ categoryName }}</h3>
      <table class="table">
        <thead>
          <tr>
            <th></th>
            <th>料金</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="menu in category" :key="menu.id">
            <td>{{ menu.name }}</td>
            <td>{{ menu.price }}</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>


<script>
import axios from 'axios';

export default {
  name: 'Menues',
  data() {
    return {
      menues: ""
    }
  },
  mounted() {
    axios.get('/get_menues')
      .then(response => {
        // APIから取得したデータをVue.jsのデータとして扱う
        this.menues = response.data;
        console.log(response);
      })
      .catch(error => {
        console.log(error);
      });
  },
  computed: {
    groupedMenus() {
      const grouped = {}
      this.menues.forEach(menu => {
        if (!grouped[menu.category_name]) {
          grouped[menu.category_name] = []
        }
        grouped[menu.category_name].push(menu)
      })
      return grouped
    }
  }
}
</script>