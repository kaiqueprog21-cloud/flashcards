<style scoped>
    @import "./style.css";
</style>

<script setup>
    defineProps({
        title: String,
        value: Number
    })
</script>

<template>
    <div class="card">
        <img src="/icons/icone-card.svg"/>
        <p class="card-title">{{ title }}</p>
        <p class="card-value">{{ value }}</p>
    </div>
</template>