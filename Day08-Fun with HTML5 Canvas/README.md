# Day 8: Fun with HTML5 Canvas

This is the eighth project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I built an interactive drawing application using HTML5 Canvas. The app allows users to draw on the screen with colorful, dynamic lines that change in thickness and color as you draw.

## Key Features

- Interactive drawing canvas that fills the entire browser window
- Rainbow color effect that cycles through the color spectrum as you draw
- Dynamic line thickness that increases and decreases as you draw
- Smooth, rounded line caps and joins for a polished look
- Mouse event handling for a responsive drawing experience

## Key Code Examples

### Canvas Setup
```javascript
const canvas = document.querySelector('#draw');
const ctx = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;
```

1. `querySelector('#draw')`: Selects the canvas element from the DOM.
2. `getContext('2d')`: Gets the 2D rendering context for drawing operations.
3. `canvas.width/height`: Sets canvas dimensions to match the window size.

### Line Styling
```javascript
ctx.strokeStyle = '#BADA55';  // Initial color
ctx.lineJoin = 'round';       // Rounded corners
ctx.lineCap = 'round';        // Rounded line ends
ctx.lineWidth = 100;          // Initial line thickness
```

1. `strokeStyle`: Sets the color of the drawn lines (starts with light green).
2. `lineJoin`: Controls how line segments connect (rounded for smooth corners).
3. `lineCap`: Defines the appearance of line endpoints (rounded for soft endings).
4. `lineWidth`: Determines the thickness of lines in pixels.

### Drawing Function
```javascript
function draw(e) {
  if (!isDrawing) return;
  ctx.strokeStyle = `hsl(${hue}, 100%, 50%)`;
  ctx.beginPath();
  ctx.moveTo(lastX, lastY);
  ctx.lineTo(e.offsetX, e.offsetY);
  ctx.stroke();
  [lastX, lastY] = [e.offsetX, e.offsetY];
  
  // Update color and line width
  hue++;
  if (hue >= 360) hue = 0;
  
  if (ctx.lineWidth >= 100 || ctx.lineWidth <= 1) {
    direction = !direction;
  }
  
  if(direction) {
    ctx.lineWidth++;
  } else {
    ctx.lineWidth--;
  }
}
```

1. `if (!isDrawing) return`: Prevents drawing when mouse button isn't pressed.
2. `strokeStyle = hsl(...)`: Sets line color using HSL color model for rainbow effect.
3. `beginPath()`, `moveTo()`, `lineTo()`, `stroke()`: Creates and renders line segments.
4. `[lastX, lastY] = [e.offsetX, e.offsetY]`: Updates position using destructuring.
5. `hue++`: Cycles through color spectrum (0-359).
6. `direction` toggle: Reverses line thickness change when reaching limits.
7. Line width adjustment: Increases or decreases based on direction flag.

### Event Listeners
```javascript
canvas.addEventListener('mousedown', (e) => {
  isDrawing = true;
  [lastX, lastY] = [e.offsetX, e.offsetY];
});
canvas.addEventListener('mousemove', draw);
canvas.addEventListener('mouseup', () => isDrawing = false);
canvas.addEventListener('mouseout', () => isDrawing = false);
```

1. `mousedown`: When the user presses the mouse button, we set `isDrawing` to true, enabling the drawing mode. We also capture the initial position as our starting point using ES6 destructuring assignment.

2. `mousemove`: As the mouse moves, we call our `draw` function, but it only draws if `isDrawing` is true (meaning the mouse button is pressed).

3. `mouseup`: When the user releases the mouse button, we set `isDrawing` to false, stopping the drawing action.

4. `mouseout`: If the mouse leaves the canvas area, we also stop drawing to prevent unexpected lines when the user returns to the canvas.

## Technologies Used

- HTML5
- CSS3
- Vanilla JavaScript
- HTML5 Canvas API
- HSL Color Model
- Mouse Event Handling

## What I Learned

- How to set up and use the HTML5 Canvas API
- Working with canvas context and drawing methods
- Implementing mouse event listeners for interactive applications
- Using HSL color model for dynamic color changes
- Creating dynamic line thickness effects
- Managing drawing state with JavaScript variables
- Optimizing canvas performance

## How to Use

1. Open the HTML file in a web browser
2. Click and hold the mouse button to start drawing
3. Move the mouse to draw colorful lines
4. Release the mouse button to stop drawing
5. Notice how the line thickness and color change as you draw
6. Enjoy creating your colorful masterpiece! 