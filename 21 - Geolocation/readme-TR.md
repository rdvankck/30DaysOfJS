# Coğrafi Konum Hız ve Yön

Bu proje, kullanıcının mevcut hızını ve seyahat yönünü belirlemek ve görüntülemek için tarayıcının Coğrafi Konum API'sini kullanır.

## Nasıl Çalışır?

Uygulama, bir SVG pusula oku ve bir hız göstergesi içeren basit bir HTML sayfasından oluşur. Temel mantık, HTML dosyasına gömülü küçük bir JavaScript kod parçacığı tarafından yönetilir.

### Detaylı JavaScript Açıklaması

Betik, tarayıcının kullanıcının konumunu başarılı bir şekilde almasını bekler ve ardından değişiklikleri sürekli olarak izler.

1.  **DOM Elemanı Seçimi**:
    *   `const arrow = document.querySelector('.arrow');`: Bu satır, `arrow` sınıfına sahip HTML öğesini seçer. Bu durumda, döndürülecek olan pusulanın SVG resmidir.
    *   `const speed = document.querySelector('.speed-value');`: Bu satır, `speed-value` sınıfına sahip `<span>` öğesini seçer. Betik, hesaplanan hızı göstermek için bu öğenin metin içeriğini güncelleyecektir.

2.  **`watchPosition()` ile Coğrafi Konumu İzleme**:
    *   `navigator.geolocation.watchPosition((data) => { ... }, (err) => { ... });`: Bu, bu projede kullanılan Coğrafi Konum API'sinin temel işlevidir.
    *   `navigator.geolocation`, cihazın konumuna erişim sağlayan tarayıcının yerleşik nesnesidir.
    *   `watchPosition()` yöntemi bu nesne üzerinde çağrılır. Konumu yalnızca bir kez getiren `getCurrentPosition()` yönteminin aksine, `watchPosition()` cihazın konumu önemli ölçüde her değiştiğinde otomatik olarak çağrılan bir işleyici kaydeder.
    *   İki ana argüman alır: bir başarı geri arama işlevi ve isteğe bağlı bir hata geri arama işlevi.

3.  **Başarı Geri Arama İşlevi**: `(data) => { ... }`
    *   Bu işlev, tarayıcı yeni bir konumu başarıyla her aldığında otomatik olarak yürütülür. Argüman olarak burada `data` olarak adlandırılan bir `GeolocationPosition` nesnesi alır.
    *   `data` nesnesi, gerçek konum bilgisini tutan bir `GeolocationCoordinates` nesnesi olan bir `coords` özelliğine (`data.coords`) sahiptir.
    *   `speed.textContent = data.coords.speed;`: Betik, `data.coords`'dan `speed` özelliğine erişir. Bu özellik, cihazın hızını saniyede metre cinsinden temsil eder. Betik daha sonra bu değeri görüntülemek için daha önce seçilen `speed` `<span>` öğesinin `textContent`'ini günceller. Cihaz hız bilgisi sağlayamazsa, bu değer `null` olur.
    *   `arrow.style.transform = `rotate(${data.coords.heading}deg)`;`: Betik, `data.coords`'dan `heading` özelliğine erişir. Bu özellik, cihazın hangi yönde hareket ettiğini, gerçek kuzeyden (0°) saat yönünde derece cinsinden belirtir. Bu değer daha sonra pusula `arrow` SVG'sini döndürmek için bir CSS `transform`'unda kullanılır. Örneğin, yön 90° ise, ok doğrudan doğuyu gösterecektir. Yön belirlenemezse, bu değer `null` olur.

4.  **Hata Geri Arama İşlevi**: `(err) => { ... }`
    *   Tarayıcı konumu alamazsa, bu işlev yürütülür. Argüman olarak `err` olarak adlandırılan bir `GeolocationPositionError` nesnesi alır.
    *   Yaygın hatalar şunlardır:
        *   `err.code 1: PERMISSION_DENIED` - Kullanıcı, tarayıcının konumunu izlemesini engelledi.
        *   `err.code 2: POSITION_UNAVAILABLE` - Ağ kapalı veya bir uydu düzeltmesi alınamıyor.
        *   `err.code 3: TIMEOUT` - Kullanıcının konumunu alma isteği zaman aşımına uğradı.
    *   `console.error(err);`: Betik, tüm hata nesnesini tarayıcının geliştirici konsoluna kaydeder. Bu, konumun neden alınamadığını anlamak için hata ayıklamada kullanışlıdır.