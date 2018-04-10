<template>
  <demo-base title="Loading" :template-code="demoTemplateCode" :script-code="demoScriptCode">
    <VueSlideBar
      slot="demo"
      v-model="loading"
      :showTooltip="false"
      :lineHeight="20"
      :isDisabled="true"/>
    <div slot="body">
      <h4>Loading: {{loading}}%</h4>
      <button type="button" name="button" class="btn btn-primary" @click="startLoad()">
        Click to start loading
      </button>
    </div>
  </demo-base>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'
import Prism from 'vue-prism-component'
import DemoBase from './Base'

export default {
  name: 'DemoLoading',
  components: {
    VueSlideBar,
    Prism,
    DemoBase
  },
  data () {
    return {
      loader: null,
      loading: 0,
      demoTemplateCode: `
        <h2>Loading</h2>
        <VueSlideBar
          v-model="loading"
          :showTooltip="false"
          :lineHeight="20"
          :isDisabled="true"
          class="demo-demo"/>
        <br>
        <div>
          <h4>Loading: {{loading}}%</h4>
          <button type="button" name="button" class="btn btn-primary" @click="startLoad()">
            Click to start loading
          </button>
        </div>
      `,
      demoScriptCode: `
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
              this.loader && clearInterval(this.loader)
              this.loading = 0
              this.loader = setInterval(() => {
                this.loading++
                if (this.loading === 100) {
                  clearInterval(this.loader)
                }
              }, 100)
            }
          }
        }
      `
    }
  },
  methods: {
    startLoad () {
      this.loader && clearInterval(this.loader)
      this.loading = 0
      this.loader = setInterval(() => {
        this.loading++
        if (this.loading === 100) {
          clearInterval(this.loader)
        }
      }, 100)
    }
  }
}
</script>

<style scoped></style>
