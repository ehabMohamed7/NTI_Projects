class Product {
  String name;
  double price;
  Product({required this.name, required this.price});

  showDiscount() {}
}

class Book extends Product {
  Book({required super.name, required super.price});
  @override
  showDiscount() {
    this.price -= this.price * (10 / 100);
    print(this.price);
  }
}

class Electric extends Product {
  Electric({required super.name, required super.price});
  @override
  showDiscount() {
    this.price -= this.price * (20 / 100);
    print(this.price);
  }
}

class Clothes extends Product {
  Clothes({required super.name, required super.price});
  @override
  showDiscount() {
    this.price -= this.price * (15 / 100);
    print(this.price);
  }
}

void main() {
  Product p1 = Book(name: 'clean code', price: 100);
  p1.showDiscount();
  Product p2 = Electric(name: 'sha7en', price: 50);
  p2.showDiscount();

  Product p3 = Clothes(name: 'clean code', price: 150);
  p3.showDiscount();
}
