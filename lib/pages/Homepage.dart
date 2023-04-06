import 'package:flutter/material.dart';
import 'package:jsjflutterapp/widgets/HomeAppBar.dart';

import '../widgets/CategoriesWidget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child:Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 7),
                        height: 60,
                          width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search "
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.grey,
                      )
                    ],
                  )
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  )
                ),

                //Categories section
                const CategoriesWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
