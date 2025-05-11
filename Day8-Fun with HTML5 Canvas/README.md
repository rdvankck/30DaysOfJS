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
This initializes the canvas and sets its dimensions to fill the entire window.

### Line Styling
```javascript
ctx.strokeStyle = '#BADA55';  // Initial color
ctx.lineJoin = 'round';       // Rounded corners
ctx.lineCap = 'round';        // Rounded line ends
ctx.lineWidth = 100;          // Initial line thickness
```
These properties control the appearance of the lines we draw.

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
This function draws a line segment from the last position to the current mouse position, updates the color (hue), and adjusts the line width.

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
These event listeners track mouse movements and trigger drawing when appropriate.

### CSS for Full-screen Canvas
```css
html, body {
  margin: 0;
  padding: 0;
}

canvas {
  display: block;
  width: 100%;
  height: 100vh;
}
```
This CSS ensures the canvas fills the entire viewport for maximum drawing space.

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