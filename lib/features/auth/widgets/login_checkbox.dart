import 'package:amazon_clone_app/theme/themedata.dart';
import 'package:flutter/material.dart';

class CheckboxAndForgotPassword extends StatefulWidget {
  const CheckboxAndForgotPassword({super.key});

  @override
  State<CheckboxAndForgotPassword> createState() =>
      _CheckboxAndForgotPasswordState();
}

class _CheckboxAndForgotPasswordState extends State<CheckboxAndForgotPassword> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox.adaptive(
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            const Text('Remember Me'),
          ],
        ),
        GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('forgotpw');
            },
            child: const Text("Forgot your password?")),
      ],
    );
  }
}
