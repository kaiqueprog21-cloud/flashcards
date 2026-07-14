<style scoped>
    @import "./style.css";
</style>

<script setup>
   import { ref } from 'vue'

    const frontText = ref('')
    defineProps({
        title: String,

        placeholder: {
            type: String,
            default: 'Enter the question or concept...'
        }
    })
</script>

<template>
    <h3 class="front-side">{{ title }}</h3>  
    <textarea v-model="frontText" class="front-text" maxlength="200" rows="4" cols="20" :placeholder="placeholder"></textarea>
    <span>{{ frontText.length }}/200</span>
</template>