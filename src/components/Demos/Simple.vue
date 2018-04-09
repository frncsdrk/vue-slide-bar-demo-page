<template>
  <div class="demo-container">
    <h2 class="demo-title">Simple</h2>
    <VueSlideBar v-model="value" class="demo-demo"/>
    <div class="demo-body">
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
  name: 'Simple',
  components: {
    VueSlideBar,
    Prism
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
  @import './../../assets/demo.css';
  .btn {
    padding: 0 2em;
    font-size: 24px;
  }
</style>
