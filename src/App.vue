<template>
  <div class="cyber">
    <AppHeader></AppHeader>
    <main class="main">
      <router-view></router-view>
    </main>
    <AppFooter></AppFooter>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import AppHeader from '@/components/AppHeader.vue'
import AppFooter from '@/components/AppFooter.vue'

export default Vue.extend({
  components: { AppHeader, AppFooter }
})
</script>

<style>
:root {
  --color-fg: hsl(226, 44%, 80%);
  --color-bg: hsl(0, 0%, 10%);
  --color-fg-blur: hsl(226, 44%, 50%);
}
:root {
  background-color: var(--color-bg);
  color: var(--color-fg);
}
.cyber {
  filter: drop-shadow(0px 1px 1px var(--color-fg-blur))
    drop-shadow(1px 0px 1px var(--color-fg-blur))
    drop-shadow(0px -1px 1px var(--color-fg-blur))
    drop-shadow(-1px 0px 1px var(--color-fg-blur));
}
</style>
