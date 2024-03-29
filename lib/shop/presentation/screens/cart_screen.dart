import 'package:e_commerce_app/core/utils/app_string.dart';
import 'package:e_commerce_app/shop/presentation/screens/paymant_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/cart_component.dart';
import '../components/icon_button_component.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Center(
          child: Text(
            AppString.cart,
            style: GoogleFonts.aldrich().copyWith(color: Colors.black),
          ),
        ),
        actions: [
          appBarHomeButton(context),

        ],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[500],
        onPressed: () { Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const PaymentScreen(),
            ));},
        child: const Icon(Icons.payment_outlined,
        color: Colors.white,),
      ),
      body: cartComponent(context),
    );
  }
}
