import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninFooter extends StatelessWidget {
  const SigninFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // context.push();
      },
      child: Text('log in'),
    );
  }
}
