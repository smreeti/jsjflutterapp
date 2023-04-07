import 'package:flutter/material.dart';
import 'package:jsjflutterapp/widgets/CartAppBar.dart';
import 'package:jsjflutterapp/widgets/CartBottomNavBar.dart';
import 'package:jsjflutterapp/widgets/CartItem.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final productId = arguments['productId'];
    // retrieve more properties of the product as needed

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const CartAppBar(),
            Container(
              height: 700,
              padding: const EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Column(
                children: [CartItem(productId: productId)],
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
