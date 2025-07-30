import 'package:barux/pages/signup/bloc/bloc.dart';
import 'package:barux/pages/signup/view/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupPage extends StatelessWidget {
  static const route = '/signup';
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(
        initialState: SingupState(),
      ),
      child: const Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Signupappbar(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 48,
                ),
                child: Signupform(),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(48, 0, 48, 16),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Signupfooter(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
