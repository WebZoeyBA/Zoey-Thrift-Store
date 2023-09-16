import 'package:amazon_clone_app/theme/themedata.dart';
import 'package:flutter/material.dart';

class LoginAsAGuest extends StatefulWidget {
  const LoginAsAGuest({super.key});

  @override
  State<LoginAsAGuest> createState() => _LoginAsAGuestState();
}

class _LoginAsAGuestState extends State<LoginAsAGuest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          'OR',
          style: amazonThemeData.appBarTheme.titleTextStyle,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text("Log in as a guest"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
