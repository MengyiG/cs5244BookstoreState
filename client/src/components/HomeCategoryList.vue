<template>
  <ul>
    <router-link to="../category/classics" tag="li">
      <img src="@/assets/images/books/C1.jpeg" alt="classics category" />
      <div>Classics</div>
    </router-link>
  </ul>
</template>

<script>
export default {
  name: "HomeCategoryList",
};
</script>

<style scoped>
ul {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  gap: 1em;
}

li {
  text-align: center;
  cursor: pointer;
}

li div {
  padding: 0.5em 0;
  background: rgba(0, 0, 0, 0.5); /* last # is percent opacity */
  color: white;
  transform: translateY(-2.25em);
  margin-bottom: -2em;
}
</style>
