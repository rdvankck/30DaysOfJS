# Day 2: JavaScript Clock

## Analog Clock with CSS and JavaScript

This exercise demonstrates how to create a functioning analog clock using CSS transforms and JavaScript's Date object:

### JavaScript Concepts Covered
- **Date Object**: Using JavaScript's built-in Date object to get current time
- **DOM Manipulation**: Selecting and modifying DOM elements
- **CSS Transform**: Dynamically changing CSS transform properties
- **Interval Timing**: Using `setInterval()` to update the clock every second
- **Mathematical Calculations**: Converting time values to degrees for rotation

### Key JavaScript Functions

#### `setDate()` Function
```javascript
function setDate() {
  const now = new Date();

  // Handle seconds
  const seconds = now.getSeconds();
  const secondsDegrees = ((seconds / 60) * 360) + 90;
  secondHand.style.transform = `rotate(${secondsDegrees}deg)`;

  // Handle minutes
  const mins = now.getMinutes();
  const minsDegrees = ((mins / 60) * 360) + ((seconds/60)*6) + 90;
  minsHand.style.transform = `rotate(${minsDegrees}deg)`;

  // Handle hours
  const hour = now.getHours();
  const hourDegrees = ((hour / 12) * 360) + ((mins/60)*30) + 90;
  hourHand.style.transform = `rotate(${hourDegrees}deg)`;
}
```

This function:
1. Gets the current date and time
2. Calculates the appropriate rotation for each clock hand:
   - Second hand: Completes a full rotation every 60 seconds
   - Minute hand: Completes a full rotation every 60 minutes, with small increments based on seconds
   - Hour hand: Completes a full rotation every 12 hours, with small increments based on minutes

### CSS Techniques
- **Transform Origin**: Setting `transform-origin: 100%` to rotate hands from the right end
- **Transition Timing**: Using cubic-bezier for a realistic "tick" effect
- **Box Shadows**: Creating depth and dimension for the clock face
- **Absolute Positioning**: Positioning the hands in the center of the clock

### Mathematical Logic
- The hands are initially pointing at 9 o'clock (90 degrees offset)
- For seconds and minutes: (value / 60) * 360 + 90
- For hours: (hour / 12) * 360 + (minutes contribution) + 90
- Additional calculations ensure smooth movement rather than jumping

## How to Use
1. Open index.html in your browser
2. The clock will automatically display the current time
3. Watch as the second, minute, and hour hands move in real-time

This project demonstrates how to combine CSS transforms with JavaScript timing functions to create a realistic analog clock interface. 