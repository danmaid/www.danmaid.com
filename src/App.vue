<template>
  <div class="cyber">
    <AppHeader class="underline"></AppHeader>
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
  components: { AppHeader, AppFooter },
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
.underline {
  position: relative;
  background-color: rgba(71, 98, 184, 0.02);
  overflow: hidden;
  /* animation: fade-in 0.3s linear forwards; */
}
.underline::after {
  content: '';
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 1px;
  border-bottom: 1px solid;
  /* animation: underline 0.3s linear forwards; */
}

@keyframes underline {
  from {
    width: 0;
  }
  to {
    width: 100%;
  }
}

@keyframes fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
</style>
