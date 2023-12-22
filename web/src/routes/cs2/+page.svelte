<script lang="ts">
  import { buttonVariants } from '$lib/components/ui/button';
  import { Map } from 'lucide-svelte';
</script>

<a href="/cs2/callouts" class={buttonVariants({ variant: 'outline' })}>
  <Map class="mr-2 h-4 w-4" />
  Map Callouts
</a>
