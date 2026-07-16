<style scoped>
@import './style.css';
</style>
<script setup>
    import Input from '@/components/input';
    import { ref } from 'vue'
import { useSupabase } from '~/composable/useSupabase';

   const fileInput = ref(null)
   const selectedImage = ref(null)

    function openfileselector() {
        fileInput.value.click()
    }

    function handleFileSelected(event) {
        const file = event.target.files[0]
        selectedImage.value = file
        console.log(file)
    }

    async function handleCreateCard() {
        console.log("VOU CRIAR O CARD")
        const supabase = useSupabase()

        // const resposta = await supabase.from('collection').insert({
        //     id: 1,
        //     name: "Primeira coleção"
        // })
        // console.log("resposta =>",resposta)
        
        await supabase.from('flashcards').insert({
            id: 1,
            frontside: 'Why?',
            backside: 'Porque',
            image: '',
            collectionid: 1
        })

        console.log("CRIEI O CARD")
    }

</script>
<template>
    <h2 class="new-card">Create a new card</h2> 
    <p class="texts">Draft your card with precision. Add images to boost recall.</p>
        <Input title="FRONT SIDE" placeholder="Enter the question or concept..."/> 
        <Input title="BACK SIDE" placeholder="Enter the answer or detailed explanation..."/> 
    <h3 class="association">VISUAL ASSOCIATION</h3>
        <div class="files" @click="openfileselector">
            <input type="file" ref="fileInput" accept=".png,.jpg,.jpeg" style="display: none" @change="handlefileselected"/>
            <div class="upload-content">
                <img src="/icons/icone-image.svg"/>
                <p>Click or drop image here</p>
                <span>PNG , JPG up to 10MB</span>
            </div>
        </div>
    <button class="save" @click="handleCreateCard">Save New Card</button>  
    <button class="cancel">Cancel</button>  
</template>    