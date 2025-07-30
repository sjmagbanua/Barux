import 'package:barux/models/models.dart';
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
              obscureText: !state.toggle,
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
                    state.toggle
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    bloc.add(
                      PasswordToggle(state.toggle),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: TextFormField(
                obscureText: !state.toggle,
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
                    icon: Icon(state.confirmPassToggle
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      bloc.add(
                        ConfirmPasswordToggle(state.confirmPassToggle),
                      );
                    },
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have account?'),
                TextButton(
                  onPressed: () {
                    // context.push(Onboardingscreenpage.route);
                  },
                  child: Text('Sign in'),
                )
              ],
            ),
            state.emailValue.value.isEmpty &&
                    state.fullNameValue.value.isEmpty &&
                    state.passwordValue.value.isEmpty &&
                    state.confirmPasswordValue.value.isEmpty
                ? Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                      Text('Field cannot be empty'),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                    ],
                  ),
            state.emailValue.errorType == ErrorType.none
                ? Row(
                    children: [
                      Icon(
                        Icons.check_circle_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        "Email valid format",
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                      Text(
                        "Email Invalid format",
                      ),
                    ],
                  ),
            state.passwordValue.value != state.confirmPasswordValue.value
                ? Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                      Text('Password does not match')
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                      ),
                      Text('Password does match')
                    ],
                  ),
          ],
        );
      },
    );
  }
}
