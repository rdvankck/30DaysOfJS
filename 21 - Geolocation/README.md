# Geolocation Speed and Direction

This project uses the browser's Geolocation API to determine and display the user's current speed and direction of travel.

## How It Works

The application consists of a simple HTML page with an SVG compass arrow and a speed display. The core logic is handled by a small JavaScript snippet embedded in the HTML file.

### Detailed JavaScript Explanation

The script waits for the browser to successfully get the user's location and then continuously watches for changes.

1.  **DOM Element Selection**:
    *   `const arrow = document.querySelector('.arrow');`: This line selects the HTML element that has the class `arrow`. In this case, it's the SVG image of the compass, which will be rotated.
    *   `const speed = document.querySelector('.speed-value');`: This line selects the `<span>` element with the class `speed-value`. The script will update the text content of this element to show the calculated speed.

2.  **Watching Geolocation with `watchPosition()`**:
    *   `navigator.geolocation.watchPosition((data) => { ... }, (err) => { ... });`: This is the core function of the Geolocation API used in this project.
    *   `navigator.geolocation` is the browser's built-in object that provides access to the device's location.
    *   The `watchPosition()` method is called on this object. Unlike `getCurrentPosition()`, which fetches the location only once, `watchPosition()` registers a handler that is automatically called every time the device's position changes significantly.
    *   It takes two main arguments: a success callback function and an optional error callback function.

3.  **Success Callback Function**: `(data) => { ... }`
    *   This function is executed automatically whenever the browser successfully retrieves a new location. It receives a `GeolocationPosition` object as its argument, which is named `data` here.
    *   The `data` object contains a `coords` property (`data.coords`), which is a `GeolocationCoordinates` object. This `coords` object holds the actual location information.
    *   `speed.textContent = data.coords.speed;`: The script accesses the `speed` property from `data.coords`. This property represents the device's speed in meters per second. The script then updates the `textContent` of the previously selected `speed` `<span>` to display this value. If the device cannot provide speed information, this value will be `null`.
    *   `arrow.style.transform = `rotate(${data.coords.heading}deg)`;`: The script accesses the `heading` property from `data.coords`. This property indicates the direction in which the device is traveling, measured in degrees clockwise from true north (0°). This value is then used in a CSS `transform` to rotate the compass `arrow` SVG. For example, if the heading is 90°, the arrow will point directly east. If the direction cannot be determined, this value will be `null`.

4.  **Error Callback Function**: `(err) => { ... }`
    *   If the browser is unable to get the location, this function is executed. It receives a `GeolocationPositionError` object as its argument, named `err`.
    *   Common errors include:
        *   `err.code 1: PERMISSION_DENIED` - The user has blocked the browser from tracking their location.
        *   `err.code 2: POSITION_UNAVAILABLE` - The network is down or a satellite fix cannot be obtained.
        *   `err.code 3: TIMEOUT` - The request to get the user's location timed out.
    *   `console.error(err);`: The script logs the entire error object to the browser's developer console. This is useful for debugging to understand why the location could not be retrieved.