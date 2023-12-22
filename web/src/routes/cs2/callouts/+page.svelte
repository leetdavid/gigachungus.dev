<script lang="ts">
  import * as Tabs from '$lib/components/ui/tabs';
  import * as Card from '$lib/components/ui/card';
  import { Button } from '$lib/components/ui/button';
  import { Input } from '$lib/components/ui/input';
  import { Label } from '$lib/components/ui/label';
</script>

<Tabs.Root value="mirage">
  <Tabs.List class="grid w-full grid-cols-7">
    <Tabs.Trigger value="ancient">Ancient</Tabs.Trigger>
    <Tabs.Trigger value="anubis">Anubis</Tabs.Trigger>
    <Tabs.Trigger value="inferno">Inferno</Tabs.Trigger>
    <Tabs.Trigger value="mirage">Mirage</Tabs.Trigger>
    <Tabs.Trigger value="nuke">Nuke</Tabs.Trigger>
    <Tabs.Trigger value="overpass">Overpass</Tabs.Trigger>
    <Tabs.Trigger value="vertigo">Vertigo</Tabs.Trigger>
  </Tabs.List>

  <!-- Ancient -->
  <Tabs.Content value="ancient">
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
  <Tabs.Content value="anubis">
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
  <Tabs.Content value="inferno">
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
  <Tabs.Content value="mirage">
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
  <Tabs.Content value="nuke">
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
  <Tabs.Content value="overpass">
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
  <Tabs.Content value="vertigo">
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

  <!-- <Tabs.Content value="account">
    <Card.Root>
      <Card.Header>
        <Card.Title>Account</Card.Title>
        <Card.Description>
          Make changes to your account here. Click save when you're done.
        </Card.Description>
      </Card.Header>
      <Card.Content class="space-y-2">
        <div class="space-y-1">
          <Label for="name">Name</Label>
          <Input id="name" value="Pedro Duarte" />
        </div>
        <div class="space-y-1">
          <Label for="username">Username</Label>
          <Input id="username" value="@peduarte" />
        </div>
      </Card.Content>
      <Card.Footer>
        <Button>Save changes</Button>
      </Card.Footer>
    </Card.Root>
  </Tabs.Content>
  <Tabs.Content value="password">
    <Card.Root>
      <Card.Header>
        <Card.Title>Password</Card.Title>
        <Card.Description>
          Change your password here. After saving, you'll be logged out.
        </Card.Description>
      </Card.Header>
      <Card.Content class="space-y-2">
        <div class="space-y-1">
          <Label for="current">Current password</Label>
          <Input id="current" type="password" />
        </div>
        <div class="space-y-1">
          <Label for="new">New password</Label>
          <Input id="new" type="password" />
        </div>
      </Card.Content>
      <Card.Footer>
        <Button>Save password</Button>
      </Card.Footer>
    </Card.Root>
  </Tabs.Content> -->
</Tabs.Root>
