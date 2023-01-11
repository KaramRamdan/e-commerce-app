import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/screens/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Center(
          child: Text(
              AppString.category,
            style: GoogleFonts.aldrich().copyWith(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
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
              )),
        ],
        elevation: 0,
      ),

    );
  }
}
