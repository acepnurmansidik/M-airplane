import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreenColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img_started.png'))),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 32),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let \n yourself get an amazing experiences',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                CustomButtom(
                    title: 'Get Started',
                    width: 220,
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    }),
                SizedBox(
                  height: 80,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
