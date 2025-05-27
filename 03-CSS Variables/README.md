# Day 3: CSS Variables with JavaScript

## Dynamic Styling with CSS Custom Properties

This exercise demonstrates how to use CSS Variables (Custom Properties) and update them in real-time with JavaScript:

### JavaScript Concepts Covered
- **DOM Event Listeners**: Responding to user input events (`change` and `mousemove`)
- **NodeList Iteration**: Using `forEach` to iterate over a collection of inputs
- **Dataset Properties**: Accessing data attributes with the dataset API
- **CSS Variable Manipulation**: Dynamically updating CSS custom properties
- **Event Handling**: Handling different input types (range sliders and color pickers)

### Key JavaScript Code

```javascript
const inputs = document.querySelectorAll('.controls input');

function handleUpdate() {
  const suffix = this.dataset.sizing || '';
  document.documentElement.style.setProperty(`--${this.name}`, this.value + suffix);
}

inputs.forEach(input => input.addEventListener('change', handleUpdate));
inputs.forEach(input => input.addEventListener('mousemove', handleUpdate));
```

#### How It Works:
1. Selects all input elements within the controls container
2. Defines a function `handleUpdate` that:
   - Gets the suffix (like 'px') from the data-sizing attribute if it exists
   - Updates the corresponding CSS variable using the input's name attribute
   - Appends the suffix to the value when needed
3. Attaches event listeners for both:
   - `change` events (when input value is confirmed)
   - `mousemove` events (for real-time updates while dragging sliders)

### CSS Variables Implementation
```css
:root {
  --base: #ffc600;
  --spacing: 10px;
  --blur: 10px;
}

img {
  padding: var(--spacing);
  background: var(--base);
  filter: blur(var(--blur));
}

.hl {
  color: var(--base);
}
```

### User Controls
- **Spacing**: Adjusts the padding around the image
- **Blur**: Controls the blur filter applied to the image
- **Base Color**: Changes the background color and highlighted text

## How to Use
1. Open index.html in your browser
2. Move the sliders to adjust the spacing and blur amount
3. Use the color picker to change the base color
4. Watch as the image updates in real-time with your adjustments

This project demonstrates the power of CSS Variables combined with JavaScript for creating dynamic, interactive styling controls. 