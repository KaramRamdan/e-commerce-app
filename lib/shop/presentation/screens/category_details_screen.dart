import 'package:e_commerce_app/shop/presentation/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/icon_button_component.dart';
import 'cart_screen.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({Key? key, required this.categoryName}) : super(key: key);
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Center(
          child: Text(
            'Category $categoryName',
            style: GoogleFonts.aldrich().copyWith(color: Colors.black),
          ),
        ),
        actions: [
          appBarHomeButton(context) ,
          appBarCartButton(context),
        ],
        elevation: 0,
      ),
    );
  }
}
