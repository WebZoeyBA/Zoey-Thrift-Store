import 'package:amazon_clone_app/features/auth/widgets/auth_screen_bg_container.dart';
import 'package:amazon_clone_app/features/auth/widgets/login_buttons.dart';
import 'package:amazon_clone_app/features/auth/widgets/login_form.dart';
import 'package:amazon_clone_app/features/auth/widgets/login_guest.dart';
import 'package:amazon_clone_app/features/auth/widgets/signup_form.dart';
import 'package:amazon_clone_app/theme/themedata.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isSignUpPressed = false;
  void _handleSignUpClick() {
    setState(() {
      _isSignUpPressed = !_isSignUpPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BackgroundContainer(
          child: Column(
            children: [
              _isSignUpPressed == false
                  ? const LoginForm()
                  : SignUp(
                      isBackSpacePressed: !_isSignUpPressed,
                      handleBackSpacePress: _handleSignUpClick,
                    ),
              LoginButtons(
                isSignUpPressed: !_isSignUpPressed,
                onPressed: _handleSignUpClick,
              ),
              _isSignUpPressed == false
                  ? const LoginAsAGuest()
                  : const Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
