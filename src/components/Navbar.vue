<template>
  <div>
    <header class="navbar">
      <section class="navbar-section">
        <a href="https://github.com/biigpongsatorn/vue-slide-bar" class="navbar-brand ml-2" target="_blank">vue-slide-bar</a>
      </section>
      <section class="navbar-section">
        <a href="https://github.com/biigpongsatorn/vue-slide-bar" class="btn btn-link mr-2" target="_blank">Github</a>
      </section>
    </header>
  </div>
</template>

<script>
export default {
  name: 'Navbar'
}
</script>

<style scoped>
  .navbar {
    padding: 1em 2em;
    box-shadow: 1px 1px 3px 0px #000;
  }
  /*
.navbar {
  width: 100%;
  padding: 15px 0;
  background: #eee;
  position: fixed;
  top: 0;
  z-index: 99;
}
.navbar > section {
    padding: 0 20px;
}
.navbar a {
    text-decoration: none;
}
.navbar a:hover {
    color: #fff;
}
.navbar a:visited {
    color: #000;
}
.navbar-brand {
    font-size: 20px;
    font-weight: bold;
}
*/
</style>
