import './bootstrap';
import './bootstrap.bundle.min';
import '../css/bootstrap.min.css';
import {createApp} from 'vue'
import App from './App.vue'
import router from "./router";

const app = createApp(App);
app.use(router);
app.mount("#app");