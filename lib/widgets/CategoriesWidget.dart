import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});


  @override
  Widget build(BuildContext context) {
    final categories = ['Men', 'Women', 'Kids', 'Accessories'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final category in categories)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/$category.png",
                    width: 30,
                    height: 40,
                  ),
                  Text(
                    category,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20)),
                ],
              ),
            )
        ],
      ),
    );
  }
}
