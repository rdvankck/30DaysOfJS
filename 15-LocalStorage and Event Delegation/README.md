# LocalStorage and Event Delegation

This project demonstrates using LocalStorage API for data persistence and Event Delegation for managing dynamic elements.

## Core Concepts

### LocalStorage API
```javascript
// Store data - converts objects/arrays to strings
localStorage.setItem('key', JSON.stringify(value));

// Retrieve data - converts strings back to objects/arrays
// The || [] provides a fallback empty array if nothing is stored
const data = JSON.parse(localStorage.getItem('key')) || [];
```

### Event Delegation
```javascript
// Add one listener to parent instead of many to children
// More efficient for dynamic elements
parentElement.addEventListener('click', function(event) {
  // Check if the clicked element matches our selector
  if (event.target.matches('selector')) {
    // Handle event only for matching elements
  }
});
```

## JavaScript Code Explained

### Setup and Initialization
```javascript
// Select DOM elements
const addItems = document.querySelector('.add-items');
const itemsList = document.querySelector('.plates');

// Load items from localStorage or start with empty array
const items = JSON.parse(localStorage.getItem('items')) || [];
```

### Adding Items
```javascript
function addItem(e) {
  e.preventDefault();  // Stop form from submitting
  
  // Get text from input field
  const text = this.querySelector('[name=item]').value;
  
  // Create new item object with text and done status
  items.push({ text, done: false });
  
  // Update the DOM with new list
  populateList(items, itemsList);
  
  // Save to localStorage for persistence
  localStorage.setItem('items', JSON.stringify(items));
  
  // Clear the form
  this.reset();
}

// Listen for form submissions
addItems.addEventListener('submit', addItem);
```

### Rendering the List
```javascript
function populateList(plates = [], platesList) {
  // Generate HTML for each item using template literals
  platesList.innerHTML = plates.map((plate, i) => `
    <li>
      <!-- Store the item index in data attribute for reference -->
      <input type="checkbox" data-index=${i} id="item${i}" ${plate.done ? 'checked' : ''} />
      <label for="item${i}">${plate.text}</label>
    </li>
  `).join('');  // Convert array to HTML string
}

// Initial list population
populateList(items, itemsList);
```

### Toggling Item Status
```javascript
function toggleDone(e) {
  // Skip if click wasn't on an input element
  if (!e.target.matches('input')) return;
  
  // Get the item index from data attribute
  const index = e.target.dataset.index;
  
  // Toggle the done status
  items[index].done = !items[index].done;
  
  // Save updated items to localStorage
  localStorage.setItem('items', JSON.stringify(items));
  
  // Update the visual display
  populateList(items, itemsList);
}

// Using event delegation - one listener for all checkboxes
itemsList.addEventListener('click', toggleDone);
```

## Reference
This project is part of the JavaScript30 challenge by Wes Bos - [https://JavaScript30.com](https://JavaScript30.com) 