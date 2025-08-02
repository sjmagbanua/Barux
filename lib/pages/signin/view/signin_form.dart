import 'package:barux/models/models.dart';
import 'package:barux/pages/signin/signin.dart';
import 'package:barux/pages/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SigninBloc>();

    return BlocBuilder<SigninBloc, SigninState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                bloc.add(
                  EmailChanged(value),
                );
              },
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
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have account?',
                ),
                TextButton(
                  onPressed: () {
                    context.push(SignupPage.route);
                  },
                  child: Text(
                    'Sign up',
                  ),
                )
              ],
            ),
            state.emailValue.value.isEmpty
                ? Row(
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                      ),
                      Text(
                        "Field email can not be empty",
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Icon(
                        Icons.check_circle_outlined,
                        color: Colors.green,
                      ),
                      Text(
                        "",
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
          ],
        );
      },
    );
  }
}
