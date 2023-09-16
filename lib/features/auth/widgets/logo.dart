import 'package:flutter/material.dart';

class ShopLogo extends StatelessWidget {
  const ShopLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 125,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/app-logo.png'), fit: BoxFit.cover),
        ));
  }
}
