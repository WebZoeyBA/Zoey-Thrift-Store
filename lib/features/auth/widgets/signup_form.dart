import 'package:amazon_clone_app/features/auth/widgets/logo.dart';
import 'package:flutter/material.dart';
import '../../../theme/themedata.dart';

class SignUp extends StatefulWidget {
  bool? isBackSpacePressed;
  VoidCallback? handleBackSpacePress;
  SignUp({this.handleBackSpacePress, this.isBackSpacePressed});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ShopLogo(),
          Text("Sign up", style: amazonThemeData.appBarTheme.titleTextStyle),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "E-mail",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(labelText: "Password"),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(labelText: "Repeat password"),
          ),
          SizedBox(
            height: 20,
          ),
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(labelText: "Phone number"),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
