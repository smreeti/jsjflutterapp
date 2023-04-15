import 'package:flutter/material.dart';
import 'package:jsjflutterapp/widgets/CartAppBar.dart';
import 'package:jsjflutterapp/widgets/CartBottomNavBar.dart';
import 'package:jsjflutterapp/widgets/CartItem.dart';
import 'package:jsjflutterapp/utils/CommonUtility.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CartAppBar(),
            Expanded(
              child: ListView.builder(
                itemCount: CommonUtility.cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return CartItem(
                    product: CommonUtility.cartItems[index],
                    onRemove: () {
                      setState(() {
                        CommonUtility.removeProductFromCart(
                            CommonUtility.cartItems[index]);
                      });
                    },
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}
