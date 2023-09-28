<template>
  <div>
    <p>Product details for {{ id }}</p>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eos mollitia rem at dolor temporibus cum animi similique repellat nobis minus esse qui, nemo alias consectetur necessitatibus rerum provident cupiditate adipisci?</p>
  </div>
</template>

<script setup>
  const { id } = useRoute().params
</script>

<style scoped>

</style>