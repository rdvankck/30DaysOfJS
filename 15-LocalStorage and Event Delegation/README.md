# LocalStorage and Event Delegation

In this project, we learn how to persistently store data using the browser's LocalStorage API and how to manage dynamically created elements with the Event Delegation technique.

## Topics Covered

### LocalStorage API

LocalStorage is a Web API used to persistently store user data in web browsers.

- **Storing Data**: `localStorage.setItem(key, value)`
- **Retrieving Data**: `localStorage.getItem(key)`
- **Removing Data**: `localStorage.removeItem(key)`
- **Clearing All Data**: `localStorage.clear()`

LocalStorage can only store string values. Therefore, objects or arrays need to be converted to JSON format:

```javascript
// Storing objects or arrays
localStorage.setItem('items', JSON.stringify(items));

// Retrieving objects or arrays
const items = JSON.parse(localStorage.getItem('items')) || [];
```

### Event Delegation

Event Delegation is an effective way to manage event listeners for dynamically created or modified elements.

- Basic concept: Event listeners are attached to a common parent element rather than to each individual element
- Events "bubble up" through the DOM tree
- We can determine which child element triggered the event by checking the event target

```javascript
// Event delegation example
parentElement.addEventListener('click', function(event) {
  if (event.target.matches('selector')) {
    // Perform action
  }
});
```

## Techniques Used in the Project

1. **Handling Form Submission**:
   - Listening for the `submit` event
   - Preventing default behavior with `preventDefault()`
   - Capturing and storing form data

2. **Creating Dynamic Lists**:
   - Using `map()` and `join()` to generate HTML
   - Creating templates with template literals

3. **Updating Checkbox Status**:
   - Capturing checkbox clicks with event delegation
   - Using `data-*` attributes
   - Updating data in LocalStorage

4. **Data Persistence with LocalStorage**:
   - Preserving data even when the page is refreshed
   - Storing and retrieving objects in JSON format

## Practical Applications

These techniques can be used in many scenarios such as storing user preferences, temporarily saving form data, and creating web applications with dynamic content. 