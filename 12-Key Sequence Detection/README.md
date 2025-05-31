# Day 12: Key Sequence Detection

## Secret Code Detection with JavaScript

This project demonstrates how to implement a "Konami Code" style secret key sequence detection using vanilla JavaScript. When users type a specific sequence of keys, a special action is triggered.

### JavaScript Concepts Covered
- **Event Listeners**: Using `keyup` events to detect when keys are pressed
- **Array Methods**: Using push, splice, and join to manage a list of pressed keys
- **String Methods**: Using includes() to check if a sequence exists within a string
- **Callback Functions**: Using a function to respond to detected sequences
- **Array Manipulation**: Managing a fixed-length array to track recent keystrokes

### Key JavaScript Code

```javascript
const pressed = [];
const secretCode = "wesbos";

window.addEventListener("keyup", (e) => {
  console.log(e.key);
  pressed.push(e.key);
  pressed.splice(-secretCode.length - 1, pressed.length - secretCode.length);
  if (pressed.join("").includes(secretCode)) {
    console.log("DING DING!");
    cornify_add();
  }
  console.log(pressed);
});
```

### How the Code Works

1. **Setup**:
   - An empty array `pressed` stores the keys as they're typed
   - `secretCode` holds the sequence we're looking for ("wesbos" in this case)

2. **Key Tracking**:
   - The event listener watches for any key release (keyup)
   - Each pressed key is added to the `pressed` array
   - The `splice()` method keeps the array to a reasonable length by removing older entries
   
3. **Sequence Detection**:
   - The array is converted to a string with `join("")`
   - `includes()` checks if our secret code appears anywhere in that string
   - When detected, we trigger the cornify_add() function which adds unicorns and rainbows to the page

### The Splice Trick Explained

The line `pressed.splice(-secretCode.length - 1, pressed.length - secretCode.length)` is particularly clever:

- It maintains a "sliding window" of recently pressed keys
- Only keeps enough characters that could potentially contain the secret code
- Automatically drops older keystrokes without needing a fixed array size

## How to Use

1. Open index.html in your browser
2. Type the secret code "wesbos" on your keyboard
3. Watch unicorns and rainbows appear on the screen!
4. Try modifying the code to use your own secret sequence and custom actions

This project demonstrates the power of event-driven programming in JavaScript and how simple array manipulations can create interactive experiences. 