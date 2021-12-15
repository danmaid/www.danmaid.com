<template>
  <footer class="footer">&copy; 2021 男メイド</footer>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'AppFooter'
})
</script>

<style scoped>
.footer {
  border-top: 1px solid;
  display: flex;
  justify-content: flex-end;
  padding: 4px 8px;
  position: relative;
}
</style>
