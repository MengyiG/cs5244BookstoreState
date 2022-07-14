<template>
  <header class="container">
    <div class="logo-igm-and-text">
      <router-link to="/">
        <img
          class="img-logo"
          src="@/assets/images/site/logo.png"
          alt="Shu Bookstore Logo"
        />
      </router-link>
      <router-link to="/">
        <a class="img-text" href="/"
          ><h2>
            Shu <br />
            Bookstore
          </h2></a
        >
      </router-link>
    </div>

    <div class="search-bar-and-icon">
      <form action="/category">
        <input
          type="text"
          class="search-bar"
          placeholder="Search for title, author, ISBN, publisher..."
        />
        <!-- <input type="submit" class="button search-button" value="Search" /> -->
      </form>
      <button class="icon-only-button">
        <i class="fa-solid fa-magnifying-glass"></i>
      </button>
    </div>
    <div class="header-right">
      <div class="user-login">
        <button class="secondary-button">
          <i class="fa-solid fa-user"></i><span> &nbsp; log in | sign in</span>
        </button>
      </div>

      <div class="cart-and-num">
        <router-link to="/cart">
          <div class="cart-icon icon-only-button">
            <i class="fa-solid fa-cart-shopping fa-xl"></i>
          </div>
          <div class="cart-count">{{ $store.state.cart.numberOfItems }}</div>
        </router-link>
      </div>
      <header-dropdown-menu></header-dropdown-menu>
    </div>
  </header>
</template>

<script>
import HeaderDropdownMenu from "@/components/HeaderDropdown";
export default {
  name: "AppHeader",
  components: { HeaderDropdownMenu },
  component: {
    HeaderDropdownMenu,
  },
};
</script>

<style scoped>
header {
  background: var(--primary-background-color);
  display: flex;
  justify-content: space-between;
  padding-bottom: 0.5em;
  height: fit-content;
  flex-wrap: wrap;
  align-content: center;
}

.logo-igm-and-text {
  max-width: 500px;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
  align-items: flex-end;
}

.img-logo {
  max-width: 75px;
  margin-bottom: 0.8rem;
}

a.img-text {
  font-family: var(--title-font-family);
  margin-left: -1rem;
  text-decoration: none;
  color: var(--default-text-color);
}

a.img-text:hover,
a.img-text:active,
a.img-text:visited {
  cursor: pointer;
}

.search-bar-and-icon {
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-shrink: 0;
  margin-right: 2rem;
}

.search-bar {
  padding: 0.18em 1em;
  background: white;
  width: 20em;
  border: 2px solid black;
  box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
  border-radius: 30px;
}

.search-bar:focus {
  box-shadow: none;
  background: var(--primary-color);
  opacity: 80%;
  outline: none;
}

.search-bar:focus-visible {
  box-shadow: none;
  outline-color: var(--primary-color);
}

.header-right {
  display: flex;
  align-items: center;
  margin-right: 2rem;
}

.user-login {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.cart-and-num {
  margin: 0 4rem;
}

.cart-and-num > a {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.cart-count {
  font-weight: bold;
  background-color: var(--primary-color);
  color: black;
  border-radius: 50%;
  width: 30px;
  text-align: center;
  transform: translateY(-8pt);
  margin-left: -1.4rem;
}

.cart-and-num > a {
  color: black;
}

/*  It is used to define different style rules for different media types. */
@media (max-width: 600px) {
  header {
    flex-direction: column;
  }
}
</style>
