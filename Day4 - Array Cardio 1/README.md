# Day 4: Array Cardio Day 1

## JavaScript Array Methods Practice

This exercise focuses on mastering fundamental array methods in JavaScript through practical examples:

### Array Methods Covered
- **Array.prototype.filter()**: Creates a new array with elements that pass a test
- **Array.prototype.map()**: Creates a new array by transforming every element
- **Array.prototype.sort()**: Sorts the elements of an array in place
- **Array.prototype.reduce()**: Reduces array to a single value by applying a function

### Practical Examples

#### 1. Filter Method
```javascript
// Filter the list of inventors for those who were born in the 1500's
const fifteen = inventors.filter(inventor => (inventor.year >= 1500 && inventor.year < 1600));
console.table(fifteen);
```
This example filters an array of inventors to only include those born in the 16th century.

#### 2. Map Method
```javascript
// Give us an array of the inventor first and last names
const fullNames = inventors.map(inventor => `${inventor.first} ${inventor.last}`);
console.log(fullNames);
```
This transforms an array of inventor objects into an array of full name strings.

#### 3. Sort Method
```javascript
// Sort the inventors by birthdate, oldest to youngest
const ordered = inventors.sort((a, b) => a.year > b.year ? 1 : -1);
console.table(ordered);
```
This sorts inventors chronologically by birth year using a comparison function.

#### 4. Reduce Method
```javascript
// How many years did all the inventors live?
const totalYears = inventors.reduce((total, inventor) => {
  return total + (inventor.passed - inventor.year);
}, 0);
console.log(totalYears);
```
This calculates the sum of all inventors' lifespans using an accumulator.

### Additional Challenges
- Sorting inventors by years lived
- Finding boulevards in Paris containing 'de' in the name (DOM manipulation)
- Sorting people alphabetically by last name
- Counting instances of items in an array using reduce

### JavaScript Techniques
- **Arrow Functions**: Using concise syntax for callback functions
- **Ternary Operators**: Simplifying conditional expressions
- **Template Literals**: Creating strings with embedded expressions
- **Destructuring Assignment**: Breaking apart arrays and objects
- **Console.table()**: Displaying data in tabular format

## How to Use
1. Open index.html in your browser
2. Open the browser's developer console (F12 or right-click > Inspect > Console)
3. Observe the results of each array method demonstration
4. Experiment by modifying the code to see different results

This exercise provides hands-on practice with essential array methods that are fundamental to modern JavaScript development. 