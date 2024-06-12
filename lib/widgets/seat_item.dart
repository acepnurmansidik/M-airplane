import 'package:airplane/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0 => Available, 1 => Selected, 2 => Unavailable
  final int status;
  const SeatItem({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvailabaleColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailabaleColor;
        default:
          return kUnavailabaleColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailabaleColor;
        default:
          return kUnavailabaleColor;
      }
    }

    child() {
      switch (status) {
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semibold),
            ),
          );
        default:
          return SizedBox();
      }
    }

    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor(), width: 2),
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15)),
      child: child(),
    );
  }
}
