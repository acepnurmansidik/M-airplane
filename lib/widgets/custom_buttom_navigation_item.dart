import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const CustomButtomNavigationItem(
      {super.key, required this.imageUrl, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageUrl))),
        ),
        Container(
          height: 2,
          width: 30,
          color: isSelected ? kPrimaryColor : kTransparantColor,
        )
      ],
    );
  }
}
