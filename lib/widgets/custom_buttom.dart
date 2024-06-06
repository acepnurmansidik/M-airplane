import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final double width;
  final double font_size;
  final EdgeInsets margin;
  final Function() onPressed;

  const CustomButtom(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.font_size = 16,
      this.margin = EdgeInsets.zero,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style:
              whiteTextStyle.copyWith(fontSize: font_size, fontWeight: medium),
        ),
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
      ),
    );
  }
}
