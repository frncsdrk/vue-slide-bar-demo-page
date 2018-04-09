<template>
  <div class="demo-container">
    <h2 class="demo-title">Loading</h2>
    <VueSlideBar
      v-model="loading"
      :showTooltip="false"
      :lineHeight="20"
      :isDisabled="true"
      class="demo-demo"/>
    <br>
    <div class="demo-body">
      <h4>Loading: {{loading}}%</h4>
      <button type="button" name="button" class="btn btn-primary" @click="startLoad()">
        Click to start loading
      </button>
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
  name: 'DemoLoading',
  components: {
    VueSlideBar,
    Prism
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

<style scoped>
  @import './../../assets/demo.css';
</style>
