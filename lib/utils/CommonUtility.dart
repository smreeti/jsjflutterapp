import 'package:flutter/material.dart';

import '../models/Product.dart';

class CommonUtility {
  static Color getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse(hexColor, radix: 16));
  }

  static Color getPrimaryColor() {
    return const Color(0xFF000C5E);
  }

  static Color getBackgroundColor() {
    return const Color(0xFFEDECF2);
  }

  static List<Product> getProducts() {
    const baseUrl = "images/products/";
    List<Product> products = [
      Product(
          productId: "1",
          title: 'Men\'s Short Sleeve Printed Shirt',
          price: 68.91,
          imageUrl: "${baseUrl}whiteShirt.jpg",
          discount: '-4%',
          description:
              'Our 4-way stretch button down shirts available in unique and exclusive prints give a flattering appearance without sacrificing comfort. Made of polyester blend performance fabric which is soft to touch, lightweight, wrinkle-free and quick drying.',
          rating: 5),
      Product(
          productId: "2",
          title: 'Men\'s Graphic Sweatshirt',
          price: 50.99,
          imageUrl: "${baseUrl}greensweatshirt.jpg",
          discount: '-5%',
          description:
              'This men\'s loose-fit hooded sweatshirt keeps you comfortable at work or at play. Soft, midweight cotton-blend fabric and rib-knit trim help you stay warm. A felted Carhartt logo stands out on the chest.',
          rating: 4),
      Product(
          productId: "3",
          title: 'Men\'s Blue Shirt',
          price: 40.99,
          imageUrl: "${baseUrl}blueshirt.jpg",
          discount: '-6%',
          description:
              'Alex Vando is a fresh and unique Brand for mens and womens wear, with a touch of European flair. Our collection offers fashionable styles with a strong focus on special details, fit and comfort. Every man’s wardrobe needs at least one go-to shirt. Build your casual and formal looks here!',
          rating: 5),
      Product(
          productId: "4",
          title: 'Men\'s Denim Button Down Shirt',
          price: 12.99,
          imageUrl: "${baseUrl}denimShirt.jpg",
          discount: '-1%',
          description:
              ' Fashion style button up shirt, regular fit, comfortable to wear, suitable for all seasons and many occasions, such casual, work, or party. A must-have shirt in men\'s wardrobe. Cotton Blend, Long sleeve denim shirt for men, perfect for casual, business, make you look great and handsome.',
          rating: 4),
      Product(
          productId: "5",
          title: 'Men\'s Slim fit Casual Tank Top',
          price: 26.25,
          imageUrl: "${baseUrl}menpolo.jpg",
          discount: '-4%',
          description:
              'Fashion is a period of pop culture, but classic style is timeless. Our men\'s polo shirts, featured with a wide range of color choices, not only meet every individual\'s personal style and preference well, but also wear well season after season, and year after year. If you don\'t know how to wear, Askdeer Men\'s Polo Shirts are the right clothes you can\'t go wrong with. As Askdeer always delivers the fit, style and comfort you need.',
          rating: 4),
      Product(
          productId: "6",
          title: 'Billabong Women\'s Midi Dress',
          price: 20.91,
          imageUrl: "${baseUrl}billabongMidiDress.jpg",
          discount: '-4%',
          description:
              'Our 4-way stretch button down shirts available in unique and exclusive prints give a flattering appearance without sacrificing comfort. Made of polyester blend performance fabric which is soft to touch, lightweight, wrinkle-free and quick drying.',
          rating: 5),
      Product(
          productId: "7",
          title: 'Women\'s Ruffle Dress',
          price: 32.21,
          imageUrl: "${baseUrl}ruffleDress.jpg",
          discount: '-4%',
          description:
              'This convertible twist wrap dress can be worn and created many different styles for any body shapes. Gorgeous puffy sleeves with cuff ruffles and elasticated shoulder. Wrap bodice can be wrapped, twisted or tied as you wish.',
          rating: 5),
      Product(
          productId: "8",
          title: 'Women\'s Polka Dot Mini-Dress',
          price: 52.87,
          imageUrl: "${baseUrl}polkaDress.jpg",
          discount: '-4%',
          description:
              'Lantern Sleeves Have Just The Right Effect Of Covering The Flesh, Slightly Sheer Sleeves, Sexy v-Neck, And Tie Neck Show Your Elegance And Femininity. Layered Ruffles And Floral Print/Polka Dot Is Sweet And Cute. You Can Wear It To Work & Or a Date!',
          rating: 5),
      Product(
          productId: "9",
          title: 'PandaEar 5 pack Baby Bibs',
          price: 18.95,
          imageUrl: "${baseUrl}babyFeeding.jpg",
          discount: '-2%',
          description:
              'The baby bibs with sleeves are fully adjustable, which will allow you to use the bib longer. You can wipe the waterproof fabric clean or throw the bib in the wash (hang to dry).',
          rating: 5),
      Product(
          productId: "10",
          title: 'Mario Homewear Nightwear',
          price: 20.95,
          imageUrl: "${baseUrl}marioShirt.jpg",
          discount: '-2%',
          description:
              'The classic round neck design, double-reinforced routing, easy to put on and take off. The fabric of the clothes is high-quality cotton, which is skin-friendly and soft, and will not irritate children\'s skin. It is very comfortable to wear and sleep~ exquisite printing and preferred fabric highlighting the quality of product.',
          rating: 5),
    ];
    return products;
  }

  static Product getProductById(String id) {
    return getProducts().firstWhere((product) => product.productId == id);
  }

  static List<Product> cartItems = [];

  static void addProductsToCart(Product product) {
    cartItems.add(product);
  }

  static void removeProductFromCart(Product product) {
    cartItems.remove(product);
  }

  static double calculateTotalAmount() {
    double totalAmount = 0.0;
    for (var item in cartItems) {
      totalAmount += item.price;
    }
    return totalAmount;
  }
}
