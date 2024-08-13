import 'package:flutter/material.dart';
import 'package:flutter_nannycarenest/pages/home_page.dart';
import 'package:flutter_nannycarenest/pages/login_page.dart';
import 'package:flutter_nannycarenest/pages/onboarding_page.dart';
import 'package:flutter_nannycarenest/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding-page': (context) => OnboardingPage(),
        '/login-page': (context) => LoginPage(),
        '/home-page': (context) => HomePage(),
      },
    );
  }
}
