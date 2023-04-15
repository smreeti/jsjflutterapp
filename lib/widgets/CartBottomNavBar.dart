import 'package:flutter/material.dart';
import 'package:jsjflutterapp/utils/CommonUtility.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {

    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                      color: CommonUtility.getPrimaryColor(),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // Display the total amount in a Text widget
                Text(
                  '\$${CommonUtility.calculateTotalAmount().toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'checkout');
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CommonUtility.getPrimaryColor(),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  "Check out",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
