import 'package:flutter/material.dart';

class LoginButtons extends StatefulWidget {
  bool? isSignUpPressed;
  VoidCallback? onPressed;
  LoginButtons({this.isSignUpPressed, this.onPressed});

  @override
  State<LoginButtons> createState() => _LoginButtonsState();
}

class _LoginButtonsState extends State<LoginButtons> {
  @override
  Widget build(BuildContext context) {
    if (widget.isSignUpPressed == true) {
      return Row(
        children: [
          Expanded(
              child: TextButton(onPressed: () {}, child: const Text("Login"))),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: OutlinedButton(
                  onPressed: widget.onPressed, child: const Text("Sign Up")))
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {},
            child: const Text("Sign Up"),
          )),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: OutlinedButton(
                  onPressed: widget.onPressed, child: const Text("Login"))),
        ],
      );
    }
  }
}
