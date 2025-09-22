## JavaScript Functionality Explanation

The JavaScript code in the `index-FINISHED.html` file creates an interactive "follow along" link highlighter that dynamically highlights links when you hover over them. Here's a detailed explanation of each part:

### 1. **Selecting Link Elements**:
```javascript
const triggers = document.querySelectorAll('a');
```
- This line selects all anchor (`<a>`) elements on the page and stores them in a `NodeList` called `triggers`.
- These links will be the elements that trigger the highlight effect when hovered.

### 2. **Creating the Highlight Element**:
```javascript
const highlight = document.createElement('span');
highlight.classList.add('highlight');
document.body.appendChild(highlight);
```
- Creates a new `<span>` element dynamically using `document.createElement()`.
- Adds the CSS class "highlight" to this span element.
- Appends the highlight span to the document body, making it part of the DOM.

### 3. **The Highlight Function**:
```javascript
function highlightLink() {
  const linkCoords = this.getBoundingClientRect();
  console.log(linkCoords);
  const coords = {
    width: linkCoords.width,
    height: linkCoords.height,
    top: linkCoords.top + window.scrollY,
    left: linkCoords.left + window.scrollX
  };

  highlight.style.width = `${coords.width}px`;
  highlight.style.height = `${coords.height}px`;
  highlight.style.transform = `translate(${coords.left}px, ${coords.top}px)`;
}
```

#### Key Components:

**getBoundingClientRect()**:
- Returns the size and position of the element relative to the viewport.
- Returns an object with properties like `width`, `height`, `top`, `left`, `right`, and `bottom`.

**Coordinate Calculation**:
- `linkCoords.top + window.scrollY`: Adjusts the top position to account for page scrolling
- `linkCoords.left + window.scrollX`: Adjusts the left position to account for page scrolling
- This ensures the highlight works correctly even when the page is scrolled.

**Dynamic Styling**:
- Sets the width and height of the highlight span to match the link dimensions
- Uses CSS `transform: translate()` to position the highlight exactly over the hovered link
- Template literals (`${}`) are used to dynamically set the pixel values

### 4. **Event Listener Setup**:
```javascript
triggers.forEach(a => a.addEventListener('mouseenter', highlightLink));
```
- Iterates through all the link elements using `forEach()`
- Adds a `mouseenter` event listener to each link
- When the mouse enters a link, the `highlightLink()` function is called

### 5. **Key Concepts Demonstrated**:

**DOM Manipulation**:
- Creating elements dynamically with `document.createElement()`
- Adding CSS classes with `classList.add()`
- Appending elements to the DOM with `appendChild()`

**Event Handling**:
- Using `addEventListener()` to respond to user interactions
- The `mouseenter` event specifically (fires when mouse enters an element)

**CSS Transformations**:
- Using JavaScript to dynamically modify CSS properties
- Leveraging `transform: translate()` for smooth positioning

**Viewport vs Document Coordinates**:
- Understanding the difference between viewport-relative and document-relative positioning
- Accounting for scroll position with `window.scrollX` and `window.scrollY`

### Summary

The JavaScript code creates a smooth, interactive highlight effect that follows your mouse as you hover over links. It demonstrates advanced DOM manipulation, event handling, and coordinate calculations. The highlight span dynamically resizes and repositions itself to match whatever link you're hovering over, creating an engaging user interface effect that's commonly used in modern web design.
