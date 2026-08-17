<style scoped>
    @import './style.css';
</style>
<script setup>
    definePageMeta({layout:"study"})
</script>
<template>
    <div class="active-flashcard">
        <img src="/card-background.png"/>
        <p class="active-front">Which lobe is primarily responsible for visual processing?</p>    
    </div>
    <P class="flip">
        <img src="/icons/icone-flip-left.svg"/>
                SWIPE LEFT TO SKIP
        <img src="/icons/icone-flip-right.svg"/>
    </P>
    <div class="right-miss">
        <button class="button">
            <div class="button-container no">
                <img src="/icons/icone-no.svg"/>
            </div>
            <p>Errei</p>
        </button>
        <button class="button">
            <div class="button-container yes">
                <img src="/icons/icone-yes.svg"/>
            </div>
            <p>Acertei</p>
        </button>    
    </div>
</template>
        
        