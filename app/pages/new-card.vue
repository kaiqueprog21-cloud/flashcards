<style scoped>
@import './style.css';
</style>
<script setup>
    import Input from '@/components/input';
    /*import { SupabaseClient } from '@supabase/supabase-js';*/
    import { ref } from 'vue'
    import { useSupabase } from '~/composable/useSupabase';

    const frontside = ref('')
    const backside = ref('')
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
        const supabase = useSupabase()
       
        let imageUrl = ''

        if (selectedImage.value) {
            const file = selectedImage.value
            const fileName = `${Date.now()}-${file.name}`

            const { data: uploadData, error: uploadError } = await supabase
                .storage
                .from('Visual Association')
                .upload(fileName, file)

            if (uploadError) {
                console.log('Erro no upload' , uploadError)
                return
            }    
            const { data: publicUrlData } = supabase 
                .storage
                .from('Visual Association')
                .getPublicUrl(fileName)
            
            imageUrl = publicUrlData.publicUrl
        
        }   
        const {data, error } = await supabase.from('flashcards').insert({
            frontside: frontside.value,
            backside: backside.value,
            image: imageUrl,
            collectionid: 1
        })

         if (error) {
            console.log('Erro ao criar card:', error)
            return
        }    

        console.log('card criado com sucesso', data)
    
    }   

</script>
<template>
    <h2 class="new-card">Create a new card</h2> 
    <p class="texts">Draft your card with precision. Add images to boost recall.</p>
        <Input title="FRONT SIDE" placeholder="Enter the question or concept..." v-model="frontside" :maxlength="200"/> 
        <Input title="BACK SIDE" placeholder="Enter the answer or detailed explanation..." v-model="backside" :maxlength="500"/> 
    <h3 class="association">VISUAL ASSOCIATION</h3>
        <div class="files" @click="openfileselector">
            <input type="file" ref="fileInput" accept=".png,.jpg,.jpeg" style="display: none" @change="handleFileSelected"/>
            <div class="upload-content">
                <img src="/icons/icone-image.svg"/>
                <p>Click or drop image here</p>
                <span>PNG , JPG up to 10MB</span>
            </div>
        </div>
    <button class="save" @click="handleCreateCard">Save New Card</button>  
    <button class="cancel">Cancel</button>  
</template>    