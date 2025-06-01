# Day 13: Slide in on Scroll

## Image Slide-in Animation on Page Scroll

This project demonstrates how to create an elegant slide-in effect for images as the user scrolls down a webpage. Images start offscreen and slide in when the user scrolls to reveal them.

### JavaScript Concepts Covered
- **Scroll Events**: Detecting and responding to page scrolling
- **Window Properties**: Working with window.scrollY and window.innerHeight
- **Element Positioning**: Calculating element positions with offsetTop and height
- **DOM Manipulation**: Adding and removing CSS classes
- **Debouncing**: Optimizing scroll performance with the debounce pattern
- **CSS Transitions**: Using JavaScript to trigger CSS animations

### Key JavaScript Functions

#### `debounce()` Function
```javascript
function debounce(func, wait = 20, immediate = true) {
  var timeout;
  return function() {
    var context = this, args = arguments;
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
}
```
This function:
1. Limits how often a function can be called (helps with scroll performance)
2. Prevents the scroll handler from firing too frequently
3. Reduces browser strain when handling scroll events

#### `checkSlide()` Function
```javascript
function checkSlide() {
  sliderImages.forEach(sliderImage => {
    // half way through the image
    const slideInAt = (window.scrollY + window.innerHeight) - sliderImage.height / 2;
    // bottom of the image
    const imageBottom = sliderImage.offsetTop + sliderImage.height;
    const isHalfShown = slideInAt > sliderImage.offsetTop;
    const isNotScrolledPast = window.scrollY < imageBottom;
    if (isHalfShown && isNotScrolledPast) {
      sliderImage.classList.add('active');
    } else {
      sliderImage.classList.remove('active');
    }
  });
}
```
This function:
1. Calculates when images are halfway visible in the viewport
2. Determines if each image should be animated in or out
3. Adds or removes the 'active' class which triggers CSS transitions

### The Math Behind Image Visibility

The code performs two key calculations:
1. **When to show the image**: When the scroll position + window height is greater than the image's position plus half its height
2. **When to hide the image**: When the user has scrolled past the bottom of the image

### CSS Animation
The effect relies on CSS transitions and transforms:
```css
.slide-in {
  opacity: 0;
  transition: all .5s;
}
.align-left.slide-in {
  transform: translateX(-30%) scale(0.95);
}
.align-right.slide-in {
  transform: translateX(30%) scale(0.95);
}
.slide-in.active {
  opacity: 1;
  transform: translateX(0%) scale(1);
}
```

## How to Use
1. Open index.html in your browser
2. Scroll down the page to see images slide in from the left or right
3. The effect is triggered when an image is halfway into the viewport
4. Images slide back out when scrolled past

This project demonstrates the power of combining JavaScript scroll detection with CSS transitions to create engaging web experiences. 