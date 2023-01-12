import 'package:flutter/material.dart';

import '../screens/cart_screen.dart';

import '../screens/products_screen.dart';

Widget appBarCartButton(context) {
  return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const CartScreen(),
            ));
      },
      icon: const Icon(
        Icons.shopping_cart,
        color: Colors.black,
      ));
}

Widget appBarHomeButton(context) {
  return IconButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const ProductsScreen(),
            ));
      },
      icon: const Icon(
        Icons.home,
        color: Colors.black,
      ));
}



Widget addCartButton(context) {
  return  IconButton(
    alignment: AlignmentDirectional.bottomEnd,
    onPressed: () {},
    icon: const CircleAvatar(
      radius: 15.0,
      backgroundColor: Colors.grey,
      child: Icon(
        Icons.shopping_cart_outlined,
        size: 14.0,
        color: Colors.white,
      ),
    ),
  );
}
