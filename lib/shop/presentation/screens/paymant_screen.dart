import 'package:e_commerce_app/core/utils/app_string.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/icon_button_component.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Center(child: Text(AppString.payment,
          style: GoogleFonts.aldrich().copyWith(color: Colors.black),

        )),
        actions: [
          appBarHomeButton(context),
          appBarCartButton(context),

        ],
        elevation: 0,
      ),
    );
  }
}
