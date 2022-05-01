<script setup lang="ts">
useHead({
  title: 'Bookmarks',
  meta: [
    { name: 'description', content: 'Bookmarks for Frontend Developers.' },
  ],
  link: [
    { rel: 'shortcut icon', href: './favicon.ico', type: 'image/x-icon' },
    { rel: 'icon', href: './favicon.ico', type: 'image/svg+xml' },
  ],
})
</script>

<template>
  <router-view />
</template>
