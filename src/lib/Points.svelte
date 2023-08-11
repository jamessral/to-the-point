<script lang="ts">
	export let options: string[] = [];

	let selected = null;

	function handleSelect(option: string) {
		if (options.includes(option)) {
			selected = option;
		}
	}
</script>

{#each options as option}
	<button
		on:click|preventDefault={() => handleSelect(option)}
		class:outline={selected != option}
		class:contrast={selected === option}
	>
		{option}
	</button>
{/each}
