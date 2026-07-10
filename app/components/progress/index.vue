<style scoped>
    @import "./style.css";
</style>

<script setup>
    const props = defineProps({
        initial: Number,
        count: Number
    })

    const progressPercentage = computed(() => {
        return (props.initial / props.count) * 100;
    });
</script>

<template>
    <div class="progress">
        <h6 class="progress-title">TODAY'S PROGRESS</h6>
        <p class="progress-value">{{ initial }}/{{ count }} Cards</p>

        <span>{{ progressPercentage.toFixed(0) }}% </span>

        <div class="progress-bar">
            <div class="progress-bar-fill" :style="{width: progressPercentage + '%'}"/>
        </div>

    </div>
</template>
