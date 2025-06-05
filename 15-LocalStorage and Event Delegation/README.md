# LocalStorage and Event Delegation

This project demonstrates using LocalStorage API for data persistence and Event Delegation for managing dynamic elements.

## Core Concepts

### LocalStorage API
```javascript
// Store data
localStorage.setItem('key', JSON.stringify(value));

// Retrieve data
const data = JSON.parse(localStorage.getItem('key')) || [];
```

### Event Delegation
```javascript
// Add one listener to parent instead of many to children
parentElement.addEventListener('click', function(event) {
  if (event.target.matches('selector')) {
    // Handle event
  }
});
```

## Key JavaScript Features

### Adding Items
```javascript
function addItem(e) {
  e.preventDefault();
  const text = this.querySelector('[name=item]').value;
  items.push({ text, done: false });
  populateList(items, itemsList);
  localStorage.setItem('items', JSON.stringify(items));
  this.reset();
}
```

### Displaying & Toggling Items
```javascript
// Generate HTML for each item
function populateList(plates = [], platesList) {
  platesList.innerHTML = plates.map((plate, i) => `
    <li>
      <input type="checkbox" data-index=${i} id="item${i}" ${plate.done ? 'checked' : ''} />
      <label for="item${i}">${plate.text}</label>
    </li>
  `).join('');
}

// Toggle checkbox state with event delegation
function toggleDone(e) {
  if (!e.target.matches('input')) return;
  const index = e.target.dataset.index;
  items[index].done = !items[index].done;
  localStorage.setItem('items', JSON.stringify(items));
  populateList(items, itemsList);
}
```

## Reference
This project is part of the JavaScript30 challenge by Wes Bos - [https://JavaScript30.com](https://JavaScript30.com) 