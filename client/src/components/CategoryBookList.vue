<template>
  <div class="category-book-list">
    <ul>
      <template v-for="book in $store.state.selectedCategoryBooks">
        <li :key="book.bookId">
          <category-book-list-item :book="book"></category-book-list-item>
        </li>
      </template>
    </ul>
  </div>
</template>

<script>
import CategoryBookListItem from "./CategoryBookListItem";

export default {
  name: "CategoryBookList",
  components: {
    CategoryBookListItem,
  },
};
</script>

<style scoped>
ul {
  display: flex;
  flex-wrap: wrap;
  padding: 0 1em;
  gap: 1em;
}
.category-book-list {
  flex-grow: 1;
  overflow-y: auto;
}
</style>
