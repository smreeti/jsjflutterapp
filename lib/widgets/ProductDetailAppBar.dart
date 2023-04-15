import 'package:flutter/material.dart';
import 'package:jsjflutterapp/utils/CommonUtility.dart';

class ProductDetailAppBar extends StatelessWidget {
  const ProductDetailAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Product Detail",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Icon(
            Icons.thumb_up_alt_outlined,
            size: 30,
            color: CommonUtility.getPrimaryColor(),
          )
        ],
      ),
    );
  }
}
