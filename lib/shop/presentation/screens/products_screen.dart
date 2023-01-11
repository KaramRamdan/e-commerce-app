import 'package:e_commerce_app/core/services/services_locator.dart';
import 'package:e_commerce_app/shop/presentation/components/icon_button_component.dart';
import 'package:e_commerce_app/shop/presentation/components/product_component.dart';
import 'package:e_commerce_app/shop/presentation/controller/products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
              'Shop App',
              style: GoogleFonts.aldrich().copyWith(color: Colors.black),
            ),
          ),
          actions: [

            appBarCartButton(context),
            appBarCategoryButton(context),
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
                  padding: const EdgeInsets.all(20),
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
                        'Best Seller :',
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
