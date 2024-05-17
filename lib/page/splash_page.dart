import 'dart:async';

import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, '/get-started', (route) => false);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo_icon.png",
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  fontWeight: medium, fontSize: 32, letterSpacing: 10),
            )
          ],
        ),
      )),
    );
  }
}
