import 'package:flutter/material.dart';

class Signupform extends StatelessWidget {
  const Signupform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Name',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              fillColor: Colors.red,
              hintText: 'Email',
            ),
          ),
        ),
        TextFormField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Password',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              fillColor: Colors.red,
              hintText: 'Confirm Password',
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('signup'),
        ),
      ],
    );
  }
}
