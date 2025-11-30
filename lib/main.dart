import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/account/view/view.dart';
import 'pages/home/view/view.dart';
import 'pages/signin/view/view.dart';
import 'pages/signup/view/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BARUX',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            foregroundColor: const Color(0xFF171717),
            minimumSize: Size(
              double.infinity,
              65,
            ),
            elevation: 0,
            backgroundColor: Colors.grey,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(106),
              ),
          // filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 23,
          ),
        ),
        useMaterial3: true,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.blueGrey,
          elevation: 10,
          selectedLabelStyle: TextStyle(
            color: Color(0xFFA67926),
            fontFamily: 'Montserrat',
            fontSize: 14.0,
          ),
          selectedItemColor: Color(0xFFA67926),
          showUnselectedLabels: true,
        ),
      ),
    );
  }
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SigninPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: SignupPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupPage();
          },
        ),
        GoRoute(
          path: SigninPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SigninPage();
          },
        ),
        GoRoute(
          path: HomePage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: AccountPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const AccountPage();
          },
        ),
      ],
    ),
  ],
);
