<template>
  <div class="demo-container">
    <h2 class="demo-title">With Label</h2>
    <VueSlideBar
      v-model="slider.value"
      :data="slider.data"
      :range="slider.range"
      :labelStyles="{ color: '#1066FD', backgroundColor: '#4a4a4a' }"
      :processStyle="{ backgroundColor: '#d8d8d8' }"
      @callbackRange="callbackRange"
      class="demo-demo">
    <template slot="tooltip" slot-scope="tooltip">
      <img src="images/rectangle-slider.svg">
    </template>
    </VueSlideBar>
    <div class="demo-body">
      <h4>Value: {{slider.value}}</h4>
      <h4>Label: {{rangeValue.label}}</h4>
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
  name: 'WithLabel',
  components: {
    VueSlideBar,
    Prism
  },
  data () {
    return {
      rangeValue: {},
      slider: {
        value: 45,
        data: [
          15,
          30,
          45,
          60,
          75,
          90,
          120
        ],
        range: [
          {
            label: '15 mins'
          },
          {
            label: '30 mins',
            isHide: true
          },
          {
            label: '45 mins'
          },
          {
            label: '1 hr',
            isHide: true
          },
          {
            label: '1 hr 15 mins'
          },
          {
            label: '1 hr 30 mins',
            isHide: true
          },
          {
            label: '2 hrs'
          }
        ]
      },
      demoTemplateCode: `
        <h2>With Label</h2>
        <VueSlideBar
          v-model="slider.value"
          :data="slider.data"
          :range="slider.range"
          :labelStyles="{ color: '#1066FD', backgroundColor: '#4a4a4a' }"
          :processStyle="{ backgroundColor: '#d8d8d8' }"
          @callbackRange="callbackRange"
          class="demo-demo">
        <template slot="tooltip" slot-scope="tooltip">
          <img src="images/rectangle-slider.svg">
        </template>
        </VueSlideBar>
        <div>
          <h4>Value: {{slider.value}}</h4>
          <h4>Label: {{rangeValue.label}}</h4>
        </div>
      `,
      demoScriptCode: `
        import VueSlideBar from 'vue-slide-bar'

        export default {
          name: 'WithLabel',
          components: {
            VueSlideBar
          },
          data () {
            return {
              rangeValue: {},
              slider: {
                value: 45,
                data: [
                  15,
                  30,
                  45,
                  60,
                  75,
                  90,
                  120
                ],
                range: [
                  {
                    label: '15 mins'
                  },
                  {
                    label: '30 mins',
                    isHide: true
                  },
                  {
                    label: '45 mins'
                  },
                  {
                    label: '1 hr',
                    isHide: true
                  },
                  {
                    label: '1 hr 15 mins'
                  },
                  {
                    label: '1 hr 30 mins',
                    isHide: true
                  },
                  {
                    label: '2 hrs'
                  }
                ]
              }
          },
          methods: {
            callbackRange (val) {
              this.rangeValue = val
            }
          }
        }
      `
    }
  },
  methods: {
    callbackRange (val) {
      this.rangeValue = val
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
</style>
