# Day 5: Flex Panel Gallery

> **Note:** The original images have been updated with new ones to enhance the visual appeal and demonstrate the flexibility of the gallery system.

This is the fifth project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I built an interactive image gallery with expanding panels using CSS Flexbox and JavaScript. The panels expand when clicked and display additional text with smooth animations.

## Key Features

- Interactive panels that expand when clicked
- Smooth animations for panel expansion and text transitions
- Responsive design that works on different screen sizes
- Text elements that slide in from top and bottom
- Beautiful background images with overlay effects

## Key Code Examples

### Panel Item Transformations
```css
.panel > * {
  margin: 0;
  width: 100%;
  transition: transform 0.5s;
  flex: 1 0 auto;
  display: flex;
  justify-content: center;
  align-items: center;
}

.panel > *:first-child { transform: translateY(-100%); }
.panel.open-active > *:first-child { transform: translateY(0); }
.panel > *:last-child { transform: translateY(100%); }
.panel.open-active > *:last-child { transform: translateY(0); }
```

1. `.panel > *`: Targets all direct children of the panel (the text elements).
2. `flex: 1 0 auto`: Makes each text element take equal vertical space.
3. `transform: translateY(-100%)` and `translateY(100%)`: Positions the first and last text elements off-screen.
4. `.panel.open-active > *`: When panel has both classes, transforms reset to 0, sliding text into view.
5. `transition: transform 0.5s`: Creates smooth animation for the sliding text.

### Panel Expansion Styling
```css
.panel.open {
  flex: 5;
  font-size: 40px;
}
```

1. `flex: 5`: Makes the opened panel five times larger than non-opened panels.
2. `font-size: 40px`: Increases text size for better readability when panel is open.

### JavaScript Click Handler
```javascript
function toggleOpen() {
  this.classList.toggle('open');
}

panels.forEach(panel => panel.addEventListener('click', toggleOpen));
```

1. `querySelectorAll('.panel')`: Selects all panel elements.
2. `forEach`: Loops through each panel to attach an event listener.
3. `addEventListener('click', toggleOpen)`: Executes toggleOpen function when a panel is clicked.
4. `classList.toggle('open')`: Adds the 'open' class if not present, removes it if present.

### Transition End Handler
```javascript
function toggleActive(e) {
  if (e.propertyName.includes('flex')) {
    this.classList.toggle('open-active');
  }
}

panels.forEach(panel => panel.addEventListener('transitionend', toggleActive));
```

1. `addEventListener('transitionend', toggleActive)`: Executes when a CSS transition completes.
2. `e.propertyName.includes('flex')`: Checks if the completed transition was the flex property.
3. `classList.toggle('open-active')`: Adds/removes the 'open-active' class to trigger text animations.
4. This creates a sequence where panel expands first, then text slides in after expansion completes.

## Modified Version (index2.html)

### Single Panel Toggle Logic
```javascript
function toggleOpen() {
  // Close all panels first
  panels.forEach(panel => {
    panel.classList.remove('open');
    panel.classList.remove('open-active');
  });
  
  // Then open only the clicked panel
  this.classList.add('open');
}
```

1. `panels.forEach`: Iterates through all panels.
2. `classList.remove`: Removes both 'open' and 'open-active' classes from all panels.
3. `this.classList.add('open')`: Adds 'open' class only to the clicked panel.
4. This ensures only one panel can be open at a time, creating a more focused experience.

## Technologies Used
- HTML5
- CSS3 (Flexbox, Transitions, Transforms)
- Vanilla JavaScript
- Google Fonts

## What I Learned
- How to use CSS Flexbox for layout
- Creating nested flex containers (parent and children)
- Using CSS transitions with custom timing functions
- Implementing CSS transforms for element positioning
- Handling transitionend events in JavaScript
- Managing element states with classList methods
- Creating sequential animations with JavaScript and CSS

## How to Use
1. Open either `index.html` or `index2.html` in your browser
2. Click on any panel to make it expand
3. Notice how the text slides in from top and bottom
4. Experience the different behaviors:
   - `index.html`: Multiple panels can be open simultaneously
   - `index2.html`: Only one panel can be open at a time

## Credits
- Original project by Wes Bos
- Images from Unsplash
- Font: Amatic SC from Google Fonts 