<template>
  <demo-base title="Custom Style & Min-Max" :template-code="demoTemplateCode" :script-code="demoScriptCode">
    <VueSlideBar
      slot="demo"
      v-model="value"
      :min="1"
      :max="10"
      :processStyle="slider.processStyle"
      :lineHeight="slider.lineHeight"
      :tooltipStyles="{ backgroundColor: 'red', borderColor: 'red' }">
    </VueSlideBar>
    <div slot="body">
      <h4>Value: {{value}}</h4>
    </div>
  </demo-base>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'
import Prism from 'vue-prism-component'
import DemoBase from './Base'

export default {
  name: 'DemoCustomStyleMinMax',
  components: {
    VueSlideBar,
    Prism,
    DemoBase
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

<style scoped></style>
