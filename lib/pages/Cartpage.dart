import 'package:flutter/material.dart';
import 'package:jsjflutterapp/widgets/CartAppBar.dart';
import 'package:jsjflutterapp/widgets/CartItem.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
              children: const [CartItem()],
            ),
          )
        ],
      ),
    );
  }
}
