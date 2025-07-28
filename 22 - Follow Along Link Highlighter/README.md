# JavaScript30 Day 22 - Follow Along Link Highlighter

## JavaScript Code

### 1. Select all links
```javascript
const triggers = document.querySelectorAll('a');
```

### 2. Create highlight element
```javascript
const highlight = document.createElement('span');
highlight.classList.add('highlight');
document.body.appendChild(highlight);
```

### 3. Highlight function
```javascript
function highlightLink() {
    const linkCoords = this.getBoundingClientRect();
    const coords = {
        width: linkCoords.width,
        height: linkCoords.height,
        top: linkCoords.top + window.scrollY,
        left: linkCoords.left + window.scrollX
    };

    highlight.style.width = `${coords.width}px`;
    highlight.style.height = `${coords.height}px`;
    highlight.style.transform = `translate(${coords.left}px, ${coords.top}px)`;
}
```

### 4. Add event listeners
```javascript
triggers.forEach(a => a.addEventListener('mouseenter', highlightLink));
```