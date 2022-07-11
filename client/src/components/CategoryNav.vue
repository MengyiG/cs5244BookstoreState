<template>
  <nav class="category-nav">
    <ul class="category-buttons">
      <template v-for="category in $store.state.categories">
        <li
          v-if="category.name === $store.state.selectedCategoryName"
          :key="category.categoryId"
          class="button selected-category-button"
        >
          <!--use key to let vue keep track of each node's identity-->
          <!--we have category id and name but we only need to display name-->
          {{ category.name }}
        </li>
        <li
          v-else
          :key="category.categoryId"
          class="button unselected-category-button"
        >
          <router-link :to="'../category/' + category.name"
            >{{ category.name }}
          </router-link>
        </li>
      </template>
    </ul>
  </nav>
</template>

<script>
export default {
  name: "CategoryNav",
};
</script>

<style scoped>
.category-nav {
  height: 100%;
  background-color: var(--neutral-color);
  display: block;
  padding-top: 5%;
  flex-shrink: 0;
  min-width: 120pt;
  min-height: 320pt;
}

.category-buttons {
  display: flex;
  flex-direction: column;
  text-align: center;
  background-color: var(--neutral-color);
  line-height: 2em;
}

.button.selected-category-button {
  background-color: var(--primary-color);
  font-weight: bold;
}

.button.unselected-category-button,
.button.unselected-category-button:visited {
  background-color: var(--neutral-color);
}

.button.unselected-category-button:hover,
.button.unselected-category-button:active {
  font-weight: bold;
  background-color: var(--primary-color);
}

li a {
  color: var(--default-text-color);
  text-decoration: none;
}
</style>
