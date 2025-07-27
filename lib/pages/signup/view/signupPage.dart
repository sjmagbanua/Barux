import 'package:barux/pages/signup/view/view.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  static const route = '/signup';
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Signupappbar(),
          Signupform(),
        ],
      ),
    );
  }
}
