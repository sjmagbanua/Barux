import 'package:barux/pages/home/home.dart';
import 'package:barux/pages/home/view/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: HomeBody(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeFooter(),
    );
  }
}
