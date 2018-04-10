<template>
  <demo-base title="With Label" :template-code="demoTemplateCode" :script-code="demoScriptCode">
    <VueSlideBar
        slot="demo"
        v-model="slider.value"
        :data="slider.data"
        :range="slider.range"
        :labelStyles="{ color: '#1066FD', backgroundColor: '#4a4a4a' }"
        :processStyle="{ backgroundColor: '#d8d8d8' }"
        @callbackRange="callbackRange">
      <template slot="tooltip" slot-scope="tooltip">
        <img src="images/rectangle-slider.svg">
      </template>
    </VueSlideBar>
    <div slot="body">
      <h4>Value: {{slider.value}}</h4>
      <h4>Label: {{rangeValue.label}}</h4>
    </div>
  </demo-base>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'
import Prism from 'vue-prism-component'
import DemoBase from './Base'

export default {
  name: 'WithLabel',
  components: {
    VueSlideBar,
    Prism,
    DemoBase
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

<style scoped></style>
