import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/page/home_page.dart';
import 'package:airplane/page/setting_page.dart';
import 'package:airplane/page/transaction_page.dart';
import 'package:airplane/page/wallet_page.dart';
import 'package:airplane/theme.dart';
import 'package:airplane/widgets/custom_buttom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  final currentIndex = 0;
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
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
                index: 0,
                imageUrl: 'assets/icon_globe.png',
              ),
              CustomButtomNavigationItem(
                  index: 1, imageUrl: 'assets/icon_booking.png'),
              CustomButtomNavigationItem(
                  index: 2, imageUrl: 'assets/icon_card.png'),
              CustomButtomNavigationItem(
                  index: 3, imageUrl: 'assets/icon_setting.png'),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customButtonNavigation(),
            ],
          ),
        );
      },
    );
  }
}
