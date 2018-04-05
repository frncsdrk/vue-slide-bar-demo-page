<template>
  <div class="navbar">
    <section>
      <a href="https://github.com/biigpongsatorn/vue-slide-bar" class="navbar-brand" target="_blank">vue-slide-bar</a>
    </section>
    <section class="navbar-right">
      <!---->
    </section>
  </div>
</template>

<script>
export default {
  name: 'Navbar'
}
</script>

<style scoped>
.navbar {
  width: 100%;
  padding: 15px 0;
  background: #eee;
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
</style>
