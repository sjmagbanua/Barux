import 'package:flutter/material.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) {},
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Email',
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
          ),
        ),
        TextFormField(
          onChanged: (value) {},
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock_outline,
            ),
          ),
        ),
      ],
    );
  }
}
