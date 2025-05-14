# Day 4: Array Cardio Day 1

This is the fourth project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I practiced various array methods in JavaScript by solving a series of challenges. This console-based exercise helped strengthen my understanding of common array operations like filter, map, sort, and reduce.

## Key Features

- Console-based exercise with practical examples
- Working with real data structures
- Practice with fundamental array methods
- Functional programming techniques
- ES6 syntax implementation

## Key Code Examples

### Array.prototype.filter()
```javascript
// Filter the list of inventors for those who were born in the 1500's
const fifteen = inventors.filter(inventor => (inventor.year >= 1500 && inventor.year < 1600));
```

1. `filter()`: Creates a new array with elements that pass a test.
2. Arrow function syntax provides a concise test condition.
3. Returns only inventors born between 1500-1599.
4. Original array remains unchanged (non-destructive).

### Array.prototype.map()
```javascript
// Give us an array of the inventor first and last names
const fullNames = inventors.map(inventor => `${inventor.first} ${inventor.last}`);
```

1. `map()`: Creates a new array with transformed elements.
2. Arrow function transforms each inventor object into a string.
3. Template literals (`${}`) provide clean string concatenation.
4. Returns an array of strings instead of objects.

### Array.prototype.sort()
```javascript
// Sort the inventors by birthdate, oldest to youngest
const ordered = inventors.sort((a, b) => a.year > b.year ? 1 : -1);
```

1. `sort()`: Rearranges array elements in a specific order.
2. Uses a comparison function with two parameters (a, b).
3. Ternary operator (`? :`) creates a compact comparison.
4. Return value (1 or -1) determines the sorting order.
5. This modifies the original array (destructive).

### Array.prototype.reduce()
```javascript
// How many years did all the inventors live?
const totalYears = inventors.reduce((total, inventor) => {
  return total + (inventor.passed - inventor.year);
}, 0);
```

1. `reduce()`: Accumulates values from array elements into a single result.
2. First parameter (`total`) is the accumulator that keeps track of the result.
3. Second parameter (`inventor`) is the current item being processed.
4. `0` initializes the accumulator as a number.
5. Calculates age at death for each inventor and adds to running total.

### Array Destructuring with Sort
```javascript
// Sort the people alphabetically by last name
const alpha = people.sort((lastOne, nextOne) => {
  const [aLast, aFirst] = lastOne.split(', ');
  const [bLast, bFirst] = nextOne.split(', ');
  return aLast > bLast ? 1 : -1;
});
```

1. `split(', ')`: Separates the "Last, First" formatted string into components.
2. Array destructuring (`[aLast, aFirst]`): Assigns the split parts to variables.
3. Comparison happens on last names for alphabetical sorting.
4. Demonstrates combining multiple array methods with ES6 features.

### Object Building with Reduce
```javascript
// Sum up the instances of each of these
const transportation = data.reduce(function(obj, item) {
  if (!obj[item]) {
    obj[item] = 0;
  }
  obj[item]++;
  return obj;
}, {});
```

1. `reduce()` with an object as the accumulator instead of a number.
2. `{}` initializes an empty object as the starting point.
3. Checks if an item already exists in the object before incrementing.
4. Builds a frequency counter of occurrences in the array.
5. Shows how reduce can be used for more than just summing numbers.

## Technologies Used

- Vanilla JavaScript
- ES6 Features (Arrow Functions, Template Literals, Destructuring)
- Chrome DevTools Console
- Array Methods (filter, map, sort, reduce)
- Functional Programming Concepts

## What I Learned

- How to transform data using array methods
- Using higher-order functions for cleaner code
- Working with more complex comparison functions
- Building advanced data structures with reduce
- Combining multiple array operations for complex tasks
- Writing more concise code with ES6 syntax

## How to Use

1. Open the HTML file in a web browser
2. Open the browser's JavaScript console (F12 or right-click > Inspect > Console)
3. See the results of the array operations displayed in the console
4. Try modifying the code to see how it affects the results 