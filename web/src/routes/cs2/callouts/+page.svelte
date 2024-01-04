<script lang="ts">
  import * as Tabs from '$lib/components/ui/tabs';
  import * as Card from '$lib/components/ui/card';
  import { browser } from '$app/environment';
  import { page } from '$app/stores';
  import { goto } from '$app/navigation';
  import { onMount } from 'svelte';
  import { writable } from 'svelte/store';

  // let mapValue: string;

  let mapValueStore = writable<string>('');

  const validMapNames: string[] = [
    '#ancient',
    '#anubis',
    '#inferno',
    '#mirage',
    '#nuke',
    '#overpass',
    '#vertigo',
  ];

  onMount(() => {
    if (!browser) {
      console.log("What are you doing here? You're not supposed to be here!");
      return;
    }

    if (!window.location.hash) {
      // Default when no hash is present, go to Mirage
      goto('#mirage');
    }

    if (window.location.hash && validMapNames.includes(window.location.hash)) {
      mapValueStore.set(window.location.hash);
    }
  });

  mapValueStore.subscribe((value) => {
    if (browser) {
      if (validMapNames.includes(value)) {
        goto(value);
      } else {
        goto('#mirage');
      }
    }
  });

  page.subscribe((value) => {
    const hash = value.url.hash;
    if (hash) mapValueStore.set(hash);
  });
</script>

<Tabs.Root bind:value={$mapValueStore}>
  <Tabs.List class="grid w-full grid-cols-7">
    <Tabs.Trigger value="#ancient">Ancient</Tabs.Trigger>
    <Tabs.Trigger value="#anubis">Anubis</Tabs.Trigger>
    <Tabs.Trigger value="#inferno">Inferno</Tabs.Trigger>
    <Tabs.Trigger value="#mirage">Mirage</Tabs.Trigger>
    <Tabs.Trigger value="#nuke">Nuke</Tabs.Trigger>
    <Tabs.Trigger value="#overpass">Overpass</Tabs.Trigger>
    <Tabs.Trigger value="#vertigo">Vertigo</Tabs.Trigger>
  </Tabs.List>

  <!-- Ancient -->
  <Tabs.Content value="#ancient">
    <Card.Root>
      <Card.Header>
        <Card.Title>Ancient</Card.Title>
        <Card.Description>
          Ancient is a bomb defusal map set in an Aztec archaeological site.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/ancient.png" alt="Ancient" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Anubis -->
  <Tabs.Content value="#anubis">
    <Card.Root>
      <Card.Header>
        <Card.Title>Anubis</Card.Title>
        <Card.Description>
          Anubis is a bomb defusal map set in what is assumed to be in Egypt.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/anubis.png" alt="Anubis" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Inferno -->
  <Tabs.Content value="#inferno">
    <Card.Root>
      <Card.Header>
        <Card.Title>Inferno</Card.Title>
        <Card.Description>
          Inferno is a bomb defusal map set in a small Italian? Californian?
          town.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/inferno.png" alt="Inferno" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Mirage -->
  <Tabs.Content value="#mirage">
    <Card.Root>
      <Card.Header>
        <Card.Title>Mirage</Card.Title>
        <Card.Description>
          Mirage is a bomb defusal map set in a Middle Eastern town.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/mirage.png" alt="Mirage" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Nuke -->
  <Tabs.Content value="#nuke">
    <Card.Root>
      <Card.Header>
        <Card.Title>Nuke</Card.Title>
        <Card.Description>
          Nuke is a bomb defusal map set in a nuclear power plant.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/nuke.png" alt="Nuke" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Overpass -->
  <Tabs.Content value="#overpass">
    <Card.Root>
      <Card.Header>
        <Card.Title>Overpass</Card.Title>
        <Card.Description>
          Overpass is a bomb defusal map set in a public park.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/overpass.png" alt="Overpass" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>

  <!-- Vertigo -->
  <Tabs.Content value="#vertigo">
    <Card.Root>
      <Card.Header>
        <Card.Title>Vertigo</Card.Title>
        <Card.Description>
          Vertigo is a bomb defusal map set in a skyscraper under construction.
        </Card.Description>
      </Card.Header>
      <Card.Content>
        <img src="/cs2/callouts/vertigo.png" alt="Vertigo" />
      </Card.Content>
    </Card.Root>
  </Tabs.Content>
</Tabs.Root>
