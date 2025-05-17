# Day 2: JS and CSS Clock

This is the second project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## What I've Built

An analog clock that displays the current time using CSS transforms and JavaScript. The clock has hour, minute, and second hands that rotate in real-time.

## How It Works

- JavaScript gets the current time using the Date object
- The rotation angles for hour, minute, and second hands are calculated based on the current time
- CSS transforms are used to rotate the clock hands
- The clock updates every second

## JavaScript Code Explanation

```javascript
function setDate() {
  const now = new Date();
  
  // Seconds hand
  const seconds = now.getSeconds();
  const secondsDegrees = ((seconds / 60) * 360) + 90;
  secondHand.style.transform = `rotate(${secondsDegrees}deg)`;
  
  // Minutes hand
  const mins = now.getMinutes();
  const minsDegrees = ((mins / 60) * 360) + ((seconds / 60) * 6) + 90;
  minHand.style.transform = `rotate(${minsDegrees}deg)`;
  
  // Hours hand
  const hour = now.getHours();
  const hourDegrees = ((hour / 12) * 360) + ((mins / 60) * 30) + 90;
  hourHand.style.transform = `rotate(${hourDegrees}deg)`;
}

setInterval(setDate, 1000);
```

1. **setDate() Function**: The main function of the clock, called every second to update the time.
2. **Date Object**: JavaScript's built-in Date object is used to get the current time.
3. **Seconds Hand Rotation**: 
   - `now.getSeconds()` gets the current seconds
   - `((seconds / 60) * 360)` formula calculates the angle value of seconds (60 seconds = 360 degrees)
   - +90 is added because the 12 o'clock position corresponds to 90 degrees rotation in CSS
4. **Minutes Hand Rotation**:
   - `now.getMinutes()` gets the current minutes
   - The main formula `((mins / 60) * 360)` calculates the angle value of minutes
   - `((seconds / 60) * 6)` is added to provide more precise movement based on seconds
5. **Hours Hand Rotation**:
   - `now.getHours()` gets the current hour
   - `((hour / 12) * 360)` calculates the angle value of hours (12 hours = 360 degrees)
   - `((mins / 60) * 30)` is added to provide more precise movement based on minutes
6. **setInterval**: Calls the function every second (1000 ms) to ensure continuous updating of the clock hands

## Technologies Used

- HTML5
- CSS3
- Vanilla JavaScript (ES6)

## Key Concepts Learned

- CSS transforms and transitions
- Working with JavaScript Date object
- Setting interval timers with setInterval()
- CSS cubic-bezier for customizing animations
- Transform-origin property 