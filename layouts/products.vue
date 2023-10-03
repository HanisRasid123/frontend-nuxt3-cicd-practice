<template>
  <div>
    <header class="shadow-sm">
      <nav class="container mx-auto p-4">
        <NuxtLink to="/products" class="font-bold">Products</NuxtLink>
      </nav>
    </header>
  </div>
  
  <div class="container mx-auto p-4">
    <slot/>
  </div>

  <footer class="container mx-auto p-4 flex justify-between border-t-2">
    <ul class="flex gap-4">
      <li><NuxtLink to="/" class="btn">Home</NuxtLink></li>
    </ul>
  </footer>
</template>

<style scoped>
  .router-link-exact-active {
    color: #713ABE;
  }
  header {
    background-color: #E5CFF7;
  }
</style>