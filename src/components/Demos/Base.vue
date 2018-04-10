<template>
  <div class="demo-container">
    <h2 class="demo-title">{{ title }}</h2>
    <div class="demo-demo">
        <slot name="demo"/>
    </div>
    <div class="demo-body">
        <slot name="body"/>
    </div>
    <div class="demo-code">
      <button class="btn show-code-btn" @click="showCode = !showCode">
        {{ showCode ? 'Hide' : 'Show' }} Code
        <i :class="'icon ' + (showCode ? 'icon-arrow-up' : 'icon-arrow-down')"></i>
      </button>
      <transition name="fade">
        <div v-if="showCode" class="columns">
          <div class="column col-6 col-md-12">
            <h5>template</h5>
            <Prism language="html">
              {{ templateCode }}
            </Prism>
          </div>
          <div class="column col-6 col-md-12">
            <h5>script</h5>
            <Prism language="javascript">
              {{ scriptCode }}
            </Prism>
          </div>
        </div>
      </transition>
    </div>
  </div>
</template>

<script>
import Prism from 'vue-prism-component'
export default {
  name: 'Base',
  components: {
    Prism
  },
  props: ['title', 'templateCode', 'scriptCode'],
  data: function () {
    return {
      showCode: false
    }
  }
}
</script>

<style scoped>
  @import './../../assets/demo.css';
  .show-code-btn {
    margin: 0 0 1em 0;
  }
  .fade-enter-active, .fade-leave-active {
    transition: opacity .5s;
  }
  .fade-enter, .fade-leave-to {
    opacity: 0;
  }
</style>
