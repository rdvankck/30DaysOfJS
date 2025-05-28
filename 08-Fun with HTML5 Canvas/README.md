# Day 8: Fun with HTML5 Canvas

## Interactive Drawing with HTML5 Canvas API

This exercise demonstrates how to create an interactive drawing application using the HTML5 Canvas API:

### Canvas Features
- **Dynamic Canvas Sizing**: Canvas automatically fills the browser window
- **Color Changing**: Drawing line color cycles through the HSL color spectrum
- **Line Width Animation**: Line thickness grows and shrinks as you draw
- **Smooth Lines**: Round line caps and joins for a natural drawing feel

## Detailed JavaScript Explanation

### 1. Canvas Setup and Configuration

```javascript
const canvas = document.querySelector('#draw');
const ctx = canvas.getContext('2d');
canvas.width = window.innerWidth;
canvas.height = window.innerHeight;
ctx.strokeStyle = '#BADA55';
ctx.lineJoin = 'round';
ctx.lineCap = 'round';
ctx.lineWidth = 100;
// ctx.globalCompositeOperation = 'multiply';
```

This section:
1. Selects the canvas element from the DOM using `querySelector`
2. Gets the 2D drawing context which provides methods for drawing
3. Sets canvas dimensions to fill the entire window 
4. Configures initial line style properties:
   - `strokeStyle`: Initial color (a light green hex value)
   - `lineJoin`: How line segments connect (round corners)
   - `lineCap`: How line ends appear (rounded)
   - `lineWidth`: Initial thickness of the line (100px)
5. Has a commented-out `globalCompositeOperation` which would change how drawn elements blend together

### 2. Drawing State Variables

```javascript
let isDrawing = false;
let lastX = 0;
let lastY = 0;
let hue = 0;
let direction = true;
```

These variables track the drawing state:
1. `isDrawing`: Boolean flag that determines if drawing should occur
2. `lastX`, `lastY`: Coordinates of the previous mouse position (for line drawing)
3. `hue`: Numeric value (0-359) representing the current color in HSL color model
4. `direction`: Boolean flag to control whether line width is increasing or decreasing

### 3. Drawing Function

```javascript
function draw(e) {
  if (!isDrawing) return; // stop the fn from running when they are not moused down
  console.log(e);
  ctx.strokeStyle = `hsl(${hue}, 100%, 50%)`;
  ctx.beginPath();
  // start from
  ctx.moveTo(lastX, lastY);
  // go to
  ctx.lineTo(e.offsetX, e.offsetY);
  ctx.stroke();
  [lastX, lastY] = [e.offsetX, e.offsetY];

  hue++;
  if (hue >= 360) {
    hue = 0;
  }
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

This core function:
1. Exits early if `isDrawing` is false (not currently drawing)
2. Sets the stroke color using HSL format, keeping saturation and lightness constant
3. Begins a new path for drawing
4. Sets the starting point to the previous mouse position
5. Sets the end point to the current mouse position
6. Executes the stroke command to actually draw the line
7. Updates the last position using ES6 destructuring assignment
8. Increments the hue value and resets it if it exceeds 360
9. Toggles the `direction` flag if line width reaches its min (1px) or max (100px) value
10. Increments or decrements the line width based on the `direction` flag

### 4. Event Listeners

```javascript
canvas.addEventListener('mousedown', (e) => {
  isDrawing = true;
  [lastX, lastY] = [e.offsetX, e.offsetY];
});

canvas.addEventListener('mousemove', draw);
canvas.addEventListener('mouseup', () => isDrawing = false);
canvas.addEventListener('mouseout', () => isDrawing = false);
```

This section sets up the event handling:
1. `mousedown`: When mouse button is pressed:
   - Sets `isDrawing` to true to enable drawing
   - Captures the initial position where drawing will start
2. `mousemove`: Calls the `draw` function whenever the mouse moves
3. `mouseup`: Stops drawing when the mouse button is released
4. `mouseout`: Stops drawing when the mouse leaves the canvas

## Key JavaScript Concepts Demonstrated

1. **Canvas API**: Using built-in methods like `beginPath()`, `moveTo()`, `lineTo()`, and `stroke()`
2. **Event Handling**: Listening for mouse events to create an interactive experience
3. **Dynamic Color Management**: Using HSL color space to easily cycle through colors
4. **State Management**: Tracking drawing state with variables
5. **ES6 Features**: Using destructuring assignment for cleaner coordinate updates
6. **Conditional Logic**: Implementing direction changes and limiting values within ranges
7. **DOM Manipulation**: Dynamically setting canvas properties based on window size

## How to Use
1. Open index.html in your browser
2. Click and hold the mouse button to start drawing
3. Move the mouse to draw colorful lines
4. Release the mouse button to stop drawing

This project showcases the power of the HTML5 Canvas API for creating interactive graphics and demonstrates how to handle mouse events for drawing applications. 