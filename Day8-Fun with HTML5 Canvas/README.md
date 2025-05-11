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
This code initializes the canvas drawing environment. First, we select the canvas element from the DOM using `querySelector`. Then, we obtain a 2D rendering context (`ctx`), which provides the methods and properties needed for drawing. Setting the canvas width and height to match the window dimensions ensures our drawing area covers the entire screen, creating an immersive drawing experience.

### Line Styling
```javascript
ctx.strokeStyle = '#BADA55';  // Initial color
ctx.lineJoin = 'round';       // Rounded corners
ctx.lineCap = 'round';        // Rounded line ends
ctx.lineWidth = 100;          // Initial line thickness
```
These properties define the visual characteristics of our drawn lines. The `strokeStyle` sets the initial color (a light green). `lineJoin` determines how line segments connect - 'round' creates smooth connections instead of sharp angles. `lineCap` controls how line endpoints appear - 'round' gives soft, rounded endings rather than flat edges. The `lineWidth` property sets the initial thickness of our lines in pixels. These styling choices combine to create fluid, organic-looking lines that enhance the drawing experience.

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
This function is the heart of our drawing application. It runs whenever the mouse moves while drawing is active. 

First, it checks if we're in drawing mode - if not, it exits immediately. Then it sets the line color using HSL (Hue, Saturation, Lightness) color model, which makes creating rainbow effects simple by just incrementing the hue value.

The actual drawing happens through these steps:
1. `beginPath()` starts a new drawing path
2. `moveTo()` positions our "pen" at the last recorded position
3. `lineTo()` creates a line to the current mouse position
4. `stroke()` actually renders the line on the canvas

After drawing, we update the last position using destructuring assignment for cleaner code.

The color cycling happens by incrementing the hue value (0-359) and resetting it when it completes a full cycle. 

The line width dynamically changes between 1 and 100 pixels by incrementing or decrementing based on the direction flag. When it reaches either limit, we flip the direction, creating a pulsing effect that adds visual interest to the drawing.

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
These event listeners create a responsive drawing interface by tracking mouse interactions:

1. `mousedown`: When the user presses the mouse button, we set `isDrawing` to true, enabling the drawing mode. We also capture the initial position as our starting point using ES6 destructuring assignment.

2. `mousemove`: As the mouse moves, we call our `draw` function, but it only draws if `isDrawing` is true (meaning the mouse button is pressed).

3. `mouseup`: When the user releases the mouse button, we set `isDrawing` to false, stopping the drawing action.

4. `mouseout`: If the mouse leaves the canvas area, we also stop drawing to prevent unexpected lines when the user returns to the canvas.

This combination creates an intuitive drawing experience that mimics traditional drawing tools - you draw only while holding down the mouse button, and can release to reposition without drawing.

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