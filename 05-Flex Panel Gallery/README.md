# Day 5: Flex Panel Gallery

## Interactive Flex Panels with CSS and JavaScript

This exercise demonstrates how to create an interactive gallery using CSS Flexbox and JavaScript:

### CSS Features
- **Flexbox Layout**: Using `display: flex` for both the container and the panels
- **Nested Flexbox**: Panels themselves are flex containers with flex items
- **CSS Transitions**: Smooth animations when panels expand and text slides in
- **Transform Properties**: Using `translateY` to create sliding effects for text

### JavaScript Features
- **Event Listeners**: Detecting click and transition events
- **Class Toggling**: Adding and removing classes to trigger CSS transitions
- **Property Detection**: Using `transitionend` event to detect when animations complete

### How It Works
1. The page displays 5 panels side by side using flexbox
2. When a panel is clicked, it expands using the `flex: 5` property
3. Text elements slide in from top and bottom using CSS transforms
4. JavaScript listens for the `transitionend` event to add additional classes

## How to Use
1. Open index.html in your browser
2. Click on any panel to see it expand
3. The top and bottom text will slide in
4. Click again to return to the original state

This project demonstrates the power of combining CSS transitions with JavaScript event handling to create engaging user interfaces. 