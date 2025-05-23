# Day 9: Dev Tools Domination

## JavaScript Console Methods Explained

This exercise demonstrates various console methods and debugging techniques in JavaScript:

### Basic Console Methods
- `console.log()`: The standard way to output information to the console
- `console.warn()`: Displays a warning message with a yellow warning icon
- `console.error()`: Shows an error message with a red error icon
- `console.info()`: Provides informational messages, similar to log but with an info icon
- `console.assert()`: Tests if a condition is true, and only logs if the assertion fails

### Styling Console Output
- String substitution with `%s`: Replace placeholders in strings
- Styled console output with `%c`: Apply CSS styling to console messages

### DOM Inspection
- `console.dir()`: Displays an interactive list of properties of a specified JavaScript object
- Logging DOM elements: Shows the element as it appears in the Elements panel

### Organizational Methods
- `console.group()` and `console.groupEnd()`: Groups related log messages together
- `console.groupCollapsed()`: Creates a collapsed group that can be expanded
- `console.table()`: Displays tabular data as a table with columns and rows

### Performance and Debugging
- `console.count()`: Counts the number of times a specific log has been called
- `console.time()` and `console.timeEnd()`: Tracks how long an operation takes
- `console.clear()`: Clears the console

## How to Use
1. Open index.html in your browser
2. Open the browser's developer tools (F12 or right-click > Inspect)
3. Go to the Console tab to see the various console outputs
4. Click on the "×BREAK×DOWN×" text to trigger the makeGreen() function 