import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:jsjflutterapp/utils/CommonUtility.dart';
import 'package:jsjflutterapp/widgets/HomeAppBar.dart';
import 'package:jsjflutterapp/widgets/ProductsWidget.dart';
import '../widgets/CategoriesWidget.dart';
import 'Cartpage.dart';

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
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                //search widget
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 7),
                          height: 60,
                          width: 300,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none, hintText: "Search "),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.grey,
                        )
                      ],
                    )),

                //Categories
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
                          color: Colors.black),
                    )),

                //Categories widget section
                const CategoriesWidget(),

                //Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  child: const Text(
                    "Our Products",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Items widget
                const ProductsWidget(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 40,
        color: CommonUtility.getPrimaryColor(),
        items: [
          const Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
            child: const Icon(
              Icons.shopping_cart,
              size: 25,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.list,
            size: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}