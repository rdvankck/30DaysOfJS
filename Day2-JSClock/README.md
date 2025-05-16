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

1. **setDate() Fonksiyonu**: Saatin ana fonksiyonu, her saniye çağrılarak zamanı günceller.
2. **Date Nesnesi**: JavaScript'in yerleşik Date nesnesi ile mevcut zaman alınır.
3. **Saniye İbresi Rotasyonu**: 
   - `now.getSeconds()` ile mevcut saniye alınır
   - `((seconds / 60) * 360)` formülü ile saniyenin açı değeri hesaplanır (60 saniye = 360 derece)
   - +90 eklenir çünkü CSS'de saat 12 pozisyonu 90 derece rotasyona karşılık gelir
4. **Dakika İbresi Rotasyonu**:
   - `now.getMinutes()` ile mevcut dakika alınır
   - Ana formül `((mins / 60) * 360)` ile dakikanın açı değeri hesaplanır
   - `((seconds / 60) * 6)` eklenerek saniyeye bağlı olarak daha hassas hareket sağlanır
5. **Saat İbresi Rotasyonu**:
   - `now.getHours()` ile mevcut saat alınır
   - `((hour / 12) * 360)` ile saatin açı değeri hesaplanır (12 saat = 360 derece)
   - `((mins / 60) * 30)` eklenerek dakikaya bağlı olarak daha hassas hareket sağlanır
6. **setInterval**: Fonksiyonu her saniye (1000 ms) çağırarak saat ibresinin sürekli güncellenmesini sağlar

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