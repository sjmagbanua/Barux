import 'package:flutter/material.dart';

class SigninAppbar extends StatelessWidget {
  const SigninAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Signin',
      ),
      centerTitle: true,
    );
  }
}
