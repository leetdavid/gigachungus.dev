<script lang="ts">
  import '../app.pcss';
  import { ModeWatcher } from 'mode-watcher';
  import Header from '$components/Header.svelte';
  import Container from '$components/Container.svelte';
  import CommandMenu from '$components/CommandMenu.svelte';
</script>

<ModeWatcher />
<Header />
<Container>
  <slot />
</Container>
<CommandMenu />
