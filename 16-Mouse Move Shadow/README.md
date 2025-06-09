# Mouse Move Shadow

This project is a web application that dynamically changes text shadows based on mouse movements. It provides an interactive experience using JavaScript's DOM manipulation and mouse events.

## Project Features

- Dynamic text shadows based on mouse movement
- Multi-colored shadow effects
- Shadow distances calculated based on mouse position
- Editable text content (contenteditable)

## JavaScript Features

### Event Listeners
```javascript
hero.addEventListener('mousemove', shadow);
```

### DOM Manipulation
```javascript
const hero = document.querySelector('.hero');
const text = hero.querySelector('h1');
```

### Mouse Position Calculations
```javascript
// Get mouse position
let { offsetX: x, offsetY: y } = e;

// Calculate correct position for nested elements
if (this !== e.target) {
  x = x + e.target.offsetLeft;
  y = y + e.target.offsetTop;
}
```

### Shadow Effects
```javascript
// Calculate shadow distance
const xWalk = Math.round((x / width * walk) - (walk / 2));
const yWalk = Math.round((y / height * walk) - (walk / 2));

// Create multi-colored shadows
text.style.textShadow = `
  ${xWalk}px ${yWalk}px 0 rgba(255,0,255,0.7),
  ${xWalk * -1}px ${yWalk}px 0 rgba(0,255,255,0.7),
  ${yWalk}px ${xWalk * -1}px 0 rgba(0,255,0,0.7),
  ${yWalk * -1}px ${xWalk}px 0 rgba(0,0,255,0.7)
`;
```

## Concepts Learned

1. **Mouse Events**: Using `mousemove` event and capturing mouse position
2. **Destructuring**: Getting object properties through destructuring in JavaScript
3. **offsetX/offsetY**: Determining mouse position within an element
4. **textShadow**: Dynamically changing CSS text-shadow property with JavaScript
5. **Math.round()**: Rounding decimal numbers
6. **Template Literals**: Creating multi-line strings

## Applications

This technique can be used for interactive headings, banners, or text elements you want to emphasize on websites. Such effects enhance the user experience and make your page more engaging.

---

This project is part of the [JavaScript30](https://javascript30.com/) tutorial series created by [Wes Bos](https://twitter.com/wesbos). 