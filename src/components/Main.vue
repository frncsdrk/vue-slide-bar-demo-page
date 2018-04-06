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
    background: #eee;
  }
hr {
  /* src: https://www.css-tricks.com/examples/hrs/ */
  height: 0;
  margin: 0 2em;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
  border-bottom: 1px solid rgba(255, 255, 255, 0.3);
}
</style>
