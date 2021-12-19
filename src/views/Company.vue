<template>
  <div class="company">
    <h1>This is an company page</h1>
    <h2>ドメイン</h2>
    <button @click="getRDAP">情報取得</button>
    <button @click="rdap = undefined">クリア</button>
    <p>{{ rdap }}</p>
    <h2>DNS</h2>
    <button @click="getDNS">情報取得</button>
    <button @click="dns = undefined">クリア</button>
    <p>{{ dns }}</p>
    <h2>メール</h2>
    <button @click="getMX">情報取得</button>
    <button @click="mx = undefined">クリア</button>
    <p>{{ mx }}</p>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data() {
    return {
      rdap: undefined as unknown,
      dns: undefined as unknown,
      mx: undefined as unknown
    }
  },
  methods: {
    async getRDAP() {
      const res = await fetch('https://rdap.verisign.com/com/v1/domain/danmaid.com')
      this.rdap = await res.json()
    },
    async getDNS() {
      const res = await fetch('https://dns.google/resolve?name=danmaid.com&type=NS')
      this.dns = await res.json()
    },
    async getMX() {
      const res = await fetch('https://dns.google/resolve?name=danmaid.com&type=MX')
      this.mx = await res.json()
    }
  }
})
</script>