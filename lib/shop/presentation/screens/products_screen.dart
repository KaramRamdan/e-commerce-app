import 'package:e_commerce_app/core/services/services_locator.dart';
import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/components/icon_button_component.dart';
import 'package:e_commerce_app/shop/presentation/components/product_component.dart';
import 'package:e_commerce_app/shop/presentation/controller/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/category_component.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(GetProductsEvents()),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: Center(
            child: Text(
              AppString.shopApp,
              style: GoogleFonts.aldrich().copyWith(color: Colors.black),
            ),
          ),
          actions: [
            appBarCartButton(context),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 30,),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.apps,
                        color: Colors.amber,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppString.category,
                        style: GoogleFonts.aldrich().copyWith(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                categoryComponent(context),
                Padding(
                  padding: const EdgeInsets.only(left: 30,bottom: 30,),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        AppString.bestSeller,
                        style: GoogleFonts.aldrich().copyWith(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                const ProductComponents(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
