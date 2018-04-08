<template>
  <div class="footer-container">
    <div class="container">
      <div class="columns">
        <div class="column col-sm-12 col-md-6 col-lg-2">
          <ul class="menu footer-menu">
            <li>
              <a href="https://github.com/biigpongsatorn/vue-slide-bar">vue-slide-bar</a> is maintained by <a href="https://github.com/biigpongsatorn">@biigpongsatorn</a>
            </li>
            <li>
              <a href="https://github.com/frncsdrk/vue-slide-bar-demo-page">Edit this page</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style scoped>
  .footer-container {
    width: 100%;
    padding: 3em 2em;
    background: #eee;
  }
  .footer-menu {
    background: transparent;
    box-shadow: none;
  }
</style>
