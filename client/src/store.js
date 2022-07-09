import Vue from "vue";
import Vuex from "vuex";
import ApiService from "@/services/ApiService";
Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    categories: [],
    selectedCategoryName: "",
    selectedCategoryBooks: [],
  },
  mutations: {
    //state is current state, newCategories is the payload
    SET_CATEGORIES(state, newCategories) {
      state.categories = newCategories;
    },
  },
  actions: {
    fetchCategories(context) {
      ApiService.fetchCategories()
        .then((categories) => {
          console.log("Categories: ", categories);
          context.commit("SET_CATEGORIES", categories);
        })
        .catch((reason) => {
          console.log("Error: " + reason);
        });
    },
  },
});
