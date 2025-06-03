# JavaScript Referanslar VS Kopyalama

Bu projede, JavaScript'te referanslar ve kopyalama arasındaki farkları öğreniyoruz.

## Öğrenilen Konular

### Primitive vs Reference Tipleri
- **Primitive (İlkel) Tipler**: String, Number, Boolean, null, undefined, Symbol
  - Bu tipler değer olarak kopyalanır
  - Bir değişkeni diğerine atadığınızda, değerin kendisi kopyalanır

- **Reference (Referans) Tipleri**: Array, Object, Function
  - Bu tipler referans olarak kopyalanır
  - Bir değişkeni diğerine atadığınızda, bellek adresine referans kopyalanır

### Dizileri Kopyalama Yöntemleri
1. `Array.prototype.slice()` kullanımı
   ```javascript
   const array2 = array1.slice();
   ```

2. `[].concat()` kullanımı
   ```javascript
   const array2 = [].concat(array1);
   ```

3. ES6 Spread operatörü
   ```javascript
   const array2 = [...array1];
   ```

4. `Array.from()` kullanımı
   ```javascript
   const array2 = Array.from(array1);
   ```

### Nesneleri Kopyalama Yöntemleri
1. `Object.assign()` kullanımı
   ```javascript
   const obj2 = Object.assign({}, obj1);
   ```

2. ES6 Spread operatörü
   ```javascript
   const obj2 = {...obj1};
   ```

### Önemli Notlar
- Yukarıdaki yöntemler **sığ kopyalama** (shallow copy) yapar
- İç içe diziler veya nesneler olduğunda, iç nesneler hala referans olarak kopyalanır
- Derin kopyalama (deep copy) için:
  ```javascript
  const obj2 = JSON.parse(JSON.stringify(obj1));
  ```
  Bu yöntem performans sorunlarına neden olabilir ve Date, Function gibi özel tipleri düzgün kopyalayamaz.

## Pratik Kullanım
Referans ve kopyalama arasındaki farkı anlamak, özellikle diziler ve nesnelerle çalışırken beklenmeyen yan etkileri önlemek için çok önemlidir. Bu bilgi, veri manipülasyonu yapılan her JavaScript projesinde kritik öneme sahiptir. 