# Mouse Move Shadow

Bu proje, fare hareketlerine göre metin gölgelerini dinamik olarak değiştiren bir web uygulamasıdır. JavaScript'in DOM manipülasyonu ve fare olaylarını (mouse events) kullanarak interaktif bir deneyim sunar.

## Proje Özellikleri

- Fare hareketine bağlı olarak dinamik metin gölgeleri
- Çoklu renkli gölge efektleri
- Fare konumuna göre hesaplanan gölge mesafeleri
- Düzenlenebilir metin içeriği (contenteditable)

## JavaScript Özellikleri

### Olay Dinleyicileri (Event Listeners)
```javascript
hero.addEventListener('mousemove', shadow);
```

### DOM Manipülasyonu
```javascript
const hero = document.querySelector('.hero');
const text = hero.querySelector('h1');
```

### Fare Pozisyonu Hesaplamaları
```javascript
// Fare pozisyonunu almak
let { offsetX: x, offsetY: y } = e;

// İç içe elementlerde doğru pozisyonu hesaplamak
if (this !== e.target) {
  x = x + e.target.offsetLeft;
  y = y + e.target.offsetTop;
}
```

### Gölge Efektleri
```javascript
// Gölge mesafesini hesaplamak
const xWalk = Math.round((x / width * walk) - (walk / 2));
const yWalk = Math.round((y / height * walk) - (walk / 2));

// Çoklu renkli gölgeler oluşturmak
text.style.textShadow = `
  ${xWalk}px ${yWalk}px 0 rgba(255,0,255,0.7),
  ${xWalk * -1}px ${yWalk}px 0 rgba(0,255,255,0.7),
  ${yWalk}px ${xWalk * -1}px 0 rgba(0,255,0,0.7),
  ${yWalk * -1}px ${xWalk}px 0 rgba(0,0,255,0.7)
`;
```

## Öğrenilen Kavramlar

1. **Mouse Events**: `mousemove` olayı ve fare pozisyonunu yakalama
2. **Destructuring**: JavaScript'te nesne özelliklerini destructuring ile almak
3. **offsetX/offsetY**: Fare pozisyonunu element içinde belirleme
4. **textShadow**: CSS text-shadow özelliğini JavaScript ile dinamik olarak değiştirme
5. **Math.round()**: Ondalık sayıları yuvarlama
6. **Template Literals**: Çoklu satır string'leri oluşturma

## Uygulama

Bu teknik, web sitelerinde interaktif başlıklar, banner'lar veya vurgu yapmak istediğiniz metinler için kullanılabilir. Kullanıcı deneyimini zenginleştiren bu tür efektler, sayfanızın daha dikkat çekici olmasını sağlar.

---

Bu proje, [Wes Bos](https://twitter.com/wesbos) tarafından oluşturulan [JavaScript30](https://javascript30.com/) eğitim serisinin bir parçasıdır. 