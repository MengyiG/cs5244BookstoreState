<template>
  <div id="app">
    <app-header></app-header>
    <Transition name="fade" mode="out-in">
      <router-view id="router-view" :key="$route.fullPath"></router-view>
    </Transition>
    <app-footer></app-footer>
  </div>
</template>

<script>
import AppHeader from "@/components/AppHeader";
import AppFooter from "@/components/AppFooter";

export default {
  name: "App",
  components: {
    AppHeader,
    AppFooter,
  },
  created: function () {
    //triggers the actions in Vuex store
    this.$store.dispatch("fetchCategories");
  },
};
</script>

<style>
.fade-enter,
.fade-leave-to {
  opacity: 0;
  transform: translateX(2em);
}

.fade-enter-active,
.fade-leave-active {
  transition: all, 0.3s ease;
}
</style>
