import 'package:flutter/material.dart';

import '../models/Product.dart';

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

Color getPrimaryColor() {
  return const Color(0xFF000C5E);
}

Color getBackgroundColor() {
  return const Color(0xFFEDECF2);
}

List<Product> getProducts() {
  const baseUrl = "images/products/";
  List<Product> products = [
    Product(
        productId: "1",
        title: 'Women\'s Printed T-shirt',
        price: 10.99,
        imageUrl: "${baseUrl}women-tshirt.png",
        discount: '-5%',
        description: 'This is product1'),
    Product(
        productId: "2",
        title: 'Men Grey Jacket',
        price: 20.99,
        imageUrl: "${baseUrl}men-jacket.png",
        discount: '-15%',
        description: 'This is product2'),
    Product(
        productId: "3",
        title: 'Red Shirt for Kids',
        price: 30.99,
        imageUrl: "${baseUrl}red-shirt.png",
        discount: '-1%',
        description: 'This is product3'),
    Product(
        productId: "4",
        title: 'Black Bagpack',
        price: 12.99,
        imageUrl: "${baseUrl}bagpack.png",
        discount: '-4%',
        description: 'This is product4'),
  ];
  return products;
}
