<template>
  <div class="grid grid-cols-3 gap-5">
    <div v-for="item in products">
      <ProductCard :product="item"/>
    </div>
  </div>
</template>

<script setup>
  definePageMeta({
    layout: 'products'
  })

  const {data: products} = await useFetch('http://localhost:8000/products')
</script>

<style scoped>

</style>