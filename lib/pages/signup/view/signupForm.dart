import 'package:flutter/material.dart';

class Signupform extends StatelessWidget {
  const Signupform({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Full Name',
            prefixIcon: Icon(
              Icons.account_circle_outlined,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              fillColor: Colors.red,
              hintText: 'Phone or Email',
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
            ),
          ),
        ),
        TextFormField(
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            fillColor: Colors.red,
            hintText: 'Password',
            prefixIcon: Icon(
              Icons.lock_outline,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: TextFormField(
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              fillColor: Colors.red,
              hintText: 'Confirm Password',
              prefixIcon: Icon(
                Icons.lock_outline,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                ),
                onPressed: () {},
              ),
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
