<template>
  <div class="hero-image">
    <div class="hero-text-and-button">
      <!--      hero text-->
      <h1 class="hero-title">Welcome to Your Dedicated Bookstore</h1>
      <h2 class="hero-subtitle">
        where readers find quietness and tranquility
      </h2>
      <!--  button    -->
      <button class="hero-button">
        <router-link to="../category/Classics">
          <span>Start to Browse</span>
        </router-link>
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: "HomeView",
};
</script>

<style scoped>
.hero-image {
  color: #f5f5f5;
  background-image: linear-gradient(rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.1)),
    url("@/assets/images/site/bg.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  display: flex;
  justify-content: flex-end;
  text-align: right;
  padding-right: 5rem;
  padding-top: 13rem;
  height: 78vh;
  min-height: 400pt;
  max-height: 1000pt;
}

.hero-title {
  font-size: 2.5rem;
  padding-top: 1rem;
}
.hero-subtitle {
  font-size: 1.7rem;
  margin-top: 1rem;
  font-weight: lighter;
}

.hero-button {
  background-color: var(--primary-color);
  color: black;
  border: 2px solid black;
  box-shadow: 0 4px 4px rgba(0, 0, 0, 0.25);
  border-radius: 30px;
  padding: 0.3rem 4rem;
  font-size: 1.2rem;
  cursor: pointer;
  margin-top: 5rem;
  margin-bottom: 1rem;
  transition: all 0.4s;
}

.hero-button:hover {
  background-color: var(--secondary-background-color);
}

.hero-button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
  color: var(--default-text-color);
}

.hero-button span:after {
  content: "\00bb";
  position: absolute;
  opacity: 0;
  top: 0;
  right: -10px;
  transition: 0.5s;
}

.hero-button:hover span {
  padding-right: 25px;
}

.hero-button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
