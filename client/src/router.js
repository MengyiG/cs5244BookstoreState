import Vue from "vue";
import Router from "vue-router";
import HomeView from "./views/HomeView.vue";
import CategoryView from "./views/CategoryView.vue";

Vue.use(Router);

export default new Router({
  mode: "history",
  base: process.env.BASE_URL,
  routes: [
    {
      path: "/",
      name: "home-view",
      component: HomeView,
    },
    {
      path: "/category/:name",
      name: "category-view",
      component: CategoryView,
      props: true,
    },
  ],
});
