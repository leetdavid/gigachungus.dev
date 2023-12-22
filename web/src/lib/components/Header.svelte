<script lang="ts">
  import * as DropdownMenu from '$lib/components/ui/dropdown-menu';
  import { Moon } from 'lucide-svelte';
  import Button from './ui/button/button.svelte';
  import { setMode } from 'mode-watcher';

  const menuItems: { name: string; href: string; external?: boolean }[] = [
    {
      name: 'Counter-Strike 2 Stuff',
      href: '/cs2',
    },
    {
      name: 'GitHub',
      href: 'https://github.com/leetdavid/gigachungus.dev',
      external: true,
    },
  ];
</script>

<header
  class="supports-[backdrop-filter]:bg-background/60 bg-background/95 sticky top-0 z-50 w-full border-b shadow-sm backdrop-blur"
>
  <div class="container flex h-14 items-center">
    <div class="mr-4 hidden md:flex">
      <a href="/" class="mr-6 flex items-center space-x-2">
        <span class="hidden text-[15px] font-bold sm:inline-block lg:text-base"
          >gigachungus.dev</span
        >
      </a>
      <nav class="flex items-center space-x-6 text-sm font-medium">
        {#each menuItems as item}
          <a
            href={item.href}
            class="hover:text-foreground/80 text-foreground/60 transition-colors"
            target={item.external ? '_blank' : undefined}>{item.name}</a
          >
        {/each}
      </nav>
    </div>
    <div
      class="flex flex-1 items-center justify-between space-x-2 sm:space-x-4 md:justify-end"
    >
      <nav class="flex items-center">
        <DropdownMenu.Root>
          <DropdownMenu.Trigger>
            <Button variant="ghost"><Moon /></Button>
          </DropdownMenu.Trigger>
          <DropdownMenu.Content>
            <DropdownMenu.Group>
              <DropdownMenu.Item on:click={() => setMode('light')}
                >Light</DropdownMenu.Item
              >
              <DropdownMenu.Item on:click={() => setMode('dark')}
                >Dark</DropdownMenu.Item
              >
              <DropdownMenu.Item on:click={() => setMode('system')}
                >System</DropdownMenu.Item
              >
            </DropdownMenu.Group>
          </DropdownMenu.Content>
        </DropdownMenu.Root>
      </nav>
    </div>
  </div>
</header>
