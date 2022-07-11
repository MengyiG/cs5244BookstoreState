<template>
  <div class="category-content">
    <category-nav></category-nav>
    <category-book-list :books="$store.state.selectedCategoryBooks">
    </category-book-list>
  </div>
</template>

<script>
import CategoryNav from "@/components/CategoryNav";
import CategoryBookList from "@/components/CategoryBookList";

export default {
  name: "categoryView",
  components: {
    CategoryNav,
    CategoryBookList,
  },
  created() {
    if (this.$store.state.selectedCategoryName !== this.$route.params.name) {
      this.$store.dispatch("selectCategory", this.$route.params.name);
      this.$store.dispatch("fetchSelectedCategoryBooks");
    }
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
