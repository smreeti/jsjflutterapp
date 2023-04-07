import 'package:jsjflutterapp/models/Product.dart';

class CartProduct {
  final Product product;
  int quantity;

  CartProduct({required this.product, this.quantity = 1});
}
