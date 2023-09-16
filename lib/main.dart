import 'package:amazon_clone_app/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone_app/features/auth/widgets/forgot_password_section.dart';
import 'package:amazon_clone_app/theme/themedata.dart';
import 'package:flutter/material.dart';

import 'features/auth/widgets/signup_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        'signup': (context) => SignUp(),
        'forgotpw': (context) => const ForgotPassword(),
      },
      title: 'Flutter Demo',
      theme: amazonThemeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
