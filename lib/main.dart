import 'package:flutter/material.dart';
import 'package:jsjflutterapp/pages/Cartpage.dart';
import 'package:jsjflutterapp/pages/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "cart": (context) => const CartPage(),
      },
    );
  }
}
