<template>
  <div>
      <Navbar/>
      <div class="container">
          <DemoSimple/>
          <hr>
          <DemoWithLabel/>
          <hr>
          <DemoCustomStyleMinMax/>
          <hr>
          <DemoLoading/>
          <hr>
      </div>
  </div>
</template>

<script>
import Navbar from './Navbar'
import DemoSimple from './Demos/Simple'
import DemoWithLabel from './Demos/WithLabel'
import DemoCustomStyleMinMax from './Demos/CustomStyleMinMax'
import DemoLoading from './Demos/Loading'

export default {
  name: 'Main',
  components: {
    Navbar,
    DemoSimple,
    DemoWithLabel,
    DemoCustomStyleMinMax,
    DemoLoading
  }
}
</script>

<style scoped>
hr {
  /* src: https://www.css-tricks.com/examples/hrs/ */
  height: 0;
  margin: 0 2em;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
  border-bottom: 1px solid rgba(255, 255, 255, 0.3);
}
</style>
