import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: const [
          Icon(
            Icons.sort,
            size: 30,
            color: Colors.blue,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "JSJ Store",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
