<template>
  <div class="main-container">
    <Navbar/>
    <div class="container">
      <DemoSimple/>
      <DemoWithLabel/>
      <DemoCustomStyleMinMax/>
      <DemoLoading/>
    </div>
    <Footer/>
  </div>
</template>

<script>
import Navbar from './Navbar'
import DemoSimple from './Demos/Simple'
import DemoWithLabel from './Demos/WithLabel'
import DemoCustomStyleMinMax from './Demos/CustomStyleMinMax'
import DemoLoading from './Demos/Loading'
import Footer from './Footer'

export default {
  name: 'Main',
  components: {
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
</style>
