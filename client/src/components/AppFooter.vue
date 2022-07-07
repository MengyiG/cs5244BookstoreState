<template>
  <footer class="container">
    <div class="copyright">
      <p>Copyright ©2022 Shu Bookstore</p>
    </div>
    <div class="other-links">
      <router-link to="/">
        <button class="footer-button">Contact Us &nbsp;</button>
      </router-link>
      <span>|</span>
      <router-link to="/">
        <button class="footer-button">&nbsp; Directions</button>
      </router-link>
    </div>

    <div class="social-media-icons">
      <button class="icon-only-button">
        <i class="fa-brands fa-facebook"></i>
      </button>
      <button class="icon-only-button">
        <i class="fa-brands fa-twitter"></i>
      </button>
      <button class="icon-only-button">
        <i class="fa-brands fa-instagram"></i>
      </button>
      <button class="icon-only-button">
        <i class="fa-brands fa-discord"></i>
      </button>
    </div>
  </footer>
</template>

<script>
export default {
  name: "AppFooter",
};
</script>

<style scoped>
footer {
  background: var(--primary-background-color);
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  flex-shrink: 0;
}

.footer-button {
  background-color: var(--primary-background-color);
  border: none;
  color: var(--default-text-color);
  padding: 0;
}

.footer-button:hover,
.footer-button:active {
  color: var(--primary-color);
}

.other-links,
.copyright,
.social-media-icons {
  align-items: center;
  flex-shrink: 0;
}

.other-links {
}
</style>
