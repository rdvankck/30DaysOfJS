# Day 1: JavaScript Drum Kit

## Interactive Drum Kit with Keyboard Events

This exercise demonstrates how to build an interactive drum kit that responds to keyboard inputs using vanilla JavaScript:

### JavaScript Concepts Covered
- **Event Listeners**: Using `keydown` events to detect when specific keys are pressed
- **Audio Manipulation**: Playing, stopping, and rewinding audio elements with JavaScript
- **DOM Selection**: Finding elements with query selectors
- **CSS Class Manipulation**: Adding and removing classes to trigger visual effects
- **Transition Events**: Detecting when CSS transitions end to remove styling

### Key JavaScript Functions

#### `playSound(e)` Function
```javascript
function playSound(e) {
  const audio = document.querySelector(`audio[data-key="${e.keyCode}"]`);
  const key = document.querySelector(`.key[data-key="${e.keyCode}"]`);
  if (!audio) return; // Stop the function if no matching audio element
  audio.currentTime = 0; // Rewind audio to start
  audio.play();
  key.classList.add('playing'); // Add visual effect
}
```

This function:
1. Finds the audio element that matches the pressed key
2. Finds the corresponding visual key element
3. Rewinds the audio to the beginning (allowing rapid repeated triggers)
4. Plays the sound
5. Adds a visual effect class

#### `removeTransition(e)` Function
```javascript
function removeTransition(e) {
  if (e.propertyName !== 'transform') return; // Only react to transform transitions
  this.classList.remove('playing'); // Remove visual effect
}
```

This function:
1. Listens for the end of CSS transitions
2. Removes the visual effect class when transitions complete

### Data Attributes
The project uses custom `data-key` attributes to connect keyboard keys (by keyCode) to:
- The corresponding audio samples
- The visual key elements that show feedback

## How to Use
1. Open index.html in your browser
2. Press any of the keys shown on screen (A, S, D, F, G, H, J, K, L)
3. Each key press will play a different drum sound with visual feedback
4. Try playing rhythms by pressing keys in sequence or simultaneously

This project demonstrates the power of combining JavaScript events, audio elements, and CSS transitions to create an interactive web application. 