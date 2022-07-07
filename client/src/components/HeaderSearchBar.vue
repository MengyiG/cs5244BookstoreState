<template>
  <form action="category.html">
    <input
      type="text"
      class="search-bar"
      placeholder="Search for title, author, ISBN, publisher..."
    />
    <!-- <input type="submit" class="button search-button" value="Search" /> -->
  </form>
</template>

<script>
export default {
  name: "HeaderSearchBar",
};
</script>

<style scoped>
input[type="text"] {
  margin: 0.5em 0;
  width: 12em;
}
</style>
