# Sort Without Articles

This project demonstrates how to sort a list of band names while ignoring articles such as "a", "an", and "the". The sorting is done using JavaScript and the results are displayed in an HTML list.

## HTML Structure

The HTML file contains the following key elements:

- **DOCTYPE Declaration**: Specifies the document type and version of HTML.
- **Head Section**: Contains metadata, including the character set, title, and a favicon.
- **Body Section**: Contains the main content, including a styled unordered list (`<ul>`) to display the sorted band names.

## CSS Styles

The CSS styles are defined within a `<style>` tag in the `<body>` section. Here are the key styles:

- **Body Styles**: Sets the margin to zero, applies a sans-serif font, and sets a background image that covers the entire viewport.
- **List Styles**: Styles the unordered list with a white background, square list style, and a box shadow for a subtle 3D effect.
- **List Item Styles**: Each list item has padding and a border at the bottom, except for the last item.

## JavaScript Functionality

The JavaScript code is responsible for sorting the band names. Here's a breakdown of the code:

1. **Array of Bands**:
   ```javascript
   const bands = ['The Plot in You', 'The Devil Wears Prada', 'Pierce the Veil', 'Norma Jean', 'The Bled', 'Say Anything', 'The Midway State', 'We Came as Romans', 'Counterparts', 'Oh, Sleeper', 'A Skylit Drive', 'Anywhere But Here', 'An Old Dog'];
   ```
   - This line defines an array called `bands` that contains the names of various bands.

2. **Strip Function**:
   ```javascript
   function strip(bandName) {
     return bandName.replace(/^(a |the |an )/i, '').trim();
   }
   ```
   - The `strip` function takes a band name as input and removes any leading articles ("a", "an", "the") using a regular expression. The `trim()` method is used to remove any extra spaces.

3. **Sorting the Bands**:
   ```javascript
   const sortedBands = bands.sort((a, b) => strip(a) > strip(b) ? 1 : -1);
   ```
   - The `sort` method is called on the `bands` array. It uses the `strip` function to compare the stripped versions of the band names. If the stripped name of `a` is greater than that of `b`, it returns `1`, indicating that `a` should come after `b` in the sorted order.

4. **Displaying the Sorted Bands**:
   ```javascript
   document.querySelector('#bands').innerHTML =
     sortedBands
       .map(band => `<li>${band}</li>`)
       .join('');
   ```
   - This code selects the `<ul>` element with the ID `bands` and sets its inner HTML to a list of sorted band names. The `map` method creates an array of list items (`<li>`) for each band, and `join('')` combines them into a single string.

5. **Logging the Sorted Bands**:
   ```javascript
   console.log(sortedBands);
   ```
   - Finally, the sorted array of band names is logged to the console for debugging purposes.

## Conclusion

This project effectively demonstrates how to manipulate and sort arrays in JavaScript while ignoring specific words. The combination of HTML, CSS, and JavaScript creates a visually appealing and functional web page.
