import 'package:barux/pages/signin/view/view.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  static const route = '/signin';

  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 48,
              ),
              child: SigninForm(),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SigninFooter(),
            ),
          )
        ],
      ),
    );
  }
}
