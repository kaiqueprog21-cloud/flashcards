<style scoped>
    @import "./style.css";
</style>
<script>
    import Card from '@/components/card'
    import Progress from "@/components/progress"
    import StudyCard from "@/components/StudyCard"
</script>
<template>
    <div class="container">
        <h1>Hello, Alex!</h1>
        <p>You're on a 12-day streak. Keep the momentum going!</p>

        <div class="cards-container">
            <Card title="Active Sets" value="8" />
            <Card title="Mastered" value="412" />
            <Progress initial="40" count="50" />

        </div>

        <h2>Recent Study Sets</h2>
        <div class="study-cards-container">
            <StudyCard/>
            <StudyCard/>
            <StudyCard/>
        </div>
    </div>
</template>