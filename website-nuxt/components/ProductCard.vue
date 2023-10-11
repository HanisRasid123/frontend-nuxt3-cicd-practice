<template>
  <div class="card text-center">
    <p class="font-bold text-[#E5CFF7] m-4 truncate">{{ product.name }}</p>
    <NuxtLink :to="`/products/${product.product_id}`"><p class="btn my-4">View Details</p></NuxtLink>
  </div>
</template>

<script setup>
  const {product} = defineProps(["product"])
</script>

<style scoped>

</style>