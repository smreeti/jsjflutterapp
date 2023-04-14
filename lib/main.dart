import 'package:flutter/material.dart';
import 'package:jsjflutterapp/pages/Cartpage.dart';
import 'package:jsjflutterapp/pages/CheckoutForm.dart';
import 'package:jsjflutterapp/pages/Homepage.dart';
import 'package:jsjflutterapp/pages/SplashPage.dart';
import 'package:jsjflutterapp/pages/ProductDetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplashScreen = true;

  @override
  void initState() {
    super.initState();

    // Show splash screen for 5 seconds
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _showSplashScreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: _showSplashScreen ? const SplashPage() : const Homepage(),
      routes: {
        "cart": (context) => const CartPage(),
        "productDetail": (context) => ProductDetail(),
        "checkout": (context) => CheckoutForm()
      },
    );
  }
}
