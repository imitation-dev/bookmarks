<script setup lang="ts">
import { toggleDark } from '~/composables'
const { t, availableLocales, locale } = useI18n()

const toggleLocales = () => {
  const locales = availableLocales
  locale.value = locales[(locales.indexOf(locale.value) + 1) % locales.length]
}

const localeIcon = computed(() => {
  return locale.value === 'en'
})
</script>

<template>
  <header class="border-b h-bg border-gray-200 text-xl dark:border-gray-200/20">
    <nav class="container flex mx-auto h-56px justify-between items-center">
      <router-link class="flex mx-2 items-center" to="/" title="首页">
        <SvgIcon class="h-40px w-40px" name="logo" />
        Bookmarks
      </router-link>

      <div class="flex items-center">
        <button class="mx-2 icon-btn !outline-none" :title="t('button.toggle_dark')" @click="toggleDark()">
          <div i="carbon-sun dark:carbon-moon" />
        </button>
        <button class="mx-2 icon-btn !outline-none" :title="t('button.toggle_langs')" @click="toggleLocales">
          <div v-show="localeIcon" i="clarity-language-solid" />
          <div v-show="!localeIcon" i="clarity-language-line" />
        </button>

        <a class="mx-2 icon-btn" rel="noreferrer" title="GitHub" href="https://github.com/imitation-dev/bookmarks" target="_blank">
          <div i-carbon-logo-github />
        </a>
      </div>
    </nav>
  </header>
</template>
