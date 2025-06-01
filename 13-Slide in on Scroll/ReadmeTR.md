# Gün 13: Kaydırma ile İçeri Kayma Efekti

Bu proje, kullanıcı sayfayı aşağı kaydırdıkça görsellerin animasyonlu bir şekilde ekrana girmesini sağlayan bir tekniği göstermektedir. Görseller başlangıçta ekran dışında konumlandırılmış olup, görünür hale geldikçe kayarak içeri girerler.

## İçindekiler
- [JavaScript Kodunun Açıklaması](#javascript-kodunun-açıklaması)
  - [Debounce Fonksiyonu](#debounce-fonksiyonu)
  - [Kaydırma Kontrolü Fonksiyonu](#kaydırma-kontrolü-fonksiyonu)
- [CSS Kodunun Açıklaması](#css-kodunun-açıklaması)
  - [Temel Sayfa Stili](#temel-sayfa-stili)
  - [Görüntü Hizalama Stilleri](#görüntü-hizalama-stilleri)
  - [Kaydırma Animasyonu Stilleri](#kaydırma-animasyonu-stilleri)

## JavaScript Kodunun Açıklaması

### Debounce Fonksiyonu

```javascript
function debounce(func, wait = 20, immediate = true) {
  var timeout; // Zamanlayıcıyı saklamak için değişken
  return function() {
    var context = this, args = arguments; // 'this' ve argümanları sakla
    
    // Zamanlayıcı sonlandığında çalışacak fonksiyon
    var later = function() {
      timeout = null; // Zamanlayıcıyı sıfırla
      if (!immediate) func.apply(context, args); // Eğer immediate false ise, fonksiyonu çalıştır
    };
    
    // Eğer immediate true ise ve timeout yoksa, fonksiyonu hemen çalıştır
    var callNow = immediate && !timeout;
    
    // Önceki zamanlayıcıyı temizle
    clearTimeout(timeout);
    
    // Yeni zamanlayıcı ayarla
    timeout = setTimeout(later, wait);
    
    // Eğer hemen çalıştırma koşulu sağlanıyorsa, fonksiyonu çalıştır
    if (callNow) func.apply(context, args);
  };
}
```

**Açıklama:**
- Bu fonksiyon, sürekli tetiklenen olayları (örneğin scroll) sınırlandırmak için kullanılır.
- Özellikle scroll gibi saniyede onlarca kez tetiklenebilen olaylar için çok önemlidir.
- Nasıl Çalışır:
  1. Her fonksiyon çağrısı için bir zamanlayıcı ayarlanır
  2. Eğer belirtilen süre içinde fonksiyon tekrar çağrılırsa, önceki zamanlayıcı iptal edilir
  3. Bu sayede fonksiyon, son çağrıdan belirtilen süre sonra sadece bir kez çalıştırılır
  4. Bu, sayfa performansını önemli ölçüde artırır

### Kaydırma Kontrolü Fonksiyonu

```javascript
function checkSlide() {
  // Her bir görüntü için döngü başlat
  sliderImages.forEach(sliderImage => {
    // GÖRÜNÜRLÜK HESAPLAMASI 1:
    // Görüntünün yarısı ekranda göründüğü noktayı hesapla
    // window.scrollY: Sayfanın yukarıdan ne kadar kaydırıldığı
    // window.innerHeight: Tarayıcı penceresinin görünür yüksekliği
    // sliderImage.height / 2: Görüntünün yarı yüksekliği
    const slideInAt = (window.scrollY + window.innerHeight) - sliderImage.height / 2;
    
    // GÖRÜNÜRLÜK HESAPLAMASI 2:
    // Görüntünün alt kenarının sayfadaki konumunu hesapla
    // sliderImage.offsetTop: Görüntünün sayfanın üstünden olan uzaklığı
    const imageBottom = sliderImage.offsetTop + sliderImage.height;
    
    // KOŞUL 1: Görüntünün en az yarısı görünür mü?
    const isHalfShown = slideInAt > sliderImage.offsetTop;
    
    // KOŞUL 2: Görüntünün altından geçilmedi mi?
    const isNotScrolledPast = window.scrollY < imageBottom;
    
    // Her iki koşul da sağlanıyorsa, görüntü ekranda ve active sınıfı eklenebilir
    if (isHalfShown && isNotScrolledPast) {
      sliderImage.classList.add('active'); // CSS geçiş efektini tetikler
    } else {
      sliderImage.classList.remove('active'); // CSS geçiş efektini kaldırır
    }
  });
}

// Sayfa kaydırıldığında checkSlide fonksiyonunu çağır,
// ancak debounce ile optimize et (saniyede en fazla 50 kez çalıştır)
window.addEventListener('scroll', debounce(checkSlide));
```

**Açıklama:**
- Bu fonksiyon, kullanıcı sayfayı kaydırdığında hangi görüntülerin görünür olduğunu kontrol eder ve görünür olanlara 'active' sınıfı ekler.
- Nasıl Çalışır:
  1. Her görüntü için, görüntünün sayfadaki konumunu hesaplar
  2. Kullanıcının şu anda sayfanın neresinde olduğunu kontrol eder
  3. Görüntü yeterince görünür olduğunda veya görünürlükten çıktığında CSS sınıflarını ekler veya kaldırır

## CSS Kodunun Açıklaması

### Temel Sayfa Stili

```css
html {
  box-sizing: border-box; /* Tüm elemanların boyutlandırması için border-box modelini kullan */
  background: #ffc600; /* Sayfanın arka planı */
  font-family: 'helvetica neue'; /* Yazı tipi */
  font-size: 20px; /* Temel yazı boyutu */
  font-weight: 200; /* İnce yazı kalınlığı */
}

body {
  margin: 0; /* Sayfanın dış kenar boşluğunu kaldır */
}

/* Tüm elemanlar, before ve after pseudo-elemanları için box-sizing'i inherit et */
*, *:before, *:after {
  box-sizing: inherit;
}

h1 {
  margin-top: 0; /* Başlık üstündeki boşluğu kaldır */
}

/* ANA İÇERİK ALANI */
.site-wrap {
  max-width: 700px; /* İçerik genişliğini sınırla */
  margin: 100px auto; /* Yukarıdan ve aşağıdan boşluk bırak, yanlardan otomatik ortalama */
  background: white; /* Arka planı beyaz yap */
  padding: 40px; /* İç kenar boşluğu */
  text-align: justify; /* Metni iki yana yasla */
}
```

### Görüntü Hizalama Stilleri

```css
.align-left {
  float: left; /* Görüntüyü sola yasla, metin sağa doğru akacak */
  margin-right: 20px; /* Sağda metin ile arasında boşluk bırak */
}

.align-right {
  float: right; /* Görüntüyü sağa yasla, metin sola doğru akacak */
  margin-left: 20px; /* Solda metin ile arasında boşluk bırak */
}
```

### Kaydırma Animasyonu Stilleri

```css
/* Temel slide-in sınıfı: Başlangıç durumu */
.slide-in {
  opacity: 0; /* Başlangıçta görünmez */
  transition: all .5s; /* Tüm özelliklerin değişimi 0.5 saniye sürsün */
}

/* Sola hizalı görüntüler için başlangıç konumu */
.align-left.slide-in {
  transform: translateX(-30%) scale(0.95); /* Sola doğru kaydır ve hafifçe küçült */
}

/* Sağa hizalı görüntüler için başlangıç konumu */
.align-right.slide-in {
  transform: translateX(30%) scale(0.95); /* Sağa doğru kaydır ve hafifçe küçült */
}

/* 'active' sınıfı eklendiğinde uygulanacak stil (JavaScript tarafından kontrol edilir) */
.slide-in.active {
  opacity: 1; /* Tam görünür yap */
  transform: translateX(0%) scale(1); /* Normal konuma getir ve tam boyuta büyüt */
}
```

## Nasıl Çalışır?

1. Sayfa yüklendiğinde, tüm görseller `.slide-in` sınıfı ile başlar, bu onları görünmez yapar ve başlangıç konumlarına yerleştirir (soldan veya sağdan ekran dışında).
2. Kullanıcı sayfayı kaydırdıkça, `checkSlide()` fonksiyonu her görüntünün görünürlüğünü kontrol eder.
3. Görüntünün yarısı görünür hale geldiğinde ve hala ekranda olduğunda, JavaScript kodu o görüntüye `.active` sınıfını ekler.
4. CSS geçiş efekti sayesinde, görüntüler yumuşak bir animasyonla kayarak görünür hale gelir.
5. Kullanıcı görüntünün ötesine kaydırdığında, `.active` sınıfı kaldırılır ve görüntü tekrar kaybolur.

Bu efekt, modern web sayfalarında yaygın olarak kullanılan "lazy loading" (geç yükleme) ve "scroll reveal" (kaydırma ile açığa çıkarma) tekniklerinin temelini oluşturur. 