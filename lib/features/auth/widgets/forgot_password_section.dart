import 'package:amazon_clone_app/features/auth/widgets/auth_screen_bg_container.dart';
import 'package:amazon_clone_app/theme/themedata.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: BackgroundContainer(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                    image: AssetImage('images/forgot_password_guy.png')),
                Text(
                  "Forgot your password?",
                  style: amazonThemeData.appBarTheme.titleTextStyle,
                ),
                Text(
                  "Enter your email below so you can recieve your \npassword reset instructions",
                  textAlign: TextAlign.center,
                  style: amazonThemeData.textTheme.displayLarge,
                ),
                const TextField(
                  decoration:
                      InputDecoration(hintText: "Type in your email adress"),
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text("Send password"))),
                  ],
                ),
              ],
            )),
          )),
    );
  }
}
