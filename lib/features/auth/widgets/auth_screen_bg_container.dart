import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  Widget child;
  BackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/login-clothes-app-2.png'),
            fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
