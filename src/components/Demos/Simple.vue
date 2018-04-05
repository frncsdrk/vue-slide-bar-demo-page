<template>
  <div class="demo-container">
      <h1 class="demo-title">Simple</h1>
    <VueSlideBar v-model="value" class="demo-demo"/>
    <h2>Value: {{ value }}</h2>
    <button type="button" name="button" @click="value++">
        +
    </button>
    <button type="button" name="button" @click="value--">
        -
    </button>
  </div>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'

export default {
  name: 'Simple',
  components: {
    VueSlideBar
  },
  data () {
    return {
      value: 50
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
</style>
