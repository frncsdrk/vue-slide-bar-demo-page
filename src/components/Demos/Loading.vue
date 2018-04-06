<template>
  <div class="demo-container">
    <h1 class="demo-title">Loading</h1>
    <VueSlideBar
      v-model="loading"
      :showTooltip="false"
      :lineHeight="20"
      :isDisabled="true"
      class="demo-demo"/>
    <br>
    <button type="button" name="button" class="btn btn-primary" @click="startLoad()">
      Click to start load
    </button>
    <h2>Loading: {{loading}}%</h2>
  </div>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'

export default {
  name: 'DemoLoading',
  components: {
    VueSlideBar
  },
  data () {
    return {
      loader: null,
      loading: 0
    }
  },
  methods: {
    startLoad () {
      this.loader = setInterval(() => {
        this.loading++
        if (this.loading === 100) {
          console.log('clear', this.loading)
          clearInterval(this.loader)
        }
      }, 100)
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
</style>
