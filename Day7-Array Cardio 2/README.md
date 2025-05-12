# Day 7: Array Cardio Day 2

This is the seventh project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I continue to strengthen my JavaScript array method skills by working with more advanced array methods. This is a console-based exercise that demonstrates the power and flexibility of JavaScript's built-in array methods.

## Key Features

- Practical examples of advanced array methods
- Console-based demonstrations
- Real-world use cases for array manipulation

## Key Code Examples

### Some and Every Methods
```javascript
// Array.prototype.some() - Is at least one person 19 or older?
const isAdult = people.some(person => {
  const currentYear = (new Date()).getFullYear();
  return currentYear - person.year >= 19;
});

// Array.prototype.every() - Is everyone 19 or older?
const allAdults = people.every(person => {
  const currentYear = (new Date()).getFullYear();
  return currentYear - person.year >= 19;
});
```

1. `some()`: Checks if at least one element in the array satisfies a condition.
2. `every()`: Verifies if all elements in the array satisfy a condition.
3. Both methods use arrow functions with a calculation to determine age.
4. Both return boolean values (true/false) based on the condition.

### Find and FindIndex Methods
```javascript
// Array.prototype.find() - Find the comment with ID 823423
const comment = comments.find(comment => comment.id === 823423);

// Array.prototype.findIndex() - Find the index of the comment with ID 823423
const index = comments.findIndex(comment => comment.id === 823423);
```

1. `find()`: Returns the first element that matches the condition.
2. `findIndex()`: Returns the index of the first element that matches the condition.
3. Both use arrow functions with a simple equality check.
4. `find()` returns the actual element, while `findIndex()` returns just the position.

### Immutable Array Updates with Slice
```javascript
// Delete a comment without mutating the original array
const newComments = [
  ...comments.slice(0, index),
  ...comments.slice(index + 1)
];
```

1. `slice(0, index)`: Creates a new array with elements from index 0 up to (but not including) the target index.
2. `slice(index + 1)`: Creates another array with elements from just after the target index to the end.
3. Spread operator (`...`): Unwraps both arrays into individual elements.
4. Square brackets (`[]`): Combines all elements into a new array.
5. This technique effectively "removes" an element without modifying the original array.
6. Unlike `splice()` which mutates the original array, this approach is immutable.

## Array Methods Covered

- `Array.prototype.some()` - Checks if at least one element passes a test
- `Array.prototype.every()` - Checks if all elements pass a test
- `Array.prototype.find()` - Returns the first element that passes a test
- `Array.prototype.findIndex()` - Returns the index of the first element that passes a test
- `Array.prototype.slice()` - Returns a shallow copy of a portion of an array
- Spread operator (`...`) - Expands arrays into individual elements

## What I Learned

- How to use `some()` to check if at least one item in an array meets a condition
- Using `every()` to verify if all items in an array meet a condition
- Finding specific items with `find()` instead of filtering and taking the first result
- Using `findIndex()` to locate the position of an item in an array
- Creating new arrays without mutating the original using spread syntax and `slice()`
- Implementing immutable data patterns in JavaScript

## How to Use

1. Open the HTML file in a web browser
2. Open the browser's JavaScript console (F12 or right-click > Inspect > Console)
3. See the results of the array operations in the console
4. Experiment by modifying the code and observing the results 