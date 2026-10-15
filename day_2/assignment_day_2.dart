void main() {
  List<Map<String, dynamic>> products = [
    {'name': 'Flutter-T-shirts', 'price': 20, 'quantity': 1},
    {'name': 'Backend-T-shirts', 'price': 25.5, 'quantity': 2},
    {'name': ' Swift Pants', 'price': 35, 'quantity': 5},
    {'name': 'jeans', 'price': 80, 'quantity': 15},
    {'name': 'hoodie', 'price': 100, 'quantity': 5},
  ];

  double overallTotal = 0;
  num itemTotal;

  for (var element in products) {
    itemTotal = element['price'] * element['quantity'];

    overallTotal = overallTotal + itemTotal;
    print('${element['name']}: total price: \$$itemTotal');
  }

  print('overall total price: $overallTotal');

  if (overallTotal > 80) {
    overallTotal = overallTotal - overallTotal * (10 / 100);
    print('After discount the overall total price: $overallTotal');
  }
}
