import 'package:airplane/page/bonus_page.dart';
import 'package:airplane/page/get_started_page.dart';
import 'package:airplane/page/main_page.dart';
import 'package:airplane/page/signup_page.dart';
import 'package:airplane/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashPage(),
        "/get-started": (context) => GetStartedPage(),
        "/sign-up": (context) => SignUpPage(),
        "/bonus": (context) => BonusPage(),
        "/main": (context) => MainPage(),
      },
    );
  }
}
