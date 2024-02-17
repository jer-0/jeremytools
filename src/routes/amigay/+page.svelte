<script>
	let video
	let audio

	let gaymode = false
  let checking = false

  let progressValue = 0

	function onBtnClick() {
    checking = true

    video.load()
    audio.load()

    function increment(){
      progressValue = progressValue % 360 + 1;

      if (progressValue >= 100) {
        clearInterval(interval)

        checking = false

        video.play()
        audio.play()

        gaymode = true

        const container = document.querySelector('.fireworks')
        const fireworks = new Fireworks.default(container)
        fireworks.start()

        setTimeout(() => {
          const canvas = document.querySelector('canvas')
          canvas.style = 'position: fixed;'
        }, 100)
      }
    }
    const interval = setInterval( increment, 80);
	}


</script>

<svelte:head>
  <title>Am I Gay Tester</title>
	<script src="https://cdn.jsdelivr.net/npm/fireworks-js@2.x/dist/index.umd.js"></script>
</svelte:head>

<div class="flex flex-col items-center justify-center text-center min-h-screen">
	<button class="btn btn-accent {gaymode || checking ? 'hidden' : ''}" on:click={onBtnClick}>Click here to find out if you are GAY</button>
  <div class="{!checking ? 'hidden' : ''}">
    <div class="radial-progress" style="--value:{progressValue}; --size:11rem; --thickness: 1.5rem;" role="progressbar">{progressValue}%</div>
    <p class="text-red-700">Watch The Camera, Analyzing...</p>
  </div>
</div>


<div class="fireworks flex flex-col items-center justify-center text-center min-h-screen {!gaymode ? 'hidden' : ''}">
	<div class="absolute flex flex-col items-center">
		
    <div class="content">
			<h2 class="text_shadows">CONGRATS</h2>
		</div>

    <video bind:this={video} src="/javed.mp4" loop class="max-w-[400px]">
			<track kind="captions"/>
		</video>
		<audio src="/meatspin.mp3" bind:this={audio} loop></audio>

		<div class="content">
			<h2 class="text_shadows">YOU IS GAY</h2>
		</div>
	</div>
</div>


<!-- <div class="fireworks"></div> -->

<style>
	.fireworks {
		position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    /* background: #000000; */
	}

	:root {
  --color-primary: #f6aca2;
  --color-secondary: #f49b90;
  --color-tertiary: #f28b7d;
  --color-quaternary: #f07a6a;
  --color-quinary: #ee6352;
  /*
  --color-primary: #5192ED;
  --color-secondary: #69A1F0;
  --color-tertiary: #7EAEF2;
  --color-quaternary: #90BAF5;
  --color-quinary: #A2C4F5;
  */
}

.content {
  display: flex;
  align-content: center;
  justify-content: center;
}

.text_shadows {
  text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  font-family: bungee, sans-serif;
  font-weight: 400;
  text-transform: uppercase;
  font-size: calc(2rem + 5vw);
  text-align: center;
  margin: 0;
  color: var(--color-primary);
  -webkit-animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;
          animation: shadows 1.2s ease-in infinite, move 1.2s ease-in infinite;
  letter-spacing: 0.4rem;
}

@-webkit-keyframes shadows {
  0% {
    text-shadow: none;
  }
  10% {
    text-shadow: 3px 3px 0 var(--color-secondary);
  }
  20% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);
  }
  30% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);
  }
  40% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  50% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  60% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  70% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);
  }
  80% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);
  }
  90% {
    text-shadow: 3px 3px 0 var(--color-secondary);
  }
  100% {
    text-shadow: none;
  }
}

@keyframes shadows {
  0% {
    text-shadow: none;
  }
  10% {
    text-shadow: 3px 3px 0 var(--color-secondary);
  }
  20% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);
  }
  30% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);
  }
  40% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  50% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  60% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary), 12px 12px 0 var(--color-quinary);
  }
  70% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary), 9px 9px var(--color-quaternary);
  }
  80% {
    text-shadow: 3px 3px 0 var(--color-secondary), 6px 6px 0 var(--color-tertiary);
  }
  90% {
    text-shadow: 3px 3px 0 var(--color-secondary);
  }
  100% {
    text-shadow: none;
  }
}
@-webkit-keyframes move {
  0% {
    transform: translate(0px, 0px);
  }
  40% {
    transform: translate(-12px, -12px);
  }
  50% {
    transform: translate(-12px, -12px);
  }
  60% {
    transform: translate(-12px, -12px);
  }
  100% {
    transform: translate(0px, 0px);
  }
}
@keyframes move {
  0% {
    transform: translate(0px, 0px);
  }
  40% {
    transform: translate(-12px, -12px);
  }
  50% {
    transform: translate(-12px, -12px);
  }
  60% {
    transform: translate(-12px, -12px);
  }
  100% {
    transform: translate(0px, 0px);
  }
}
</style>