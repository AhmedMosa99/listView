import 'dart:math';

import 'package:listgsg/modles/product.dart';

class MockData {
  bool cheak;
  MockData._();
  static MockData mockData = MockData._();
  List<Product> getProducts() {
    return <Product>[
      Product(
          name: "product1",
          isfavarite: true,
          price: 1000,
          image: "images/x.jpg"),
      Product(
          name: "product2",
          isfavarite: false,
          price: 5000,
          image: "images/x.jpg"),
      Product(
          name: "product3",
          isfavarite: false,
          price: 4000,
          image: "images/x.jpg"),
      Product(
          name: "product4",
          isfavarite: false,
          price: 3000,
          image: "images/x.jpg"),
      Product(
          name: "product5",
          isfavarite: false,
          price: 2000,
          image: "images/x.jpg"),
    ];
  }

  bool update(String name) {
    getProducts().forEach((element) {
      if (element.name == name) {
        element.isfavarite = !element.isfavarite;
        print(element.isfavarite);
        return element.isfavarite;
      }
    });
  }
}
