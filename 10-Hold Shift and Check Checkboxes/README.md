# Day 10: Hold Shift and Check Checkboxes

## Bulk Checkbox Selection with Shift Key

This exercise demonstrates how to implement a common inbox feature: selecting multiple checkboxes at once by holding the Shift key:

### JavaScript Concepts Covered
- **Event Listeners**: Detecting click events on checkboxes
- **Keyboard Modifiers**: Checking for the Shift key (`e.shiftKey`)
- **State Tracking**: Remembering the last checked checkbox
- **DOM Traversal**: Iterating through a collection of checkboxes
- **Flag Variables**: Using boolean flags to track "in-between" state

### Key JavaScript Code

```javascript
const checkboxes = document.querySelectorAll('.inbox input[type="checkbox"]');
let lastChecked;

function handleCheck(e) {
  let inBetween = false;
  
  // Check if shift key is down AND checkbox is being checked
  if (e.shiftKey && this.checked) {
    // Loop through all checkboxes
    checkboxes.forEach(checkbox => {
      // When we reach either the current or last checked box, toggle the "inBetween" flag
      if (checkbox === this || checkbox === lastChecked) {
        inBetween = !inBetween;
      }
      
      // If we're in between the two selected checkboxes, check it
      if (inBetween) {
        checkbox.checked = true;
      }
    });
  }
  
  // Update the last checked checkbox
  lastChecked = this;
}

// Add event listener to all checkboxes
checkboxes.forEach(checkbox => checkbox.addEventListener('click', handleCheck));
```

### Algorithm Explanation
1. **Event Setup**: Listens for clicks on any checkbox
2. **Shift Detection**: Checks if the Shift key is pressed during the click
3. **Range Selection**: 
   - Uses a flag variable (`inBetween`) to mark checkboxes between the current and last selection
   - Toggles this flag when it encounters either the current or previously selected checkbox
   - Checks all checkboxes where the flag is true
4. **State Tracking**: Updates `lastChecked` to remember the most recently clicked checkbox

### CSS Features
- Styling for checked items (strikethrough and background color)
- Flex layout for checkbox items
- Smooth transitions for visual feedback

## How to Use
1. Open index.html in your browser
2. Click on a checkbox to select it
3. Hold down the Shift key and click another checkbox
4. All checkboxes between the two selections will be checked automatically

This project demonstrates how to implement a common user interface pattern found in email clients and task management applications, using pure JavaScript without any libraries. 