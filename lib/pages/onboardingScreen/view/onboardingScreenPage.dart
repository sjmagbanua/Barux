import 'package:barux/constant/assets.dart';
import 'package:flutter/material.dart';

import 'view.dart';

class Onboardingscreenpage extends StatelessWidget {
  const Onboardingscreenpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Assets.barberSpray,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Locate the barber near you.',
                style: TextStyle(
                  color: Color(0xFF171717),
                  fontSize: 32,
                ),
              ),
            ),
          ),
          Onboardingscreenbody(),
        ],
      ),
    );
  }
}
