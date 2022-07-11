import Vue from "vue";
import Vuex from "vuex";
import ApiService from "@/services/ApiService";
import { ShoppingCart } from "@/models/ShoppingCart";
Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    categories: [],
    selectedCategoryName: "",
    selectedCategoryBooks: [],
    cart: new ShoppingCart(),
  },
  mutations: {
    //capturing the synchronous code that updates the state
    //state is current state, newCategories is the payload
    SET_CATEGORIES(state, newCategories) {
      state.categories = newCategories;
    },
    SET_CATEGORY(state, currentName) {
      state.selectedCategoryName = currentName;
    },
    SET_SELECTED_CATEGORY_BOOKS(state, newBooks) {
      state.selectedCategoryBooks = newBooks;
    },
    ADD_TO_CART(state, book) {
      state.cart.addItem(book, 1);
    },
  },
  actions: {
    //capturing any asynchronous network calls, and other business logic
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
    selectCategory(context, selectedCategoryName) {
      console.log("The selected category is: ", selectedCategoryName);
      context.commit("SET_CATEGORY", selectedCategoryName);
    },
    fetchSelectedCategoryBooks(context) {
      ApiService.fetchSelectedCategoryBooks(context.state.selectedCategoryName)
        .then((selectedCategoryBooks) => {
          console.log("SelectedCategoryBook: ", selectedCategoryBooks);
          context.commit("SET_SELECTED_CATEGORY_BOOKS", selectedCategoryBooks);
        })
        .catch((reason) => {
          console.log("Error: " + reason);
        });
    },
    addToCart(context, book) {
      context.commit("ADD_TO_CART", book);
    },
  },
});
