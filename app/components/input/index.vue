<style scoped>
    @import "./style.css";
</style>

<script setup>
    const text = defineModel({ default: '' })

    defineProps({
        title: String,
        placeholder: {
            type: String,
            default: 'Enter the question or concept...'
        },
        maxlength: {
            type: Number,
            default: 200
        }
    })
</script>

<template>
    <h3 class="front-side">{{ title }}</h3>  
    <textarea v-model="text" class="front-text" :maxlength="maxlength" rows="4" cols="20" :placeholder="placeholder"></textarea>
    <span>{{ text.length }}/{{ maxlength }}</span>
</template>