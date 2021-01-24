<template>
  <header class="header">
    <div>
      <router-link class="tab" to="/">男メイド</router-link>
      <router-link class="tab" to="/labo/">ラボ</router-link>
      <router-link class="tab" to="/cafe/">カフェ</router-link>
      <router-link class="tab" to="/company/">会社</router-link>
    </div>
    <div>
      <router-link class="tab" to="/roadmap/">ロードマップ</router-link>
      <router-link class="tab" to="/in-progress/">現況</router-link>
      <router-link class="tab" to="/history/">歴史</router-link>
    </div>
  </header>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  name: 'AppHeader'
})
</script>

<style scoped>
.header {
  border-bottom: 1px solid;
  height: 40px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.tab {
  text-decoration: none;
  color: inherit;
  padding: 2px 8px;
}
.tab.router-link-exact-active {
  padding-bottom: 1px;
  border-bottom: 1px solid;
}
</style>
