import Vue from "vue";
import App from "./App.vue";
import router from "@/router";
import "@/assets/css/global.css";
import store from "@/store";

Vue.config.productionTip = false;

new Vue({
  router,
  store, //every component could reference the store
  render: function (h) {
    return h(App);
  },
}).$mount("#app");
