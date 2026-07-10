<style scoped>
    @import "./style.css";
</style>
<script>
    import Card from '@/components/card'
</script>
<template>
    <div class="container">
        <h1>Hello, Alex!</h1>
        <p>You're on a 12-day streak. Keep the momentum going!</p>

        <div class="cards-container">
            <Card title="Active Sets" value="8" />
            <Card title="Mastered" value="412" />
        </div>
    </div>
</template>