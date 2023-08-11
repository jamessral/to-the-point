<script lang="ts">
	export let options: string[] = [];

	let selected: string | null = null;

	function handleSelect(option: string) {
		if (options.includes(option)) {
			selected = option;
		}
	}

	$: selectedText = `${selected} is the current choice`
</script>

{#each options as option}
	<button
		on:click|preventDefault={() => handleSelect(option)}
		class:outline={selected !== option}
		class:contrast={selected === option}
	>
		{option}
	</button>
{/each}

{#if selected}
	<p>{selectedText}</p>
{/if}