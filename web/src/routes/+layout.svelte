<script lang="ts">
  import { ModeWatcher } from 'mode-watcher';
  import Header from '$lib/components/Header.svelte';
  import Container from '$lib/components/Container.svelte';
  import '../app.pcss';
</script>

<ModeWatcher />
<Header />
<Container>
  <slot />
</Container>
