<script lang="ts">
  import * as Command from '$components/ui/command';
  import { onMount } from 'svelte';
  import { goto } from '$app/navigation';
  import { Map } from 'lucide-svelte';

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

  function routeTo(href: string) {
    goto(href);
    open = false;
  }
</script>

<Command.Dialog bind:open>
  <Command.Input placeholder="Type a command or search..." />
  <Command.List>
    {#if loading}
      <Command.Loading>Loading...</Command.Loading>
    {/if}

    <Command.Empty>No results found.</Command.Empty>

    <Command.Group heading="Counter-Strike 2 Callouts">
      {#each ['Ancient', 'Anubis', 'Inferno', 'Mirage', 'Nuke', 'Overpass', 'Vertigo'] as map}
        <Command.Item
          onSelect={() => routeTo(`/cs2/callouts#${map.toLowerCase()}`)}
        >
          <Map class="mr-2 h-4 w-4" />
          <span>Map Callouts: {map}</span>
        </Command.Item>
      {/each}
      <!-- <Command.Item onSelect={() => routeTo('/cs2/callouts#ancient')}>
        <Menu class="mr-2 h-4 w-4" />
        <span>Callouts: Ancient</span>
      </Command.Item> -->
    </Command.Group>
  </Command.List>
</Command.Dialog>
