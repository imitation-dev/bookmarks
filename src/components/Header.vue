<script setup lang="ts">
import { toggleDark } from '~/composables'
const { t } = useI18n()
</script>

<template>
  <header class="text-xl h-bg border-b border-gray-200 dark:border-gray-200/20">
    <nav class="flex justify-between items-center container mx-auto h-56px">
      <router-link class="flex items-center mx-2" to="/" title="首页">
        <SvgIcon class="w-40px h-40px" name="logo" />
        Bookmarks
      </router-link>

      <div class="flex items-center">
        <button class="icon-btn mx-2 !outline-none" :title="t('button.toggle_dark')" @click="toggleDark()">
          <div i="carbon-sun dark:carbon-moon" />
        </button>

        <a class="icon-btn mx-2" rel="noreferrer" title="GitHub" href="https://github.com/imitation-dev/bookmarks" target="_blank">
          <div i-carbon-logo-github />
        </a>
      </div>
    </nav>
  </header>
</template>
