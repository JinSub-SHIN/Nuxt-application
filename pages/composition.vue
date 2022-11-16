<template>
  <div>
    Name: {{ fullName }}
    <br />
    Message: {{ message }}
  </div>
</template>

<script lang="ts">
import { defineComponent, computed, ref } from '@vue/composition-api'

interface User {
  firstName: string
  lastName: string
}

export default defineComponent({
  setup() {
    const user: User = {
      firstName: 'Jin',
      lastName: 'Sub',
    }

    const fullName = computed(() => `${user.firstName} ${user.lastName}`)
    const message = ref('Compostion test')

    return {
      fullName,
      message,
    }
  },
})
</script>

<style lang="scss" scoped></style>
