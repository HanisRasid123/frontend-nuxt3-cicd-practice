<template>
  <div>
    <header class="shadow-lg">
      <nav class="container mx-auto p-4 flex justify-between">
        <NuxtLink to="/" class="font-bold">Hanis' Store</NuxtLink>
        <ul class="flex gap-4">
          <li><NuxtLink to="/products" class="btn">Products</NuxtLink></li>
        </ul>
      </nav>
    </header>
  </div>

  <div class="container mx-auto p-4">
    <slot/>
  </div>
</template>

<style scoped>
  .router-link-exact-active {
    color: #713ABE;
    /* color: greenyellow; */
  }
  header {
    background-color: #E5CFF7;
  }
</style>