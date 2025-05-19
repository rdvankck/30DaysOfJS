# Day 1: JavaScript Drum Kit

## JavaScript Concepts Explained

This project demonstrates several important JavaScript concepts:

### Event Listeners
- `window.addEventListener('keydown', playSound)`: Listens for keyboard events
- The event object contains information about which key was pressed

### DOM Manipulation
- `document.querySelector()`: Selects elements from the DOM
- `element.classList.add()` and `element.classList.remove()`: Dynamically changes **CSS** classes
- `document.querySelectorAll()`: Selects multiple elements at once

### Audio Manipulation
- `audio.currentTime = 0`: Resets audio playback position
- `audio.play()`: Programmatically plays audio elements

### Timing and Transitions
- `setTimeout()`: Executes code after a specified delay
- Works with **CSS** transitions to create visual effects

### Data Attributes
- Custom `data-*` attributes store information on HTML elements
- Accessed via JavaScript using `element.getAttribute('data-key')` or `element.dataset.key`

## How to Use
1. Open the HTML file in your browser
2. Press the keys shown on screen (A, S, D, F, G, H, J, K, L)
3. Each key triggers a different drum sound with visual feedback

## What I've Built

A virtual drum kit that plays sounds when you press the corresponding keys on your keyboard. The buttons animate when pressed, giving visual feedback to the user.

## How It Works

- Press the keys A, S, D, F, G, H, J, K, or L to play different drum sounds
- Each key press triggers a sound and a brief animation
- The project uses pure JavaScript without any libraries or frameworks

## Technologies Used

- HTML5
- CSS3
- Vanilla JavaScript (ES6)

## Features

- Keyboard event listeners
- Audio playback
- CSS transitions and animations
- DOM manipulation

## Key Concepts Learned

- Key events in JavaScript
- Playing audio with JavaScript
- CSS transitions
- Working with data attributes
- Event listeners and callback functions 
