<script lang="ts">
  import { onMount } from 'svelte';
  import { goto } from '$app/navigation';
  import Separator from '$components/ui/separator/separator.svelte';
  import { writable } from 'svelte/store';
  import { browser } from '$app/environment';

  enum State {
    ADD_ELEMENTS = 0,
    RANKING = 1,
    RESULTS = 2,
  }

  const state = writable<{
    currentState: State;
  }>({
    currentState: State.ADD_ELEMENTS,
  });

  if (browser) {
    state.subscribe((val) => {
      goto(`/tools/pairwise-ranker?s=${val.currentState}`, {
        replaceState: true,
      });
    });
  }

  // let state: State | undefined;

  // onMount(() => {
  //   const urlParams = new URLSearchParams(window.location.search);

  //   if (urlParams.has('s')) {
  //     try {
  //       const sVal = parseInt(urlParams.get('s')!);
  //       console.log(sVal);
  //       if (sVal >= 0 && sVal <= 2) state = sVal;
  //       else throw new Error('Invalid state');
  //     } catch (e) {
  //       console.error(e);
  //       goto(`/tools/pairwise-ranker`, {
  //         replaceState: true,
  //       });
  //     }
  //   } else {
  //     goto(`/tools/pairwise-ranker?s=0`, {
  //       replaceState: true,
  //     });
  //     state = State.ADD_ELEMENTS;
  //   }
  // });
</script>

{#if state !== undefined}
  State: {state}
{/if}

<Separator />

<span>{state}</span>
