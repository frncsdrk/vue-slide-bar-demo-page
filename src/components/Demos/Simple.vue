<template>
  <demo-base title="Simple" :template-code="demoTemplateCode" :script-code="demoScriptCode">
    <VueSlideBar v-model="value" slot="demo"/>
    <div slot="body">
      <h4>Value: {{ value }}</h4>
      <div class="btn-group">
        <button type="button" name="button" class="btn" @click="value--">
          -
        </button>
        <button type="button" name="button" class="btn" @click="value++">
          +
        </button>
      </div>
    </div>
  </demo-base>
</template>

<script>
import VueSlideBar from 'vue-slide-bar'
import Prism from 'vue-prism-component'
import DemoBase from './Base'

export default {
  name: 'Simple',
  components: {
    VueSlideBar,
    Prism,
    DemoBase
  },
  data () {
    return {
      value: 50,
      demoTemplateCode: `
        <h2>Simple</h2>
        <VueSlideBar v-model="value" class="demo-demo"/>
        <div>
          <h4>Value: {{ value }}</h4>
          <div class="btn-group">
            <button type="button" name="button" class="btn" @click="value--">
              -
            </button>
            <button type="button" name="button" class="btn" @click="value++">
              +
            </button>
          </div>
        </div>
      `,
      demoScriptCode: `
        import VueSlideBar from 'vue-slide-bar'

        export default {
          name: 'Simple',
          components: {
            VueSlideBar
          },
          data() {
            return {
              value: 50
            }
          }
        }
      `
    }
  }
}
</script>

<style scoped>
  .btn {
    padding: 0 2em;
    font-size: 24px;
  }
</style>
