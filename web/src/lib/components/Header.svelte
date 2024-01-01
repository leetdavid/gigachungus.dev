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
      name: 'Tools',
      href: '/tools',
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
      <div class="w-full flex-1 md:w-auto md:flex-none">
        <Button
          variant="ghost"
          class="focus-visible:ring-ring border-input hover:bg-accent hover:text-accent-foreground text-muted-foreground relative inline-flex h-9 w-full items-center justify-start whitespace-nowrap rounded-md border bg-transparent px-4 py-2 text-sm font-medium shadow-sm transition-colors focus-visible:outline-none focus-visible:ring-1 disabled:pointer-events-none disabled:opacity-50 sm:pr-12 md:w-40 lg:w-64"
          
          >
          <span class="hidden lg:inline-flex">Search the website...</span>
          <span class="inline-flex lg:hidden">Search...</span>
          <kbd
            class="bg-muted pointer-events-none absolute right-1.5 top-1.5 hidden h-5 select-none items-center gap-1 rounded border px-1.5 font-mono text-[10px] font-medium opacity-100 sm:flex"
          >
            <span class="text-xs">⌘</span>
            K
          </kbd>
        </Button>
      </div>
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
