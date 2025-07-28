import 'package:barux/pages/signup/view/signupPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/onboardingScreen/view/view.dart';

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
        return const Onboardingscreenpage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: SignupPage.route,
          builder: (BuildContext context, GoRouterState state) {
            return const SignupPage();
          },
        ),
      ],
    ),
  ],
);
