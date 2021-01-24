<template>
  <header class="header">
    <div>
      <router-link tag="button" to="/">男メイド</router-link>
      <router-link tag="button" to="/labo/">ラボ</router-link>
      <router-link tag="button" to="/cafe/">カフェ</router-link>
      <router-link tag="button" to="/company/">会社</router-link>
    </div>
    <div>
      <router-link tag="button" to="/roadmap/">ロードマップ</router-link>
      <router-link tag="button" to="/in-progress/">現況</router-link>
      <router-link tag="button" to="/history/">歴史</router-link>
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
</style>
