import 'package:flutter/material.dart';

class CheckoutAppBar extends StatelessWidget {
  final BuildContext context; // Add context parameter

  const CheckoutAppBar({required this.context, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(this.context); // Use the current screen's context to pop
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Checkout Form",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
          )
        ],
      ),
    );
  }
}
