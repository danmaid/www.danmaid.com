<template>
  <div class="outer">
    <div v-if="avatar" class="avatar">
      {{ kanji }}
      <div v-if="okurigana" class="okurigana">{{ okurigana }}</div>
    </div>

    <slot></slot>
    <svg>
      <path d="M60, 10 L110, 110 10, 110" stroke="#1600fc" />
    </svg>
  </div>
</template>

<script lang="ts">
import Vue, { PropType } from 'vue'

export default Vue.extend({
  name: 'BasicFrame',
  props: {
    avatar: { type: String as PropType<string | undefined> },
  },
  computed: {
    kanji(): string | undefined {
      return this.avatar?.slice(0, 1)
    },
    okurigana(): string | undefined {
      return this.avatar?.slice(1)
    },
  },
})
</script>

<style scoped>
.outer {
  position: relative;
  background-color: rgba(71, 98, 184, 0.02);
  overflow: hidden;
  padding: 40px;
  border: 1px solid;
  margin: 4px;
  aspect-ratio: 2 / 1;
  /* display: flex; */
}

.avatar {
  /* border: 1px solid; */
  border-radius: 50%;
  position: absolute;
  top: 0;
  left: 0;
  height: 80px;
  width: 80px;
  background-color: rgba(71, 98, 184, 1);
  aspect-ratio: 1 / 1;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 50px;
}

.okurigana {
  position: absolute;
  top: 30px;
  left: 70px;
  font-size: 25px;
  white-space: nowrap;
  background-color: rgba(71, 98, 184, 1);
  display: flex;
  align-items: baseline;
  /* border-top: 1px solid; */
  /* border-right: 1px solid; */
  /* border-bottom: 1px solid; */
}
</style>