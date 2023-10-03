<template>
  <div>
    <p class="font-bold text-[#713ABE] m-4 truncate">{{ product[0].name }}</p>
    <p>Description: {{ product[0].description }}</p>
    <p>Price: {{ product[0].price }}</p>
    <p>Quantity: {{ product[0].quantity }}</p>
  </div>
</template>

<script setup>
  const { id } = useRoute().params

  definePageMeta({
  layout: 'products'
})
  const {data: product} = await useFetch("http://localhost:8000/products/" + id, {key: id})

</script>

<style scoped>

</style>