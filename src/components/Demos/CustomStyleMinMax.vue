<template>
  <div class="demo-container">
    <h1 class="demo-title">Custom Style & Min-Max</h1>
    <VueSlideBar
      v-model="value"
      :min="1"
      :max="10"
      :processStyle="slider.processStyle"
      :lineHeight="slider.lineHeight"
      :tooltipStyles="{ backgroundColor: 'red', borderColor: 'red' }"
      class="demo-demo">
    </VueSlideBar>
    <h2>Value: {{value}}</h2>
  </div>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'

export default {
  name: 'DemoCustomStyleMinMax',
  components: {
    VueSlideBar
  },
  data () {
    return {
      value: 8,
      slider: {
        lineHeight: 10,
        processStyle: {
          backgroundColor: 'red'
        }
      }
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
</style>
