import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
// 组件
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import request from "@/utils/request";
import axios from 'axios';
import VueAxios from 'vue-axios';
//引入 echarts
import echarts from "echarts"
//注册组件
Vue.prototype.$echarts = echarts


Vue.use(VueAxios, axios)

Vue.use(ElementUI);
Vue.config.productionTip = false
Vue.prototype.request=request

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
