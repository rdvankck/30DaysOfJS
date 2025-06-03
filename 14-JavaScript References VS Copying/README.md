# JavaScript References VS Copying

In this project, we learn about the differences between references and copying in JavaScript.

## Topics Covered

### Primitive vs Reference Types
- **Primitive Types**: String, Number, Boolean, null, undefined, Symbol
  - These types are copied by value
  - When you assign a variable to another, the value itself is copied

- **Reference Types**: Array, Object, Function
  - These types are copied by reference
  - When you assign a variable to another, the reference to the memory address is copied

### Methods to Copy Arrays
1. Using `Array.prototype.slice()`
   ```javascript
   const array2 = array1.slice();
   ```

2. Using `[].concat()`
   ```javascript
   const array2 = [].concat(array1);
   ```

3. ES6 Spread operator
   ```javascript
   const array2 = [...array1];
   ```

4. Using `Array.from()`
   ```javascript
   const array2 = Array.from(array1);
   ```

### Methods to Copy Objects
1. Using `Object.assign()`
   ```javascript
   const obj2 = Object.assign({}, obj1);
   ```

2. ES6 Spread operator
   ```javascript
   const obj2 = {...obj1};
   ```

### Important Notes
- The methods above perform **shallow copying**
- When there are nested arrays or objects, the inner objects are still copied by reference
- For deep copying:
  ```javascript
  const obj2 = JSON.parse(JSON.stringify(obj1));
  ```
  This method can cause performance issues and doesn't properly copy special types like Date or Function.

## Practical Use
Understanding the difference between references and copying is crucial for preventing unexpected side effects, especially when working with arrays and objects. This knowledge is critical in any JavaScript project that involves data manipulation. 