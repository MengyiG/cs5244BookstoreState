<template>
  <li class="book-box">
    <div class="book-image">
      <img
        :src="require('@/assets/images/books/' + bookImageFileName(book))"
        :alt="book.title"
      />
      <div v-if="book.isPublic" class="overlay-button">
        Read Now &nbsp;<i class="fa-solid fa-book-open"></i>
      </div>
    </div>
    <div class="book-title">
      {{ book.title }}
      <!-- v-bind:title="message" -->
    </div>
    <div class="book-author">{{ book.author }}</div>
    <div class="book-price">${{ (book.price / 100).toFixed(2) }}</div>
    <button class="primary-button" @click="addToCart(book)">
      <i class="fa-solid fa-cart-plus"></i>&nbsp; Add to Cart
    </button>
  </li>
</template>

<script>
export default {
  name: "categoryBookListItem",
  props: {
    book: {
      type: Object,
      required: true,
    },
  },
  methods: {
    bookImageFileName: function (book) {
      let name = book.title;
      name = name.replace(/[.,/#!$%^&*;:{}=\-_`~'()]/g, "");
      return `${name}.jpeg`;
    },
    addToCart: function (book) {
      this.$store.dispatch("addToCart", book);
    },
  },
};
</script>
<style scoped>
.book-box {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  background-color: var(--secondary-background-color);
  padding: 1em;
  width: 300px;
  height: 226pt;
}

.book-image {
  display: flex;
  flex-direction: column;
  width: 85px;
  align-self: center;
  height: 80pt;
}

.book-title {
  font-size: 18px;
  line-height: 1.4rem;
  word-wrap: normal;
  font-weight: bold;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  overflow: hidden;
  -webkit-line-clamp: 2;
  font-family: "Open Sans", sans-serif;
}

.book-author {
  font-family: "IBM Plex Sans Hebrew", sans-serif;
  font-weight: bold;
  margin-top: -1.5rem;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  overflow: hidden;
  -webkit-line-clamp: 1;
}

.book-price {
  font-size: 14px;
  margin-top: -2rem;
}
</style>
