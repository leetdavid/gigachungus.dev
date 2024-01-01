<script lang="ts">
  import '../app.pcss';
  import { ModeWatcher } from 'mode-watcher';
  import Header from '$components/Header.svelte';
  import * as Command from '$components/ui/command';
  import Container from '$components/Container.svelte';
  import { onMount } from 'svelte';
  let open = false;
  let loading = false;

  onMount(() => {
    function handleKeydown(e: KeyboardEvent) {
      if (e.key === 'k' && (e.metaKey || e.ctrlKey)) {
        e.preventDefault();
        open = !open;
      }
    }

    document.addEventListener('keydown', handleKeydown);

    return () => {
      document.removeEventListener('keydown', handleKeydown);
    };
  });

  import { Menu } from 'lucide-svelte';
  import { goto } from '$app/navigation';
</script>

<ModeWatcher />
<Header />
<Container>
  <slot />
</Container>

<Command.Dialog bind:open>
  <Command.Input placeholder="Type a command or search..." />
  <Command.List>
    {#if loading}
      <Command.Loading>Loading...</Command.Loading>
    {/if}

    <Command.Empty>No results found.</Command.Empty>

    <Command.Group heading="Counter-Strike 2 Stuff">
      <Command.Item
        onSelect={(value) => {
          goto(`/cs2/${value}`);
          open = false;
        }}
      >
        <Menu class="mr-2 h-4 w-4" />
        <span>Callouts</span>
      </Command.Item>
    </Command.Group>
  </Command.List>
</Command.Dialog>
