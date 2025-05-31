const products = [
    { id: 1, name: "Smart Watch", price: 250, inStock: true },
    { id: 2, name: "Wireless Earbuds", price: 150, inStock: false },
    { id: 3, name: "Bluetooth Speaker", price: 80, inStock: true },
    { id: 4, name: "Laptop Stand", price: 45, inStock: true },
    { id: 5, name: "Gaming Mouse", price: 60, inStock: false },
    { id: 6, name: "Portable Charger", price: 35, inStock: true }
  ];
  
  // --- Görev 1: Stoktaki Ürünleri Filtreleme ---
  console.log("--- Task 1: In-Stock Products ---");
 const inStockProducts = products.filter(product => {  return product.inStock === true   });
 console.log(inStockProducts);




console.log("--- Task 2: Products in Home Office ---");
    const expensiveProducts = products.filter( product => {return product.price > 50 });
    console.log(expensiveProducts);


    const books = [
        { title: "Sapiens: A Brief History of Humankind", author: "Yuval Noah Harari", yearPublished: 2011 },
        { title: "1984", author: "George Orwell", yearPublished: 1949 },
        { title: "To Kill a Mockingbird", author: "Harper Lee", yearPublished: 1960 },
        { title: "The Lord of the Rings", author: "J.R.R. Tolkien", yearPublished: 1954 },
        { title: "Animal Farm", author: "George Orwell", yearPublished: 1945 },
        { title: "Pride and Prejudice", author: "Jane Austen", yearPublished: 1813 },
        { title: "The Hobbit", author: "J.R.R. Tolkien", yearPublished: 1937 },
        { title: "Nineteen Eighty-Four (Reissue)", author: "George Orwell", yearPublished: 2003 }
      ];// -------------------- New Filter Question --------------------

