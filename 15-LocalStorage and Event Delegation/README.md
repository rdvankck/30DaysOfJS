# LocalStorage ve Event Delegation (Yerel Depolama ve Olay Delegasyonu)

Bu projede, tarayıcının LocalStorage API'sini kullanarak verileri kalıcı olarak saklama ve Event Delegation (Olay Delegasyonu) tekniğiyle dinamik olarak oluşturulan öğeleri yönetme konularını öğreniyoruz.

## Öğrenilen Konular

### LocalStorage API

LocalStorage, web tarayıcılarında kullanıcı verilerini kalıcı olarak saklamak için kullanılan bir Web API'sidir.

- **Veri Saklama**: `localStorage.setItem(key, value)`
- **Veri Alma**: `localStorage.getItem(key)`
- **Veri Silme**: `localStorage.removeItem(key)`
- **Tüm Verileri Silme**: `localStorage.clear()`

LocalStorage'da sadece string değerler saklanabilir. Bu nedenle, nesneleri veya dizileri saklamak için JSON formatına dönüştürmek gerekir:

```javascript
// Nesne veya dizi saklama
localStorage.setItem('items', JSON.stringify(items));

// Nesne veya dizi alma
const items = JSON.parse(localStorage.getItem('items')) || [];
```

### Event Delegation (Olay Delegasyonu)

Event Delegation, dinamik olarak oluşturulan veya değiştirilen öğeler için olay dinleyicilerini yönetmenin etkili bir yoludur.

- Temel fikir: Olay dinleyicileri her bir öğeye değil, bunların ortak bir üst öğesine eklenir
- Olaylar, DOM ağacında yukarı doğru "kabarcıklanır" (bubbling)
- Olay hedefini kontrol ederek hangi alt öğenin olayı tetiklediğini belirleyebiliriz

```javascript
// Event delegation örneği
parentElement.addEventListener('click', function(event) {
  if (event.target.matches('selector')) {
    // İşlemi gerçekleştir
  }
});
```

## Projede Kullanılan Teknikler

1. **Form Gönderimini İşleme**:
   - `submit` olayını dinleme
   - `preventDefault()` ile varsayılan davranışı engelleme
   - Form verilerini alma ve depolama

2. **Dinamik Liste Oluşturma**:
   - `map()` ve `join()` kullanarak HTML oluşturma
   - Template literals ile şablon oluşturma

3. **Checkbox Durumunu Güncelleme**:
   - Event delegation ile checkbox tıklamalarını yakalama
   - `data-*` özniteliklerini kullanma
   - LocalStorage'da veri güncelleme

4. **LocalStorage ile Veri Kalıcılığı**:
   - Sayfa yenilendiğinde bile verileri koruma
   - JSON formatında nesneleri saklama ve geri alma

## Pratik Kullanım

Bu teknikler, kullanıcı tercihlerini saklama, form verilerini geçici olarak kaydetme ve dinamik içerikli web uygulamaları oluşturma gibi birçok senaryoda kullanılabilir. 