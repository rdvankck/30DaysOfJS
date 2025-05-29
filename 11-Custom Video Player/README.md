# Day 11: Custom HTML5 Video Player

## Building a Custom Video Player Interface

This project demonstrates how to create a fully custom video player with HTML5, CSS, and vanilla JavaScript, replacing the browser's default video controls with our own interface:

### JavaScript Concepts Covered
- **HTML5 Video API**: Manipulating video playback and properties using JavaScript
- **Event Listeners**: Handling various video events like play, pause, and timeupdate
- **DOM Manipulation**: Updating interface elements based on video state
- **Range Inputs**: Managing sliders for volume and playback speed
- **Progress Bar**: Creating and updating a custom progress bar for video playback
- **Click and Drag Functionality**: Implementing scrubbing by clicking and dragging

### Key JavaScript Functions

#### `togglePlay()` Function
```javascript
function togglePlay() {
  const method = video.paused ? 'play' : 'pause';
  video[method]();
}
```
This elegant function:
1. Checks if the video is currently paused
2. Uses bracket notation to dynamically call either video.play() or video.pause()

#### `updateButton()` Function
```javascript
function updateButton() {
  const icon = this.paused ? '►' : '❚ ❚';
  toggle.textContent = icon;
}
```
This function:
1. Updates the play/pause button's icon based on the video's current state
2. Uses 'this' which refers to the video element when called from the video's event listeners

#### `handleProgress()` Function
```javascript
function handleProgress() {
  const percent = (video.currentTime / video.duration) * 100;
  progressBar.style.flexBasis = `${percent}%`;
}
```
This function:
1. Calculates the current position in the video as a percentage
2. Updates the progress bar's flexBasis to visually represent playback progress

#### `scrub()` Function
```javascript
function scrub(e) {
  const scrubTime = (e.offsetX / progress.offsetWidth) * video.duration;
  video.currentTime = scrubTime;
}
```
This function:
1. Calculates a time position based on where the user clicked in the progress bar
2. Updates the video's current time to jump to that position

### Features
- Play/pause toggle with keyboard and click
- Skip forward/backward buttons
- Volume control slider
- Playback speed control
- Click-and-drag scrubbing on the progress bar
- Auto-updating progress bar

## How to Use
1. Open index.html in your browser
2. Use the custom controls below the video:
   - Click on the video or the play/pause button to toggle playback
   - Adjust volume and playback speed with the sliders
   - Click the progress bar to jump to different parts of the video
   - Use the skip buttons to move forward or backward

This project demonstrates the power of the HTML5 Video API and how JavaScript can be used to create custom interfaces for media elements. 