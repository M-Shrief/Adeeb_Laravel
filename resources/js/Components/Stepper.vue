<template>
  <h1 id="header">Header</h1>
  <div>
    <button aria-label="decrement" @click="count--" id="decrement">-</button>
    <span data-cy="counter">{{ count }}</span>
    <button aria-label="increment" @click="count++" id="increment">+</button>
  </div>
</template>

<script setup>
  import { ref } from 'vue'
  const props = defineProps(['initial'])

  const emit = defineEmits(['change'])

  const count = ref(props.initial || 0)
</script>
