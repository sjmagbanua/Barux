import 'package:barux/pages/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<SigninBloc>();

    return BlocBuilder<SigninBloc, SigninState>(builder: (context, state) {
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
        ],
      );
    });
  }
}
