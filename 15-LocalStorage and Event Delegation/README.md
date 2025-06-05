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

## JavaScript Code Explanation

### Initializing the Application

```javascript
const addItems = document.querySelector('.add-items');
const itemsList = document.querySelector('.plates');
const items = JSON.parse(localStorage.getItem('items')) || [];
```

This code:
- Selects the form element with class `.add-items`
- Selects the list element with class `.plates`
- Retrieves previously stored items from LocalStorage or initializes an empty array

### Adding New Items

```javascript
function addItem(e) {
  e.preventDefault();
  const text = (this.querySelector('[name=item]')).value;
  const item = {
    text,
    done: false
  };

  items.push(item);
  populateList(items, itemsList);
  localStorage.setItem('items', JSON.stringify(items));
  this.reset();
}
```

This function:
- Prevents the default form submission behavior
- Gets the text from the input field
- Creates a new item object with the text and a `done` property set to false
- Adds the item to the items array
- Updates the displayed list
- Saves the updated items array to LocalStorage
- Resets the form

### Displaying Items

```javascript
function populateList(plates = [], platesList) {
  platesList.innerHTML = plates.map((plate, i) => {
    return `
      <li>
        <input type="checkbox" data-index=${i} id="item${i}" ${plate.done ? 'checked' : ''} />
        <label for="item${i}">${plate.text}</label>
      </li>
    `;
  }).join('');
}
```

This function:
- Takes an array of items and a DOM element to populate
- Uses array.map() to create HTML for each item
- Creates a checkbox for each item, with its checked state based on the item's `done` property
- Creates a label with the item's text
- Uses join('') to convert the array of HTML strings into a single string
- Sets the innerHTML of the list element

### Toggling Item Status

```javascript
function toggleDone(e) {
  if (!e.target.matches('input')) return; // skip this unless it's an input
  const el = e.target;
  const index = el.dataset.index;
  items[index].done = !items[index].done;
  localStorage.setItem('items', JSON.stringify(items));
  populateList(items, itemsList);
}
```

This function:
- Checks if the clicked element is an input (checkbox)
- Gets the index of the clicked item from the data-index attribute
- Toggles the done status of the corresponding item
- Updates the items in LocalStorage
- Re-renders the list to reflect the changes

### Setting Up Event Listeners

```javascript
addItems.addEventListener('submit', addItem);
itemsList.addEventListener('click', toggleDone);
populateList(items, itemsList);
```

This code:
- Adds a submit event listener to the form
- Uses event delegation by adding a click event listener to the list element
- Initially populates the list with any existing items

## Practical Applications

These techniques can be used in many scenarios such as storing user preferences, temporarily saving form data, and creating web applications with dynamic content.

## Reference

This project is part of the JavaScript30 challenge by Wes Bos. You can find the original course at [https://JavaScript30.com](https://JavaScript30.com) 