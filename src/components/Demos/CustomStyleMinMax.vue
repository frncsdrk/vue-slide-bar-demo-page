<template>
  <div class="demo-container">
    <h2 class="demo-title">Custom Style & Min-Max</h2>
    <VueSlideBar
      v-model="value"
      :min="1"
      :max="10"
      :processStyle="slider.processStyle"
      :lineHeight="slider.lineHeight"
      :tooltipStyles="{ backgroundColor: 'red', borderColor: 'red' }"
      class="demo-demo">
    </VueSlideBar>
    <div class="demo-body">
      <h4>Value: {{value}}</h4>
    </div>
    <div class="demo-code columns">
      <div class="column col-6 col-md-12">
        <h5>template</h5>
        <Prism language="html">
          {{ demoTemplateCode }}
        </Prism>
      </div>
      <div class="column col-6 col-md-12">
        <h5>script</h5>
        <Prism language="javascript">
          {{ demoScriptCode }}
        </Prism>
      </div>
    </div>
  </div>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'
import Prism from 'vue-prism-component'

export default {
  name: 'DemoCustomStyleMinMax',
  components: {
    VueSlideBar,
    Prism
  },
  data () {
    return {
      value: 8,
      slider: {
        lineHeight: 10,
        processStyle: {
          backgroundColor: 'red'
        }
      },
      demoTemplateCode: `
        <h2>Custom Style & Min-Max</h2>
        <VueSlideBar
          v-model="value"
          :min="1"
          :max="10"
          :processStyle="slider.processStyle"
          :lineHeight="slider.lineHeight"
          :tooltipStyles="{ backgroundColor: 'red', borderColor: 'red' }"
          class="demo-demo">
        </VueSlideBar>
        <div>
          <h4>Value: {{value}}</h4>
        </div>
      `,
      demoScriptCode: `
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
      `
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
</style>
