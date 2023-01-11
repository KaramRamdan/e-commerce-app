import 'package:e_commerce_app/core/services/services_locator.dart';
import 'package:e_commerce_app/core/utils/app_string.dart';

import 'package:e_commerce_app/shop/presentation/screens/products_screen.dart';
import 'package:flutter/material.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:AppString.appTitle,
      theme: ThemeData(
      ),
      home:const ProductsScreen(),
    );
  }
}

