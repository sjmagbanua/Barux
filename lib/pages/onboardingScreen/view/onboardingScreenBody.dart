import 'package:barux/pages/signup/view/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboardingscreenbody extends StatelessWidget {
  const Onboardingscreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Login',
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ElevatedButton(
            onPressed: () {
              context.push(SignupPage.route);
            },
            child: Text(
              'Sign up',
            ),
          ),
        ),
      ],
    );
  }
}
