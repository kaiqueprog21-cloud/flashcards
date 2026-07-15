<style scoped>
 @import './style.css';
</style>

<script setup>
  const props = defineProps({
    quantity: String,
    progress: String
  })


</script>

<template>
    <div class="container">
      <img src="/icons/close.svg" alt="settings"/>
      <div class="container-progress">
        <div class="progress">
          <div class="process-fill"></div>
        </div>
        <div class="progress-text">
          <p class="progress-label">Session Progress</p>
          <p class="progress-value">{{ progress }}/{{ quantity }}</p>
        </div>
      </div>
      <img src="/icons/settings.svg" alt="settings"/>
  </div>
</template>