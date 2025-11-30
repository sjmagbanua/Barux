import 'package:barux/pages/account/account.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  static const route = '/account';
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AccountBody(),
    );
  }
}
