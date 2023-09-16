import 'package:amazon_clone_app/features/auth/widgets/login_checkbox.dart';
import 'package:flutter/material.dart';
import '../../../theme/themedata.dart';
import 'login_buttons.dart';
import 'logo.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ShopLogo(),
          Text("Log In", style: amazonThemeData.appBarTheme.titleTextStyle),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: "E-mail",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(labelText: "Password"),
          ),
          const CheckboxAndForgotPassword(),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
