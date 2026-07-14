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
    <div class="card-study">
        <img class="card-study-image" src="/card-background.png"/>
        <h6 class="card-study-title">Human Anatomy</h6>
        <p class="card-study-description"><img src="/icons/card.svg"/>128 cards</p>
    </div>
</template>