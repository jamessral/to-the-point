<script lang="ts">
	import Points from '$lib/Points.svelte';

	const options = ['1', '2', '3', '5', '8'];
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

<h1>Let's get <em>To the Point!</em></h1>

<section>
	<Points {options} />
</section>
