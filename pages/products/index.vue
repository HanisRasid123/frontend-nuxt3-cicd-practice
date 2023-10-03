<template>
  <div class="grid grid-cols-3 gap-5">
    <div v-for="item in products">
      <NuxtLink :to="`/products/${item.product_id}`">{{ item.name }}</NuxtLink>
    </div>
  </div>
</template>

<script setup>
  definePageMeta({
    layout: 'products'
  })

  const {data: products} = await useFetch('http://localhost:8000/products', {
    
  })
</script>

<style lang="scss" scoped>

</style>