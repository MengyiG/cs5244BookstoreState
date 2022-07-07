<template>
  <div class="category-content">
    <category-nav></category-nav>
    <category-book-list :books="books"> </category-book-list>
  </div>
</template>

<script>
import CategoryNav from "@/components/CategoryNav";
import CategoryBookList from "@/components/CategoryBookList";
import ApiService from "@/services/ApiService";

export default {
  name: "categoryView",
  components: {
    CategoryNav,
    CategoryBookList,
  },
  data: function () {
    return {
      books: [],
    };
  },
  created: function () {
    console.log("Begin fetchSelectedCategoryBooks...");
    this.fetchSelectedCategoryBooks(this.$route.params.name);
    console.log("End fetchSelectedCategoryBooks...");
  },
  methods: {
    fetchSelectedCategoryBooks(categoryName) {
      const vm = this;
      ApiService.fetchSelectedCategoryBooks(categoryName)
        .then((data) => {
          console.log("Book: ", data);
          vm.books = data;
        })
        .catch((reason) => {
          console.log("Error: " + reason);
        });
    },
  },
};
</script>

<style scoped>
.category-content {
  display: flex;
  height: 78vh;
  min-height: 320pt;
}
</style>
