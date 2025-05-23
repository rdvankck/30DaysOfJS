# Day 6: Type Ahead

This is the sixth project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Overview

In this project, I built a search feature that shows real-time suggestions as you type. The application searches through a dataset of cities and states in the USA, displaying matching results with population data.

## Key Features

- Real-time search filtering as you type
- Highlighting of matching search terms
- Display of population data with proper formatting
- Stylish UI with subtle animations
- Fetching data from an external JSON API

## Key Code Examples

### Fetching Data with the Fetch API
```javascript
const endpoint = 'https://gist.githubusercontent.com/Miserlou/c5cd8364bf9b2420bb29/raw/2bf258763cdddd704f8ffd3ea9a3e81d25e2c6f6/cities.json';
const cities = [];

fetch(endpoint)
  .then(blob => blob.json())
  .then(data => cities.push(...data));
```

1. `fetch(endpoint)`: Makes an HTTP request to the specified URL and returns a Promise.
2. `.then(blob => blob.json())`: Converts the response to JSON format.
3. `.then(data => cities.push(...data))`: Uses the spread operator to add all items from the data array into the cities array.
4. This approach loads city data asynchronously without blocking the UI.

### Finding Matches with RegExp
```javascript
function findMatches(wordToMatch, cities) {
  return cities.filter(place => {
    const regex = new RegExp(wordToMatch, 'gi');
    return place.city.match(regex) || place.state.match(regex);
  });
}
```

1. `filter()`: Creates a new array with all elements that pass the test.
2. `new RegExp(wordToMatch, 'gi')`: Creates a regular expression object from the search term:
   - `g` flag: Global match (find all matches rather than stopping after the first)
   - `i` flag: Case-insensitive matching
3. `match(regex)`: Tests if the city or state name contains the search term.
4. The function returns an array of all cities/states that match the search criteria.

### Formatting Numbers with RegExp
```javascript
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}
```

1. `toString()`: Converts the number to a string so we can use string methods.
2. `replace()`: Uses a regular expression to add commas at appropriate places:
   - `/\B(?=(\d{3})+(?!\d))/g`: A complex regex that finds positions between digits where commas should go.
   - `\B`: Matches positions that are not word boundaries.
   - `(?=(\d{3})+(?!\d))`: A positive lookahead that matches positions followed by groups of 3 digits at the end.
3. This creates properly formatted numbers like "1,234,567" from "1234567".

### Displaying and Highlighting Results
```javascript
function displayMatches() {
  const matchArray = findMatches(this.value, cities);
  const html = matchArray.map(place => {
    const regex = new RegExp(this.value, 'gi');
    const cityName = place.city.replace(regex, `<span class="hl">${this.value}</span>`);
    const stateName = place.state.replace(regex, `<span class="hl">${this.value}</span>`);
    return `
      <li>
        <span class="name">${cityName}, ${stateName}</span>
        <span class="population">${numberWithCommas(place.population)}</span>
      </li>
    `;
  }).join('');
  suggestions.innerHTML = html;
}
```

1. `findMatches(this.value, cities)`: Gets the array of matching places based on the current input value.
2. `map()`: Transforms each matching place into an HTML list item.
3. `new RegExp(this.value, 'gi')`: Creates the same regex used for finding, but now for highlighting.
4. `replace(regex, ...)`: Replaces matched text with the same text wrapped in a highlight span.
5. Template literals (`` ` ``): Create HTML strings with embedded expressions for cleaner code.
6. `join('')`: Combines all list items into a single HTML string.
7. `suggestions.innerHTML`: Updates the DOM with the new list of matches.

### Event Listeners
```javascript
const searchInput = document.querySelector('.search');
const suggestions = document.querySelector('.suggestions');

searchInput.addEventListener('change', displayMatches);
searchInput.addEventListener('keyup', displayMatches);
```

1. `querySelector()`: Selects DOM elements using CSS selectors.
2. Two event listeners handle different user interactions:
   - `change`: Fires when the input loses focus after content changes.
   - `keyup`: Fires immediately after each keystroke, enabling real-time filtering.
3. Both events call the same `displayMatches` function to update results.

## Technologies Used

- HTML5
- CSS3 (Transforms, Transitions)
- Vanilla JavaScript
- Fetch API
- Regular Expressions
- ES6 Features (Arrow Functions, Template Literals, Spread Operator)

## What I Learned

- How to use `fetch()` to get data from an external API
- Working with Promises in JavaScript
- Using Regular Expressions for flexible text matching
- Building filter functionality with Array methods
- Creating highlighted search results
- Formatting numbers with commas using Regex
- Handling keyup events for real-time updates
- Creating a responsive UI with CSS transforms

## How to Use

1. Type any city or state name in the search box
2. See results update in real-time as you type
3. Results show matching cities/states with their populations
4. Search terms are highlighted in yellow 