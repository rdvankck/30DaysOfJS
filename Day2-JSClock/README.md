# Day 2: JS and CSS Clock

This is the second project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## What I've Built

An analog clock that displays the current time using CSS transforms and JavaScript. The clock has hour, minute, and second hands that rotate in real-time.

## How It Works

- JavaScript gets the current time using the Date object
- The rotation angles for hour, minute, and second hands are calculated based on the current time
- CSS transforms are used to rotate the clock hands
- The clock updates every second

## Custom Styling Enhancements

I've customized the clock hands with the following improvements:

- **Second Hand**: Longest (50%), thinnest (3px), bright red color for better visibility
- **Minute Hand**: Medium length (40%), medium thickness (6px), dark gray color
- **Hour Hand**: Shortest (30%), thickest (8px), darkest gray color
- Added rounded corners (border-radius) to each hand for a more polished look

These style enhancements make it easier to distinguish between the hands and give the clock a more realistic appearance.

## Technologies Used

- HTML5
- CSS3
- Vanilla JavaScript (ES6)

## Features

- Real-time clock updates
- Smooth transitions using CSS cubic-bezier
- Transform-origin to rotate hands from the right position
- CSS styling to create a realistic looking clock
- Custom-styled clock hands with different lengths and colors

## Key Concepts Learned

- CSS transforms and transitions
- Working with JavaScript Date object
- Setting interval timers with setInterval()
- CSS cubic-bezier for customizing animations
- Transform-origin property 