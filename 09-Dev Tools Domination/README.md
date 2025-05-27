# Day 9: Dev Tools Domination

## JavaScript Console Methods Explained

This exercise demonstrates various console methods and debugging techniques in JavaScript:

### Basic Console Methods
```javascript
// Regular console logging
console.log('hello');

// Interpolated strings
console.log('Hello I am a %s string!', 'Sh**t');

// Styled console output
console.log('%c I am some great text', 'font-size:50px; background:red; text-shadow: 10px 10px 0 blue');

// Warning message
console.warn('OH NOOO');

// Error message
console.error('oh Sh**t!');

// Information message
console.info('Crocodiles eat 3-4 people per year :)');
```

### Testing and Assertions
```javascript
// Testing assertions (only logs when assertion fails)
console.assert(p.classList.contains('ouch'), 'That is wrong!');
```

### DOM Inspection
```javascript
// Viewing DOM Elements
console.log(p); // Shows element as it appears in Elements panel
console.dir(p); // Shows JavaScript object properties
```

### Organizational Methods
```javascript
// Grouping console messages
console.groupCollapsed(`${dog.name}`); // Creates a collapsible group
console.log(`This is ${dog.name}`);
console.log(`${dog.name} is ${dog.age} years old`);
console.log(`${dog.name} is ${dog.age * 7} dog years old`);
console.groupEnd(`${dog.name}`); // Ends the group

// Displaying tabular data
console.table(dogs); // Shows array data in table format
```

### Performance and Counting
```javascript
// Counting occurrences
console.count('Wes'); // Increments counter for 'Wes' each time it's called

// Timing operations
console.time('fetching data'); // Starts a timer
fetch('https://api.github.com/users/wesbos')
  .then(data => data.json())
  .then(data => {
    console.timeEnd('fetching data'); // Ends timer and shows elapsed time
    console.log(data);
  });
```

### Other Utilities
```javascript
// Clearing the console
console.clear();
```

## Key Concepts
- **String Substitution**: Using `%s` as placeholders in console messages
- **Styled Console**: Adding CSS to console output with `%c`
- **Performance Measurement**: Using `time()` and `timeEnd()` to measure execution time
- **Structured Data**: Using `table()` to display complex data more clearly
- **Conditional Logging**: Using `assert()` for conditional debugging

## How to Use
1. Open index.html in your browser
2. Open the browser's developer tools (F12 or right-click > Inspect)
3. Go to the Console tab to see the various console outputs
4. Click on the "×BREAK×DOWN×" text to trigger the makeGreen() function

This exercise provides a comprehensive overview of console methods that can significantly improve your debugging workflow. 