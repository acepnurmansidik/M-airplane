import 'package:airplane/page/home_page.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final currentIndex = 0;
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          customButtonNavigation(),
        ],
      ),
    );
  }

  Widget customButtonNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 30, left: 24, right: 24),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButtomNavigationItem(
              imageUrl: 'assets/icon_globe.png',
              isSelected: true,
            ),
            CustomButtomNavigationItem(imageUrl: 'assets/icon_booking.png'),
            CustomButtomNavigationItem(imageUrl: 'assets/icon_card.png'),
            CustomButtomNavigationItem(imageUrl: 'assets/icon_setting.png'),
          ],
        ),
      ),
    );
  }
}
