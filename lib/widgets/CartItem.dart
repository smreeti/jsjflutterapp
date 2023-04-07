import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jsjflutterapp/models/Product.dart';
import 'package:jsjflutterapp/utils/CommonUtility.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.productId}) : super(key: key);

  final String productId;

  @override
  Widget build(BuildContext context) {
    // Get the list of products
    List<Product> products = getProducts();

    // Find the product with the matching ID
    Product product =
        products.firstWhere((prod) => prod.productId == productId);

    return Column(
      children: [
        Container(
            height: 120,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 50,
                  margin: const EdgeInsets.only(right: 5),
                  child: Image.asset(product.imageUrl),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(product.title,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold))),
                      Text('\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.delete_rounded,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                            ),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 14,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              "01",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: getPrimaryColor()),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                            ),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 14,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
