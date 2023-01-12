import 'package:e_commerce_app/core/utils/app_string.dart';

import 'package:flutter/material.dart';

import '../components/icon_button_component.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(AppString.payment)),
        actions: [
          appBarHomeButton(context),
          appBarCartButton(context),

        ],
        elevation: 0,
      ),
    );
  }
}
