# Day 5: Flex Panel Gallery

> **Note:** The original images have been updated with new ones to enhance the visual appeal and demonstrate the flexibility of the gallery system.

This is the fifth project of my 30 Days of JavaScript challenge, based on Wes Bos's [JavaScript30](https://javascript30.com/) course.

## Project Files

### index.html
The original version of the Flex Panel Gallery where:
- Multiple panels can be open simultaneously
- Clicking a panel toggles its state (open/close)
- Other panels remain unaffected when a panel is clicked
- Each panel operates independently

### index2.html
A modified version with enhanced user experience:
- Only one panel can be open at a time
- Clicking a panel automatically closes all other panels
- Provides a more focused viewing experience
- Prevents visual clutter from multiple open panels

#### Key Differences in index2.html:
1. **Single Active Panel Logic**:
   ```javascript
   function toggleOpen() {
     // Close all panels first
     panels.forEach(panel => {
       panel.classList.remove('open');
       panel.classList.remove('open-active');
     });
     
     // Then open only the clicked panel
     this.classList.add('open');
   }
   ```

2. **User Experience Improvements**:
   - Cleaner visual presentation
   - Better focus on selected content
   - More intuitive interaction model
   - Reduced visual complexity

3. **Technical Implementation**:
   - Modified event handling
   - Added panel state management
   - Improved transition handling
   - Enhanced state synchronization

## Features
- Smooth transitions and animations
- Responsive design
- Interactive panel system
- Beautiful background images
- Dynamic text animations

## Technologies Used
- HTML5
- CSS3 (Flexbox, Transitions, Transforms)
- Vanilla JavaScript
- Google Fonts

## How to Use
1. Open either `index.html` or `index2.html` in your browser
2. Click on any panel to interact with it
3. Experience the different behaviors:
   - `index.html`: Multiple panels can be open
   - `index2.html`: Only one panel can be open at a time

## Credits
- Original project by Wes Bos
- Images from Unsplash
- Font: Amatic SC from Google Fonts 