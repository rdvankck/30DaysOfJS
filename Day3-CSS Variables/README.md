# Day 3: CSS Variables with JS

This is the third project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I built an interactive image editor that allows users to adjust an image's spacing, blur effect, and base color using range sliders and a color picker. The project demonstrates how CSS variables can be manipulated with JavaScript to create real-time visual effects.

## Key Features

- Real-time adjustment of image spacing/padding
- Dynamic blur effect control
- Color picker for changing the highlight color
- Responsive controls using range sliders
- Immediate visual feedback

## Key Code Examples

### CSS Variables Definition
```css
:root {
  --base: #ffc600;
  --spacing: 10px;
  --blur: 10px;
}
```

1. `:root`: Targets the highest-level parent (equivalent to html selector).
2. `--base`: Custom property for the highlight color.
3. `--spacing`: Custom property for image padding.
4. `--blur`: Custom property for the blur filter amount.
5. CSS variables can be updated by JavaScript, unlike traditional CSS values.

### CSS Variables Usage
```css
img {
  padding: var(--spacing);
  background: var(--base);
  filter: blur(var(--blur));
}

.hl {
  color: var(--base);
}
```

1. `var(--spacing)`: References the spacing CSS variable for image padding.
2. `var(--base)`: Uses the base color variable for both the image background and highlighted text.
3. `filter: blur()`: Applies a blur effect using the blur variable value.
4. Variables are reused in multiple places, creating consistent styling.

### JavaScript Input Selection
```javascript
const inputs = document.querySelectorAll('.controls input');

inputs.forEach(input => {
  input.addEventListener('change', handleUpdate);
  input.addEventListener('mousemove', handleUpdate);
});
```

1. `querySelectorAll()`: Selects all input elements within the controls class.
2. `forEach`: Loops through each input to attach event listeners.
3. Event listeners for both 'change' and 'mousemove' events ensure responsive updates.
4. 'change' catches when the user releases the slider or picks a color.
5. 'mousemove' provides real-time updates as the user drags the slider.

### JavaScript CSS Variable Update Function
```javascript
function handleUpdate() {
  const suffix = this.dataset.sizing || '';
  document.documentElement.style.setProperty(`--${this.name}`, this.value + suffix);
}
```

1. `this.dataset.sizing`: Accesses the data-sizing attribute for units (px) when needed.
2. `||`: Provides a fallback empty string when no sizing unit is required (for color).
3. `document.documentElement`: Targets the :root element where the CSS variables are defined.
4. `style.setProperty()`: Updates the CSS variable value dynamically.
5. Template literals (`` ` ``): Create the variable name string by combining '--' with the input name.
6. `this.value + suffix`: Appends the appropriate unit (if any) to the input value.

## Technologies Used

- HTML5
- CSS3 (Custom Properties/Variables)
- Vanilla JavaScript
- ES6 Features (Arrow Functions, Template Literals)
- DOM Manipulation

## What I Learned

- How to define and use CSS variables (custom properties)
- Dynamically updating CSS variables with JavaScript
- Working with different input types (range and color)
- Using dataset attributes to store metadata on HTML elements
- Handling multiple events for smoother user experience
- The power of combining CSS and JavaScript for interactive interfaces

## How to Use

1. Open the HTML file in a web browser
2. Adjust the spacing slider to change the image padding
3. Move the blur slider to apply different levels of blur effect
4. Select a color with the color picker to change the highlight color
5. Notice how changes update in real-time as you interact with the controls 