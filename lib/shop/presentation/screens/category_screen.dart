import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/components/icon_button_component.dart';

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
          appBarHomeButton(context),
        ],
        elevation: 0,
      ),

    );
  }
}
