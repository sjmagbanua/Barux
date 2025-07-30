import 'package:barux/pages/signup/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signupform extends StatelessWidget {
  const Signupform({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SignupBloc>();
    return BlocBuilder<SignupBloc, SingupState>(
      builder: (context, state) {
        return Column(
          children: [
            TextFormField(
              onChanged: (value) {
                bloc.add(
                  FullNameChanged(value),
                );
              },
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
                onChanged: (value) {
                  bloc.add(
                    EmailChanged(value),
                  );
                },
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
              onChanged: (value) {
                bloc.add(
                  PasswordChanged(value),
                );
              },
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
                onChanged: (value) {
                  bloc.add(
                    ConfirmPasswordChanged(value),
                  );
                },
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
            Text('Dont have account?'),
          ],
        );
      },
    );
  }
}
