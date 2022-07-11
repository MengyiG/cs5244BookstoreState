<template>
  <div class="menu-wrap">
    <input type="checkbox" class="toggler" />
    <div class="hamburger"><div></div></div>
    <div class="menu">
      <div>
        <div>
          <ul>
            <li class="main-menu-item">
              <router-link to="/">Home</router-link>
            </li>
            <li class="main-menu-item">
              <router-link to="/">About Us</router-link>
            </li>

            <li class="main-menu-item">
              <div class="onclick-menu">
                Categories
                <ul class="onclick-menu-content">
                  <template v-for="category in $store.state.categories">
                    <li
                      v-if="category.name === $store.state.selectedCategoryName"
                      :key="category.categoryId"
                      class="button selected-category-button"
                    >
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
              </div>
            </li>

            <li class="main-menu-item">
              <router-link to="/">Shipping</router-link>
            </li>
            <li class="main-menu-item">
              <router-link to="/">Contact Us</router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "HeaderDropdownMenu",
  data: function () {
    return {
      mainMenuOpen: false,
    };
  },
};
</script>

<style scoped>
.menu-wrap {
  position: fixed;
  top: 22px;
  right: 0;
  z-index: 1;
}

.menu-wrap .toggler {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  cursor: pointer;
  width: 50px;
  height: 50px;
  opacity: 0;
}

.menu-wrap .hamburger {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 1;
  width: 60px;
  height: 60px;
  padding: 1rem;
  background: var(--primary-background-color);
  display: flex;
  align-items: center;
  justify-content: center;
}

/*hamburger lines*/
.menu-wrap .hamburger > div {
  position: relative;
  width: 100%;
  height: 2px;
  background-color: black;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.4s ease;
}

/*top and bottom lines*/
.menu-wrap .hamburger > div:before,
.menu-wrap .hamburger > div:after {
  content: "";
  position: absolute;
  z-index: 1;
  top: -10px;
  width: 100%;
  height: 2px;
  background: black;
}

/*moves bottom line down*/
.menu-wrap .hamburger > div:after {
  top: 10px;
}

/*toggler animate*/
.menu-wrap .toggler:checked + .hamburger > div {
  transform: rotate(135deg);
}

/*turn lines into x*/
.menu-wrap .toggler:checked + .hamburger > div:before,
.menu-wrap .toggler:checked + .hamburger > div:after {
  top: 0;
  transform: rotate(90deg);
}

/*rotate on hover when checked*/
.menu-wrap .toggler:checked:hover + .hamburger > div {
  transform: rotate(225deg);
}

/*show menu*/
.menu-wrap .toggler:checked ~ .menu {
  visibility: visible;
}

.menu-wrap .toggler:checked ~ .menu > div {
  transform: scale(1);
  transition-duration: 0.8s;
}

.menu-wrap .toggler:checked ~ .menu > div > div {
  opacity: 1;
  transition: opacity 0.4s ease;
}

.menu-wrap .menu {
  position: fixed;
  top: 0;
  right: 0;
  width: 100%;
  height: 100%;
  visibility: hidden;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
}

.menu-wrap .menu > div {
  background: rgba(24, 39, 51, 0.85);
  border-radius: 50%;
  width: 200vw;
  height: 200vw;
  display: flex;
  flex: none;
  align-items: center;
  justify-content: center;
  transform: scale(0);
  transition: all 0.4s ease;
}

.menu-wrap .menu > div > div {
  text-align: center;
  max-width: 90vw;
  max-height: 100vw;
  opacity: 0;
  transition: opacity 0.4s ease;
}

.menu-wrap .menu > div > div > ul > li {
  color: white;
  font-size: 1.5rem;
  padding: 1rem;
}

.main-menu-item:hover {
  background-color: var(--primary-color-dark);
  border-radius: 50px;
  transition: 0.65s;
  cursor: pointer;
}

.onclick-menu:focus .onclick-menu-content {
  visibility: visible;
  display: inherit;
}
.onclick-menu-content {
  display: inherit;
  margin-top: 1rem;
}
.onclick-menu-content li {
  display: block;
  list-style: none;
  font-size: medium;
}

.button.selected-category-button {
  background-color: var(--primary-background-color);
  font-weight: bold;
  border-radius: 50px;
}
.button.unselected-category-button,
.button.unselected-category-button:visited {
  background-color: inherit;
}
.button.unselected-category-button:hover,
.button.unselected-category-button:active {
  font-weight: bold;
  background-color: var(--overlay-background);
  border-radius: 50px;
}
</style>
