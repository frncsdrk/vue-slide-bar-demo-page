<template>
  <div class="demo-container">
    <h2 class="demo-title">Simple</h2>
    <VueSlideBar v-model="value" class="demo-demo"/>
    <div class="demo-body">
      <h4>Value: {{ value }}</h4>
      <div class="btn-group">
        <button type="button" name="button" class="btn" @click="value++">
          +
        </button>
        <button type="button" name="button" class="btn" @click="value--">
          -
        </button>
      </div>
    </div>
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
  /* @import './../../assets/demo.css'; */
  .btn {
    padding: 0 1em;
  }
</style>
