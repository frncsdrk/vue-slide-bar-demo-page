<template>
  <div class="main-container">
    <Navbar/>
    <div class="container">
      <DemoSimple/>
      <DemoWithLabel/>
      <DemoCustomStyleMinMax/>
      <DemoLoading/>
      <VueElevator class="elevator" :word="''" :duration="1000"/>
    </div>
    <Footer/>
  </div>
</template>

<script>
import { VueElevator } from 'vue-elevator'
import Navbar from './Navbar'
import DemoSimple from './Demos/Simple'
import DemoWithLabel from './Demos/WithLabel'
import DemoCustomStyleMinMax from './Demos/CustomStyleMinMax'
import DemoLoading from './Demos/Loading'
import Footer from './Footer'

export default {
  name: 'Main',
  components: {
    VueElevator,
    Navbar,
    Footer,
    DemoSimple,
    DemoWithLabel,
    DemoCustomStyleMinMax,
    DemoLoading
  }
}
</script>

<style scoped>
  .main-container {
    background: #ddd;
  }
  .elevator {
    padding: 0 0 1em 0;
  }
</style>
